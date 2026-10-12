# Interface — Coupled field energy and dissipation

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable coupled field energy and dissipation boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Field derivative

The coupled field energy has the declared derivative and field-only derivative.

Exact declarations: `Ctrllib.coupledEnergy_fderiv_field`.
Proof section: [Field derivative](proof.md#field-derivative).

### Dissipation

Under the passivity hypothesis, the total Lyapunov rate equals the negative dissipative quadratic term.

Exact declarations: `Ctrllib.coupled_total_dissipation`.
Proof section: [Total dissipation](proof.md#total-dissipation).

### Decrease

The coupled Lyapunov rate is nonpositive under nonnegative damping.

Exact declarations: `Ctrllib.coupled_decrease`.
Proof section: [Total dissipation](proof.md#total-dissipation).

### Convergence ceiling

With supplied real/field convergence and precompactness hypotheses, the coupled block tends to zero.

Exact declarations: `Ctrllib.coupled_block_tendsto`.
Proof section: [Convergence ceiling](proof.md#convergence-ceiling).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
