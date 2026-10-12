# Notation correspondence

Coverage labels: type, dimension, frame, sign, unit, and source-to-Lean
representation are recorded below. Lean names use the canonical `Ctrllib`
namespace.

| Brick notation | Source/application notation | Meaning and boundary |
|---|---|---|
| `J` | `J_nu_e` | Bare end-effector task Jacobian. |
| `U` | `R_eb0 = [R_eb; 0]` | Six-by-three translational correction embedding. |
| `V` | `Jv_bar` | Mass-averaged linear Jacobian. |
| `J_oplus` | `J_nu_e_oplus` | Circumcentroidal corrected task Jacobian. |
| `theta` | source `q` for arm joints | Brick reserves `q` for the full configuration. |
| `nu_e_oplus` | `nu_e^oplus` | End-effector velocity relative to the nonrotating CoM frame; `oplus` is not a pseudoinverse. |
| `n` | arm joint count | Generic algebra allows conformable dimensions; determinant specialization is six-joint. |

The source paper writes joint rates as `dot q`. The Brick uses `dot theta` to
avoid confusing arm coordinates with the full base-plus-arm configuration.

The three-dimensional inner factor is not a claim that the correction has rank
exactly three: the formal and conventional statements establish rank at most
three.

The variational quantity `euclideanSmallestGain` is defined as the infimum of
`||A x||` over the Euclidean unit sphere. The module does not separately prove
an SVD identification; that distinction must remain explicit.
