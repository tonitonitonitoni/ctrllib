---
type: brick_set
set_id: stability_and_convergence
set_kind: topic
title: Stability and convergence
summary: A reading path from scalar comparison and invariant-set arguments to concrete second-order stability results.
bricks:
  - comparison_functions
  - differential_comparison
  - barbalat_convergence
  - actuation_error_bound
  - lasalle_flow_engine
  - omega_limit_reduction
  - set_stability_uniformization
  - cascade_attractivity
  - block_lyapunov_coercivity
  - lyapunov_stability
  - matrix_com_attractivity
  - com_attractivity
  - point_mass_stability
  - matrix_impedance_stability
---
# Stability and convergence

This reading set organizes scalar estimates, invariant-set arguments, and
their concrete uses. Every linked Brick retains its own assumptions; the
reading order is not a new theorem of composition.

## Reading path

1. Begin with [comparison functions](../../30_bricks/comparison_functions/interface.md)
   and [differential comparison](../../30_bricks/differential_comparison/interface.md).
   [Barbalat convergence](../../30_bricks/barbalat_convergence/interface.md) supplies
   a distinct limiting argument. [Actuation error bounds](../../30_bricks/actuation_error_bound/interface.md)
   specialize the comparison estimates under a supplied disturbance ceiling.
2. Read the [LaSalle flow engine](../../30_bricks/lasalle_flow_engine/interface.md),
   [omega-limit reduction](../../30_bricks/omega_limit_reduction/interface.md), and
   [set stability uniformization](../../30_bricks/set_stability_uniformization/interface.md)
   for the topological arguments. Flow existence and confinement remain explicit premises
   where the interfaces require them.
3. Use [block Lyapunov coercivity](../../30_bricks/block_lyapunov_coercivity/interface.md)
   to understand quadratic energy bounds and precompactness, and
   [Lyapunov stability](../../30_bricks/lyapunov_stability/interface.md) for the
   distinction between stability and convergence.
4. Follow [abstract CoM attractivity](../../30_bricks/com_attractivity/interface.md)
   and [matrix CoM attractivity](../../30_bricks/matrix_com_attractivity/interface.md)
   before the [ideal point-mass](../../30_bricks/point_mass_stability/interface.md)
   and [constant matrix impedance](../../30_bricks/matrix_impedance_stability/interface.md)
   results. [Cascade attractivity](../../30_bricks/cascade_attractivity/interface.md)
   treats a supplied driving trajectory and its response.

## Boundaries

Attractivity, Lyapunov stability, boundedness, and a quantitative rate are
different conclusions. Read the selected interface before reusing a result.
This set supplies no physical-model identification, global nonlinear flow
construction, or additional acceptance decision.
