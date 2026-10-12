# Notation and types

Lean uses real normed spaces `E`, `F`, `U` and bounded linear maps `A`, `B`, `C`, `L`. No finite dimension is required by the algebra; a manipulator application must supply finite state, measurement and control dimensions. The discrete time index is `Nat`.

The error sign is true state minus estimated state; measurement residual enters the error with sign minus `L v`. Process residual is additive. Both updates use the same input `u`. Any frame transform and unit normalization must be supplied before taking one norm across heterogeneous state channels. Lean's normed-space type does not choose a physical unit or frame.

`r` is a nonnegative operator-norm cap; the closed form additionally requires `r < 1`. `K : NNReal` is the loss Lipschitz constant. `cvarPop` uses the population Brick's alpha convention. The same law and almost-sure error event are explicit in the risk corollaries.
