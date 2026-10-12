# Interface — Rectangular rank and nullspace consequences

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

### Full row rank

For a 6 by 7 Euclidean matrix, positive sigmaSixEuclid is equivalent to range dimension six.

Exact declarations: `Ctrllib.sigmaSixEuclid_pos_iff_finrank_range_eq_six`.
Proof section: [Full row rank](proof.md#full-row-rank).

### Nullity one

Positive sigmaSixEuclid gives a one-dimensional kernel and a nonzero kernel witness.

Exact declarations: `Ctrllib.sigmaSixEuclid_pos_implies_finrank_ker_eq_one`.
Proof section: [Nullity one](proof.md#nullity-one).

### Kernel span

Any kernel vector is a scalar multiple of a supplied nonzero kernel vector.

Exact declarations: `Ctrllib.sigmaSixEuclid_kernel_spanned_by`.
Proof section: [Kernel spanning](proof.md#kernel-spanning).

### Scaling kernel

Nonzero scalar scaling preserves the rectangular zero-set and rank decision.

Exact declarations: `Ctrllib.sigmaSixEuclid_smul_pos_iff`.
Proof section: [Scaling](proof.md#scaling).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
