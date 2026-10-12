---
type: proof
kind: brick
brick_id: actuation_error_bound
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ActuationBound]
lean_declarations: [Ctrllib.actuation_ultimate_bound, Ctrllib.actuation_state_ball]
internal_bricks: [differential_comparison]
application_interfaces: [bounded_actuation_disturbance, lyapunov_sandwich]
brick_level: composite
level_reason: >-
  Both outputs are thin wiring corollaries: the scalar endpoint specializes the
  comparison engine and the state endpoint adds the quadratic sandwich.
summary: >-
  A positive-rate Lyapunov inequality with a constant actuation-noise ceiling
  yields a uniform value bound and a division-free state residual bound.
keywords: [actuation, disturbance, residual_bound, lyapunov]
interface:
  inputs:
    - "A scalar or Lyapunov-value trajectory with the regularity and derivative premises of comparison_bounded."
    - "A nonnegative constant ceiling εbar and, for the state result, a QuadSandwich."
  assumptions:
    - "The decay rate a is positive and the initial Lyapunov value is nonnegative."
    - "The disturbance is bounded above by εbar on nonnegative time."
  outputs:
    - id: value_bound
      statement: "For all t≥0, v(t)≤v(0)+εbar/a."
      declarations: [Ctrllib.actuation_ultimate_bound]
      proof_section: "Scalar actuation ceiling"
    - id: state_ball
      statement: "For all t≥0, c₁||x(t)||²≤c₂||x(0)||²+εbar/a."
      declarations: [Ctrllib.actuation_state_ball]
      proof_section: "State residual bound"
  composition:
    - uses: [Ctrllib.comparison_bounded]
      establishes: Ctrllib.actuation_ultimate_bound
      explanation: "The generic disturbance ceiling is instantiated with εbar."
    - uses: [Ctrllib.actuation_ultimate_bound, Ctrllib.QuadSandwich]
      establishes: Ctrllib.actuation_state_ball
      explanation: "Lower and upper sandwich inequalities transport the value bound to the state norm."
---

# Actuation error bound


## Notation

`a>0` is the decrease rate, `εbar≥0` is a constant disturbance ceiling, and
`c₁||x||²≤V(x)≤c₂||x||²` is the quadratic sandwich.

## Statement

The Brick records the scalar ceiling and its state-level consequence.

## Hypotheses

Continuity, derivative, decrease, ceiling, and initial nonnegativity are all
premises. The ceiling is constant in time.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes a uniform for-all-time bound depending on the initial value. It
does not establish a lim-sup ultimate bound, actuator implementation, or
physical noise model.

## Sources

This is a generated project specialization of `comparison_bounded` and
`QuadSandwich`; the module header labels it obligation C1. No literature
novelty or source equation is claimed.

## Evidence summary

Lean module: ctrllib/Ctrllib/ActuationBound.lean. Declaration: the manifest
selects the scalar ceiling and state residual endpoints. Acceptance:
mathematical acceptance is not claimed; status is given_assumptions. Axiom: the
current Xylem capture reports the standard profile for the captured bodies.
Encodes: specialization of bounded comparison to a constant actuation-error
ceiling and a quadratic state residual inequality.

## Limitations

No current dedicated human reader was found for this module. The derivation
below is the authoritative authored account for this Brick.

## Discrepancies and open items

No formal discrepancy was found. A separate decision is needed if a future
record should state a true lim-sup ultimate bound.
