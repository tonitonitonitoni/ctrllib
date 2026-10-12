# Interface — Smallest singular value and gain comparison

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** This record groups one reusable mathematical boundary; the listed outputs share the same typed matrices and proof interface.

## Evidence and dependencies


## Inputs

- Typed finite-dimensional matrices, vectors, scalar fields, and theorem premises exactly as specified by the canonical declarations.

## Assumptions

- Dimensions, symmetry, positivity, rank, differentiability, and norm hypotheses are explicit in the declarations and are not inferred here.
- Application correspondence, numerical values, and physical realization are external interfaces.

## Outputs

### Square singular value

The last singular value of a nonempty square Euclidean matrix is positive exactly when its determinant is nonzero.

Exact declarations: `Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero`.
Proof section: [Square singular value](proof.md#square-singular-value).

### Square gain comparison

A supplied Euclidean lower-gain comparison transfers a nonnegative bound from Gamma to J and orders least gains.

Exact declarations: `Ctrllib.lowerGainBound_of_comparison`.
Proof section: [Gain comparison](proof.md#gain-comparison).

### Coordinated singular region

The concrete six-dimensional smallest singular value is equivalent to coordinated-transform invertibility.

Exact declarations: `Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos`.
Proof section: [Concrete coordinated bridge](proof.md#concrete-coordinated-bridge).

## Composition

- Uses `Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero`; establishes `Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos`. The concrete sigma-min theorem supplies the hsvd premise to the coordinated unit equivalence.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
