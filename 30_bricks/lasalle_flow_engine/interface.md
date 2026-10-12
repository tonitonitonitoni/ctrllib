# Interface — LaSalle flow engine

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The engine packages one omega-limit invariance argument for a supplied flow and solution trajectory. It has one coherent conclusion family.

## Evidence and dependencies


## Inputs

- A flow, a trajectory satisfying IsSolutionTo, and a Lyapunov function with a derivative inequality.
- A forward-precompactness witness, supplied directly or derived from boundedness or coercivity.

## Assumptions

- The flow and trajectory domains match the all-time definitions used by the module.
- The derivative is nonpositive on the forward trajectory and regularity permits composition.

## Outputs

### Invariant omega limit

The omega-limit set is nonempty, invariant, and V is constant on it with derivative zero.

Exact declarations: `Ctrllib.lasalle`.
Proof section: [LaSalle conclusion](proof.md#lasalle-conclusion).

### Eventual membership

If the omega-limit set lies in a target set, the trajectory eventually enters every neighborhood of that target.

Exact declarations: `Ctrllib.eventually_mem_of_omegaLimit_subset`.
Proof section: [Neighborhood conclusion](proof.md#neighborhood-conclusion).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
