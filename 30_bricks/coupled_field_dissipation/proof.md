# Conventional proof: coupled-field energy dissipation

This Brick records the abstract coupled-field derivative and the total
time-varying-inertia correction. The operator adjoint, inverse, passivity, and
trajectory-realization premises are kept explicit.

## Field energy and exact state convention

Let $H$ be a real inner-product space. A coupled state is
$y=(x,v)\in H\times H$, with error first and velocity second. Let
$M,C,D,K,J,Minv,Jadj:H\to H$ be the continuous operators in the source.
The field is

$$
g_2(x,v)=
\left(
Jv,\,
-\operatorname{Minv}\bigl(Cv+Dv+Jadj(Kx)\bigr)
\right),
$$

and the quadratic energy is

$$
V(x,v)=\frac12\langle v,Mv\rangle+
\frac12\langle x,Kx\rangle.
$$

The source's adjoint interface is

$$
\langle Ja,b\rangle=\langle a,Jadj\,b\rangle,
$$

and its inverse interface is $M(\operatorname{Minv}w)=w$.

## Field derivative

Assume $M$ and $K$ are self-adjoint. For an arbitrary direction
$w=(w_x,w_v)$, the Fréchet derivative is

$$
DV(x,v)[w]
=
\langle v,Mw_v\rangle+\langle x,Kw_x\rangle.
$$

This follows by expanding each quadratic form and using self-adjointness to
combine the two half terms. In particular, evaluate it at $w=g_2(x,v)$:

$$
DV[g_2]
=
\left\langle v,
-M\operatorname{Minv}(Cv+Dv+Jadj(Kx))
\right\rangle
+\langle x,KJv\rangle.
$$

The inverse premise gives

$$
\left\langle v,
-M\operatorname{Minv}(Cv+Dv+Jadj(Kx))
\right\rangle
=
-\langle v,Cv\rangle-\langle v,Dv\rangle
-\langle v,Jadj(Kx)\rangle.
$$

By self-adjointness of $K$ and the adjoint premise for $Jadj$,

$$
\langle x,KJv\rangle
=\langle Kx,Jv\rangle
=\langle Jv,Kx\rangle
=\langle v,Jadj(Kx)\rangle.
$$

The coupling terms cancel, leaving the exact field endpoint

$$
\boxed{
DV(y)[g_2(y)]
=
-\langle v,Cv\rangle-\langle v,Dv\rangle.
}
$$

This is coupledEnergy_fderiv_field. The $C$ term is not sign-definite by
itself, so this field partial is not yet a dissipation statement.

## Total dissipation

The total source rate adds the configuration-dependent inertia correction

$$
\operatorname{coupledLyapRate}(y)
=
DV(y)[g_2(y)]+\frac12\langle v,Mdot\,v\rangle.
$$

Assume the passivity identity

$$
\langle v,Mdot\,v\rangle=2\langle v,Cv\rangle
\qquad\text{for every }v\in H.
$$

Then

$$
\begin{aligned}
\operatorname{coupledLyapRate}(y)
&=-\langle v,Cv\rangle-\langle v,Dv\rangle
+\frac12\langle v,Mdot\,v\rangle\\
&=-\langle v,Dv\rangle.
\end{aligned}
$$

This proves coupled_total_dissipation. If
$\langle v,Dv\rangle\ge0$ for every $v$, then

$$
\boxed{\operatorname{coupledLyapRate}(y)\le0,}
$$

which is coupled_decrease. The conclusion is negative semidefinite; strict
decay is not inferred unless a definite damping premise is supplied.

## Convergence ceiling

The endpoint coupled_hdec packages the preceding nonpositive rate with a
separate realization premise

$$
\operatorname{fderiv}(V,y)[f(y)]
=
\operatorname{coupledLyapRate}(y)
$$

in the exact source notation. The capstone coupled_block_tendsto then feeds
that decrease into the source LaSalle proposition. It additionally requires a
supplied flow solution, differentiability of the selected Lyapunov function,
a zero-derivative-set containment, and forward precompactness. Under those
premises it returns convergence to the specified target set.

The derivative-realization premise is material: the field derivative above
holds for fixed operators, while the total rate includes the supplied
$Mdot$ correction. The Brick does not derive the state-dependent operator
calculus or the flow witness.

## Correspondence and limitations

The exact operator types, state ordering, adjoint interface, inverse interface,
passivity identity, derivative predicates, and target-set assumptions are
retained in correspondence/statements.md. No physical plant, controller,
numerical experiment, hardware result, or scientific acceptance is claimed.
