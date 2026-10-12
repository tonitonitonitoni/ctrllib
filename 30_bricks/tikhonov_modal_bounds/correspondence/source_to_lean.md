# Source-to-Lean correspondence

Coverage classification: covered declarations are machine checked under their
displayed premises; partial and paper-only rows remain explicitly outside the
formal module.

| Conventional content | Canonical declaration(s) | Evidence class |
|---|---|---|
| Modal representation of the shifted inverse | `Ctrllib.tikhonov_plus_singular_values` | machine checked under the displayed square-SVD, floor, positivity, and unit premises |
| Scalar modal estimate | `Ctrllib.tikhonov_plus_scalar_bound` | machine checked under explicit positivity, nonnegative-shift, and floor premises |
| Tikhonov Gram eigenvalue floor | `Ctrllib.tikhonov_gram_eigenvalue_floor` | machine checked under the scheduled shift, indexed SVD, and Hermitian premises |
| Squared-transpose modal form and scalar bound | `Ctrllib.tikhonov_squared_transpose_singular_values`, `Ctrllib.tikhonov_squared_transpose_scalar_bound` | machine checked under the displayed premises |
| Universal scalar modal gain bound | `Ctrllib.tikhonov_uniform_bound` in `Ctrllib.TikhonovUniformBound` | machine checked from `0 <= sigma`, `0 < lam`, `Real.sq_sqrt`, and the nonnegative square `(sigma - sqrt lam)^2` |
| Prop. 3 item 1 | `Ctrllib.prop3_item1` | machine checked under the schedule, Gram-Hermitian, and inverse-unit premises |
| Prop. 3 item 2 operator bound | `Ctrllib.prop3_item2` | machine checked under schedule, Hermitian, unit, and spectral-floor premises |
| Prop. 3 item 3 | `Ctrllib.prop3_item3` | machine checked under its displayed premises |
| Inverse-difference scalar and matrix bounds | `Ctrllib.tikhonov_inverse_difference_scalar_bound`; `Ctrllib.tikhonov_inverse_difference_norm_bound` in `Ctrllib.TikhonovInverseDifference` | audited canonical source, intentionally outside this Brick's frontmatter theorem set; candidate separate residual Brick |
| Universal `1/(2 sqrt(lambda))` operator-norm bound | `Ctrllib.tikhonov_operator_norm_bound` in `Ctrllib.TikhonovOperatorBound` | machine checked from a supplied square orthogonal SVD, nonnegative labels, and positive shift; no scheduled spectral floor or inverse-unit premise |
| Realized-task factorization, `0 ≼ P_lambda ≼ I`, and nonexpansiveness | `Ctrllib.tikhonov_realized_task_factorization`, `Ctrllib.tikhonov_realized_task_properties` | machine checked for a supplied square orthogonal factorization and positive shift; each modal coefficient is in `[0,1)`, while the norm conclusion is `≤ 1` |
| Denied-task factorization and floor-dependent operator/vector bound | `Ctrllib.tikhonov_denied_task_factorization`, `Ctrllib.tikhonov_denied_task_bound` | machine checked for an explicit nonnegative floor `s ≤ σ_i`; choosing the least label gives the conventional bound, without a separate named Mathlib sigma-min identity or equality-case theorem |

The formal modules prove generic matrix implications; they do not prove that a
particular coordinated map, runtime inverse, or simulation uses the same `J`.
The current scalar equality endpoint is
`Ctrllib.tikhonov_uniform_bound_eq_iff`; it characterizes attainment of the
universal scalar cap at `sigma = sqrt lambda`. The 16 September extension
evidence covers the displayed generic premises only and does not add an
operator-norm attainment or robot correspondence theorem.
