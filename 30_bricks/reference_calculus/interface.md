# Interface — Reference trajectory calculus

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable reference trajectory calculus boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Reference composition

If u̇(t)=s(u(t)) and p'(u(t))=p₁(u(t)), then the derivative of p(u(t)) is s(u(t)) • p₁(u(t)).

Exact declarations: `Ctrllib.hasDerivAt_reference_comp`.
Proof section: [Reference composition](proof.md#reference-composition).

### Reference velocity

If s'(u(t))=s₁(u(t)) and p₁'(u(t))=p₂(u(t)) in addition to the phase premise, then the derivative of s(u(t)) • p₁(u(t)) is s(u(t))² • p₂(u(t)) + (s₁(u(t))s(u(t))) • p₁(u(t)).

Exact declarations: `Ctrllib.hasDerivAt_reference_velocity`.
Proof section: [Reference velocity](proof.md#reference-velocity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
