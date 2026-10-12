# Interface — Seven-DOF augmented passivity algebra

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- The augmented finite matrices and velocity vector represented by the module.

## Assumptions

- Invertibility/derivative and skew premises exactly as captured.

## Outputs

### Augmented passivity

Under the supplied inverse-derivative and skew premises, the augmented seven-DOF transport residual has the encoded passivity identity.

Exact declarations: `Ctrllib.inv_deriv_eq`, `Ctrllib.congruence_skew`, `Ctrllib.augmented_passivity_decomp`, `Ctrllib.augmented_passivity_skew`, `Ctrllib.augmented_passivity_identity`.
Proof section: [Augmented passivity](proof.md#augmented-passivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
