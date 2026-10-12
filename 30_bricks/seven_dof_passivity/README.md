---
type: proof
kind: brick
brick_id: seven_dof_passivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["SevenDof"]
lean_declarations: ["Ctrllib.inv_deriv_eq", "Ctrllib.congruence_skew", "Ctrllib.augmented_passivity_decomp", "Ctrllib.augmented_passivity_skew", "Ctrllib.augmented_passivity_identity"]
internal_bricks: []
application_interfaces: ["seven_dof_passivity"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Augmented seven-DOF passivity identity."
keywords: ["seven_dof", "passivity", "skew", "inertia"]
interface:
  inputs:
    - "The augmented finite matrices and velocity vector represented by the module."
  assumptions:
    - "Invertibility/derivative and skew premises exactly as captured."
  outputs:
    - id: augmented_passivity
      statement: "Under the supplied inverse-derivative and skew premises, the augmented seven-DOF transport residual has the encoded passivity identity."
      declarations:
        - Ctrllib.inv_deriv_eq
        - Ctrllib.congruence_skew
        - Ctrllib.augmented_passivity_decomp
        - Ctrllib.augmented_passivity_skew
        - Ctrllib.augmented_passivity_identity
      proof_section: "Augmented passivity"
  composition: []
---
# Seven-DOF augmented passivity algebra

This Brick is `atomic` and covers Augmented seven-DOF passivity identity. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

Ginv is an inverse-factor variable in the formal model; skew means transpose
equals negative itself. No time derivative is inferred from its name.

## Statement

**augmented_passivity:** Under the supplied inverse-derivative and skew premises, the augmented seven-DOF transport residual has the encoded passivity identity.

## Hypotheses

- For the inverse-rate endpoint, $Ginv\,G=I$ and
  $Gdot\,Ginv+G\,Ginvdot=0$ are explicit premises over a commutative ring.
- For the passivity endpoints, $M^\mathsf T=M$ and
  $Ginvdot=-Ginv\,Gdot\,Ginv$ are explicit premises. Any differentiability
  or source/controller interpretation is external.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Augmented seven-DOF passivity identity. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `SevenDof`.
- Exact declarations: 5 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: algebraic inverse-rate substitution, skew transport, and zero quadratic form for the augmented residual.

## Limitations

No controller/source realization, parameter margin, physical or numerical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: algebraic inverse-rate substitution, skew transport, and zero quadratic form for the augmented residual.
