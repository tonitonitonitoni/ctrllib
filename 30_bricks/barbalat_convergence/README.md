---
type: proof
kind: brick
brick_id: barbalat_convergence
result_kind: mixed
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [khalil2002nonlinear]
lean_package: ctrllib
lean_modules: [Barbalat, KhalilComparison]
lean_declarations: [Ctrllib.barbalat, Ctrllib.barbalat_lyapunov, Ctrllib.barbalat_integral]
internal_bricks: []
application_interfaces: [uniformly_continuous_derivative, convergent_integral]
brick_level: composite
level_reason: >-
  The derivative-form lemma is the atomic limit result; the Lyapunov-like and
  integral forms are typed bridges whose proof paths explicitly consume it.
summary: >-
  Uniform continuity plus finite limiting variation forces a scalar derivative
  or integrand to converge to zero.
keywords: [barbalat, uniform_continuity, convergence, lyapunov]
interface:
  inputs:
    - "A differentiable real function, a finite limit, and a uniformly continuous derivative."
    - "For integral Barbalat, a uniformly continuous integrand and convergence of its interval integral."
  assumptions:
    - "The Lyapunov-like form additionally assumes a lower bound and nonpositive derivative."
  outputs:
    - id: derivative_barbalat
      statement: "If f converges at infinity and f' is uniformly continuous, then f' converges to zero."
      declarations: [Ctrllib.barbalat]
      proof_section: "Derivative form"
    - id: lyapunov_barbalat
      statement: "A lower-bounded nonincreasing scalar Lyapunov function with uniformly continuous derivative has derivative tending to zero."
      declarations: [Ctrllib.barbalat_lyapunov]
      proof_section: "Lyapunov-like form"
    - id: integral_barbalat
      statement: "A uniformly continuous integrand whose integral from zero has a finite limit converges to zero."
      declarations: [Ctrllib.barbalat_integral]
      proof_section: "Integral form"
  composition:
    - uses: [Ctrllib.barbalat]
      establishes: Ctrllib.barbalat_lyapunov
      explanation: "Monotone convergence supplies the finite limit of V, then the derivative form is applied."
    - uses: [Ctrllib.barbalat]
      establishes: Ctrllib.barbalat_integral
      explanation: "FTC-1 supplies the derivative witness for the integral primitive."
---

# Barbalat convergence


## Notation

`f'` is an explicit derivative witness. `atTop` denotes time tending to
infinity. The integral form uses (int_0^tphi).

## Statement

The Brick contains derivative, Lyapunov-like, and integral Barbalat forms.

## Hypotheses

All differentiability, lower-bound, monotonicity, and uniform-continuity
premises are explicit.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes scalar asymptotic implications. It does not establish physical
convergence or uniform continuity from a controller implementation.

## Sources

The module headers identify Slotine and Li, *Applied Nonlinear Control*, Lemmas
4.2–4.3, and Khalil (2002), Lemma 8.2, ISBN 0-13-067389-7. The integral bridge
is a project proof.

## Evidence summary

Lean module: ctrllib/Ctrllib/Barbalat.lean and the integral endpoint in
ctrllib/Ctrllib/KhalilComparison.lean. Declaration: the manifest selects the
derivative, Lyapunov, and integral endpoints. Acceptance: mathematical
acceptance is not claimed; status is given_assumptions. Axiom: the current
Xylem capture reports the standard profile for the captured bodies. Encodes:
Barbalat convergence consequences for derivative, Lyapunov, and integral
trajectories.

## Limitations

No numerical pin or simulation is involved. Uniform continuity and finite
limits remain assumptions.

## Discrepancies and open items

No discrepancy was found. `KhalilComparison` is intentionally shared with the
differential comparison Brick at the declaration level.
