# Conventional proof: tracking storage comparison cascade

This Brick packages the scalar comparison adapters in TrackingCascade. The results are conditional on a realized scalar storage function and supplied derivative inequalities. They compose a tracking-error estimate with a driving subsystem, but they do not construct either subsystem or prove that a physical controller satisfies the interfaces.

## Definitions and notation

Let $x_1:\mathbb{R}\to E_1$ and $x_2:\mathbb{R}\to E_2$ be functions into normed additive groups, and let $W,W':\mathbb{R}\to\mathbb{R}$ be the storage value and its supplied rate value. The comparison domain is $[0,\infty)$, written $\operatorname{Ici}(0)$ in Lean. The constants satisfy

$$
c_{\rm lo}>0,\qquad c_{\rm hi}>0,\qquad \kappa>0,\qquad c'>0,
$$

and the residual floor satisfies $\rho\ge0$. The lower storage sandwich used by the tracking-error conclusions is

$$
c_{\rm lo}\|x_1(t)\|^2\le W(t).
$$

This lower inequality is a coercivity premise. It is the direction needed to infer a norm bound or convergence from a bound on $W$. An upper sandwich has already been absorbed into the supplied coefficient $c_{\rm hi}$ in the rate interface and is not an additional premise of the cascade declarations.

## Forced-rate majorant

Assume $W(t)\ge0$ and the pointwise forced rate inequality

$$
W'(t)\le-\frac{\kappa}{c_{\rm hi}}W(t)
+c'\bigl(\|x_2(t)\|+\rho\bigr)\sqrt{W(t)}.
$$

Set

