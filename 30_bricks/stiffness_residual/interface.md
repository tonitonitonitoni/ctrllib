# Interface — Stiffness residual injectivity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record groups one reusable mathematical boundary; the listed outputs share the same typed matrices and proof interface.

## Evidence and dependencies


## Inputs

- Typed finite-dimensional matrices, vectors, scalar fields, and theorem premises exactly as specified by the canonical declarations.

## Assumptions

- Dimensions, symmetry, positivity, rank, differentiability, and norm hypotheses are explicit in the declarations and are not inferred here.
- Application correspondence, numerical values, and physical realization are external interfaces.

## Outputs

### Square residual injective

For nonsingular square J and positive-definite K, J transpose K x = 0 implies x = 0.

Exact declarations: `Ctrllib.stiffness_residual_injective`.
Proof section: [Square residual](proof.md#square-residual).

### Alternate residual

The alternate residual formulation has the same injectivity conclusion.

Exact declarations: `Ctrllib.stiffness_residual_injective'`.
Proof section: [Square residual](proof.md#square-residual).

### Gram coercivity

Full-column-rank J and positive-definite K make J transpose K J positive definite.

Exact declarations: `Ctrllib.stiffness_gram_posDef`.
Proof section: [Rectangular Gram](proof.md#rectangular-gram).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
