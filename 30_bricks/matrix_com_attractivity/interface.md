# Interface — Matrix center-of-mass attractivity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The record discharges the matrix operator premises of the abstract center-of-mass attractivity theorem and then invokes that theorem.

## Evidence and dependencies


## Inputs

- A positive-definite matrix and a supplied center-of-mass flow solution.
- The forward-precompactness and derivative premises required by the abstract attractivity endpoint.

## Assumptions

- The matrix is self-adjoint and invertible under the exact finite-dimensional hypotheses.

## Outputs

### Matrix operator facts

The matrix map is self-adjoint, injective, invertible, and has nonnegative induced pairing.

Exact declarations: `Ctrllib.euclideanCLM_self_adjoint`, `Ctrllib.euclideanCLM_inv`, `Ctrllib.euclideanCLM_dotProduct_nonneg`, `Ctrllib.euclideanCLM_dotProduct_def`, `Ctrllib.euclideanCLM_injective`.
Proof section: [Matrix premises](proof.md#matrix-premises).

### Com attraction

The matrix-specialized center-of-mass trajectory is attractive under the abstract flow premises.

Exact declarations: `Ctrllib.com_attractive_matrix`.
Proof section: [Attractivity conclusion](proof.md#attractivity-conclusion).

## Composition

- Uses `Ctrllib.euclideanCLM_self_adjoint`, `Ctrllib.euclideanCLM_dotProduct_nonneg`, `Ctrllib.euclideanCLM_injective`; establishes `Ctrllib.com_attractive_matrix`. The matrix facts discharge the operator premises of the abstract center-of-mass attractivity theorem.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
