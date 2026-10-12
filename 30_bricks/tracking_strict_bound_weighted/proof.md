# Conventional proof: weighted tracking strict-rate bound

This Brick gives a conventional derivation of the weighted-metric strict-rate adapter in TrackingStrictBoundWeighted. It is a pointwise algebraic result: the matrices, vectors, constants, and domination inequalities below are evaluated at one fixed instant. A caller must provide the hypotheses uniformly along a realized trajectory before using the result as a Lyapunov estimate.

## Definitions and notation

Let $e\in\mathbb{R}^{n}$ and $x\in\mathbb{R}^{m}$ be the velocity and configuration error vectors. Let $M,Mdot,C,D\in\mathbb{R}^{n\times n}$, $K\in\mathbb{R}^{m\times m}$, and $J,Jdot\in\mathbb{R}^{m\times n}$. The source uses

$$
E_M := e^\mathsf{T}Me,\qquad X_K := x^\mathsf{T}Kx,\qquad
g := J^\mathsf{T}Kx,
$$

and the value-level cross-term derivative vector

$$
g_d := Jdot^\mathsf{T}Kx+J^\mathsf{T}Kxdot.
$$

The source supplies nonnegative quadratic-form hypotheses for $M$ and $K$, and
supplies the symmetry premise $K^\mathsf{T}=K$ needed by the tracking identity:

$$
z^\mathsf{T}Mz\ge0\quad\text{for every }z,\qquad
y^\mathsf{T}Ky\ge0\quad\text{for every }y,qquad K^\mathsf{T}=K.
$$

The separate weighted Young endpoint also assumes symmetry of its matrix argument;
the weighted dominated-rate declaration itself does not assume $M^\mathsf{T}=M$.
Positive semidefiniteness permits $E_M=0$ or $X_K=0$ for a nonzero vector.
Therefore this Brick does not claim that either weighted form is a Euclidean norm.

## Public result 1: weighted Young inequality

Assume $M^\mathsf{T}=M$, the quadratic form of $M$ is nonnegative, and $\lambda>0$. For arbitrary $u,v\in\mathbb{R}^{n}$, positive semidefiniteness applied to $\lambda u-v$ gives

$$
0\le \frac{1}{2\lambda}(\lambda u-v)^\mathsf{T}M(\lambda u-v).
$$

Expanding the square and using symmetry to identify
$u^\mathsf{T}Mv=v^\mathsf{T}Mu$ yields

$$
0\le
\frac{\lambda}{2}u^\mathsf{T}Mu
-u^\mathsf{T}Mv
+\frac{1}{2\lambda}v^\mathsf{T}Mv.
$$

Rearranging proves the exact endpoint weighted_young_cross:

$$
u^\mathsf{T}Mv
\le
\frac{\lambda}{2}u^\mathsf{T}Mu
+\frac{1}{2\lambda}v^\mathsf{T}Mv.
$$

The proof remains valid when $M$ is singular. No square-root Cauchy–Schwarz statement, invertibility of $M$, or Euclidean coercivity is being assumed.

## Public result 2: weighted residual bound

Assume $K^\mathsf{T}=K$, its quadratic form is nonnegative, $\rho>0$, and

$$
r^\mathsf{T}Kr\le \rho^2 X_K.
$$

Apply the preceding inequality with $M=K$, $u=x$, $v=r$, and $\lambda=\rho$:

$$
x^\mathsf{T}Kr
\le
\frac{\rho}{2}X_K+\frac{1}{2\rho}r^\mathsf{T}Kr.
$$

The residual premise and $\rho>0$ imply

$$
\frac{1}{2\rho}r^\mathsf{T}Kr
\le
\frac{1}{2\rho}\rho^2X_K
=\frac{\rho}{2}X_K.
$$

Consequently,

$$
x^\mathsf{T}Kr\le \rho X_K.
$$

This is the exact endpoint weighted_residual_bound. It controls the signed cross term in the $K$ metric; it does not say that $r$ is small in Euclidean norm.

## Weighted strict-rate domination

Assume the exact source interfaces

$$
M \dot e=-Ce-De-J^\mathsf{T}Kx,\qquad
xdot=Je+r,\qquad
Mdot=C+C^\mathsf{T},
$$

with $K^\mathsf{T}=K$. Here $xdot$, $edot$, and $Jdot$ are vector or matrix values supplied to the declaration. This is a pointwise substitution into the encoded rate expression; it is not a claim that a trajectory has been differentiated.

The source identity is the zero-external-forcing branch ($F=0$); the kinematic
residual $r$ remains in its exact rate expression:

