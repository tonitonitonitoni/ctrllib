# Conventional derivation

Let $\varphi_t(x)$ be a supplied continuous two-sided flow and write
$d_S(x)=\operatorname{dist}(x,S)$. Forward precompactness means that the
closure of $\{\varphi_t(x):t\ge0\}$ is compact. Stability of $S$ means
that for every $\epsilon>0$ there is $\delta>0$ such that
$d_S(x)<\delta$ implies $d_S(\varphi_t(x))<\epsilon$ for all $t\ge0$.
Attractivity means that some such initial tube has $d_S(\varphi_t(x))\to0$.
Relative versions restrict the initial point to a specified outer set.
Asymptotic stability is the conjunction of stability and attractivity.

## Distance and omega-limit reduction

Suppose a forward-precompact orbit has $\omega(x)\subseteq S$. For each
$\epsilon>0$, the open set $U_\epsilon=\{z:d_S(z)<\epsilon\}$ contains
$\omega(x)$. If the orbit were outside this set arbitrarily late, choose
$t_j\to\infty$ with $d_S(\varphi_{t_j}(x))\ge\epsilon$. Compactness gives
a convergent subsequence with limit $y\in\omega(x)$. Continuity of $d_S$
preserves the lower bound, contradicting $y\in S$. Hence
$d_S(\varphi_t(x))\to0$. Closedness of $S$ is not needed for this direction.

For the converse, assume $S$ is nonempty and closed and the distance tends
to zero. Every omega-limit point is a limit of arbitrarily late orbit points;
continuity of distance gives $d_S(y)=0$, and closedness yields $y\in S$.
Nonemptiness matters because the formal real-valued distance to the empty set
is defined to be zero.

For `propIV1_tendsto`, a differentiable $V$, a supplied solution flow for
$\dot x=f(x)$, and $DV(y)[f(y)]\le0$ allow the LaSalle Brick to conclude
$DV(y)[f(y)]=0$ on $\omega(x)$. The separate premise
$\{y:DV(y)[f(y)]=0\}\subseteq S$ then gives the required containment.
This pointwise zero-set premise is supplied; it is not inferred merely from
nonpositive dissipation.

## Stability and attraction

The basic assembly `reduction_asymptotic_stability` assumes stability and a
radius $\delta>0$ such that every orbit beginning in the $\delta$-tube is
forward precompact and has its omega-limit set in $\Gamma_1$. The preceding
distance argument proves attractivity on that same tube. Combining it with
the supplied stability proves asymptotic stability.

The relative-attraction collapse supplies a less direct containment argument.
Let $L=\omega(x)$ be compact, invariant, and contained in $\Gamma_2$; let
$\Gamma_1$ be nonempty and closed. Assume every $q\in L$ is attracted to
$\Gamma_1$ and $\Gamma_1$ is stable relative to $\Gamma_2$. If
$w\in L\setminus\Gamma_1$, put $\epsilon=d_{\Gamma_1}(w)>0$ and choose
the relative-stability radius $\delta$ for this tolerance. The backward
sequence $\varphi_{-j}(w)$ remains in $L$ and has a convergent subsequence
$\varphi_{-j_k}(w)\to q\in L$. Attraction of $q$ gives an $s\ge0$ with
$d_{\Gamma_1}(\varphi_s(q))<\delta/2$. By continuity, for sufficiently
large $k$, the point $z_k=\varphi_s(\varphi_{-j_k}(w))$ belongs to
$\Gamma_2$ and satisfies $d_{\Gamma_1}(z_k)<\delta$. Also $j_k\ge s$.
Relative stability applied for time $j_k-s$ gives
$$d_{\Gamma_1}(w)=d_{\Gamma_1}(\varphi_{j_k-s}(z_k))<\epsilon,$$
a contradiction. Thus $L\subseteq\Gamma_1$. This step uses negative times
essentially; a forward semiflow cannot silently replace the supplied flow.

Now suppose $E$ is finite dimensional, $\Gamma_1$ is nonempty compact,
$\Gamma_2$ is closed, and $\Gamma_1\subseteq\Gamma_2$. Assume full
stability of $\Gamma_1$, relative stability and attraction inside
$\Gamma_2$, and local attraction to $\Gamma_2$ from a tube of $\Gamma_1$.
Let $\delta_a$ be the relative-attraction radius. Full stability confines
sufficiently nearby orbits to the $\delta_a/2$-tube. This is bounded because
$\Gamma_1$ is compact, so the orbits are precompact in finite dimensions.
Local attraction to $\Gamma_2$ places their omega-limit sets in
$\Gamma_2$. Continuity of distance places those sets in the closed
$\delta_a/2$-tube, strictly inside the relative basin. Every omega-limit
point is therefore attracted to $\Gamma_1$. The backward-orbit argument
above proves containment in $\Gamma_1$.

Finally, the sibling `set_stability_uniformization` Brick supplies the full
stability and asymptotic-stability assemblies from the uniform semi-attractor,
using compactness, forward invariance of $\Gamma_1$, local uniform boundedness,
local stability near $\Gamma_1$, and the stated relative hypotheses. This
Brick supplies the distance reduction and the backward-orbit containment used
by that assembly. Each of those hypotheses remains part of the combined
endpoint interface; relative attraction alone is insufficient.

## Compactness and obstruction

In finite dimensions, suppose a sequence satisfies $d_S(x_j)\to0$ for a
nonempty closed bounded set $S$. Its tail lies in the bounded unit tube of
$S$, and its finitely many initial terms do not affect boundedness.
Bolzano–Weierstrass gives a convergent subsequence $x_{j_k}\to y$.
Continuity gives $d_S(y)=0$, and closedness yields $y\in S$.

If set stability fails, negating its quantifiers gives an $\epsilon>0$
and, for every $\delta>0$, an initial point within distance $\delta$ whose
orbit reaches distance at least $\epsilon$. Choose $\delta_j=1/(j+1)$.
The resulting $x_j,t_j\ge0$ satisfy
$$0\le d_S(x_j)<\frac1{j+1}\to0,\qquad
  d_S(\varphi_{t_j}(x_j))\ge\epsilon.$$
This elementary escape sequence does not itself prove $t_j\to\infty$;
the stronger first-exit conclusion needs the compactness and invariance
arguments in the uniformization Brick.

The final compactness output, a neighborhood of precompact orbits whose
omega-limit sets land in $\Gamma_1$, is proved in the preceding stability
and attraction section. The original differential equation, physical model,
and existence of the two-sided flow remain separate obligations.
