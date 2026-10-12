# Conventional proof: tracking strict-storage bounds

This Brick derives the Euclidean pointwise bounds in TrackingStrictBound. It uses the exact rate identity from TrackingCrossTerm and keeps every damping, stiffness, kinematic-residual, and forcing term as an explicit premise. The result is a conditional algebraic certificate; it is not a trajectory or controller theorem.

## Definitions and notation

Let $e\in\mathbb{R}^{n}$ and $x\in\mathbb{R}^{m}$. Write

$$
E:=e^\mathsf{T}e,\qquad X:=x^\mathsf{T}x,\qquad
s:=\sqrt{E},\qquad t:=\sqrt{X},\qquad g:=J^\mathsf{T}Kx.
$$

For the augmented storage, the source definition is

$$
W=\operatorname{blockLyap}(M,K,e,x)+\alpha g^\mathsf{T}Me,
\qquad
\operatorname{blockLyap}(M,K,e,x)
=\frac12e^\mathsf{T}Me+\frac12x^\mathsf{T}Kx.
$$

All quantities are values at one instant. The symbols $edot$, $xdot$, and $Jdot$ appearing in rate declarations are supplied vector or matrix values.

## Public result 1: Young and quadratic-form domination

For $C\ge0$ and $\lambda>0$, nonnegativity of
$C(\lambda s-t)^2/(2\lambda)$ gives

$$
Cst\le\frac{C\lambda}{2}s^2+\frac{C}{2\lambda}t^2.
$$

Set

$$
A:=d_1-\alpha c_1,\qquad
B:=\alpha\gamma_1^2-\kappa_r,\qquad
C:=\alpha(c_2+c_3+c_4+c_5).
$$

The source lemma quad_form_dominates is the direct rearrangement

$$
\begin{aligned}
&A s^2+B t^2-Cst\\
&\ge
\left(A-\frac{C\lambda}{2}\right)s^2
+\left(B-\frac{C}{2\lambda}\right)t^2\\
&\ge
\min\left(A-\frac{C\lambda}{2},B-\frac{C}{2\lambda}\right)(s^2+t^2).
\end{aligned}
$$

The last step uses $s^2,t^2\ge0$. The declaration does not assume that the minimum is positive; a positive decay margin must be established by the caller.

## Strict-rate domination

Assume the exact no-external-forcing interfaces

$$
M edot=-Ce-De-J^\mathsf{T}Kx,\qquad
xdot=Je+r,\qquad
Mdot=C+C^\mathsf{T},\qquad K^\mathsf{T}=K.
$$

The imported cross-term identity gives

$$
R=-e^\mathsf{T}De+
\alpha\left(
g_d^\mathsf{T}Me+g^\mathsf{T}Mdot e
-g^\mathsf{T}Ce-g^\mathsf{T}De-g^\mathsf{T}g
\right)
+x^\mathsf{T}Kr,
$$

where
$g_d=Jdot^\mathsf{T}Kx+J^\mathsf{T}Kxdot$. Assume the pointwise bounds

$$
\begin{aligned}
d_1E&\le e^\mathsf{T}De,&
x^\mathsf{T}Kr&\le\kappa_rX,&
\gamma_1^2X&\le g^\mathsf{T}g,\\
g_d^\mathsf{T}Me&\le c_1E+c_2st,&
g^\mathsf{T}Mdot e&\le c_3st,\\
-g^\mathsf{T}Ce&\le c_4st,&
-g^\mathsf{T}De&\le c_5st.
\end{aligned}
$$

Because $\alpha\ge0$, termwise substitution gives

$$
R\le
-\bigl(d_1-\alpha c_1\bigr)E
-\bigl(\alpha\gamma_1^2-\kappa_r\bigr)X
+\alpha(c_2+c_3+c_4+c_5)st.
$$

Apply Public result 1 with $s^2=E$ and $t^2=X$. The exact endpoint
strict_rate_dominated follows:

$$
\boxed{
R\le-\kappa(E+X),
}
$$

where

$$
\kappa=
\min\left(
(d_1-\alpha c_1)-\frac{\alpha(c_2+c_3+c_4+c_5)\lambda}{2},
(\alpha\gamma_1^2-\kappa_r)
-\frac{\alpha(c_2+c_3+c_4+c_5)}{2\lambda}
\right).
$$

The exact-relative-twist specialization sets $r=0$ and uses
$\kappa_r=0$ in the second coefficient. It does not alter any other premise.

For the forced endpoint, retain $F$ in the dynamics and assume

$$
-e^\mathsf{T}F\le f s,\qquad
-g^\mathsf{T}F\le\gamma_2 f t,\qquad
x^\mathsf{T}Kr\le\kappa_rX+\rho t.
$$

