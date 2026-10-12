#!/usr/bin/env bash
set -euo pipefail

PACKAGE_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
DEFAULT_PVS_ROOT="$(CDPATH= cd -- "$PACKAGE_DIR/../.." && pwd)/PVS"
PVS_ROOT="${PVS_ROOT:-$DEFAULT_PVS_ROOT}"
PVS_PROVEIT="${PVS_ROOT}/proveit"
LOG_DIR="${PVS_LOG_DIR:-${TMPDIR:-/private/tmp}/pvs-ctrllib-logs}"
CACHE_DIR="${XDG_CACHE_HOME:-${TMPDIR:-/private/tmp}/pvs-ctrllib-cache}"
EVIDENCE_DIR="${PVS_EVIDENCE_DIR:-$PACKAGE_DIR/evidence/replay}"
WORK_DIR="$(mktemp -d "${TMPDIR:-/private/tmp}/pvs-ctrllib.XXXXXX")"

trap 'rm -rf "$WORK_DIR"' EXIT
mkdir -p "$LOG_DIR" "$CACHE_DIR" "$EVIDENCE_DIR"
[[ -x "$PVS_PROVEIT" ]] || { echo "missing PVS proveit: $PVS_PROVEIT" >&2; exit 2; }

copy_theory() {
  local source="$1" rel="${source#"$PACKAGE_DIR/"}" dest
  dest="$WORK_DIR/$rel"
  mkdir -p "$(dirname -- "$dest")"
  cp "$source" "$dest"
  local proof="${source%.pvs}.prf"
  [[ -f "$proof" ]] || { echo "missing saved proof: $proof" >&2; exit 3; }
  cp "$proof" "${dest%.pvs}.prf"
  printf '%s\n' "$dest"
}

check_summary() {
  local summary="$1"
  [[ -f "$summary" ]] || { echo "missing proof summary: $summary" >&2; exit 3; }
  if grep -Eiq 'unfinished|proved - incomplete|unproved|failed|aborted' "$summary"; then
    echo "incomplete proof summary: $summary" >&2; cat "$summary" >&2; exit 4
  fi
  grep -Eq '[0-9]+ attempted, [0-9]+ succeeded' "$summary" || {
    echo "no complete attempted/succeeded count: $summary" >&2; cat "$summary" >&2; exit 5;
  }
}

theories=()
expected_counts=(2 4 2 4 6)
expected_names=(
  "satisfies_sequential enabled_sequential"
  "absolute_error clearance_transfer current_clearance timing_transfer"
  "delivered_clearance motion_budget_clearance"
  "pose_position_error pose_body_clearance clearance_budget_monotone clock_decomposition"
  "square_nonneg coeff_nonneg_TCC1 coeff_nonneg scaled_square_nonneg square_identity young_cross"
)
sources=(
  "$PACKAGE_DIR/contracts/assume_guarantee.pvs"
  "$PACKAGE_DIR/arithmetic/two_rover_safety.pvs"
  "$PACKAGE_DIR/arithmetic/metric_clearance.pvs"
  "$PACKAGE_DIR/arithmetic/pose_clearance.pvs"
  "$PACKAGE_DIR/algebra/young_cross.pvs"
)
for source in "${sources[@]}"; do theories+=("$(copy_theory "$source")"); done

run_theory() {
  local mode="$1"
  local source="$2"
  PVS_LOG_DIR="$LOG_DIR" XDG_CACHE_HOME="$CACHE_DIR" \
    "$PVS_PROVEIT" "$mode" --disable-oracles --force --no-log "$source"
  check_summary "${source%.pvs}.summary"
  local summary="${source%.pvs}.summary" theory_count complete_count name
  theory_count="$(sed -n 's/.*Theory totals: \([0-9][0-9]*\) formulas, \([0-9][0-9]*\) attempted, \([0-9][0-9]*\) succeeded.*/\1 \2 \3/p' "$summary")"
  [[ "$theory_count" == "${expected_counts[$index]} ${expected_counts[$index]} ${expected_counts[$index]}" ]] || {
    echo "unexpected totals in $summary: $theory_count" >&2; exit 6;
  }
  complete_count="$(grep -Ec 'proved - complete' "$summary")"
  [[ "$complete_count" == "${expected_counts[$index]}" ]] || {
    echo "unexpected complete count in $summary: $complete_count" >&2; exit 7;
  }
  for name in ${expected_names[$index]}; do
    grep -Eq "[[:space:]]${name}[.[:space:]]+proved - complete" "$summary" || {
      echo "missing complete declaration $name in $summary" >&2; exit 8;
    }
  done
  cp "$summary" "$EVIDENCE_DIR/$(basename "$summary")"
  index=$((index + 1))
}

# Default mode replays committed saved proof objects in a fresh context.
# Set INSTALL_SCRIPTS=1 only to separately exercise embedded scripts.
index=0
if [[ "${INSTALL_SCRIPTS:-0}" == 1 ]]; then
  for source in "${theories[@]}"; do
    PVS_LOG_DIR="$LOG_DIR" XDG_CACHE_HOME="$CACHE_DIR" \
      "$PVS_PROVEIT" --scripts --disable-oracles --force --no-log "$source"
  done
fi
for source in "${theories[@]}"; do run_theory --no-scripts "$source"; done

echo "REPLAY|theories=${#theories[@]}"
for source in "${theories[@]}"; do
  summary="${source%.pvs}.summary"
  printf 'REPLAY|%s|%s\n' "${source#"$WORK_DIR/"}" "$(grep -E 'Theory totals:' "$summary" | tr '\n' ' ')"
done
