---
type: proof
kind: brick
brick_id: tracking_cross_term
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingCrossTerm"]
lean_declarations: ["Ctrllib.stiffForce", "Ctrllib.crossRate", "Ctrllib.strictRate", "Ctrllib.cross_term_rate_identity", "Ctrllib.cross_term_rate_no_forcing", "Ctrllib.strict_term_zero_iff"]
internal_bricks: []
application_interfaces: ["tracking_cross_term"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Pointwise strict-storage cross-term identity and zero condition."
keywords: ["tracking", "cross_term", "strict_storage"]
interface:
  inputs:
    - "Finite index types n,m; e, edot, F : ℝⁿ; x, xdot, r : ℝᵐ; M, Mdot, C, D : Matrix n n ℝ; K : Matrix m m ℝ; and J, Jdot : Matrix m n ℝ."
    - "The value-level stiffness force g = Jᵀ *ᵥ (K *ᵥ x), encoded gdot, dynamics M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - g - F, and kinematics xdot = J *ᵥ e + r."
  assumptions:
    - "Kᵀ = K and Mdot = C + Cᵀ for the rate identity; F = 0 and r = 0 for the no-forcing specialization."
    - "The strict-force zero endpoint requires K.PosDef and Function.Injective J.mulVec; PSD K alone is insufficient."
  outputs:
    - id: cross_term_identity
      statement: "The exact value-level identity retains -eᵀF, xᵀKr, -gᵀF, and all cross-rate terms; setting F = 0 and r = 0 gives the no-forcing identity."
      declarations:
        - Ctrllib.cross_term_rate_identity
        - Ctrllib.cross_term_rate_no_forcing
      proof_section: "Cross-term identity"
    - id: strict_term_zero
      statement: "With K.PosDef and injective J.mulVec, gᵀg = 0 exactly when x = 0 for g = JᵀKx."
      declarations:
        - Ctrllib.strict_term_zero_iff
      proof_section: "Strict-term zero condition"
  composition: []
---
# Tracking strict-storage cross term

This Brick is `atomic` and covers Pointwise strict-storage cross-term identity and zero condition. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`g=J^T K x` is explanatory; exact module definitions govern.

## Statement

**cross_term_identity:** The encoded cross-term rate and strict-storage rate satisfy the exact identity; the no-forcing form follows when the residual vanishes.
**strict_term_zero:** Under the SPD/injectivity premises, the strict cross-term rate vanishes exactly under the captured zero condition.

## Hypotheses

- Exact product-rule, SPD, injectivity, and forcing premises.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Pointwise strict-storage cross-term identity and zero condition. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingCrossTerm`.
- Exact declarations: 6 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No full storage positivity, domination, convergence, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
