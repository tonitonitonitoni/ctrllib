# Interface — Coupled LaSalle collapse specialization

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The outputs form one reusable coupled lasalle collapse specialization boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Invariant collapse

The largest invariant subset of the zero-dissipation set is the origin under the stated injectivity premises.

Exact declarations: `Ctrllib.coupled_collapse`.
Proof section: [Invariant collapse](proof.md#invariant-collapse).

### Attractivity

The coupled state tends to the origin under the supplied flow and precompactness hypotheses.

Exact declarations: `Ctrllib.coupled_attractive`.
Proof section: [Invariant collapse](proof.md#invariant-collapse).

### Matrix specialization

The Euclidean coupled matrix has the declared passivity and injectivity consequences.

Exact declarations: `Ctrllib.coupled_attractive_matrix`.
Proof section: [Matrix specialization](proof.md#matrix-specialization).

### Lower sandwich

The block Lyapunov function has the lower class-K sandwich hsand.

Exact declarations: `Ctrllib.blockLyap_hsand`.
Proof section: [Lower sandwich](proof.md#lower-sandwich).

## Composition

- Uses `Ctrllib.coupled_collapse`; establishes `Ctrllib.coupled_attractive`. The attractivity endpoint applies the invariant-collapse conclusion under its additional flow and precompactness premises.
- Uses `Ctrllib.blockLyap_classKInfinity_sandwich`; establishes `Ctrllib.blockLyap_hsand`. The lower sandwich endpoint is the class-K consequence; the strict hdi side remains outside this record.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
