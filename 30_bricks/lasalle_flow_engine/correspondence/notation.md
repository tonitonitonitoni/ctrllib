# Notation correspondence

The Lean flow and trajectory arguments are rendered as a continuous-time
trajectory $x(t)$. omegaLimit is the set of accumulation points as
$t\to\infty$; ForwardPrecompact is rendered as compact forward closure.

The Lyapunov derivative premise is a trajectory-level inequality and carries
no unstated physical units.
Dimension: finite-dimensional state space E. Type: Flow, trajectory, and real-valued Lyapunov function. Frame: no physical frame is assumed. Sign: the Lyapunov derivative is nonpositive and its omega-limit value is constant. Unit: abstract Lyapunov units. Lean: IsSolutionTo and ForwardPrecompact carry the exact interface.
