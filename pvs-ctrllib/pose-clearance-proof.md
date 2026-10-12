# Pose clearance arithmetic

This theory is a scalar interface for pose and timing budgets. It does not
define rotations, poses, a metric, or a clock model. Those structures must
provide the scalar premises before these conclusions can be used.
The variable named `theta` is an arbitrary scalar placeholder; this theorem
does not convert an angle error into an orientation-operator error.

For the position budget, assume `|x| ≤ eps_pos` and `|theta| ≤ eps_rot`, with
nonnegative `radius` and `eps_rot`. Monotonicity of multiplication by a
nonnegative radius gives
`radius |theta| ≤ radius eps_rot`. Adding the translational inequality yields
`|x| + radius |theta| ≤ eps_pos + radius eps_rot`.

For two-body clearance, each body receives a separate composed allowance:
translation error, `radius * operator_difference`, motion `speed * h`, and a
coverage budget. The theorem assumes the two resulting scalar bounds on
`|p-p0|` and `|q-q0|`. Applying the scalar triangle inequality twice to the
nominal separation gives the lower bound
`delta - tp - tq - rp*erp - rq*erq - (Lp+Lq)h - cp - cq ≤ |p-q|`.
The PVS theorem leaves the pose-derived and coverage-derived premises
explicit; it does not claim that these scalar terms arise from a formal pose
or rotation model.

The monotonicity theorem says that independently enlarging any translation,
operator-difference, speed, or coverage allowance can only lower the resulting
clearance bound. Multiplication monotonicity is used for the nonnegative radii
and elapsed time, and the remaining additions are ordered componentwise.

For the clock decomposition, write
`actual - nominal = (actual - stamp) + (stamp - nominal)`. The triangle
inequality and the two independent bounds give
`|actual-nominal| ≤ h_clock + h_stamp`. The nonnegativity assumptions make
these quantities budgets; the result does not identify either time with a
physical clock or establish timestamp correctness.

The theory has four formulas and uses only PVS prelude real arithmetic. Its
proof receipt is produced by the package replay script together with the
other theories.
