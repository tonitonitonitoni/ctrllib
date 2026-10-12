---
type: proof
kind: brick
brick_id: tracking_steady_lag
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["CruiseLag"]
lean_declarations: ["Ctrllib.cruise_lag_unique", "Ctrllib.cruise_lag_iff", "Ctrllib.cruise_lag", "Ctrllib.cruise_lag_coriolis_only", "Ctrllib.isUnit_transpose_mul_of_posDef", "Ctrllib.cruise_lag_of_posDef"]
internal_bricks: []
application_interfaces: ["cruise_lag_steady_state"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Steady-state cruise-lag existence and uniqueness."
keywords: ["cruise", "lag", "steady_state", "positive_definite"]
interface:
  inputs:
    - "A finite index type n, matrices J, K, C : Matrix n n ℝ, vectors x, vd, F : n → ℝ, and the exact balance 0 = -(C *ᵥ vd) - (Jᵀ * K) *ᵥ x - F."
  assumptions:
    - "The general solution requires IsUnit (Jᵀ * K); the Coriolis-only branch sets F = 0. The positive-definite adapter requires K.PosDef and IsUnit J, with no skew premise."
  outputs:
    - id: cruise_lag_solution
      statement: "Under the exact balance and IsUnit (Jᵀ * K), x = -((Jᵀ * K)⁻¹ *ᵥ (C *ᵥ vd + F)) uniquely; setting F = 0 gives the Coriolis-only form."
      declarations:
        - Ctrllib.cruise_lag_unique
        - Ctrllib.cruise_lag_iff
        - Ctrllib.cruise_lag
        - Ctrllib.cruise_lag_coriolis_only
      proof_section: "Cruise-lag solution"
    - id: posdef_nonsingularity
      statement: "K.PosDef and IsUnit J imply IsUnit (Jᵀ * K), enabling the same cruise-lag solution; the declaration has no skew-Coriolis premise."
      declarations:
        - Ctrllib.isUnit_transpose_mul_of_posDef
        - Ctrllib.cruise_lag_of_posDef
      proof_section: "Positive-definite nonsingularity"
  composition: []
---
# Cruise-lag steady-state algebra

This Brick is `atomic` and covers Steady-state cruise-lag existence and uniqueness. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`A` denotes the exact balance matrix, not an inferred product; `K` and `J` are conventional names only.

## Statement

**cruise_lag_solution:** Under the explicit balance and nonsingularity premises, the encoded cruise-lag equation has the unique stated solution, including the Coriolis-only specialization.
**posdef_nonsingularity:** If the stiffness matrix is positive definite and the encoded skew/Coriolis premise holds, the transpose-product matrix is a unit, enabling the cruise-lag solution.

## Hypotheses

- Exact balance, unit, and SPD premises from the declarations.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Steady-state cruise-lag existence and uniqueness. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `CruiseLag`.
- Exact declarations: 6 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No reachability, convergence, conditioning, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