$$
f(t):=\|x_2(t)\|+\rho,\qquad
a:=\frac{\kappa}{2c_{\rm hi}},\qquad
K:=\frac{c'^2c_{\rm hi}}{2\kappa}.
$$

All denominators are positive. Apply scalar Young's inequality to
$s=\sqrt{W(t)}$ and $f=f(t)$ with
$\lambda=\kappa/(c_{\rm hi}c')>0$:

$$
c'\sqrt{W(t)}f(t)
\le
\frac{c'\lambda}{2}W(t)+\frac{c'}{2\lambda}f(t)^2
=
\frac{\kappa}{2c_{\rm hi}}W(t)
+\frac{c'^2c_{\rm hi}}{2\kappa}f(t)^2.
$$

Substitution into the supplied rate gives

$$
\boxed{
W'(t)\le
-\frac{\kappa}{2c_{\rm hi}}W(t)
+\frac{c'^2c_{\rm hi}}{2\kappa}
\bigl(\|x_2(t)\|+\rho\bigr)^2.
}
$$

This is the exact conclusion of tracking_forced_rate_majorant. It is a reduction at the value level. It does not use, or establish, a chain rule for $\sqrt{W}$.

## Tracking cascade bound

Set $\rho=0$ and assume $x_2(t)\to0$ as $t\to\infty$. The lower sandwich and $c_{\rm lo}>0$ first imply

$$
0\le W(t)
$$

on the comparison domain. The driving convergence implies
$\|x_2(t)\|\to0$, and therefore

$$
\varepsilon(t):=
\frac{c'^2c_{\rm hi}}{2\kappa}\|x_2(t)\|^2
\longrightarrow0.
$$

The exact regularity interface in the declaration supplies continuity of $W$ and
$\operatorname{HasDerivWithinAt}W(W'(t),[t,\infty),t)$, together with the pointwise rate inequality. With
$a=\kappa/(2c_{\rm hi})$, the majorant has the scalar form

$$
W'(t)\le-aW(t)+\varepsilon(t).
$$

For any $\eta>0$, choose $T\ge0$ so that $\varepsilon(s)\le\eta$ for every
$s\ge T$. The comparison endpoint applies its finite-interval comparison argument
on $[T,t]$ with the constant disturbance $\eta$. It gives, for $t\ge T$,

$$
W(t)\le e^{-a(t-T)}W(T)
       +\frac{\eta}{a}\bigl(1-e^{-a(t-T)}\bigr).
$$

The first term tends to zero, so the eventual upper limit is at most $\eta/a$.
Because $\eta$ is arbitrary, $W(t)\to0$. This tail argument is the form justified
by the source comparison endpoint: it uses the supplied continuity, derivative,
nonnegativity, and rate premises and does not require a separate measurability or
integrability assumption on the disturbance $\varepsilon$.

Finally, use the lower, coercive sandwich in the correct direction:

$$
0\le c_{\rm lo}\|x_1(t)\|^2\le W(t)\longrightarrow0.
$$

Because $c_{\rm lo}>0$, $\|x_1(t)\|^2\to0$, and hence
$\|x_1(t)\|\to0$. Thus the conclusion is

$$
\boxed{x_1(t)\longrightarrow0.}
$$

No upper class-$\mathcal K$ bound is used to obtain this implication. The theorem assumes the driving limit as $x_2\to0$; it does not derive that limit from the tracking subsystem.

## Public result 3: uniform forced bound

Assume instead a uniform driver bound

$$
\|x_2(t)\|\le M_x,\qquad M_x\ge0,
$$

with $\rho\ge0$. Then

$$
0\le \|x_2(t)\|+\rho\le M_x+\rho,
$$

so the majorant becomes

$$
W'(t)\le-aW(t)+B,
\qquad
a:=\frac{\kappa}{2c_{\rm hi}},\qquad
B:=\frac{c'^2c_{\rm hi}}{2\kappa}(M_x+\rho)^2.
$$

The scalar comparison or integrating-factor estimate gives, for every $t\ge0$,

$$
W(t)\le e^{-at}W(0)+\frac{B}{a}\bigl(1-e^{-at}\bigr).
$$

The source conclusion records the weaker uniform form, which retains the initial transient:

$$
\boxed{
W(t)\le W(0)+
\frac{c'^2c_{\rm hi}}{2\kappa}
\frac{(M_x+\rho)^2}{\kappa/(2c_{\rm hi})}.
}
$$

The premise $W(0)\ge0$ is explicit because it is consumed by the comparison adapter. Combining the uniform storage ceiling with the lower sandwich gives

$$
\|x_1(t)\|^2
\le
\frac{W(0)+
\frac{c'^2c_{\rm hi}}{2\kappa}
\frac{(M_x+\rho)^2}{\kappa/(2c_{\rm hi})}}
{c_{\rm lo}},
$$

and square-root monotonicity yields the exact tracking_cascade_bounded endpoint:

$$
\boxed{
\|x_1(t)\|\le
\sqrt{
\frac{W(0)+
\frac{c'^2c_{\rm hi}}{2\kappa}
\frac{(M_x+\rho)^2}{\kappa/(2c_{\rm hi})}}
{c_{\rm lo}}}.
}
$$

This is a uniform-in-time bound. It does not claim the sharper asymptotic floor obtained by dropping the initial term.

## Eventual storage and tracking floors

Retain the positive constants and bounded upstream signal from the uniform
bound. Young's inequality gives $W'\le-aW+B$ with exactly

$$
a=\frac{\kappa}{2c_{\rm hi}},\qquad
B=\frac{c'^2c_{\rm hi}}{2\kappa}(M_x+\rho)^2.
$$

The new scalar `comparison_eventual_floor` applies because $a>0$, $B\ge0$,
and the same continuity and right-derivative witnesses are supplied. Thus
for every $\varepsilon>0$ there is $T\ge0$ with
$W(t)\le B/a+\varepsilon$ for all $t\ge T$. This is
`Ctrllib.tracking_storage_eventual_floor`.

For the norm endpoint, the lower sandwich first gives $W\ge0$, so a
separate storage-sign hypothesis is unnecessary. At every $t\ge T$,

$$
c_{\rm lo}\|x_1(t)\|^2\le W(t)\le B/a+\varepsilon.
$$

Divide by $c_{\rm lo}>0$, then use square-root monotonicity and the
nonnegative norm to obtain

$$
\forall t\ge T,\qquad
\|x_1(t)\|\le\sqrt{\frac{B/a+\varepsilon}{c_{\rm lo}}}.
$$

This is `Ctrllib.tracking_norm_eventual_floor`. The initial value $W(0)$
has disappeared from this eventual bound. The threshold may depend on the
trajectory and tolerance; the theorem does not assert the limiting radius
is reached in finite time. The forced-rate, derivative, storage-sandwich
and upstream-bound premises still need realization from a selected model
(atlas C4).

## Public result 4: the COM driving specialization

The endpoint tracking_cascade_gas_com specializes the preceding attractivity result. It supplies the driver as the COM flow
$\phi_c(t)z_0$ and invokes the source theorem com_gas_matrix under its exact premises:

- $M_m,D_m,K_m$ are positive definite matrices;
- $\phi_c$ is a flow on the encoded COM state space;
- $\phi_c$ is a solution of the encoded COM vector field built from $D_m$, $K_m$, and $M_m^{-1}$;
- the initial COM state has forward-precompact orbit.

The COM theorem provides

$$
\phi_c(t)z_0\longrightarrow0.
$$

Passing this limit as the $x_2$ hypothesis of tracking_cascade_gas gives
$x_1(t)\to0$, provided the tracking storage sandwich, continuity, derivative, and forced-rate premises are also supplied. This is a compositional interface: the COM theorem discharges the driving-limit input, while the tracking assumptions remain separate obligations.

## Correspondence and limitations

The exact declaration binders, domains, regularity predicates, flow type, and matrix dimensions are retained in correspondence/statements.md. The derivative predicates in the GAS and boundedness declarations are hypotheses about a realized scalar function $W$; they do not follow from the value-level rate identities in TrackingDissipation or TrackingStrictBound.

The residual floor $\rho$ prevents the attractivity conclusion in general; it is retained in the uniform bound. The norm ceiling $M_x$ is an explicit input. The lower sandwich is the coercive direction used for both conclusions. No physical controller implementation, global existence theorem, numerical simulation, hardware result, or scientific acceptance is claimed.

## Evidence record

The current Xylem declaration capture reports no sorryAx for the source declarations used here. This document records the conventional scalar comparison and exact interface correspondence; it does not establish that any caller satisfies the trajectory assumptions.

## Exact interface audit

The majorant uses only positive $c_{\rm hi},\kappa,c'$ and nonnegative $W,\rho$. Attractivity additionally uses continuity, the within-domain derivative predicate, the lower coercive sandwich, and $x_2\to0$. Uniform boundedness uses $W(0)\ge0$ and $\|x_2\|\le M_x$. The COM specialization retains its positive-definite, flow-solution, and forward-precompactness premises. The square-root flow chain rule is not inferred.
