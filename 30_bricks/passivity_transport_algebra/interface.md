# Interface — Passivity and transported skew algebra

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable passivity and transported skew algebra boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Skew cancellation

A skew quadratic form vanishes, yielding the Mdot minus 2C cancellation.

Exact declarations: `Ctrllib.dotProduct_mulVec_self_of_skew`.
Proof section: [Skew cancellation](proof.md#skew-cancellation).

### Passivity identity

The kinetic-energy algebra reduces to the damping term under the declared skew hypothesis.

Exact declarations: `Ctrllib.passivity_identity`.
Proof section: [Passivity identity](proof.md#passivity-identity).

### Transport

Congruence transport preserves skewness and the passivity identity.

Exact declarations: `Ctrllib.transported_passivity_identity`.
Proof section: [Congruence transport](proof.md#congruence-transport).

### Characteristic extension

The skew quadratic cancellation holds over a field of characteristic different from two.

Exact declarations: `Ctrllib.dotProduct_mulVec_self_of_skew_of_charP`.
Proof section: [Characteristic extension](proof.md#characteristic-extension).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
