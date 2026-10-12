# Conventional proof: tracking storage dissipation identity

This Brick records the pointwise storage-rate algebra in TrackingDissipation. The vectors and matrix values are supplied at one instant. The declarations do not realize an ODE or establish that the displayed values are derivatives of a trajectory.

## Definitions and notation

Let $v,v_d,vdot,vddot\in\mathbb{R}^{n}$, let $e:=v-v_d$, and let
$x,xdot\in\mathbb{R}^{m}$. Let $M,Mdot,C,D\in\mathbb{R}^{n\times n}$,
$K\in\mathbb{R}^{m\times m}$, and $J\in\mathbb{R}^{m\times n}$. The source rate value is

$$
R:=e^\mathsf{T}M(vdot-vddot)
+\frac12e^\mathsf{T}Mdot e
+x^\mathsf{T}Kxdot.
$$

The exact kinematic and dynamic interfaces are

$$
xdot=Je,
$$

and, in the absolute-velocity branch,

$$
M vdot= -Cv-De-J^\mathsf{T}Kx-F+M vddot.
$$

The forcing vector $F$ is retained explicitly.

## Tracking rate identity

Subtracting $Mvddot$ from the dynamic equation gives

$$
M(vdot-vddot)=-Cv-De-J^\mathsf{T}Kx-F.
$$

Substitute this and $xdot=Je$ into $R$:

$$
\begin{aligned}
R
&=e^\mathsf{T}(-Cv-De-J^\mathsf{T}Kx-F)
+\frac12e^\mathsf{T}Mdot e+x^\mathsf{T}KJe\\
&=-e^\mathsf{T}Cv-e^\mathsf{T}De-e^\mathsf{T}F
-e^\mathsf{T}J^\mathsf{T}Kx
+\frac12e^\mathsf{T}Mdot e+x^\mathsf{T}KJe.
\end{aligned}
$$

Symmetry of $K$ identifies the stiffness terms:

$$
x^\mathsf{T}KJe=(Je)^\mathsf{T}Kx=e^\mathsf{T}J^\mathsf{T}Kx,
$$

so they cancel. Since $v=e+v_d$,

$$
-e^\mathsf{T}Cv=-e^\mathsf{T}Ce-e^\mathsf{T}Cv_d.
$$

Therefore the exact endpoint tracking_rate_identity is

$$
\boxed{
R=-e^\mathsf{T}De-e^\mathsf{T}Cv_d-e^\mathsf{T}F
+\left(\frac12e^\mathsf{T}Mdot e-e^\mathsf{T}Ce\right).
}
$$

The term $-e^\mathsf{T}Cv_d$ is a real residual of the absolute-velocity convention and cannot be omitted by relabeling $v$ as $e$.

## Tracking dissipation

Assume the passivity identity

$$
Mdot=C+C^\mathsf{T}.
$$

For a scalar quadratic form,
$e^\mathsf{T}C^\mathsf{T}e=e^\mathsf{T}Ce$. Thus

$$
\frac12e^\mathsf{T}Mdot e-e^\mathsf{T}Ce
=
\frac12e^\mathsf{T}(C+C^\mathsf{T})e-e^\mathsf{T}Ce
=0.
$$

The passive rate becomes

$$
\boxed{
R=-e^\mathsf{T}De-e^\mathsf{T}Cv_d-e^\mathsf{T}F.
}
$$

The source also provides a velocity-feedforward branch whose dynamics use
$-C(v-v_d)=-Ce$ in place of $-Cv$. Repeating the substitution with that exact interface removes the residual $-e^\mathsf{T}Cv_d$ and gives

$$
\boxed{
R_{\rm ff}=-e^\mathsf{T}De-e^\mathsf{T}F.
}
$$

These are different theorem branches. The feedforward conclusion must not be applied to the absolute-velocity dynamics.

## Public result 3: nonpositive rate and coercive storage

In the velocity-feedforward branch, assume $F=0$ and damping is positive semidefinite in the source pointwise form:

$$
e^\mathsf{T}De\ge0\qquad\text{for every }e.
$$

Then

$$
R_{\rm ff}=-e^\mathsf{T}De\le0,
$$

which is tracking_rate_velocity_ff_nonpos. Positive semidefiniteness is enough for this sign conclusion; positive definiteness is not inferred.

For the separate storage endpoint, assume $M$ and $K$ are positive definite and use the source's finite nonempty index hypotheses. Positive definiteness supplies positive lower eigenvalue bounds for the two quadratic forms. The cross-term free block storage is therefore bounded below by some $c_1>0$:

$$
c_1\bigl(\|v-v_d\|^2+\|x\|^2\bigr)
\le
\operatorname{blockLyap}(M,K,v,v_d,x).
$$

This is the exact shape of tracking_storage_coercive. It is a storage coercivity statement, separate from the nonpositive-rate endpoint; it does not turn a pointwise rate identity into a trajectory theorem.

## Correspondence and limitations

The exact vector dimensions, matrix operations, passivity relation, forcing convention, and named declarations are retained in correspondence/statements.md. The source provides value-level algebra only. It does not prove HasDerivWithinAt for $R$, IsSolutionTo for an ODE, convergence, controller realization, source/model equivalence, numerical performance, or physical acceptance.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The absolute-velocity theorem requires the exact dynamics with $-Cv$ and retains
the residual $-e^\mathsf{T}Cv_d$. The velocity-feedforward theorem changes the
dynamics to $-C(v-v_d)$ and removes that residual. The nonpositive endpoint
requires PSD damping and zero forcing. The coercive storage endpoint separately
requires PD $M$ and $K$. No trajectory derivative bridge is supplied.