The same collection adds exactly

$$
f s+(\alpha\gamma_2 f+\rho)t
$$

to the right side, giving the source conclusion

$$
R\le-\kappa(E+X)+f\sqrt E+(\alpha\gamma_2f+\rho)\sqrt X.
$$

No forcing term is silently treated as zero.

## Strict-storage sandwich

Assume Rayleigh-type bounds

$$
m_1E\le e^\mathsf{T}Me\le m_2E,\qquad
k_1X\le x^\mathsf{T}Kx\le k_2X,
$$

and the cross-term estimate

$$
|g^\mathsf{T}Me|\le c_6st,
\qquad \alpha\ge0,\quad c_6\ge0.
$$

Since $2st\le s^2+t^2=E+X$, the cross term obeys

$$
-\frac{\alpha c_6}{2}(E+X)
\le \alpha g^\mathsf{T}Me
\le \frac{\alpha c_6}{2}(E+X).
$$

The lower quadratic terms satisfy

$$
\frac12m_1E+\frac12k_1X
\ge \frac{\min(m_1,k_1)}2(E+X),
$$

and the upper terms satisfy

$$
\frac12m_2E+\frac12k_2X
\le \frac{\max(m_2,k_2)}2(E+X).
$$

Adding the cross-term bounds proves the two endpoints

$$
\boxed{
\left(\frac{\min(m_1,k_1)}2-\frac{\alpha c_6}2\right)(E+X)
\le W
}
$$

and

$$
\boxed{
W\le
\left(\frac{\max(m_2,k_2)}2+\frac{\alpha c_6}2\right)(E+X).
}
$$

The source theorem strict_storage_sandwich packages these inequalities. The lower coefficient must be positive before it can serve as a coercivity constant.

## Public result 4: scalar forced-rate comparison adapter

Assume $E,X\ge0$, $f,\rho,\alpha,\gamma_2\ge0$, $\kappa\ge0$,
$c_{\rm lo}>0$, $c_{\rm hi}>0$, and the sandwich

$$
c_{\rm lo}(E+X)\le W\le c_{\rm hi}(E+X).
$$

From the lower bound,

$$
E\le\frac{W}{c_{\rm lo}},\qquad X\le\frac{W}{c_{\rm lo}},
$$

and monotonicity of the square root gives

$$
\sqrt E\le\frac{\sqrt W}{\sqrt{c_{\rm lo}}},
\qquad
\sqrt X\le\frac{\sqrt W}{\sqrt{c_{\rm lo}}}.
$$

From the upper bound,

$$
\frac{W}{c_{\rm hi}}\le E+X,
$$

so, since $\kappa\ge0$,

$$
-\kappa(E+X)\le-\frac{\kappa}{c_{\rm hi}}W.
$$

If the preceding forced-rate estimate holds, then the forcing part satisfies

$$
\begin{aligned}
f\sqrt E+(\alpha\gamma_2f+\rho)\sqrt X
&\le
\frac{f+\alpha\gamma_2f+\rho}{\sqrt{c_{\rm lo}}}\sqrt W\\
&\le
\frac{(1+\alpha\gamma_2)(f+\rho)}{\sqrt{c_{\rm lo}}}\sqrt W.
\end{aligned}
$$

The second inequality uses $f,\rho,\alpha,\gamma_2\ge0$. Hence the exact source adapter
forced_rate_sqrt_comparison is

$$
\boxed{
Wdot\le-\frac{\kappa}{c_{\rm hi}}W
+\frac{1+\alpha\gamma_2}{\sqrt{c_{\rm lo}}}(f+\rho)\sqrt W.
}
$$

This is a pointwise inequality. Turning $Wdot$ into the derivative of a storage along a trajectory, or applying a comparison theorem in time, requires separate continuity and derivative hypotheses.

## Correspondence and limitations

The exact matrix dimensions, finite index types, rate definitions, residual conventions, and declaration binders are retained in correspondence/statements.md. PSD versus PD is preserved: the rate domination uses the stated quadratic lower bounds, while storage coercivity requires a positive lower sandwich coefficient. The Brick does not supply uniform application constants, a physical flow, controller realization, convergence, numerical or hardware evidence, or scientific acceptance.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The forced and no-forcing rate conclusions are distinct. The no-forcing kinematics still carries the exact residual premise $x^\mathsf{T}Kr\le\kappa_rX$; the exact-relative-twist specialization sets $r=0$. All square-root bounds use Euclidean $E$ and $X$. The scalar comparison endpoint requires a genuine trajectory derivative bridge from a caller.
