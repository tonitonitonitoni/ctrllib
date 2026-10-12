---
type: brick_set
set_id: matrix_algebra_and_allocation
set_kind: topic
title: Matrix algebra and allocation
summary: Algebraic interfaces for invertibility, singularity margins, corrected maps, regularization, and equality-constrained allocation.
bricks:
  - coordinated_invertibility
  - smallest_singular_value
  - rectangular_rank_nullspace
  - rayleigh_bounds
  - stiffness_residual
  - euclidean_operator_bounds
  - circumcentroidal_correction
  - circumcentroidal_update_rank
  - weighted_right_inverse
  - tikhonov_modal_bounds
  - tikhonov_inverse_residual
---
# Matrix algebra and allocation

This set organizes reusable matrix results. Matrix sizes, index-set
nonemptiness, rank, positivity, and invertibility conditions are local to each
interface. A shared application vocabulary does not make those conditions
interchangeable.

## Reading path

| Topic | Start here |
| --- | --- |
| Block invertibility | [Coordinated invertibility](../../30_bricks/coordinated_invertibility/interface.md) |
| Square singularity margins | [Smallest singular value](../../30_bricks/smallest_singular_value/interface.md) |
| Rectangular rank and kernel | [Rank and nullspace](../../30_bricks/rectangular_rank_nullspace/interface.md) |
| Quadratic estimates | [Rayleigh bounds](../../30_bricks/rayleigh_bounds/interface.md), [stiffness residual](../../30_bricks/stiffness_residual/interface.md), and [Euclidean operator bounds](../../30_bricks/euclidean_operator_bounds/interface.md) |
| Corrected maps | [Circumcentroidal correction](../../30_bricks/circumcentroidal_correction/interface.md) and [update rank](../../30_bricks/circumcentroidal_update_rank/interface.md) |
| Weighted allocation | [Weighted right inverse](../../30_bricks/weighted_right_inverse/interface.md) |
| Regularization | [Tikhonov modal bounds](../../30_bricks/tikhonov_modal_bounds/interface.md) and [inverse residual](../../30_bricks/tikhonov_inverse_residual/interface.md) |

## Boundaries

The canonical declarations establish the displayed algebraic implications.
Identifying an application's matrices, frames, units, damping parameter, and
trajectory-wide singularity margin remains a separate correspondence task.
The set does not claim that an application supplies any of those premises.
