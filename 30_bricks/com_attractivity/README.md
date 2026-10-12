---
type: proof
kind: brick
brick_id: com_attractivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
  - khalil2002nonlinear
  - giordano2019coordinated
lean_package: ctrllib
lean_modules:
  - ComLaSalle
  - LaSalle
  - Reduction
lean_declarations:
  - Ctrllib.com_attractive
internal_bricks: [lasalle_flow_engine, omega_limit_reduction]
application_interfaces:
  - abstract dissipative second-order field
brick_level: atomic
level_reason: >-
  This Brick exposes one abstract trajectory-attractivity implication.  The
  energy, LaSalle, and invariant-set declarations are supporting steps inside
  that single reusable result rather than separate public guarantees.
summary: >-
  Under explicit operator, supplied-flow, and forward-precompactness premises,
  a dissipative second-order trajectory converges to the origin.
keywords:
  - com_attractivity
  - lassalle
  - forward_precompactness
  - dissipative_second_order_system
  - omega_limit_set
interface:
  inputs:
    - "A real inner-product state space H and state z0 in H x H"
    - "Continuous linear maps M, D, K, and Minv defining the second-order field"
    - "A continuous real-time flow phi that solves the displayed field"
    - "The selected orbit closure {phi(t,z0) : t >= 0}"
  assumptions:
    - "M and K are self-adjoint, M (Minv w) = w, damping is nonnegative and definite, and K is injective"
    - "The supplied flow satisfies the flow laws and its trajectory derivative equals the field"
    - "The selected forward orbit is precompact, expressed by compactness of its closure"
    - "Positive definiteness of the energy and physical robot/controller correspondence are not assumed"
  outputs:
    - id: abstract_trajectory_attractivity
      statement: >-
        For the selected forward-precompact trajectory, the dissipative
        second-order field satisfies phi(t,z0) -> 0 as t -> +infinity.
      declarations:
        - Ctrllib.com_attractive
      proof_section: "Step 4: convergence of the entire trajectory"
  composition: []
---

# Abstract CoM attractivity Brick

Reader routes: [interface](interface.md) · [conventional proof](proof.md) · [references](correspondence/references.md) · [exact statement appendix](correspondence/statements.md).

This is a Generated Brick: a project derivation, with no literature-novelty
claim. Start with the [conventional proof](proof.md); its full captured
statement is in [the correspondence appendix](correspondence/statements.md).

Status: Brick candidate. Mathematical acceptance is not claimed.

## Notation

The result concerns a generic dissipative second-order field on a real
inner-product space. The notation record gives the correspondence for the
state, mass, damping, stiffness, energy, flow, and omega-limit set. See
[correspondence/notation.md](correspondence/notation.md).

## Statement

Under the displayed field, operator, solution-flow, damping, stiffness, and
forward-precompactness hypotheses, the formal result `Ctrllib.com_attractive`
establishes convergence of the selected trajectory to the origin. The theorem
does not take an omega-limit hypothesis; its LaSalle and reduction dependencies
derive the required omega-limit facts from the supplied forward-precompact
orbit. The exact source-to-Lean declaration map is recorded in
[correspondence/source_to_lean.md](correspondence/source_to_lean.md).

## Hypotheses

The theorem assumes self-adjointness of `M` and `K`, a right-inverse identity
`M (Minv w) = w`, nonnegative and definite damping in the quadratic form,
injective stiffness, a supplied flow solving the field, and forward
precompactness of the selected orbit. The formal energy is differentiable and
nonincreasing under these premises; it is not assumed or proved positive
definite in this abstract Brick, and the derivative is not pointwise strict
away from the origin. These are theorem premises; this packet does not
establish that a robot, controller, or physical model satisfies them. See

## Proof

The proof is the abstract LaSalle route: construct the energy, show its
monotonicity, reduce the invariant zero-dissipation set, and apply the LaSalle
interface to obtain attractivity. Supporting modules are
`ctrllib/Ctrllib/ComLaSalle.lean`, `ctrllib/Ctrllib/LaSalle.lean`, and
`ctrllib/Ctrllib/Reduction.lean`.

See the Brick-canonical [long-form derivation](proof.md) and generated
[exact binder capture](correspondence/statements.md).

## What the result establishes and does not

It establishes the formal abstract attractivity implication under its encoded
assumptions. It does not establish the concrete point-mass
operator-exponential flow, physical controller correspondence, robot-model
fidelity, Lyapunov or global asymptotic stability, or any seven-DOF claim. A
separate canonical specialization, `Ctrllib.pointMass_tendsto_zero`, now
constructs the ideal scalar point-mass flow and proves convergence for
positive `m`, `d`, and `k`; that specialization is outside this abstract
Brick. The separate `PointMassStability` module now supplies the stability
and global-convergence conjunction; see the
[point-mass Brick](../point_mass_stability/README.md).

The historical names `Ctrllib.com_gas` and `Ctrllib.com_gas_matrix` are
deprecated aliases of `Ctrllib.com_attractive` and
`Ctrllib.com_attractive_matrix`, respectively. They have the same convergence
conclusions and do not add a stability conclusion.

## Sources

The source packet is `30_projects/20_proofs/10_proofbricks/10_human/stability_chain_professor_proof.md`, Part I, Theorem 2.2, section 2.5. The contextual textbook source is Khalil, *Nonlinear Systems*, 3rd ed. (2002), Theorem 4.4, keyed as `khalil2002nonlinear`. Full source identity and the source statement are in

## Evidence summary

| Item | Evidence |
|---|---|
| Lean module | `Ctrllib/ComLaSalle.lean`, with `LaSalle.lean` and `Reduction.lean` support |
| Declaration | `Ctrllib.com_attractive` |
| Acceptance | Not claimed; user remains the acceptance owner |
| Axiom | Standard project profile: `propext`, `Classical.choice`, `Quot.sound` |
| Encodes | Abstract attractivity under explicit premises; not physical correspondence |

Historical build and audit evidence is summarized in

## Limitations

The formal interface leaves the concrete flow and application-side premises
to a separate correspondence exercise. The current conventional proof defines
the limiting set and the supplied-flow boundary explicitly; older source
packets retain their historical wording.
This candidate does not include simulations, tracking claims, robot-specific
specializations, or seven-DOF material.

## Discrepancies and open items

Open items are the abstract flow-interface instantiation, abstract
precompactness proof, physical controller correspondence, and the distinction
between attractivity and stronger stability claims. The concrete point-mass
specialization, including Lyapunov stability and global convergence, exists
in its own Brick. It does not remove this abstract theorem's supplied flow
and compactness premises. The full discrepancy register
is in
[correspondence/discrepancies.md](correspondence/discrepancies.md).

The packet is a migration copy of existing abstract CoM prose and evidence.
It is not an acceptance receipt and does not replace the canonical Lean source.
