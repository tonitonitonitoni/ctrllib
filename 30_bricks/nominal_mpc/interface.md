# Interface — Nominal MPC shift and append

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The rollout, feasible plan and cost definitions support one reusable finite-plan shift-and-append interface.

## Evidence and dependencies


## Inputs

- Arbitrary state/input types; fixed absolute-time transition, admissibility and cost data; terminal sets, costs and feedback defined on those sets.
- A positive horizon N=n+1 and a feasible input plan at time k.

## Assumptions

- Terminal feedback gives admissibility, terminal successor membership, and terminal cost decrease at every absolute time.
- The successor used by the new plan is exactly the first predicted nominal state; overlapping time data agree.

## Outputs

### Shift append

The plan with its first input removed and terminal feedback appended is feasible from the first predicted successor, and its cost is at most the old cost minus the first stage cost.

Exact declarations: `Ctrllib.nominal_shift_append`.
Proof section: [Cost decrease](proof.md#cost-decrease).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
