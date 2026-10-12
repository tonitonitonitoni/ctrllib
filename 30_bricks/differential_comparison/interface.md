# Interface — Differential comparison

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The records first establish scalar Grönwall estimates and then transport them through Lyapunov and class-K sandwich interfaces. Each transport has an explicit declaration path.

## Evidence and dependencies


## Inputs

- A scalar trajectory, derivative witness, continuity witness, and linear decrease inequality.
- For state estimates, a differentiable Lyapunov function and quadratic or class-K sandwich.

## Assumptions

- The comparison rate is positive where convergence is claimed.
- Regularity and nonnegativity premises are supplied by the applier.

## Outputs

### Scalar comparison

A Grönwall bound holds from an arbitrary start time, with convergence under a vanishing disturbance and a uniform bound under a bounded disturbance.

Exact declarations: `Ctrllib.comparison_shift`, `Ctrllib.comparison_tendsto_zero`, `Ctrllib.comparison_bounded`.
Proof section: [Scalar comparison](proof.md#scalar-comparison).

### Lyapunov rates

Lyapunov decrease gives finite-time comparison, exponential decay, perturbed ultimate bounds, and squared-state decay through a quadratic sandwich.

Exact declarations: `Ctrllib.lyapunov_comparison`, `Ctrllib.lyapunov_exp_decay`, `Ctrllib.lyapunov_ultimate_bound`, `Ctrllib.lyapunov_norm_sq_exp_decay`.
Proof section: [Lyapunov transport](proof.md#lyapunov-transport).

### Eventual disturbance floor

For a > 0 and M >= 0, scalar storage with v' <= -a*v + M eventually stays below M/a + epsilon for every positive epsilon. No sign assumption on v(0) is needed.

Exact declarations: `Ctrllib.comparison_eventual_floor`.
Proof section: [Eventual disturbance floor](proof.md#eventual-disturbance-floor).

### Dini and classk

The Dini-derivative comparison form and class-K sandwich estimate bound the state using the ray inverse.

Exact declarations: `Ctrllib.comparison_lemma_dini`, `Ctrllib.classK_sandwich_stability`.
Proof section: [Dini and class-K forms](proof.md#dini-and-class-k-forms).

## Composition

- Uses `Ctrllib.comparison_shift`; establishes `Ctrllib.comparison_eventual_floor`. The finite comparison is a vanishing exponential transient plus a disturbance term bounded by M/a.
- Uses `Ctrllib.comparison_shift`; establishes `Ctrllib.comparison_tendsto_zero`. Restarting the scalar bound after the disturbance falls below a target-dependent ceiling yields convergence.
- Uses `Ctrllib.comparison_shift`; establishes `Ctrllib.comparison_bounded`. A constant disturbance ceiling is inserted into the restartable bound.
- Uses `Ctrllib.lyapunov_comparison`; establishes `Ctrllib.lyapunov_exp_decay`. The zero-disturbance Grönwall expression simplifies to an exponential.
- Uses `Ctrllib.lyapunov_comparison`; establishes `Ctrllib.lyapunov_ultimate_bound`. The nonzero Grönwall expression is algebraically rewritten as a transient plus disturbance floor.
- Uses `Ctrllib.lyapunov_exp_decay`, `Ctrllib.QuadSandwich`; establishes `Ctrllib.lyapunov_norm_sq_exp_decay`. The lower and upper sandwich bounds transport the value estimate to the squared state norm.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
