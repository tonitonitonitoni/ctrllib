# Conventional proof: tracking strict-storage cross term

This Brick gives the pointwise cross-term identity used by the strict tracking storage. It preserves the kinematic residual and external forcing exactly. The rate symbols are values passed to a declaration; no trajectory derivative is inferred.

## Definitions and notation

Let $e,edot\in\mathbb{R}^{n}$, $x,xdot,r\in\mathbb{R}^{m}$, and
$M,Mdot,C,D\in\mathbb{R}^{n\times n}$, $K\in\mathbb{R}^{m\times m}$,
$J,Jdot\in\mathbb{R}^{m\times n}$. Define the stiffness force

$$
g:=J^\mathsf{T}Kx
$$

and the supplied value

$$
g_d:=Jdot^\mathsf{T}Kx+J^\mathsf{T}Kxdot.
$$

The source cross term is $\alpha g^\mathsf{T}Me$, and its encoded rate contribution is

$$
\alpha\left(g_d^\mathsf{T}Me+g^\mathsf{T}Mdot e+g^\mathsf{T}M edot\right).
$$

## Cross-term identity

Assume $K^\mathsf{T}=K$, the passivity relation
$Mdot=C+C^\mathsf{T}$, and the pointwise dynamics and kinematics

$$
M edot=-Ce-De-g-F,\qquad xdot=Je+r.
$$

The base storage rate contributes

$$
e^\mathsf{T}M edot+\frac12e^\mathsf{T}Mdot e+x^\mathsf{T}Kxdot.
$$

Using $xdot=Je+r$ and symmetry of $K$,

$$
x^\mathsf{T}Kxdot
=x^\mathsf{T}K(Je+r)
=e^\mathsf{T}g+x^\mathsf{T}Kr.
$$

Also, pairing the dynamics with $e$ gives

$$
e^\mathsf{T}M edot=-e^\mathsf{T}Ce-e^\mathsf{T}De-e^\mathsf{T}g-e^\mathsf{T}F.
$$

The $e^\mathsf{T}g$ terms cancel. The passivity bracket
$\frac12e^\mathsf{T}Mdot e-e^\mathsf{T}Ce$ vanishes because
$e^\mathsf{T}C^\mathsf{T}e=e^\mathsf{T}Ce$. Pairing the same dynamics with $g$ gives

$$
g^\mathsf{T}M edot
=-g^\mathsf{T}Ce-g^\mathsf{T}De-g^\mathsf{T}g-g^\mathsf{T}F.
$$

Adding the cross-term rate therefore proves the exact source identity:

$$
\boxed{
\begin{aligned}
R
={}&-e^\mathsf{T}De-e^\mathsf{T}F+x^\mathsf{T}Kr\\
&+\alpha\bigl(
g_d^\mathsf{T}Me+g^\mathsf{T}Mdot e
-g^\mathsf{T}Ce-g^\mathsf{T}De-g^\mathsf{T}g-g^\mathsf{T}F
\bigr).
\end{aligned}
}
$$

This is cross_term_rate_identity. The terms $F$ and $r$ are distinct residuals and have distinct signs.

## Public result 2: no-forcing specialization

Set $F=0$ and $r=0$. The exact dynamics and kinematics become

$$
M edot=-Ce-De-g,\qquad xdot=Je,
$$

and the identity reduces to

$$
\boxed{
R=-e^\mathsf{T}De+
\alpha\bigl(
g_d^\mathsf{T}Me+g^\mathsf{T}Mdot e
-g^\mathsf{T}Ce-g^\mathsf{T}De-g^\mathsf{T}g
\bigr).
}
$$

This is cross_term_rate_no_forcing. It is still a pointwise formula; setting the residual values to zero is not a proof that a COM loop or a relative kinematics equation has zero residual.

## Strict-term zero condition

Assume $K$ is positive definite and $J$ is injective as a linear map. The source criterion is

$$
g^\mathsf{T}g=0\quad\Longleftrightarrow\quad x=0.
$$

For the forward implication, the Euclidean identity
$g^\mathsf{T}g=0$ gives $g=0$. Since
$g=(J^\mathsf{T}K)x$, the equation is the stiffness residual equation
$J^\mathsf{T}Kx=0$. Positive definiteness makes $K$ nonsingular, and injectivity of
$J$ makes $J^\mathsf{T}$ nonsingular in the finite square setting; the source's
stiffness-residual adapter then gives $x=0$. Conversely, $x=0$ implies $g=0$
directly. Thus strict_term_zero_iff holds.

The positive-definite and injectivity premises are load-bearing. A PSD $K$ or a singular $J$ can admit nonzero $x$ with $g=0$.

## Correspondence and limitations

The exact declarations, finite dimensions, forcing vectors, residual vectors, matrix products, and value-level derivative arguments are retained in correspondence/statements.md. The Brick establishes the identity and zero criterion only. It does not prove positivity of the augmented storage, rate domination, trajectory realization, convergence, controller behavior, source/model equivalence, or physical acceptance.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The cross-term identity requires symmetric $K$, passivity $Mdot=C+C^\mathsf{T}$,
the supplied dynamics, and $xdot=Je+r$. The no-forcing branch sets both $F$ and
$r$ to zero. The zero criterion separately requires PD $K$ and injective $J$.
The symbols edot, xdot, and $g_d$ remain supplied values rather than proven
trajectory derivatives.
