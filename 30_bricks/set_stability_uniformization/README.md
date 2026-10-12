---
type: proof
kind: brick
brick_id: set_stability_uniformization
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- elhawwary2013reduction
- elhawwary2009reduction
lean_package: ctrllib
lean_modules:
- ReductionStabilityFinish
- ReductionUniformization
- ReductionAttraction
lean_declarations:
- Ctrllib.UniformSemiAttractorRelativeTo
- Ctrllib.infDist_subCollar_of_mem_inter
- Ctrllib.uniform_basin_of_uniformSemiAttractor
- Ctrllib.stableSet_of_uniformSemiAttractor
- Ctrllib.contDep_of_flow
- Ctrllib.exists_firstExitTime
- Ctrllib.exists_uniform_tube_radius
- Ctrllib.firstExit_of_not_stableSet
- Ctrllib.stableSet_of_uniformSemiAttractor_of_forwardInvariant
- Ctrllib.exists_captureTime_ball
- Ctrllib.uniformSemiAttractor_of_asymStableRelativeTo
- Ctrllib.reduction_asymptotic_stability_of_asymStableRelativeTo
- Ctrllib.reduction_asymptotic_stability_of_uniformSemiAttractor
internal_bricks:
- omega_limit_reduction
application_interfaces:
- flow_continuous_dependence
- forward_invariance
- uniform_capture
brick_level: composite
level_reason: 'The two modules provide one uniformization pipeline: capture gives a semi-attractor, exit-time arguments give stability, and relative asymptotic stability supplies uniform capture.'
summary: Uniform capture and continuous dependence turn relative attraction into uniform semi-attraction and set stability, with an exit-time proof for the forward-invariant case.
keywords:
- uniformization
- set_stability
- capture_time
- continuous_dependence
interface:
  inputs:
  - A supplied continuous two-sided flow and nested target sets Gamma1 inside Gamma2.
  - Relative stability and attraction, or an explicit uniform semi-attractor premise, selected by endpoint.
  assumptions:
  - Uniformization from relative asymptotic stability requires finite dimension, closed forward-invariant Gamma2, and inclusion Gamma1 in Gamma2.
  - Full stability requires nonempty compact Gamma1, local uniform boundedness, local stability near Gamma1, and uniform semi-attraction.
  - The base stability endpoint consumes first-exit and continuous-dependence premises; its strengthened form derives these using finite dimension and forward invariance of Gamma1.
  - The final reduction additionally consumes local attraction to Gamma2 and relative stability and attraction; the final variant derives uniform semi-attraction using forward invariance of Gamma2.
  outputs:
  - id: uniform_capture
    statement: Relative asymptotic stability yields a uniform semi-attractor and a uniform capture-time ball.
    declarations:
    - Ctrllib.exists_captureTime_ball
    - Ctrllib.uniformSemiAttractor_of_asymStableRelativeTo
    proof_section: Uniform capture
  - id: stability_from_capture
    statement: A uniform basin exists over compact subsets of the target; with local boundedness, local stability, and the stated flow regularity, uniform semi-attraction yields full stability.
    declarations:
    - Ctrllib.uniform_basin_of_uniformSemiAttractor
    - Ctrllib.stableSet_of_uniformSemiAttractor
    - Ctrllib.stableSet_of_uniformSemiAttractor_of_forwardInvariant
    proof_section: Stability from capture
  - id: exit_time
    statement: Failure of stability produces a first exit time and a uniform tube-radius obstruction.
    declarations:
    - Ctrllib.contDep_of_flow
    - Ctrllib.exists_firstExitTime
    - Ctrllib.exists_uniform_tube_radius
    - Ctrllib.firstExit_of_not_stableSet
    proof_section: Exit-time argument
  - id: final_reduction
    statement: The nested-set standing hypotheses yield full asymptotic stability; the final variant derives the uniform semi-attractor premise from relative stability and attraction.
    declarations:
    - Ctrllib.reduction_asymptotic_stability_of_uniformSemiAttractor
    - Ctrllib.reduction_asymptotic_stability_of_asymStableRelativeTo
    proof_section: Final reduction
  composition:
  - uses:
    - Ctrllib.uniformSemiAttractor_of_asymStableRelativeTo
    establishes: Ctrllib.reduction_asymptotic_stability_of_asymStableRelativeTo
    explanation: Relative asymptotic stability first produces uniform capture, which the final endpoint consumes.
---

# Set stability uniformization


## Notation

A uniform semi-attractor means that a neighborhood of initial points is
captured in a prescribed target neighborhood after one common time. Collars
are neighborhoods described by infimum distance.

## Statement

The Brick records the capture, continuous-dependence, and first-exit pipeline
used to uniformize relative set attraction and prove stability.

## Hypotheses

Flow continuity, forward invariance, metric neighborhoods, and capture
premises are explicit at each endpoint.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded uniform and stability implications. It does not
establish flow existence, controller implementation, or uniformity outside
the stated neighborhoods.

## Sources


## Evidence summary

Lean module: ctrllib/Ctrllib/ReductionStabilityFinish.lean,
ReductionAttraction.lean, and ReductionUniformization.lean. Declaration: the manifest selects capture,
continuous-dependence, exit-time, and stability endpoints. Acceptance:
mathematical acceptance is not claimed; status is given_assumptions. Axiom:
current Xylem capture reports the standard profile for captured bodies.
Encodes: uniform semi-attraction and set stability under stated flow premises.

## Limitations

Uniformity is local to the radii and target neighborhoods supplied by the
applier. All-time flow and finite-dimensional assumptions must be checked.

## Discrepancies and open items

No discrepancy was found in the inspected theorem statements and bodies.
The exact neighborhood convention should be fixed when an application binds
the abstract set definitions to a physical state space.
