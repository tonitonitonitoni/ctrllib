# Conventional derivation

Let $E$ be a finite-dimensional real normed space, $\varphi$ a supplied flow
solving $\dot x=f(x)$, and $V:E\to\mathbb R$ differentiable. Assume
$V(0)=0$ and $V(x)>0$ for $x\ne0$. The flow and solution correspondence are
inputs throughout. No class-$\mathcal K$ bounds are required by these endpoints.

## Stability

Assume $DV(y)[f(y)]\le0$ for every $y$. The solution chain rule gives
$$\frac{d}{dt}V(\varphi_t(x))=DV(\varphi_t(x))[f(\varphi_t(x))]\le0.$$
The mean value theorem therefore makes the Lyapunov value nonincreasing
along each forward trajectory.

Fix $\epsilon>0$. If the state space contains only zero, stability is immediate.
Otherwise its radius-$\epsilon$ sphere is nonempty compact. Continuity of $V$
and strict positivity away from zero give an attained minimum
$$a=\min_{\|y\|=\epsilon}V(y)>0.$$
Continuity at zero gives $\delta>0$ such that $\|x\|<\delta$ implies both
$\|x\|<\epsilon$ and $V(x)<a/2$. If a trajectory from such an $x$ ever
reached norm at least $\epsilon$, continuity of the norm along the trajectory
would give an intermediate time $s\ge0$ with $\|\varphi_s(x)\|=\epsilon$.
But then
$$a\le V(\varphi_s(x))\le V(x)<a/2,$$
a contradiction. Hence it remains within the tolerance for all forward time,
which is precisely Lyapunov stability.

## Asymptotic stability

Additionally assume $f(0)=0$ and $DV(y)[f(y)]<0$ for every $y\ne0$.
At zero the directional derivative is zero because $f(0)=0$, so the
nonstrict sign hypothesis of the stability result holds everywhere.
Choose its trapping radius for tolerance $1$. Every trajectory beginning in
that radius stays in the unit ball and is therefore forward precompact.

LaSalle gives $DV(y)[f(y)]=0$ at every omega-limit point. Strict negativity
off zero forces the omega-limit set to lie in $\{0\}$. A precompact orbit
with this containment eventually lies in every ball around zero: otherwise
a sequence of arbitrarily late points outside some ball would have an
omega-limit point outside it. Thus $\varphi_t(x)\to0$ for every initial
point in the trapping radius. Combining this local attraction with the
proved stability yields asymptotic stability. Precompactness is derived
here from the stability trap, not added as an application premise.

## Global extension

Assume also that $V(y)\to\infty$ as $\|y\|\to\infty$, the formal
cobounded-filter condition. For any $c\in\mathbb R$, eventually outside a
bounded set one has $V(y)>c$. Its sublevel $\{y:V(y)\le c\}$ is therefore
bounded. This proves the separately reusable sublevel endpoint.

For an arbitrary initial state $x$, nonincrease confines its forward orbit
to $\{y:V(y)\le V(x)\}$. The sublevel is bounded, so finite dimension
again supplies forward precompactness. The same LaSalle and strict-decrease
argument yields $\varphi_t(x)\to0$. The final conclusion combines Lyapunov
stability with attraction from every initial state. It proves no existence
or uniqueness theorem for the supplied flow and no physical realization of
its differential equation.
