# Conventional proof: cruise-lag steady-state algebra

This Brick gives the finite-dimensional algebra of CruiseLag. It characterizes a steady balance under an explicit unit premise. The balance and the steady-state interpretation are supplied interfaces; no trajectory is shown to reach them.

## Definitions and exact dimensions

Let $n$ be finite and let $J,K,C\in\mathbb{R}^{n\times n}$. Let
$x, v_d, F\in\mathbb{R}^{n}$, where $x$ is the lag, $v_d$ is the reference velocity, and $F$ is the coupling forcing. Define

$$
A:=J^\mathsf{T}K,\qquad b:=Cv_d+F.
$$

The exact source balance is

$$
0=-Cv_d-Ax-F.
$$

The source uses the matrix unit predicate $\operatorname{IsUnit}(A)$ and the finite matrix inverse $A^{-1}$.

## Cruise-lag solution

Rearrange the balance:

$$
0=-b-Ax
\quad\Longleftrightarrow\quad
Ax=-b.
$$

If $A$ is a unit, multiply by $A^{-1}$:

$$
x=A^{-1}(-b)=-(A^{-1}b).
$$

This proves the source endpoint cruise_lag_unique. Conversely, if
$x=-A^{-1}b$, then

$$
Ax=-AA^{-1}b=-b,
$$

because the finite nonsingular inverse satisfies $AA^{-1}=I$. Substitution into
$0=-b-Ax$ gives zero. Therefore

$$
\boxed{
0=-b-Ax
\quad\Longleftrightarrow\quad
x=-A^{-1}b
}
$$

under $\operatorname{IsUnit}(A)$, which is cruise_lag_iff. The same kernel argument shows uniqueness: if $x_1$ and $x_2$ solve the balance, then
$A(x_1-x_2)=0$, and multiplication by $A^{-1}$ gives $x_1-x_2=0$.

## Public result 2: cruise-lag relation and Coriolis-only limit

Substitute $A=J^\mathsf{T}K$ and $b=Cv_d+F$ into the preceding result. Under
$\operatorname{IsUnit}(J^\mathsf{T}K)$,

$$
\boxed{
x=-(J^\mathsf{T}K)^{-1}(Cv_d+F).
}
$$

This is the exact cruise_lag endpoint. In the Coriolis-only case the source sets $F=0$, so the balance is
$0=-Cv_d-(J^\mathsf{T}K)x$ and

$$
\boxed{
x=-(J^\mathsf{T}K)^{-1}Cv_d.
}
$$

The forcing vector is kept explicit because the general relation does not permit it to be silently discarded.

## Positive-definite nonsingularity

Assume $K$ is positive definite in the source matrix sense and $J$ is a unit. Positive definiteness gives that $K$ is a unit in the finite-dimensional real matrix algebra. Transposition preserves the unit property, so $J^\mathsf{T}$ is a unit. The product of units is a unit:

$$
\operatorname{IsUnit}(J^\mathsf{T}K).
$$

Thus the positive-definite specialization cruise_lag_of_posDef follows by applying the general relation:

$$
x=-(J^\mathsf{T}K)^{-1}(Cv_d+F).
$$

The source theorem is algebraic; it does not require a skew-symmetry premise for $C$ or any Coriolis matrix. The transport block of an implemented $J$ therefore remains part of the actual product $J^\mathsf{T}K$.

## Correspondence and limitations

The exact finite index type, matrix products, transpose, unit predicate, and inverse notation are retained in correspondence/statements.md. The Brick establishes a steady-balance characterization only. The phrase steady state is an input package: the source does not prove that a flow reaches the balance, that a zero error rate implies $v=v_d$, or that the matrices represent a particular physical frame. A unit premise is also not a numerical conditioning margin.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The load-bearing balance is exactly
$0=-(C\,v_d)-(J^\mathsf{T}K)x-F$. The positive-definite adapter uses only
$K.\operatorname{PosDef}$ and $\operatorname{IsUnit}(J)$; no skew-Coriolis assumption is present in that declaration. Reachability, convergence, frame interpretation, and physical realization remain open application obligations.
