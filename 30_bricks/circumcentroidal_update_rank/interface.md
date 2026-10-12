# Interface — Circumcentroidal update rank

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** One focused rank-factorization boundary.

## Evidence and dependencies


## Inputs

- The corrected Jacobian and update factors with the finite dimensions in CircumcentroidalRank.

## Assumptions

- Rank and matrix dimensions are exactly those in the canonical declarations.
- This bounds the update term only and adds no full-rank or physical premise.

## Outputs

### Update rank

The corrected Jacobian update rank is bounded by the update factor width.

Exact declarations: `Ctrllib.correctedJacobian_update_rank_le`.
Proof section: [Update rank](proof.md#update-rank).

### Six by three rank

The circumcentroidal update has rank at most three.

Exact declarations: `Ctrllib.circumcentroidal_update_rank_le_three`.
Proof section: [Six-dimensional specialization](proof.md#six-dimensional-specialization).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
