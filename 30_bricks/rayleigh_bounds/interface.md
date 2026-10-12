# Interface — Rayleigh quadratic sandwich bounds

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

### Lower quadratic bound

Every eigenvalue at least c1 implies c1 times the squared norm is below the quadratic form.

Exact declarations: `Ctrllib.le_dotProduct_mulVec`.
Proof section: [Eigenbasis derivation](proof.md#eigenbasis-derivation).

### Upper quadratic bound

Every eigenvalue at most c2 implies the quadratic form is below c2 times the squared norm.

Exact declarations: `Ctrllib.dotProduct_mulVec_le`.
Proof section: [Eigenbasis derivation](proof.md#eigenbasis-derivation).

### Rayleigh sandwich

The extreme eigenvalues give the two-sided Rayleigh sandwich.

Exact declarations: `Ctrllib.rayleigh_sandwich`.
Proof section: [Extreme eigenvalues and matrix sandwich](proof.md#extreme-eigenvalues-and-matrix-sandwich).

### Matrix quadratic sandwich

Uniform eigenvalue bounds produce the QuadSandwich interface.

Exact declarations: `Ctrllib.quadSandwich_matrix`.
Proof section: [Extreme eigenvalues and matrix sandwich](proof.md#extreme-eigenvalues-and-matrix-sandwich).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