$$
\begin{aligned}
R
&:=\operatorname{strictRate}(M,Mdot,K,J,Jdot,\alpha,e,edot,x,xdot)\\
&=-e^\mathsf{T}De+x^\mathsf{T}Kr
+\alpha\bigl(
g_d^\mathsf{T}Me+g^\mathsf{T}Mdot e
-g^\mathsf{T}Ce-g^\mathsf{T}De-g^\mathsf{T}g
\bigr),
\end{aligned}
$$

where the forcing value is exactly zero in this theorem. Introduce

$$
C_\Sigma:=c_2+c_3+c_4+c_5,\qquad
s:=\sqrt{E_M},\qquad t:=\sqrt{X_K}.
$$

The hypotheses give the following termwise bounds:

$$
\begin{aligned}
e^\mathsf{T}De&\ge d_1E_M,\\
g^\mathsf{T}g&\ge \gamma_1^2X_K,\\
g_d^\mathsf{T}Me&\le c_1E_M+c_2st,\\
g^\mathsf{T}Mdot e&\le c_3st,\\
-g^\mathsf{T}Ce&\le c_4st,\\
-g^\mathsf{T}De&\le c_5st,\\
x^\mathsf{T}Kr&\le \kappa_rX_K.
\end{aligned}
$$

The last line is the kinematic residual bound supplied to the theorem. It bounds
the displayed $x^\mathsf{T}Kr$ contribution by $\kappa_rX_K$.

With $\alpha\ge0$, substitution and collection give

$$
R\le
-\bigl(d_1-\alpha c_1\bigr)E_M
-\bigl(\alpha\gamma_1^2-\kappa_r\bigr)X_K
+\alpha C_\Sigma st.
$$

Set

$$
A:=d_1-\alpha c_1,\qquad
B:=\alpha\gamma_1^2-\kappa_r,\qquad
C:=\alpha C_\Sigma.
$$

The premise $C_\Sigma\ge0$ and $\alpha\ge0$ imply $C\ge0$. Apply scalar Young's inequality to the remaining cross term, with $\lambda>0$:

$$
Cst\le \frac{C\lambda}{2}s^2+\frac{C}{2\lambda}t^2.
$$

Therefore,

$$
R\le
-\left(A-\frac{C\lambda}{2}\right)E_M
-\left(B-\frac{C}{2\lambda}\right)X_K.
$$

Since each coefficient is bounded below by their minimum,

$$
\boxed{
R\le
-\min\left(
(d_1-\alpha c_1)-\frac{\alpha C_\Sigma\lambda}{2},
(\alpha\gamma_1^2-\kappa_r)-\frac{\alpha C_\Sigma}{2\lambda}
\right)(E_M+X_K).
}
$$

This is the exact coefficient and weighted conclusion of strict_rate_dominated_weighted. The declaration permits the minimum coefficient to be nonpositive; a useful decay estimate requires a separate application proof that the selected minimum is positive.

## Correspondence and limitations

The public/support path is weighted_young_cross, weighted_residual_bound, and strict_rate_dominated_weighted. The exact binder order, finite index types, matrix dimensions, and Lean vector operations are retained in correspondence/statements.md.

The weighted conclusion uses $E_M$ and $X_K$ everywhere in the named quadratic bounds, while the stiffness-force lower bound remains a Euclidean dot product $g^\mathsf{T}g$, exactly as in the source interface. The dominated-rate declaration assumes $M$ has a nonnegative quadratic form and assumes $K$ is symmetric with a nonnegative quadratic form; it does not assume $M$ is symmetric. These PSD assumptions support the square-root and Young steps, but they do not establish a positive-definite storage or a conversion to $\|e\|^2+\|x\|^2$. Uniform constants, trajectory derivative bridges, controller realization, numerical evidence, hardware evidence, and scientific acceptance remain outside this Brick.

## Evidence record

The current Xylem declaration capture reports no sorryAx for the source declarations used here. This document records a conventional derivation and exact correspondence; it does not claim that the source model is physically realized, that the hypotheses hold on an application trajectory, or that the result has scientific acceptance.

## Exact interface audit

The rate is a value-level expression under supplied dynamics. The dominated-rate interface treats $M$ as quadratic-form PSD and $K$ as symmetric PSD, with neither assumed PD; the standalone weighted Young endpoint has its own symmetry premise. The residual is controlled by a $K$-metric premise, and the four cross-term bounds and stiffness-force lower bound are explicit theorem hypotheses. No Euclidean coercivity, trajectory derivative bridge, or controller claim is inferred.
