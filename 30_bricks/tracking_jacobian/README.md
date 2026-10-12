---
type: proof
kind: brick
brick_id: tracking_jacobian
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["TrackingErrorJacobian"]
lean_declarations: ["Ctrllib.det_trackingErrorJacobian", "Ctrllib.isUnit_trackingErrorJacobian_iff", "Ctrllib.isUnit_trackingErrorJacobian_transport_free", "Ctrllib.isUnit_trackingJacobian_iff", "Ctrllib.tracking_stiffness_residual_injective", "Ctrllib.tracking_stiffness_residual_injective_stacked"]
internal_bricks: []
application_interfaces: ["tracking_error_jacobian", "tracking_stiffness_residual"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Tracking Jacobian determinant/unit equivalences and residual injectivity."
keywords: ["tracking", "jacobian", "nonsingularity", "injectivity"]
interface:
  inputs:
    - "Finite index types l, m, n; a commutative ring R; P : Matrix m n R; Q : Matrix n n R; and the block E(P,Q) = [[I_m,P],[0,Q]]."
    - "For the real residual endpoints, K : Matrix (m ⊕ n) (m ⊕ n) ℝ, P and Q, and residual vectors x : (m ⊕ n) → ℝ; the stacked endpoint also takes Jb : Matrix l l ℝ."
  assumptions:
    - "The ring block uses finite indices and the unit criterion; the real residual uses K.PosDef and IsUnit Q, with IsUnit Jb additionally for the stacked form."
  outputs:
    - id: jacobian_nonsingularity
      statement: "For E(P,Q) = [[I_m,P],[0,Q]], det E(P,Q) = det Q and E(P,Q) is a unit exactly when Q is a unit; replacing P leaves this singular set unchanged."
      declarations:
        - Ctrllib.det_trackingErrorJacobian
        - Ctrllib.isUnit_trackingErrorJacobian_iff
        - Ctrllib.isUnit_trackingErrorJacobian_transport_free
        - Ctrllib.isUnit_trackingJacobian_iff
      proof_section: "Jacobian nonsingularity"
    - id: stiffness_residual_injectivity
      statement: "With K.PosDef and IsUnit Q, E(P,Q)ᵀ K x = 0 implies x = 0; the stacked residual has the same conclusion after adding IsUnit Jb."
      declarations:
        - Ctrllib.tracking_stiffness_residual_injective
        - Ctrllib.tracking_stiffness_residual_injective_stacked
      proof_section: "Stiffness-residual injectivity"
  composition: []
---
# Tracking error Jacobian nonsingularity

This Brick is `atomic` and covers Tracking Jacobian determinant/unit equivalences and residual injectivity. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`isUnit` is the finite matrix invertibility predicate in the capture; transport-free means the specified block is removed.

## Statement

**jacobian_nonsingularity:** The determinant and unit conditions for the encoded tracking error Jacobian are equivalent, with the transport-free form sharing the same singular set.
**stiffness_residual_injectivity:** Under the captured nonsingularity premise, the tracking stiffness residual map is injective, including the stacked form.

## Hypotheses

- Exact finite dimensions and nonsingularity premises from signatures.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Tracking Jacobian determinant/unit equivalences and residual injectivity. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `TrackingErrorJacobian`.
- Exact declarations: 6 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No conditioning, flow, controller, physical, or numerical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
