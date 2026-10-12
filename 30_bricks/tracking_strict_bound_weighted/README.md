---
type: proof
kind: brick
brick_id: tracking_strict_bound_weighted
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingStrictBoundWeighted"]
lean_declarations: ["Ctrllib.weighted_young_cross", "Ctrllib.weighted_residual_bound", "Ctrllib.strict_rate_dominated_weighted"]
internal_bricks: []
application_interfaces: ["weighted_tracking_rate_bound"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Weighted pointwise strict-rate domination."
keywords: ["tracking", "weighted_metric", "young", "residual"]
interface:
  inputs:
    - "Finite index types n,m; e, edot : ℝⁿ and x, xdot, r : ℝᵐ; M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J, Jdot : Matrix m n ℝ; and d₁, γ₁, κr, c₁,…,c₅, α, λ."
    - "Weighted forms E_M = eᵀMe and X_K = xᵀKx, with the stiffness force g = JᵀKx and value-level gdot = JdotᵀKx + JᵀKxdot."
  assumptions:
    - "weighted_young_cross requires Mᵀ = M, zᵀMz ≥ 0 for every z, and λ > 0; weighted_residual_bound requires Kᵀ = K, yᵀKy ≥ 0 for every y, ρ > 0, and rᵀKr ≤ ρ²X_K."
    - "strict_rate_dominated_weighted requires Kᵀ = K, Mdot = C + Cᵀ, M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - Jᵀ *ᵥ (K *ᵥ x), xdot = J *ᵥ e + r, α ≥ 0, λ > 0, and c₂+c₃+c₄+c₅ ≥ 0."
    - "Its named weighted bounds are d₁E_M ≤ eᵀDe, xᵀKr ≤ κrX_K, γ₁²X_K ≤ gᵀg, and the four gdot/Mdot/C/D cross bounds with coefficients c₁,…,c₅."
  outputs:
    - id: weighted_young
      statement: "For symmetric PSD M and λ > 0, uᵀMv ≤ (λ/2)uᵀMu + (1/(2λ))vᵀMv."
      declarations:
        - Ctrllib.weighted_young_cross
      proof_section: "Public result 1: weighted Young inequality"
    - id: weighted_residual
      statement: "For symmetric PSD K, ρ > 0, and rᵀKr ≤ ρ²xᵀKx, the residual satisfies xᵀKr ≤ ρxᵀKx."
      declarations:
        - Ctrllib.weighted_residual_bound
      proof_section: "Public result 2: weighted residual bound"
    - id: weighted_strict_rate
      statement: "The exact weighted dynamics, residual bound, stiffness-force lower bound, and four weighted cross bounds yield the stated minimum coefficient multiplying E_M + X_K."
      declarations:
        - Ctrllib.strict_rate_dominated_weighted
      proof_section: "Weighted strict-rate domination"
  composition: []
---
# Weighted tracking strict-rate bound

This Brick is `atomic` and covers Weighted pointwise strict-rate domination. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

Weighted products use the module matrices M and K; they are not assumed SPD here.

## Statement

**weighted_young:** For symmetric PSD M and λ > 0, the weighted bilinear form obeys the exact Young bound.

**weighted_residual:** For symmetric PSD K and the stated K-metric residual premise, xᵀKr ≤ ρxᵀKx.

**weighted_strict_rate:** Under the exact weighted dynamics and named cross bounds, the rate is bounded by the captured minimum coefficient times E_M + X_K.

## Hypotheses

- The exact finite dimensions, matrix symmetries, pointwise PSD forms, dynamics, kinematic residual, sign constants, and weighted cross bounds listed in the interface are required.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Weighted pointwise strict-rate domination. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingStrictBoundWeighted`.
- Exact declarations: 3 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No Euclidean coercivity, global constants, convergence, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
