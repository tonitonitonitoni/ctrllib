---
type: proof
kind: brick
brick_id: cascade_attractivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules:
- Cascade
lean_declarations:
- Ctrllib.IsClassKInfinity.tendsto_zero_of_sandwich
- Ctrllib.cascade_attractive
- Ctrllib.cascade_bounded
- Ctrllib.propIV1_cascade_attractive
internal_bricks:
- comparison_functions
- differential_comparison
application_interfaces:
- cascade_trajectory
- class_k_infinity
brick_level: composite
level_reason: The endpoints share one two-component cascade estimate, with attractivity and boundedness as distinct conclusions.
summary: A vanishing driving trajectory and a lower class-K-infinity Lyapunov bound give joint cascade attractivity; bounded driving gives the stated Lyapunov-value ceiling.
keywords:
- cascade
- attractivity
- boundedness
- class_K_infinity
interface:
  inputs:
  - Driven and driving trajectories x1 and x2, a scalar function V on the driven state, a supplied derivative of V(x1(t)), and coupling constants a and c.
  - For attractivity, a lower class-K-infinity comparison function alpha1; for boundedness, a nonnegative driver ceiling Mx.
  assumptions:
  - a > 0, c >= 0, continuity of V(x1(t)), and the exact right-domain derivative premise on nonnegative time.
  - The supplied rate satisfies vprime(t) <= -a V(x1(t)) + c ||x2(t)||.
  - Attractivity requires alpha1(||x1(t)||) <= V(x1(t)) and x2(t) -> 0.
  - The bounded endpoint requires V(x1(0)) >= 0 and ||x2(t)|| <= Mx with Mx >= 0.
  - The COM specialization retains its own supplied-flow, operator, and precompactness premises.
  outputs:
  - id: attractive
    statement: The coupled cascade trajectory converges to the target under the attractivity hypotheses.
    declarations:
    - Ctrllib.cascade_attractive
    - Ctrllib.propIV1_cascade_attractive
    proof_section: Attractivity
  - id: bounded
    statement: For all t >= 0, V(x1(t)) <= V(x1(0)) + c Mx / a; the formal conclusion is a value ceiling.
    declarations:
    - Ctrllib.cascade_bounded
    proof_section: Boundedness
  - id: sandwich_limit
    statement: A nonnegative quantity squeezed by class-K-infinity transforms tends to zero.
    declarations:
    - Ctrllib.IsClassKInfinity.tendsto_zero_of_sandwich
    proof_section: Class-K-infinity transport
  composition:
  - uses:
    - Ctrllib.cascade_attractive
    establishes: Ctrllib.propIV1_cascade_attractive
    explanation: The specialized Proposition IV.1 endpoint follows the same cascade attractivity route with its concrete driving subsystem.
---

# Cascade attractivity


## Notation

The cascade has an upstream and downstream component. Class-K-infinity
functions lower-bound the driven Lyapunov value in terms of the driven norm.

## Statement

The Brick packages the cascade attractivity and boundedness endpoints.

## Hypotheses

Component comparison inequalities, class-K-infinity properties, and
trajectory regularity are explicit inputs.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes trajectory-level convergence or a Lyapunov-value ceiling under the encoded
premises. It does not establish stability of a physical interconnection.

## Sources

The organization follows the project cascade reader and Panteley (2001)
cascade conventions. The exact results are project derivations in Cascade.lean.

## Evidence summary

Lean module: ctrllib/Ctrllib/Cascade.lean. Declaration: the manifest selects
the sandwich limit, attractivity, boundedness, and proposition-IV.1 endpoints.
Acceptance: mathematical acceptance is not claimed; status is
given_assumptions. Axiom: current Xylem capture reports the standard profile.
Encodes: convergence and boundedness of the abstract cascade trajectory.

## Limitations

No component controller, interconnection model, or epsilon-delta stability
claim is added beyond the exact hypotheses.

## Discrepancies and open items

No discrepancy was found in the inspected statements and bodies. The
application must supply the coupling inequalities and their domains.
