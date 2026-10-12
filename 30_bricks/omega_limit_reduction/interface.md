# Interface — Omega-limit reduction

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The reduction records share one omega-limit and distance-to-set argument, with stability and attraction as distinct but composable endpoints.

## Evidence and dependencies


## Inputs

- A supplied continuous two-sided real-time flow on a normed state space, a target set, and initial states.
- For nested-set reduction: nonempty compact Gamma1 inside closed Gamma2 in finite dimension.

## Assumptions

- Distance reduction needs forward precompactness and omega-limit containment; closedness of the target is not needed in this direction.
- The basic asymptotic-stability assembly consumes full set stability and a neighborhood of precompact orbits whose omega-limit sets lie in the target.
- The neighborhood containment theorem consumes full stability, relative stability and attraction, and local attraction to the outer set.
- The LaSalle adapter additionally requires a supplied solution flow, differentiable Lyapunov function with nonpositive directional derivative, and pointwise zero-set containment.
- The subsequence endpoint requires finite dimension and a nonempty closed bounded target; the relative collapse uses negative flow times.

## Outputs

### Distance reduction

Omega-limit containment implies convergence of distance to the target set.

Exact declarations: `Ctrllib.tendsto_infDist_of_omegaLimit_subset`, `Ctrllib.propIV1_tendsto`.
Proof section: [Distance and omega-limit reduction](proof.md#distance-and-omega-limit-reduction).

### Stability attraction

Supplied set stability and a neighborhood of precompact orbits landing in the target yield asymptotic stability.

Exact declarations: `Ctrllib.reduction_asymptotic_stability`.
Proof section: [Stability and attraction](proof.md#stability-and-attraction).

### Compactness obligations

Failure of stability or vanishing distance yields subsequences or escape sequences exposing the missing compactness obligation.

Exact declarations: `Ctrllib.exists_subseq_tendsto_mem_of_infDist_tendsto_zero`, `Ctrllib.escape_sequence_of_not_stableSet`, `Ctrllib.exists_forwardPrecompact_omegaLimit_subset_of_stableSet`.
Proof section: [Compactness and obstruction](proof.md#compactness-and-obstruction).

## Composition

- Uses `Ctrllib.eventually_mem_of_omegaLimit_subset`; establishes `Ctrllib.tendsto_infDist_of_omegaLimit_subset`. Eventual neighborhood membership is converted into the infimum-distance limit.
- Uses `Ctrllib.tendsto_infDist_of_omegaLimit_subset`; establishes `Ctrllib.reduction_asymptotic_stability`. The reduction endpoint combines stability with the distance convergence endpoint.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
