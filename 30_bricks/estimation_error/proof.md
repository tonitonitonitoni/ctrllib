# Conventional proof: estimation error and population-risk transfer

## Provenance and scope

This is a Generated Brick: the observer recursion, deterministic error bound,
and loss-transfer statements are project derivations. “Generated” records
agent-proposed project provenance and makes no claim of literature novelty.
There is no published estimator theorem being transcribed. The model boundary
The captured formal statements are in
[correspondence/statements.md](correspondence/statements.md), and the canonical
implementations are [`EstimationError.lean`](../../ctrllib/Ctrllib/EstimationError.lean)
and [`ObserverUltimateBound.lean`](../../ctrllib/Ctrllib/ObserverUltimateBound.lean).
The population-CVaR step uses the separate [population-CVaR Brick](../cvar_population/README.md).

## Spaces, maps, and assumptions

Let $E$, $F$, and $U$ be real normed spaces for state, measurement, and
control. Let

$$
A_k:E\to E,\quad B_k:U\to E,\quad C_k:E\to F,\quad L_k:F\to E
$$

be bounded linear maps at discrete time $k\in\mathbb N$. Let
$x_k,\widehat x_k,w_k\in E$, $u_k\in U$, and $v_k\in F$. The plant and
observer equations are

$$
x_{k+1}=A_kx_k+B_ku_k+w_k,
$$

and, with measurement $y_k=C_kx_k+v_k$,

$$
\widehat x_{k+1}=A_k\widehat x_k+B_ku_k+L_k(y_k-C_k\widehat x_k).
$$

The same known control $u_k$ appears in both equations. The residuals $w_k$
and $v_k$ are deterministic model/measurement residuals here; no probability
law is assumed for them.

For the complete time-varying estimate assume $r,\ell\in\mathbb R$ satisfy
$r\ge0$ and $\ell\ge0$, and let $\bar w,\bar v\in\mathbb R$ satisfy

$$
\lVert A_k-L_kC_k\rVert\le r,\qquad
\lVert w_k\rVert\le\bar w,\qquad
\lVert v_k\rVert\le\bar v,\qquad
\lVert L_k\rVert\le\ell
$$

for every $k$. Put $b=\bar w+\ell\bar v$. The closed-form contraction
estimate additionally assumes $r<1$.

The formal endpoint carries only the explicit nonnegativity hypotheses on
$r$ and $\ell$. Since the bounds hold at every natural index and
$\lVert w_k\rVert,\lVert v_k\rVert\ge0$, the same hypotheses force
$\bar w\ge0$ and $\bar v\ge0$ (take any natural index); they need not be
introduced as separate assumptions.

## Exact error recursion

Define $e_k=x_k-\widehat x_k$. Subtract the observer equation from the plant
equation:

$$
\begin{aligned}
e_{k+1}
 &=A_kx_k+B_ku_k+w_k\\
 &\quad-\bigl(A_k\widehat x_k+B_ku_k
       +L_k(C_kx_k+v_k-C_k\widehat x_k)\bigr).
\end{aligned}
$$

The control terms cancel. Linearity gives

$$
\begin{aligned}
e_{k+1}
 &=A_k(x_k-\widehat x_k)-L_kC_k(x_k-\widehat x_k)+w_k-L_kv_k\\
 &=(A_k-L_kC_k)e_k+w_k-L_kv_k.
\end{aligned}
$$

This is `linearObserver_error_identity`; the captured Lean statement retains
the plant and observer step functions and the composition `L_k C_k`.

## One-step norm bound

Apply the triangle inequality and the induced operator-norm inequality:

$$
\begin{aligned}
\lVert e_{k+1}\rVert
 &\le\lVert(A_k-L_kC_k)e_k\rVert
      +\lVert w_k-L_kv_k\rVert\\
 &\le\lVert A_k-L_kC_k\rVert\,\lVert e_k\rVert
      +\lVert w_k\rVert+\lVert L_k\rVert\,\lVert v_k\rVert.
\end{aligned}
$$

This is `linearObserver_error_norm_le`. Under the uniform assumptions, define
$q_k=\lVert e_k\rVert$. Then

$$
q_{k+1}\le rq_k+b.
$$

The nonnegativity assumptions on $r$ and $\ell$ are used when multiplying
inequalities by norms and when replacing the pointwise bounds by $r$ and
$b$.

## Finite-time geometric estimate

For any sequence satisfying $q_{k+1}\le rq_k+b$ with $r\ge0$, induction gives

