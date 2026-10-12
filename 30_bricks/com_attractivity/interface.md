# Interface — Abstract CoM attractivity Brick

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This Brick exposes one abstract trajectory-attractivity implication.  The energy, LaSalle, and invariant-set declarations are supporting steps inside that single reusable result rather than separate public guarantees.

## Evidence and dependencies


## Inputs

- A real inner-product state space H and state z0 in H x H
- Continuous linear maps M, D, K, and Minv defining the second-order field
- A continuous real-time flow phi that solves the displayed field
- The selected orbit closure {phi(t,z0) : t >= 0}

## Assumptions

- M and K are self-adjoint, M (Minv w) = w, damping is nonnegative and definite, and K is injective
- The supplied flow satisfies the flow laws and its trajectory derivative equals the field
- The selected forward orbit is precompact, expressed by compactness of its closure
- Positive definiteness of the energy and physical robot/controller correspondence are not assumed

## Outputs

### Abstract trajectory attractivity

For the selected forward-precompact trajectory, the dissipative second-order field satisfies phi(t,z0) -> 0 as t -> +infinity.

Exact declarations: `Ctrllib.com_attractive`.
Proof section: [Step 4: convergence of the entire trajectory](proof.md#step-4-convergence-of-the-entire-trajectory).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
