---
type: proof
kind: brick
brick_id: moving_reference_flow
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules:
- MovingReferenceFlow
lean_declarations:
- Ctrllib.phaseErrorFlow_hasDerivAt
- Ctrllib.phaseError_isSolutionTo
- Ctrllib.phaseError_tendsto_zero
- Ctrllib.augmentedPointMass_isSolutionTo
- Ctrllib.augmentedPointMass_tendsto_zero
internal_bricks:
- point_mass_stability
application_interfaces:
- Only the encoded autonomous product system is covered. A physical moving-reference controller, arbitrary
  matrix gains and implementation effects require additional correspondence.
brick_level: composite
level_reason: The explicitly recorded dependency supplies the component result used by the conclusion.
summary: An explicit scalar phase-error flow solves its linear field and, with the ideal isotropic point-mass
  flow, yields a jointly convergent autonomous product system.
keywords:
- moving_reference_flow
- MovingReferenceFlow
interface:
  inputs:
  - Real m, d, k and lambda; an initial point-mass state z_0=(v_0,e_0) in R^3 x R^3 and scalar phase error
    q_0.
  assumptions:
  - The scalar flow and derivative identity hold for arbitrary real lambda; its convergence requires lambda
    > 0.
  - The product solution theorem requires m > 0, d > 0 and k > 0. Joint convergence additionally requires
    lambda > 0.
  outputs:
  - id: scalar_solution
    statement: $q(t)=e^{-\lambda t}q_0$ solves $\dot q=-\lambda q$.
    declarations:
    - Ctrllib.phaseErrorFlow_hasDerivAt
    - Ctrllib.phaseError_isSolutionTo
    proof_section: Scalar flow and derivative
  - id: scalar_convergence
    statement: For $\lambda>0$, $q(t)\to0$ as $t\to+\infty$.
    declarations:
    - Ctrllib.phaseError_tendsto_zero
    proof_section: Scalar convergence
  - id: product_solution
    statement: The product of the encoded point-mass and scalar flows solves the corresponding product
      field.
    declarations:
    - Ctrllib.augmentedPointMass_isSolutionTo
    proof_section: Product solution
  - id: product_convergence
    statement: Under positive $m,d,k,\lambda$, the product state $(z(t),q(t))$ converges to zero.
    declarations:
    - Ctrllib.augmentedPointMass_tendsto_zero
    proof_section: Joint convergence
  composition:
  - uses:
    - Ctrllib.pointMass_tendsto_zero
    - Ctrllib.phaseError_tendsto_zero
    establishes: Ctrllib.augmentedPointMass_tendsto_zero
    explanation: The two component limits yield convergence in the product topology.
---

# Scalar phase error and product-flow convergence

An explicit scalar phase-error flow solves its linear field and, with the ideal isotropic point-mass flow, yields a jointly convergent autonomous product system.

## Notation

Type and dimension: Lean AugmentedPointMassState is PointMassState × R, with point-mass velocity/error each in the three-dimensional Euclidean wrapper. Frame and units: application-supplied, consistently shared by each component. Sign: damping, stiffness, mass and convergence rate are positive for joint convergence; the scalar solution identity allows any real rate.

See the [notation record](correspondence/notation.md) and [conventional proof](proof.md).

## Statement

$q(t)=e^{-\lambda t}q_0$ solves $\dot q=-\lambda q$.

For $\lambda>0$, $q(t)\to0$ as $t\to+\infty$.

The product of the encoded point-mass and scalar flows solves the corresponding product field.

Under positive $m,d,k,\lambda$, the product state $(z(t),q(t))$ converges to zero.

## Hypotheses

The scalar flow and derivative identity hold for arbitrary real lambda; its convergence requires lambda > 0.

The product solution theorem requires m > 0, d > 0 and k > 0. Joint convergence additionally requires lambda > 0.

## Proof

The [conventional derivation](proof.md) defines the objects and derives every public output.
The [exact declaration map](correspondence/source_to_lean.md) identifies its formal endpoints.

## What the result establishes and does not

Only the encoded autonomous product system is covered. A physical moving-reference controller, arbitrary matrix gains and implementation effects require additional correspondence.

## Sources

This is a project derivation of the existing canonical module `MovingReferenceFlow`; the label makes no literature-novelty claim.


## Evidence summary

| Item | Evidence |
| --- | --- |
| Lean module | `Ctrllib.MovingReferenceFlow` |
| Declaration | Public identities are listed in the manifest and correspondence record. |
| Acceptance | Mathematical acceptance is not claimed; the user owns that decision. |
| Axiom | The selected capture records only the standard project axioms for these endpoints. |
| Encodes | An explicit scalar phase-error flow solves its linear field and, with the ideal isotropic point-mass flow, yields a jointly convergent autonomous product system. |


## Limitations

Only the encoded autonomous product system is covered. A physical moving-reference controller, arbitrary matrix gains and implementation effects require additional correspondence.

## Discrepancies and open items

The formal/conventional boundary and remaining application obligations are recorded in
[the discrepancy record](correspondence/discrepancies.md). Application and scientific acceptance remain open.
