---
type: proof
kind: brick
brick_id: tracking_strict_bound
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingStrictBound"]
lean_declarations: ["Ctrllib.dotProduct_self_nonneg'", "Ctrllib.young_cross", "Ctrllib.quad_form_dominates", "Ctrllib.strict_rate_dominated", "Ctrllib.strict_rate_dominated_exact_twist", "Ctrllib.strict_rate_dominated_forced", "Ctrllib.strictStorage", "Ctrllib.strict_storage_lower", "Ctrllib.strict_storage_upper", "Ctrllib.strict_storage_sandwich", "Ctrllib.forced_rate_sqrt_comparison"]
internal_bricks: []
application_interfaces: ["tracking_strict_storage_bounds"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Conditional pointwise strict-storage sandwich and derivative domination."
keywords: ["tracking", "strict_storage", "young", "quadratic_bound"]
interface:
  inputs:
    - "Finite error vectors e : ℝⁿ and x : ℝᵐ; matrices M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J, Jdot : Matrix m n ℝ; and constants d₁, γ₁, κr, c₁,…,c₆, α, λ."
    - "The value-level dynamics M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - Jᵀ *ᵥ (K *ᵥ x), kinematics xdot = J *ᵥ e + r, passivity Mdot = C + Cᵀ, and Kᵀ = K."
  assumptions:
    - "The rate endpoint requires α ≥ 0, λ > 0, c₂+c₃+c₄+c₅ ≥ 0, d₁E ≤ eᵀDe, xᵀKr ≤ κrX, γ₁²X ≤ gᵀg, and the four named cross bounds."
    - "The storage sandwich requires Rayleigh lower/upper bounds for M,K and |gᵀMe| ≤ c₆√E√X; the forced adapter additionally requires nonnegative E,X,f,ρ,α,γ₂,κ and positive c_lo,c_hi."
  outputs:
    - id: strict_storage_sandwich
      statement: "Under Rayleigh bounds and |gᵀMe| ≤ c₆√E√X, W lies between the exact min/max quadratic coefficients stated by strict_storage_lower, strict_storage_upper, and strict_storage_sandwich."
      declarations:
        - Ctrllib.strict_storage_lower
        - Ctrllib.strict_storage_upper
        - Ctrllib.strict_storage_sandwich
      proof_section: "Strict-storage sandwich"
    - id: strict_rate_domination
      statement: "Young’s inequality turns the four cross bounds into the exact minimum coefficient κ for no-forcing, exact-twist, and forced rate endpoints; the sandwich yields the stated square-root comparison form."
      declarations:
        - Ctrllib.young_cross
        - Ctrllib.quad_form_dominates
        - Ctrllib.strict_rate_dominated
        - Ctrllib.strict_rate_dominated_exact_twist
        - Ctrllib.strict_rate_dominated_forced
        - Ctrllib.forced_rate_sqrt_comparison
      proof_section: "Strict-rate domination"
  composition: []
---
# Tracking strict-storage bounds

This Brick is `atomic` and covers Conditional pointwise strict-storage sandwich and derivative domination. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`strictStorage` follows the module definition; coefficients remain exact capture parameters.

## Statement

**strict_storage_sandwich:** The encoded strict storage has the stated lower, upper, and sandwich quadratic bounds under its SPD/Young premises.
**strict_rate_domination:** Young’s inequality and the supplied quadratic domination premise give the exact strict-rate bounds, including the forced adapter.

## Hypotheses

- Exact Young, SPD/PSD, and quadratic-domination premises.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Conditional pointwise strict-storage sandwich and derivative domination. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingStrictBound`.
- Exact declarations: 11 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No global constants, flow, convergence, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
