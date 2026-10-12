---
type: brick_set
set_id: geometry_and_tracking
set_kind: topic
title: Geometry and tracking
summary: Coordinate identities, redundancy, moving references, and conditional tracking
  inequalities.
bricks:
- spherical_helix
- koenig_decomposition
- moving_reference_flow
- giordano_errata
- circumcentroidal_passivity
- nullspace_projector_lift
- seven_dof_passivity
- seven_dof_nullspace_damping
- seven_dof_decoupling
- seven_dof_task_block
- tracking_jacobian
- tracking_steady_lag
- tracking_dissipation
- tracking_cross_term
- tracking_strict_bound
- tracking_strict_bound_weighted
- tracking_cascade
---
# Geometry and tracking

Coordinate identities, redundancy, moving references, and conditional tracking inequalities. Each Brick retains its own assumptions and evidence. This reading order supplies no additional composition theorem.

## Reading path

- [Spherical-helix coordinate speed](../../30_bricks/spherical_helix/interface.md): An explicit spherical-helix coordinate vector has a closed squared-speed formula and is nonzero under positive radius and nonzero elevation rate.
- [König kinetic-energy decomposition](../../30_bricks/koenig_decomposition/interface.md): A balanced finite family of relative velocities has no translational cross term and admits a polarized and kinetic-energy decomposition.
- [Scalar phase error and product-flow convergence](../../30_bricks/moving_reference_flow/interface.md): An explicit scalar phase-error flow solves its linear field and, with the ideal isotropic point-mass flow, yields a jointly convergent autonomous product system.
- [Printed equation inconsistency witnesses](../../30_bricks/giordano_errata/interface.md): Algebraic inconsistency witnesses for two encoded printed expressions.
- [Circumcentroidal transform and passivity identity](../../30_bricks/circumcentroidal_passivity/interface.md): Concrete circumcentroidal transform inverse and encoded passivity algebra.
- [Nullspace projectors and coordinated lifts](../../30_bricks/nullspace_projector_lift/interface.md): Reusable task-annihilating projectors and explicit coordinated kernel lift.
- [Seven-DOF augmented passivity algebra](../../30_bricks/seven_dof_passivity/interface.md): Augmented seven-DOF passivity identity.
- [Seven-DOF nullspace damping Lyapunov result](../../30_bricks/seven_dof_nullspace_damping/interface.md): Conditional seven-DOF nullspace damping Lyapunov result.
- [Seven-DOF task/self-motion decoupling](../../30_bricks/seven_dof_decoupling/interface.md): Abstract seven-DOF task/self-motion block decoupling.
- [Seven-DOF operational task block algebra](../../30_bricks/seven_dof_task_block/interface.md): Operational task-block identification and passivity algebra.
- [Tracking error Jacobian nonsingularity](../../30_bricks/tracking_jacobian/interface.md): Tracking Jacobian determinant/unit equivalences and residual injectivity.
- [Cruise-lag steady-state algebra](../../30_bricks/tracking_steady_lag/interface.md): Steady-state cruise-lag existence and uniqueness.
- [Tracking storage dissipation identity](../../30_bricks/tracking_dissipation/interface.md): Pointwise tracking storage-rate identity and conditional dissipation.
- [Tracking strict-storage cross term](../../30_bricks/tracking_cross_term/interface.md): Pointwise strict-storage cross-term identity and zero condition.
- [Tracking strict-storage bounds](../../30_bricks/tracking_strict_bound/interface.md): Conditional pointwise strict-storage sandwich and derivative domination.
- [Weighted tracking strict-rate bound](../../30_bricks/tracking_strict_bound_weighted/interface.md): Weighted pointwise strict-rate domination.
- [Tracking storage comparison cascade](../../30_bricks/tracking_cascade/interface.md): Conditional tracking storage cascade and boundedness comparison.

## Boundaries

Read each interface before reuse. An algebraic identity, a trajectory estimate, a sampling theorem, and a physical-model correspondence are separate obligations. Membership in this set does not discharge any of them.
