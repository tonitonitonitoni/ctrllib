# Notation correspondence

Coverage labels: type, dimension, frame, sign, unit, and source-to-Lean
representation are recorded below. Frame and physical units are explicitly
inapplicable to this generic result.

| Brick notation | Meaning |
|---|---|
| `J` | Generic square real task matrix; no robot identity is assumed. |
| `lambda` | Nonnegative/positive Gram-matrix shift, with squared-singular-value units in an eventual application. |
| `J_lambda_dagger` | Normal-equations Tikhonov reconstruction `(J^T J + lambda I)^(-1) J^T`. |
| `sigma_i` | Singular-value modal coordinate. |
| `s` | Declared positive spectral floor used by the formal scalar and operator bounds. |
| `P_lambda` | Realized-task map `J J_lambda_dagger`; its complete status is recorded separately because not every prose claim has a named Lean declaration. |
| `d_lambda` | Denied component `(I - P_lambda) r` in the conventional packet. |

The source packet uses `q` and `dot q` in its robot-facing discussion. This
generic Brick uses no arm coordinate and therefore makes no robot-coordinate
claim. If a future application uses damping amplitude `mu`, it must record the
conversion `lambda = mu^2`; `lambda` must not be compared directly with a
singular-value-scale damping amplitude.

The square-map, SVD, realized-task, and denied-task interpretations must not
be silently conflated with the formal spectral-floor interface.
