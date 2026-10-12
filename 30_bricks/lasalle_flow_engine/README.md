---
type: proof
kind: brick
brick_id: lasalle_flow_engine
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [khalil2002nonlinear]
lean_package: ctrllib
lean_modules: [LaSalle]
lean_declarations: [Ctrllib.eq_on_omegaLimit_of_tendsto, Ctrllib.IsSolutionTo, Ctrllib.ForwardPrecompact, Ctrllib.forwardPrecompact_of_isBounded, Ctrllib.forwardPrecompact_of_coercive, Ctrllib.IsSolutionTo.hasDerivAt_comp, Ctrllib.lasalle, Ctrllib.eventually_mem_of_omegaLimit_subset]
internal_bricks: []
application_interfaces: [flow_solution, forward_precompactness, lyapunov_derivative]
brick_level: atomic
level_reason: >-
  The engine packages one omega-limit invariance argument for a supplied flow
  and solution trajectory. It has one coherent conclusion family.
summary: >-
  A bounded or coercive forward trajectory with a Lyapunov function constant
  along omega-limit points yields nonempty omega-limit structure, invariance,
  and vanishing derivative on that limit set.
keywords: [lasalle, omega_limit, invariance, forward_precompactness]
interface:
  inputs:
    - "A flow, a trajectory satisfying IsSolutionTo, and a Lyapunov function with a derivative inequality."
    - "A forward-precompactness witness, supplied directly or derived from boundedness or coercivity."
  assumptions:
    - "The flow and trajectory domains match the all-time definitions used by the module."
    - "The derivative is nonpositive on the forward trajectory and regularity permits composition."
  outputs:
    - id: invariant_omega_limit
      statement: "The omega-limit set is nonempty, invariant, and V is constant on it with derivative zero."
      declarations: [Ctrllib.lasalle]
      proof_section: "LaSalle conclusion"
    - id: eventual_membership
      statement: "If the omega-limit set lies in a target set, the trajectory eventually enters every neighborhood of that target."
      declarations: [Ctrllib.eventually_mem_of_omegaLimit_subset]
      proof_section: "Neighborhood conclusion"
  composition: []
---

# LaSalle flow engine


## Notation

The omega-limit set is formed from the supplied all-time flow and trajectory.
Forward precompactness is either an explicit premise or a consequence of
boundedness or coercivity in the available finite-dimensional setting.

## Statement

The Brick records the omega-limit and invariance conclusion of the LaSalle
engine for a supplied solution.

## Hypotheses

The flow, solution, derivative, and precompactness hypotheses are explicit.
The theorem does not construct a solution of an ODE.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded omega-limit geometry and eventual-neighborhood
consequence. It does not establish model validity, trajectory existence, or
physical invariance.

## Sources

The mathematical organization follows the project LaSalle reader and the
Khalil (2002) invariance principle convention. The formal result is a project
derivation in LaSalle.lean.

## Evidence summary

Lean module: ctrllib/Ctrllib/LaSalle.lean. Declaration: the manifest selects
the solution, precompactness, LaSalle, and eventual-membership endpoints.
Acceptance: mathematical acceptance is not claimed; status is
given_assumptions. Axiom: the current Xylem capture reports the standard
profile for the captured bodies. Encodes: an abstract flow-level LaSalle
invariance engine.

## Limitations

All-time flow and forward-precompactness conventions must be matched by an
application. No ODE existence or source-model correspondence is included.

## Discrepancies and open items

No discrepancy was found in the inspected declarations and proof bodies.
Finite-dimensional coercivity side conditions should be reviewed per use.
