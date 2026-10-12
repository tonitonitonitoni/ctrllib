# Interface — Tikhonov inverse residual bound

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable tikhonov inverse residual bound boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Inverse factor

An indexed orthogonal SVD factors exact inverse minus damped inverse.

Exact declarations: `Ctrllib.tikhonov_inverse_difference_factor`.
Proof section: [Residual factorization](proof.md#residual-factorization).

### Inverse bound

If singular values are bounded below by delta, the residual norm is at most lambda divided by delta cubed.

Exact declarations: `Ctrllib.tikhonov_inverse_difference_norm_bound`.
Proof section: [Residual norm bound](proof.md#residual-norm-bound).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
