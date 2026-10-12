# Interface — Lyapunov stability

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The record groups local stability, asymptotic stability, and the radial-unboundedness global extension around one Lyapunov interface.

## Evidence and dependencies


## Inputs

- A finite-dimensional real normed state space, a supplied real-time flow solving the vector field, and a differentiable real Lyapunov function.

## Assumptions

- V(0)=0 and V(x)>0 for x nonzero; stability requires DV(x)[f(x)] <= 0 everywhere.
- Asymptotic stability additionally requires f(0)=0 and strict DV(x)[f(x)] < 0 for x nonzero.
- Global attraction additionally requires V to tend to infinity along the cobounded filter.
- No class-K sandwich or separately supplied precompactness is needed by these stability endpoints.

## Outputs

### Local stability

A positive definite nonincreasing Lyapunov function yields Lyapunov stability.

Exact declarations: `Ctrllib.lyapunov_stable`.
Proof section: [Stability](proof.md#stability).

### Asymptotic stability

Strict negative field derivative away from the equilibrium gives local asymptotic stability via a bounded stability trap and LaSalle.

Exact declarations: `Ctrllib.lyapunov_asymptotically_stable`.
Proof section: [Asymptotic stability](proof.md#asymptotic-stability).

### Global extension

Radial unboundedness makes Lyapunov sublevels bounded and extends asymptotic stability globally.

Exact declarations: `Ctrllib.sublevel_isBounded_of_tendsto_cobounded`, `Ctrllib.lyapunov_globally_asymptotically_stable`.
Proof section: [Global extension](proof.md#global-extension).

## Composition

- Uses `Ctrllib.lasalle`; establishes `Ctrllib.lyapunov_globally_asymptotically_stable`. The global endpoint invokes LaSalle after bounding every forward orbit.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