$$
q_k\le r^kq_0+b\sum_{j=0}^{k-1}r^j.
$$

At $k=0$, the sum over the empty range is zero and the right side is $q_0$.
Assume the result at $k$. Then

$$
\begin{aligned}
q_{k+1}
 &\le r\left(r^kq_0+b\sum_{j=0}^{k-1}r^j\right)+b\\
 &=r^{k+1}q_0+b\sum_{j=0}^{k}r^j,
\end{aligned}
$$

using $r\,r^k=r^{k+1}$ and the geometric-sum recurrence. Substituting
$q_k=\lVert e_k\rVert$ and $b=\bar w+\ell\bar v$ is
`linearObserver_error_le_geometric`.

If $r<1$, then $1-r>0$ and

$$
\sum_{j=0}^{k-1}r^j=\frac{1-r^k}{1-r}.
$$

Therefore

$$
\lVert e_k\rVert\le r^k\lVert e_0\rVert
 +(\bar w+\ell\bar v)\frac{1-r^k}{1-r},
$$

which is `norm_error_le_contraction_bound`. Persistent residuals generally
leave a nonzero bound; this estimate does not claim convergence to zero.

## Eventual observer-error bound

The eighth endpoint is generic: let $E$ be a normed additive commutative group;
it does not require a real scalar-space structure on $E$. Let
$e:\mathbb N\to E$, and let $r,b\in\mathbb R$ satisfy

$$
0\le r<1,\qquad 0\le b,\qquad
\lVert e_{k+1}\rVert\le r\lVert e_k\rVert+b
\quad(k\in\mathbb N).
$$

Set $u_k=\lVert e_k\rVert$. The finite recurrence induction above gives

$$
u_k\le r^k u_0+b\sum_{j=0}^{k-1}r^j
   =r^k u_0+b\frac{1-r^k}{1-r}=:q_k.
$$

The strict inequality $r<1$, together with $0\le r$, gives geometric decay.
Indeed, $r^k$ is nonnegative and decreasing, so it has a limit $L\ge0$.
The shifted sequence has the same limit, while multiplying by the fixed $r$
gives $r^{k+1}=r\,r^k$ and hence $L=rL$. Since $1-r>0$, this forces $L=0$.
This argument also covers $r=0$.

The denominator $1-r$ is a fixed positive real number. Therefore multiplication
by $u_0$ and by $b$, subtraction from $1$, and division by $1-r$ preserve
convergence. It follows that

$$
q_k\longrightarrow
0\cdot u_0+b\frac{1-0}{1-r}=\frac{b}{1-r}.
$$

Now fix any $\varepsilon>0$. By the definition of convergence, there is an
$N\in\mathbb N$ such that, for every $k\ge N$,

$$
q_k<\frac{b}{1-r}+\varepsilon.
$$

Combining this strict inequality with $u_k\le q_k$ gives

$$
\lVert e_k\rVert=u_k
\le\frac{b}{1-r}+\varepsilon
\qquad(k\ge N).
$$

Thus the exact endpoint is
`norm_error_eventually_le_contraction_radius`, whose conclusion is

$$
\forall\varepsilon>0\;\exists N\;\forall k\ge N,\qquad
\lVert e_k\rVert\le\frac{b}{1-r}+\varepsilon.
$$

The threshold $N$ is obtained after fixing $E$, $e$, $r$, $b$, the recurrence
bound and $\varepsilon$. The endpoint does not make $N$ uniform over a family
of spaces, sequences, parameters or tolerances. It is an eventual upper bound
on the norm; it does not assert that $e_k$ converges to a point, and a positive
$b$ permits a positive limiting radius.

## Lipschitz loss and population CVaR

The two risk endpoints are more general than the observer endpoints. Here $E$
needs only to be a normed additive commutative group; it need not have the
real scalar-space structure used above for the linear observer maps. Let
$(\Omega,\mathcal F,\mu)$ be a probability space, let $X,\widehat X$ be
$E$-valued random states, and let $\mathcal L:E\to\mathbb R$ be
$K$-Lipschitz with $K\ge0$. Assume both losses are integrable. The captured
formal theorem quantifies over a real $\varepsilon$ without separately adding
$\varepsilon\ge0$; in the ordinary nonvacuous use of an almost-sure norm bound,
nonnegativity follows from the bound because norms are nonnegative. Thus take
$\varepsilon\ge0$ when stating the engineering error radius, and assume

