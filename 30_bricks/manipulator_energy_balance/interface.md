# Interface — Variable-inertia manipulator energy balance

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable variable-inertia manipulator energy balance boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Energy derivative

Along a supplied differentiable configuration path, manipulator energy derivative equals supplied power minus damping loss.

Exact declarations: `Ctrllib.manipulatorEnergy_hasDerivAt`.
Proof section: [Derivative and skew identity](proof.md#derivative-and-skew-identity).

### Skew power identity

The declared variable-inertia skew identity cancels kinetic and Coriolis terms.

Exact declarations: `Ctrllib.manipulator_power_identity`.
Proof section: [Derivative and skew identity](proof.md#derivative-and-skew-identity).

### Power bound

Nonnegative damping bounds energy derivative by external generalized power.

Exact declarations: `Ctrllib.manipulatorEnergy_deriv_le_power`.
Proof section: [Power bound and sign](proof.md#power-bound-and-sign).

### Energy nonnegative

Positive semidefinite inertia and potential terms make energy nonnegative.

Exact declarations: `Ctrllib.manipulatorEnergy_nonneg`.
Proof section: [Power bound and sign](proof.md#power-bound-and-sign).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
