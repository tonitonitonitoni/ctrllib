# Notation correspondence

The Lean Lyapunov function is rendered as $V(x)$, with $V(0)=0$ and
$V(x)>0$ for $x\ne0$. Stability and asymptotic stability refer to the
supplied flow and use the nonpositive or strictly negative field derivative
premises stated by the corresponding endpoint. No class-$\mathcal K$ sandwich
is an endpoint assumption.

Radial unboundedness is $V(x)\to\infty$ as $\|x\|\to\infty$.
Dimension: finite-dimensional state space E. Type: Flow, vector field, and real-valued Lyapunov function. Frame: no physical frame is assumed. Sign: V is positive away from zero and its derivative is nonpositive or strictly negative as stated. Unit: abstract Lyapunov and state units. Lean: LyapStable and AsympStable define the exact predicates.
