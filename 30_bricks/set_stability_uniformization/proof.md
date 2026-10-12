# Conventional derivation

Work with a supplied continuous two-sided flow $\varphi$ and nested sets
$\Gamma_1\subseteq\Gamma_2$. Write $d_i(z)=\operatorname{dist}(z,\Gamma_i)$.
The uniform semi-attractor property means
$$\forall x\in\Gamma_1\ \exists\mu_x>0\ \forall\epsilon>0\
\exists T>0\ \forall y\in\Gamma_2,\quad
\|y-x\|<\mu_x\Longrightarrow\forall t\ge T,\ d_1(\varphi_t(y))<\epsilon.$$
The basin radius is chosen before the tolerance, and the time is uniform
across all admissible initial points in that ball.

Local uniform boundedness means that each $p\in\Gamma_1$ has an initial
ball whose forward trajectories remain in one fixed ball around $p$.
Local stability of $\Gamma_2$ near $\Gamma_1$ means that sufficiently close
initial points remain arbitrarily close to $\Gamma_2$ on every trajectory
segment that stays in a prescribed ball around $p\in\Gamma_1$.
These are separate hypotheses, not consequences of the semi-attractor definition.

## Uniform capture

First suppose $d_1(\varphi_t(y))\to0$. For any $\delta_s>0$, choose
$T>0$ with $d_1(\varphi_T(y))<\delta_s$. The function
$z\mapsto d_1(\varphi_T(z))$ is continuous, so its strict sublevel set
contains a ball $B_r(y)$ for some $r>0$. Every initial point in that ball is
inside the $\delta_s$-tube at time $T$. This proves the capture-time endpoint.

For uniformization, additionally assume finite dimension, closedness and
forward invariance of $\Gamma_2$, and stability and attraction of
$\Gamma_1$ relative to $\Gamma_2$. Let $\delta_a>0$ be the relative basin
radius. For $x\in\Gamma_1$ choose $\mu_x=\delta_a/2$ independently of the
desired final tolerance $\epsilon$. The slab
$$K=\overline B_{\delta_a/2}(x)\cap\Gamma_2$$
is compact. Every $y\in K$ lies in the relative basin because
$d_1(y)\le\|y-x\|\le\delta_a/2<\delta_a$.

Relative stability supplies a radius $\delta_s$ for tolerance $\epsilon$.
The capture-time result supplies each $y\in K$ with a capture ball and
positive time $T_y$. Choose a finite subcover and take
$T=1+\max_y T_y$ over its centres. An admissible initial point belongs to
one such capture ball, enters the $\delta_s$-tube at its centre's time,
and remains in $\Gamma_2$ by forward invariance. Relative stability and
$\varphi_t=\varphi_{t-T_y}\circ\varphi_{T_y}$ keep its entire tail for
$t\ge T$ in the $\epsilon$-tube. This proves uniform semi-attraction.
No compactness of $\Gamma_1$ is needed for this particular endpoint.

## Stability from capture

First uniformize the basin radius over a nonempty compact $K\subseteq\Gamma_1$.
Cover $K$ by balls $B_{\mu_x/2}(x)$ from the semi-attractor definition and
choose a finite subcover. The minimum of its half-radii is positive. If an
initial point is within that minimum radius of some point of $K$, the triangle
inequality places it in a covering full-radius basin. For each tolerance,
the maximum of the corresponding finitely many times is a uniform capture
time. This proves `uniform_basin_of_uniformSemiAttractor`.

For full set stability, assume $\Gamma_1$ is nonempty compact and retain
local uniform boundedness, local stability near $\Gamma_1$, and uniform
semi-attraction. The first version of the theorem also assumes the first-exit
sequence and fixed-time continuous-dependence properties proved below.
Suppose stability fails. There are initial points approaching $\Gamma_1$
and, after passing to a subsequence, approaching a point $\bar x\in\Gamma_1$.
Local uniform boundedness confines these trajectories to $B_m(\bar x)$.
Uniformize the semi-attractor basins on the compact collar
$$K=\Gamma_1\cap\overline B_{2(m+1)}(\bar x)$$
to obtain a radius $\mu>0$. Choose an escape level
$0<\epsilon\le\epsilon_0$ with $\epsilon<\mu$ and first-exit times
$t_j\to\infty$ at which $d_1(\varphi_{t_j}(x_j))=\epsilon$.
Let $T>0$ be the collar's uniform capture time for tolerance $\epsilon/4$.

Choose $\delta>0$ small enough that $\delta\le1$,
$\delta\le(\mu-\epsilon)/2$, and two points within $\delta$ in the relevant
bounded ball have time-$T$ images within $\epsilon/2$. Local stability near
$\Gamma_1$, together with confinement, puts
$z=\varphi_{t_j-T}(x_j)$ within $\delta$ of some $z'\in\Gamma_2$ for large $j$.
The first-exit property gives $d_1(z)<\epsilon$. Thus
$$d_1(z')<\epsilon+\delta<\mu,\qquad \|z'-\bar x\|<m+1.$$
The collar lemma puts $z'$ within $\mu$ of $K$: if $\mu\le m+1$, a
$\Gamma_1$ witness within $\mu$ also lies in the collar by the triangle
inequality; if $\mu>m+1$, the point $\bar x$ itself is a witness.
Uniform capture gives $d_1(\varphi_T(z'))<\epsilon/4$. Continuous dependence
and the flow law now yield
$$d_1(\varphi_{t_j}(x_j))
 \le d_1(\varphi_T(z'))+\|\varphi_T(z)-\varphi_T(z')\|
 <\epsilon/4+\epsilon/2<\epsilon,$$
contradicting the exit equality. Full set stability follows.

## Exit-time argument

For a continuous scalar function $g(t)=d_1(\varphi_t(x))$ with
$g(0)<\epsilon\le g(t_1)$, the closed set of times in $[0,t_1]$ at which
$g(t)\ge\epsilon$ has a minimum $\tau$. Continuity implies
$g(\tau)=\epsilon$ and $g(s)<\epsilon$ for $0\le s<\tau$. This is the
first-exit-time endpoint.

If $\Gamma_1$ is compact and forward invariant, joint continuity on
$[0,B]\times\Gamma_1$ and compactness give a uniform initial tube whose
trajectories remain in the $\eta$-tube for all $s\in[0,B]$. This follows
by applying the finite-cover/tube argument to the open set
$\{(s,z):d_1(\varphi_s(z))<\eta\}$, which contains that compact product.
Apply the first-exit construction to the escape sequence from the reduction
Brick. For every smaller positive escape level the resulting exit times tend
to infinity: infinitely many times bounded by $B$ would contradict this
uniform tube estimate once the initial distances were small enough.

For fixed-time continuous dependence in finite dimensions, the time-$T$ map
is uniformly continuous on a closed ball slightly larger than the prescribed
ball. Choose the initial separation smaller than both the resulting modulus
and the enlargement margin; both comparison points then lie in the compact
larger ball. These facts discharge the two flow-regularity inputs in the
forward-invariant stability endpoint.

## Final reduction

With $\Gamma_1$ nonempty compact, $\Gamma_2$ closed, both sets forward
invariant, local uniform boundedness, local stability and attraction near
$\Gamma_1$, and relative stability and attraction, the uniform-capture result
supplies the semi-attractor premise. The stability argument supplies full
stability. The omega-limit reduction Brick then proves full attraction and
hence asymptotic stability. The two-sided flow is still supplied, and the
backward-orbit step used by that other Brick does not establish existence of
such a flow for an application differential equation.
