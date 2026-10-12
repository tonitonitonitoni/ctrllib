# Interface — Cascade attractivity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The endpoints share one two-component cascade estimate, with attractivity and boundedness as distinct conclusions.

## Evidence and dependencies


## Inputs

- Driven and driving trajectories x1 and x2, a scalar function V on the driven state, a supplied derivative of V(x1(t)), and coupling constants a and c.
- For attractivity, a lower class-K-infinity comparison function alpha1; for boundedness, a nonnegative driver ceiling Mx.

## Assumptions

- a > 0, c >= 0, continuity of V(x1(t)), and the exact right-domain derivative premise on nonnegative time.
- The supplied rate satisfies vprime(t) <= -a V(x1(t)) + c ||x2(t)||.
- Attractivity requires alpha1(||x1(t)||) <= V(x1(t)) and x2(t) -> 0.
- The bounded endpoint requires V(x1(0)) >= 0 and ||x2(t)|| <= Mx with Mx >= 0.
- The COM specialization retains its own supplied-flow, operator, and precompactness premises.

## Outputs

### Attractive

The coupled cascade trajectory converges to the target under the attractivity hypotheses.

Exact declarations: `Ctrllib.cascade_attractive`, `Ctrllib.propIV1_cascade_attractive`.
Proof section: [Attractivity](proof.md#attractivity).

### Bounded

For all t >= 0, V(x1(t)) <= V(x1(0)) + c Mx / a; the formal conclusion is a value ceiling.

Exact declarations: `Ctrllib.cascade_bounded`.
Proof section: [Boundedness](proof.md#boundedness).

### Sandwich limit

A nonnegative quantity squeezed by class-K-infinity transforms tends to zero.

Exact declarations: `Ctrllib.IsClassKInfinity.tendsto_zero_of_sandwich`.
Proof section: [Class-K-infinity transport](proof.md#class-k-infinity-transport).

## Composition

- Uses `Ctrllib.cascade_attractive`; establishes `Ctrllib.propIV1_cascade_attractive`. The specialized Proposition IV.1 endpoint follows the same cascade attractivity route with its concrete driving subsystem.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