$$
\lVert X(\omega)-\widehat X(\omega)\rVert\le\varepsilon
\quad\text{for }\mu\text{-almost every }\omega.
$$

The Lipschitz condition gives pointwise on that full-measure set

$$
|\mathcal L(X)-\mathcal L(\widehat X)|
 \le K\lVert X-\widehat X\rVert
 \le K\varepsilon.
$$

For clarity, write the population CVaR objective as

$$
C_\alpha(Y)=\inf_{\tau\in\mathbb R}
\left(\tau+\frac{1}{1-\alpha}
\mathbb E[(Y-\tau)_+]\right),
\qquad 0\le\alpha<1,
$$

with the integral form used by the population-risk Brick for general loss
random variables. The one-sided inequality

$$
\mathcal L(X)\le\mathcal L(\widehat X)+K\varepsilon
$$

can be inserted into the population-CVaR comparison theorem from the
[population-CVaR Brick](../cvar_population/README.md) for $0\le\alpha<1$.
That theorem compares the two infimum objectives after the pointwise
inequality is shifted by $K\varepsilon$. Integrability supplies the two
population objectives, and the common probability law supplies the shared
measure. Hence

$$
C_\alpha(\mathcal L(X))
 \le C_\alpha(\mathcal L(\widehat X))+K\varepsilon.
$$

Applying the same argument with $X$ and $\widehat X$ exchanged gives the
reverse one-sided inequality. Combining the two inequalities yields

$$
\left|C_\alpha(\mathcal L(X))-C_\alpha(\mathcal L(\widehat X))\right|
 \le K\varepsilon,
$$

the endpoint `abs_cvarPop_sub_le_of_estimation_error`. The direct one-sided
endpoint is `cvarPop_le_of_estimation_error`.

For an episode, $E$ may be a finite sampled trajectory space with a declared
norm. That norm must not be silently replaced by a continuous-time supremum.
Likewise, a probability-of-error statement cannot replace the almost-sure
bound used here. A squared loss is not globally Lipschitz on an unbounded
domain, so it needs a bounded operating region or a separately proved local
bound.

## Uniform eventual observer-error bound

Let $e_\theta:\mathbb N\to E$ be any family in one normed additive
commutative group. Suppose the family shares $0\le r<1$, $b\ge0$, and
$M\ge0$, with $\|e_\theta(0)\|\le M$ and
$\|e_\theta(k+1)\|\le r\|e_\theta(k)\|+b$ for every $\theta,k$.
Apply the finite contraction estimate to each member. Since $r^k\ge0$,
the common initial bound gives

$$
\|e_\theta(k)\|
\le r^k\|e_\theta(0)\|+b\frac{1-r^k}{1-r}
\le r^k M+b\frac{1-r^k}{1-r}=:q_k.
$$

The sequence $q_k$ is independent of $\theta$. As $0\le r<1$, $r^k\to0$,
so $q_k\to b/(1-r)$. For each $\varepsilon>0$, choose $N$ so that
$q_k<b/(1-r)+\varepsilon$ for every $k\ge N$. The same choice then gives

$$
\forall\theta\;\forall k\ge N,\qquad
\|e_\theta(k)\|\le b/(1-r)+\varepsilon.
$$

The formal endpoint is
`Ctrllib.norm_error_family_eventually_le_contraction_radius`. Choosing
$N$ from the common majorant before introducing $\theta$ proves the required
quantifier order. Applying the earlier pointwise eventual theorem separately
would only give a possibly different $N_\theta$. No finiteness, topology,
probability law or measurability on the parameter type is required. The bound
is uniform in the parameter for each fixed positive tolerance, not one
threshold for every tolerance at once.

## Endpoint coverage and gaps

The derivation covers all nine exact endpoints: the identity and one-step
norm estimate, the finite geometric estimate and its contraction form, the
complete time-varying observer estimate, the one-sided and two-sided
population-CVaR transfers, the generic eventual contraction-radius bound,
and its family-uniform extension under shared initial and recurrence bounds.
It also covers every named binder in the captured statements: spaces, bounded
maps, trajectories, residual bounds, integrability, probability measure,
Lipschitz constant, confidence level, almost-sure error radius, tolerance and
eventual threshold.

The remaining gaps are application obligations: dimensions and frames for a
particular sensor/plant, unit normalization across spaces, justified residual
envelopes, the actual observer choice, justified shared family bounds, and
physical validation. No Gaussian noise law, observability claim, Kalman
optimality claim, or continuous-time interpretation follows from these formal
endpoints.
