# Interface — Ideal point-mass stability

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The record combines the reusable positive-energy and Lyapunov-stability result with a separately established global-convergence result; the final global endpoint has an explicit Lean proof dependency on both guarantees.

## Evidence and dependencies


## Inputs

- Positive scalar mass m, damping d, and stiffness k
- The three-dimensional product state z = (v,x) with velocity first
- The operator-exponential flow of the displayed point-mass field
- The mechanical energy V(v,x) = (m/2)||v||^2 + (k/2)||x||^2

## Assumptions

- m > 0, d > 0, and k > 0 for the constant-coefficient Euclidean system
- The flow and its solution property are supplied by the PointMassComFlow construction
- The semidefinite derivative is handled by the LaSalle route; strict energy decrease is not assumed
- Robot, moving-reference, sampled-controller, saturation, frame, and unit correspondence remain external

## Outputs

### Point mass energy positivity

For positive $m$ and $k$, the mechanical energy is zero at the origin and strictly positive at every nonzero state.

Exact declarations: `Ctrllib.pointMassEnergy_pos`.
Proof section: [Energy and positivity](proof.md#energy-and-positivity).

### Point mass lyapunov stability

For $m>0$, $d>0$, and $k>0$, the origin of the specified point-mass flow is Lyapunov stable.

Exact declarations: `Ctrllib.pointMass_lyapStable`.
Proof section: [Derivative and Lyapunov stability](proof.md#derivative-and-lyapunov-stability).

### Point mass global stability

The specified flow is Lyapunov stable and every initial state converges to the origin, as the global conjunction endpoint.

Exact declarations: `Ctrllib.pointMass_globally_asymptotically_stable`.
Proof section: [Global convergence](proof.md#global-convergence).

### Point mass local asymptotic stability

The specified point-mass origin satisfies the formal local asymptotic-stability predicate.

Exact declarations: `Ctrllib.pointMass_asympStable`.
Proof section: [Global convergence](proof.md#global-convergence).

## Composition

- Uses `Ctrllib.pointMass_lyapStable`, `Ctrllib.pointMass_tendsto_zero`; establishes `Ctrllib.pointMass_globally_asymptotically_stable`. The global endpoint pairs the independently proved Lyapunov stability and all-initial-state convergence guarantees for the same flow.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
