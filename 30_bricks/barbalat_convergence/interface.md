# Interface — Barbalat convergence

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The derivative-form lemma is the atomic limit result; the Lyapunov-like and integral forms are typed bridges whose proof paths explicitly consume it.

## Evidence and dependencies


## Inputs

- A differentiable real function, a finite limit, and a uniformly continuous derivative.
- For integral Barbalat, a uniformly continuous integrand and convergence of its interval integral.

## Assumptions

- The Lyapunov-like form additionally assumes a lower bound and nonpositive derivative.

## Outputs

### Derivative barbalat

If f converges at infinity and f' is uniformly continuous, then f' converges to zero.

Exact declarations: `Ctrllib.barbalat`.
Proof section: [Derivative form](proof.md#derivative-form).

### Lyapunov barbalat

A lower-bounded nonincreasing scalar Lyapunov function with uniformly continuous derivative has derivative tending to zero.

Exact declarations: `Ctrllib.barbalat_lyapunov`.
Proof section: [Lyapunov-like form](proof.md#lyapunov-like-form).

### Integral barbalat

A uniformly continuous integrand whose integral from zero has a finite limit converges to zero.

Exact declarations: `Ctrllib.barbalat_integral`.
Proof section: [Integral form](proof.md#integral-form).

## Composition

- Uses `Ctrllib.barbalat`; establishes `Ctrllib.barbalat_lyapunov`. Monotone convergence supplies the finite limit of V, then the derivative form is applied.
- Uses `Ctrllib.barbalat`; establishes `Ctrllib.barbalat_integral`. FTC-1 supplies the derivative witness for the integral primitive.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
