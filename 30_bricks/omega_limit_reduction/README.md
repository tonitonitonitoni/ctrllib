---
type: proof
kind: brick
brick_id: omega_limit_reduction
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- elhawwary2013reduction
lean_package: ctrllib
lean_modules:
- Reduction
- ReductionStability
- ReductionAttraction
lean_declarations:
- Ctrllib.StableSet
- Ctrllib.AttractiveSet
- Ctrllib.AsymStableSet
- Ctrllib.StableRelativeTo
- Ctrllib.AttractiveRelativeTo
- Ctrllib.AsymStableRelativeTo
- Ctrllib.tendsto_infDist_of_omegaLimit_subset
- Ctrllib.reduction_asymptotic_stability
- Ctrllib.propIV1_tendsto
- Ctrllib.exists_subseq_tendsto_mem_of_infDist_tendsto_zero
- Ctrllib.escape_sequence_of_not_stableSet
- Ctrllib.omegaLimit_subset_of_tendsto_infDist
- Ctrllib.omegaLimit_subset_of_stableRelativeTo
- Ctrllib.exists_forwardPrecompact_omegaLimit_subset_of_stableSet
internal_bricks:
- lasalle_flow_engine
application_interfaces:
- flow
- distance_to_target
- stability_sets
brick_level: composite
level_reason: The reduction records share one omega-limit and distance-to-set argument, with stability and attraction as distinct but composable endpoints.
summary: Forward precompactness converts omega-limit containment into distance convergence; explicit full and relative stability premises provide the nested-set attraction assembly.
keywords:
- omega_limit
- reduction
- stability
- attraction
- distance
interface:
  inputs:
  - A supplied continuous two-sided real-time flow on a normed state space, a target set, and initial states.
  - 'For nested-set reduction: nonempty compact Gamma1 inside closed Gamma2 in finite dimension.'
  assumptions:
  - Distance reduction needs forward precompactness and omega-limit containment; closedness of the target is not needed in this direction.
  - The basic asymptotic-stability assembly consumes full set stability and a neighborhood of precompact orbits whose omega-limit sets lie in the target.
  - The neighborhood containment theorem consumes full stability, relative stability and attraction, and local attraction to the outer set.
  - The LaSalle adapter additionally requires a supplied solution flow, differentiable Lyapunov function with nonpositive directional derivative, and pointwise zero-set containment.
  - The subsequence endpoint requires finite dimension and a nonempty closed bounded target; the relative collapse uses negative flow times.
  outputs:
  - id: distance_reduction
    statement: Omega-limit containment implies convergence of distance to the target set.
    declarations:
    - Ctrllib.tendsto_infDist_of_omegaLimit_subset
    - Ctrllib.propIV1_tendsto
    proof_section: Distance and omega-limit reduction
  - id: stability_attraction
    statement: Supplied set stability and a neighborhood of precompact orbits landing in the target yield asymptotic stability.
    declarations:
    - Ctrllib.reduction_asymptotic_stability
    proof_section: Stability and attraction
  - id: compactness_obligations
    statement: Failure of stability or vanishing distance yields subsequences or escape sequences exposing the missing compactness obligation.
    declarations:
    - Ctrllib.exists_subseq_tendsto_mem_of_infDist_tendsto_zero
    - Ctrllib.escape_sequence_of_not_stableSet
    - Ctrllib.exists_forwardPrecompact_omegaLimit_subset_of_stableSet
    proof_section: Compactness and obstruction
  composition:
  - uses:
    - Ctrllib.eventually_mem_of_omegaLimit_subset
    establishes: Ctrllib.tendsto_infDist_of_omegaLimit_subset
    explanation: Eventual neighborhood membership is converted into the infimum-distance limit.
  - uses:
    - Ctrllib.tendsto_infDist_of_omegaLimit_subset
    establishes: Ctrllib.reduction_asymptotic_stability
    explanation: The reduction endpoint combines stability with the distance convergence endpoint.
---

# Omega-limit reduction


## Notation

infDist denotes distance from a point to a target set. StableSet and
AttractiveSet are the flow-relative set properties defined by the Lean module.

## Statement

The Brick groups the reduction lemmas that turn omega-limit information and
relative stability or attraction into set convergence.

## Hypotheses

Every endpoint carries its own metric, flow, invariance, compactness, and
relative-set premises. The Brick does not infer them from a model.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded topological reductions. It does not establish
trajectory existence, controller correctness, or physical attractivity.

## Sources


## Evidence summary

Lean module: ctrllib/Ctrllib/Reduction.lean,
ReductionStability.lean, and ReductionAttraction.lean. Declaration: the
manifest records the selected set definitions, distance, subsequence, and
stability-attraction endpoints. Acceptance: mathematical acceptance is not
claimed; status is given_assumptions. Axiom: current Xylem capture reports
the standard profile for captured bodies. Encodes: omega-limit reduction and
relative set stability or attraction.

## Limitations

Compactness, properness, and flow-domain assumptions remain application
obligations. Distance convergence is a formal trajectory consequence.

## Discrepancies and open items

No discrepancy was found in the inspected theorem statements and bodies.
Applications should state whether the supplied relative properties are local
or global.
