---
type: proof
kind: brick
brick_id: lyapunov_stability
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- khalil2002nonlinear
lean_package: ctrllib
lean_modules:
- KhalilStability
lean_declarations:
- Ctrllib.LyapStable
- Ctrllib.AsympStable
- Ctrllib.lyapunov_stable
- Ctrllib.lyapunov_asymptotically_stable
- Ctrllib.sublevel_isBounded_of_tendsto_cobounded
- Ctrllib.lyapunov_globally_asymptotically_stable
internal_bricks:
- lasalle_flow_engine
application_interfaces:
- lyapunov_function
- flow_solution
- positive_definiteness
- radial_unboundedness
brick_level: composite
level_reason: The record groups local stability, asymptotic stability, and the radial-unboundedness global extension around one Lyapunov interface.
summary: A differentiable positive-definite Lyapunov function with nonpositive field derivative gives stability; strict decrease gives local attraction, and radial unboundedness extends attraction globally.
keywords:
- lyapunov
- stability
- asymptotic_stability
- global
interface:
  inputs:
  - A finite-dimensional real normed state space, a supplied real-time flow solving the vector field, and a differentiable real Lyapunov function.
  assumptions:
  - V(0)=0 and V(x)>0 for x nonzero; stability requires DV(x)[f(x)] <= 0 everywhere.
  - Asymptotic stability additionally requires f(0)=0 and strict DV(x)[f(x)] < 0 for x nonzero.
  - Global attraction additionally requires V to tend to infinity along the cobounded filter.
  - No class-K sandwich or separately supplied precompactness is needed by these stability endpoints.
  outputs:
  - id: local_stability
    statement: A positive definite nonincreasing Lyapunov function yields Lyapunov stability.
    declarations:
    - Ctrllib.lyapunov_stable
    proof_section: Stability
  - id: asymptotic_stability
    statement: Strict negative field derivative away from the equilibrium gives local asymptotic stability via a bounded stability trap and LaSalle.
    declarations:
    - Ctrllib.lyapunov_asymptotically_stable
    proof_section: Asymptotic stability
  - id: global_extension
    statement: Radial unboundedness makes Lyapunov sublevels bounded and extends asymptotic stability globally.
    declarations:
    - Ctrllib.sublevel_isBounded_of_tendsto_cobounded
    - Ctrllib.lyapunov_globally_asymptotically_stable
    proof_section: Global extension
  composition:
  - uses:
    - Ctrllib.lasalle
    establishes: Ctrllib.lyapunov_globally_asymptotically_stable
    explanation: The global endpoint invokes LaSalle after bounding every forward orbit.
---

# Lyapunov stability


## Notation

LyapStable and AsympStable are the module's flow-relative stability
predicates. The proof uses the positive minimum of V on a compact sphere; no class-K sandwich is assumed.

## Statement

The Brick records local stability, asymptotic stability, and the
radial-unbounded global extension.

## Hypotheses

Finite dimension, differentiability, positivity, and the flow-solution premise are explicit. Strict derivative decrease and f(0)=0 are needed for attraction, and radial unboundedness for its global extension.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded Lyapunov implications for the supplied flow. It
does not establish ODE existence, model fidelity, or physical safety.

## Sources

The organization follows the project Khalil stability reader and Khalil
(2002), Lyapunov stability conventions. The exact results are project
derivations in KhalilStability.lean.

## Evidence summary

Lean module: ctrllib/Ctrllib/KhalilStability.lean. Declaration: the manifest
selects stability, asymptotic stability, sublevel boundedness, and global
endpoints. Acceptance: mathematical acceptance is not claimed; status is
given_assumptions. Axiom: current Xylem capture reports the standard profile.
Encodes: local and global Lyapunov stability implications.

## Limitations

The flow and solution are inputs. Globality depends on the exact
radial-unboundedness and sublevel assumptions of the endpoint.

## Discrepancies and open items

No discrepancy was found in the inspected statements and bodies. Applications
must state whether their Lyapunov function is radially unbounded.
