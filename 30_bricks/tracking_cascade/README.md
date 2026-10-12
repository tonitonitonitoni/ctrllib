---
type: proof
kind: brick
brick_id: tracking_cascade
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingCascade", "TrackingUltimateBound"]
lean_declarations: ["Ctrllib.tracking_forced_rate_majorant", "Ctrllib.tracking_cascade_gas", "Ctrllib.tracking_cascade_storage_bounded", "Ctrllib.tracking_cascade_bounded", "Ctrllib.tracking_cascade_gas_com", "Ctrllib.tracking_storage_eventual_floor", "Ctrllib.tracking_norm_eventual_floor"]
internal_bricks: [differential_comparison]
application_interfaces: ["tracking_cascade_comparison"]
brick_level: composite
level_reason: "The tracking rate majorant and scalar eventual comparison combine to give storage and tracking norm floors."
summary: "Conditional tracking storage cascade and boundedness comparison."
keywords: ["tracking", "cascade", "gas", "comparison"]
interface:
  inputs:
    - "Functions W,W' : ℝ → ℝ and trajectories x₁ : ℝ → E₁, x₂ : ℝ → E₂ on the domain [0,∞), with constants c_lo,c_hi,κ,c',ρ and driver ceiling Mx."
    - "The pointwise forced rate W' t ≤ -(κ/c_hi)W t + c'(‖x₂ t‖+ρ)√(W t), plus the lower sandwich c_lo‖x₁ t‖² ≤ W t."
  assumptions:
    - "The majorant requires c_hi>0, κ>0, c'>0, ρ≥0, W≥0, and the supplied forced-rate inequality."
    - "Attractivity additionally requires c_lo>0, continuity of W on [0,∞), HasDerivWithinAt for W, and x₂ → 0; boundedness additionally requires W(0)≥0, Mx≥0, and ‖x₂ t‖≤Mx. The COM specialization retains SPD matrices, a flow-solution witness, and forward precompactness."
  outputs:
    - id: forced_rate_majorant
      statement: "Young’s inequality converts the exact square-root forced rate into W' ≤ -(κ/(2c_hi))W + c'^2c_hi(‖x₂‖+ρ)²/(2κ)."
      declarations:
        - Ctrllib.tracking_forced_rate_majorant
      proof_section: "Forced-rate majorant"
    - id: cascade_bound
      statement: "Under the exact continuity, derivative, lower-sandwich, driver-limit or driver-ceiling premises, the storage and tracking-error attractivity or uniform bounds follow; the COM endpoint obtains the driver limit from com_gas_matrix."
      declarations:
        - Ctrllib.tracking_cascade_gas
        - Ctrllib.tracking_cascade_storage_bounded
        - Ctrllib.tracking_cascade_bounded
        - Ctrllib.tracking_cascade_gas_com
      proof_section: "Tracking cascade bound"
    - id: eventual_floors
      statement: "For every positive epsilon, eventually W <= B/a+epsilon and norm(x1) <= sqrt((B/a+epsilon)/c_lo), with a=kappa/(2*c_hi) and B=cprime^2*c_hi*(Mx+rho)^2/(2*kappa)."
      declarations: [Ctrllib.tracking_storage_eventual_floor, Ctrllib.tracking_norm_eventual_floor]
      proof_section: "Eventual storage and tracking floors"
  composition:
    - uses: [Ctrllib.comparison_eventual_floor]
      establishes: Ctrllib.tracking_storage_eventual_floor
      explanation: "A private helper applies the tracking majorant to obtain a constant forcing ceiling; the scalar comparison removes the transient. The capture omits the private helper, so this edge records only the visible comparison dependency."
    - uses: [Ctrllib.tracking_storage_eventual_floor]
      establishes: Ctrllib.tracking_norm_eventual_floor
      explanation: "The lower storage sandwich, positive division, and square-root monotonicity transport the eventual storage ceiling to the state norm."

---
# Tracking storage comparison cascade

This Brick is `composite` and covers Conditional tracking storage cascade and boundedness comparison. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`W` and `r` are explanatory names; exact functions remain in capture.

## Statement

**forced_rate_majorant:** The forced tracking rate is bounded by the captured scalar comparison majorant.
**cascade_bound:** Under the flow, storage-sandwich, driver, and comparison premises, the tracking storage satisfies the stated cascade/boundedness result, including the COM specialization.

## Hypotheses

- Exact derivative/sandwich/driver/comparison premises.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Conditional tracking storage cascade and boundedness comparison. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingCascade`, `TrackingUltimateBound`.
- Exact declarations: 7 declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No complete controller realization, physical, numerical, or acceptance claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
