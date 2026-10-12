---
type: proof
kind: brick
brick_id: tracking_dissipation
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingDissipation"]
lean_declarations: ["Ctrllib.trackingRate", "Ctrllib.stiffness_cross_symm", "Ctrllib.passivity_bracket", "Ctrllib.tracking_rate_identity", "Ctrllib.tracking_rate_passive", "Ctrllib.tracking_rate_velocity_ff", "Ctrllib.tracking_rate_velocity_ff_nonpos", "Ctrllib.tracking_rate_identity_absKin", "Ctrllib.tracking_storage_coercive"]
internal_bricks: []
application_interfaces: ["tracking_storage_dissipation"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Pointwise tracking storage-rate identity and conditional dissipation."
keywords: ["tracking", "dissipation", "storage", "passivity"]
interface:
  inputs:
    - "Vectors v, vd, vdot, vddot : ℝⁿ and x, xdot : ℝᵐ; matrices M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J : Matrix m n ℝ; and forcing F : ℝⁿ."
    - "The exact absolute-velocity dynamics M *ᵥ vdot = -(C *ᵥ v) - D *ᵥ (v - vd) - Jᵀ *ᵥ (K *ᵥ x) - F + M *ᵥ vddot and kinematics xdot = J *ᵥ (v - vd)."
  assumptions:
    - "Kᵀ = K and Mdot = C + Cᵀ for the identity/passivity branches; the velocity-feedforward branch changes the dynamics to -C *ᵥ (v - vd)."
    - "The nonpositive branch requires D quadratic-form PSD and F = 0; the separate storage-coercivity endpoint requires M.PosDef and K.PosDef."
  outputs:
    - id: tracking_rate_identity
      statement: "Under Kᵀ = K, the exact dynamics, and xdot = J *ᵥ (v - vd), the rate equals -eᵀDe - eᵀC vd - eᵀF + (1/2)eᵀMdot e - eᵀCe, with the absolute-kinetic specialization retained."
      declarations:
        - Ctrllib.stiffness_cross_symm
        - Ctrllib.passivity_bracket
        - Ctrllib.tracking_rate_identity
        - Ctrllib.tracking_rate_identity_absKin
      proof_section: "Tracking rate identity"
    - id: tracking_rate_dissipation
      statement: "Mdot = C + Cᵀ removes the passivity bracket; velocity feedforward removes -eᵀC vd; PSD D and F = 0 give a nonpositive rate, while PD M,K give the separate quadratic storage lower bound."
      declarations:
        - Ctrllib.tracking_rate_passive
        - Ctrllib.tracking_rate_velocity_ff
        - Ctrllib.tracking_rate_velocity_ff_nonpos
        - Ctrllib.tracking_storage_coercive
      proof_section: "Tracking dissipation"
  composition: []
---
# Tracking storage dissipation identity

This Brick is `atomic` and covers Pointwise tracking storage-rate identity and conditional dissipation. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`trackingRate` is the exact encoded derivative expression; `F` is explanatory shorthand only.

## Statement

**tracking_rate_identity:** The encoded tracking storage rate expands into the stiffness, passivity, damping, and forcing terms stated by the identity endpoint.
**tracking_rate_dissipation:** Under the captured passivity/damping and zero-forcing premises, the tracking rate is nonpositive and the storage has its coercive bound.

## Hypotheses

- Exact symmetry, passivity, PSD/SPD, and forcing premises from signatures.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Pointwise tracking storage-rate identity and conditional dissipation. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingDissipation`.
- Exact declarations: 9 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No flow realization, convergence, source/controller, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
