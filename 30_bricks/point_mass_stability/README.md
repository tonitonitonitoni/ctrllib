---
type: proof
kind: brick
brick_id: point_mass_stability
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [khalil2002nonlinear]
lean_package: ctrllib
lean_modules: [PointMassStability, PointMassComFlow]
lean_declarations: [Ctrllib.pointMassEnergy_pos, Ctrllib.pointMass_lyapStable, Ctrllib.pointMass_globally_asymptotically_stable, Ctrllib.pointMass_asympStable]
internal_bricks: [com_attractivity, lasalle_flow_engine, lyapunov_stability]
application_interfaces: [ideal_positive_damped_point_mass]
brick_level: composite
level_reason: >-
  The record combines the reusable positive-energy and Lyapunov-stability
  result with a separately established global-convergence result; the final
  global endpoint has an explicit Lean proof dependency on both guarantees.
summary: >-
  For the specified three-dimensional positive damped point-mass flow, the
  origin is Lyapunov stable and every initial state converges to it.
keywords:
  - point_mass
  - lyapunov_stability
  - global_convergence
  - semidefinite_energy
  - lassalle
  - exponential_flow
interface:
  inputs:
    - "Positive scalar mass m, damping d, and stiffness k"
    - "The three-dimensional product state z = (v,x) with velocity first"
    - "The operator-exponential flow of the displayed point-mass field"
    - "The mechanical energy V(v,x) = (m/2)||v||^2 + (k/2)||x||^2"
  assumptions:
    - "m > 0, d > 0, and k > 0 for the constant-coefficient Euclidean system"
    - "The flow and its solution property are supplied by the PointMassComFlow construction"
    - "The semidefinite derivative is handled by the LaSalle route; strict energy decrease is not assumed"
    - "Robot, moving-reference, sampled-controller, saturation, frame, and unit correspondence remain external"
  outputs:
    - id: point_mass_energy_positivity
      statement: >-
        For positive $m$ and $k$, the mechanical energy is zero at the origin
        and strictly positive at every nonzero state.
      declarations:
        - Ctrllib.pointMassEnergy_pos
      proof_section: "Energy and positivity"
    - id: point_mass_lyapunov_stability
      statement: >-
        For $m>0$, $d>0$, and $k>0$, the origin of the specified point-mass
        flow is Lyapunov stable.
      declarations:
        - Ctrllib.pointMass_lyapStable
      proof_section: "Derivative and Lyapunov stability"
    - id: point_mass_global_stability
      statement: >-
        The specified flow is Lyapunov stable and every initial state
        converges to the origin, as the global conjunction endpoint.
      declarations:
        - Ctrllib.pointMass_globally_asymptotically_stable
      proof_section: "Global convergence"
    - id: point_mass_local_asymptotic_stability
      statement: >-
        The specified point-mass origin satisfies the formal local
        asymptotic-stability predicate.
      declarations:
        - Ctrllib.pointMass_asympStable
      proof_section: "Global convergence"
  composition:
    - uses:
        - Ctrllib.pointMass_lyapStable
        - Ctrllib.pointMass_tendsto_zero
      establishes: Ctrllib.pointMass_globally_asymptotically_stable
      explanation: >-
        The global endpoint pairs the independently proved Lyapunov stability
        and all-initial-state convergence guarantees for the same flow.
---

# Ideal point-mass stability

Reader routes: [interface](interface.md) · [conventional proof](proof.md) · [references](correspondence/references.md) · [exact statement appendix](correspondence/statements.md).

This is a Generated Brick: an agent-proposed project derivation; the label
does not claim literature novelty. Read the [conventional long-form proof](proof.md)
alongside the [captured endpoint statements](correspondence/statements.md).

## Notation

Let $z=(v,x)$ belong to $\mathbb R^3\times\mathbb R^3$, with velocity first
and position error second. For positive real constants $m,d,k$, let $\Phi$
be the existing flow of $\dot v=-(d/m)v-(k/m)x$, $\dot x=v$. Its mechanical
energy is $V(v,x)=(m/2)\lVert v\rVert^2+(k/2)\lVert x\rVert^2$.

## Statement

The origin is Lyapunov stable, and every initial state converges to the
origin as time tends to positive infinity. The exact global endpoint is the
conjunction of these two statements. A local asymptotic-stability corollary
is also provided.

## Hypotheses

The assumptions are $m>0$, $d>0$, and $k>0$, on the specified constant-coefficient
Euclidean point-mass system. The explicit operator-exponential flow and its
solution property are provided by `PointMassComFlow`; they are not an extra
unproved flow-existence hypothesis of the endpoint.

## Proof

The energy vanishes at the origin and is positive elsewhere: at least one of
$v$ and $x$ is nonzero and its squared norm has a positive coefficient. The
derivative along the flow is $-d\lVert v\rVert^2\le0$. Differentiability,
positive definiteness, and this nonpositive derivative give Lyapunov
stability through `lyapunov_stable`. The derivative is not strictly negative
when $v=0$ and $x\ne0$, so a strict-derivative theorem is not applicable.

The existing `pointMass_tendsto_zero` proves convergence for every initial
state: coercivity and nonincreasing energy give forward precompactness, and
the CoM LaSalle argument reduces the invariant zero-dissipation set to the
origin. Pair that convergence theorem with the new stability theorem. The
local corollary restricts global convergence to the ball of radius one.

## What the result establishes and does not

It establishes stability and global convergence of the named ideal flow.
It does not establish a model identity for a robot, tracking under a moving
reference, controller switching, saturation, or sampled implementation.

## Sources

Khalil, *Nonlinear Systems*, 3rd ed. (2002), ISBN 0-13-067389-7,
Theorem 4.1, Theorem 4.4, and Corollary 4.2 provide the Lyapunov and
semidefinite-energy invariance context. Theorem 4.2 requires a strict
derivative and is not the source route for this mechanical energy.
The actual specialized derivation is the in-house result described here;
the textbook does not supply a Lean proof or a physical-controller match.

## Evidence summary

The original narrow checks used Lean 4.31.0, followed by a Lean 4.33.1
recheck; those toolchain statements are historical. Lean modules:
`PointMassStability` and `PointMassComFlow`. Declarations: the named endpoints
in frontmatter. The current repository-wide Lean
4.34.0 build, replay, extraction, and axiom audit are recorded in the [current
footprint: only `propext`, `Classical.choice`, and `Quot.sound`, with no
`sorryAx` in the recorded current extract. Encodes: stability and convergence
of the specified ideal flow under positive parameters. Independent statement
and conventional-proof review is linked in the [acceptance
Formal status is `given_assumptions`; mathematical acceptance is not claimed.

## Limitations

The state has the existing three-dimensional velocity and position spaces.
It is not a general-dimension or flexible-system theorem. Formal `AsympStable`
does not itself contain an equilibrium clause; the concrete field vanishes
at zero and the linear exponential flow fixes zero.

## Discrepancies and open items

The legacy `com_gas` alias proves abstract trajectory convergence, not this
stability conjunction. This Brick keeps those endpoints separate. Physical
correspondence and user acceptance remain open; see the
[correspondence map](correspondence/source_to_lean.md).
