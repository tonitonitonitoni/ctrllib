# Conventional proof: Seven-DOF nullspace damping Lyapunov result

This document is the authored conventional-derivation authority for `seven_dof_nullspace_damping`.

## Scope and provenance

This Generated Brick isolates the Lyapunov and damping endpoints from `SevenDof`. It is conditional on supplied dissipation/driver inequalities; it does not close the trajectory-dependent modelling input identified in the module.

## Definitions and notation

Let $z=(x,v)$ be the two scalar nullspace coordinates and let
$K_n=\begin{bmatrix}k_n&\epsilon\\ \epsilon&\hat m_n\end{bmatrix}$.
The formal functions retain the exact scaling

$$
V_n(x,v)=\frac12 k_nx^2+\frac12\hat m_nv^2+\epsilon xv
=\frac12 [x\ v]K_n[x\ v]^\mathsf T.
$$

The abstract cascade endpoints separately consume a class-$\mathcal K$
lower sandwich and a supplied dissipation/driver inequality.

## Statement of result

The Lyapunov function equals the encoded quadratic form, its matrix is
positive definite, and it admits coercive/sandwich bounds. Under the supplied
attractive or driven rate hypotheses, the nullspace damping endpoint gives the
corresponding convergence conclusion; the concrete endpoint discharges the
scalar sandwich under its explicit assumptions.

## Assumptions

Positive definiteness of the Lyapunov matrix and all driver/dissipation inequalities are explicit. The concrete result requires its finite scalar hypotheses. No hidden trajectory estimate is supplied.

## Lyapunov coercivity

For the concrete matrix in the module,

$$
K_n=\begin{bmatrix}k_n&\epsilon\\ \epsilon&\hat m_n\end{bmatrix},
\qquad
V_n(x,v)=\tfrac12 k_nx^2+\tfrac12\hat m_nv^2+\epsilon xv.
$$

The condition $k_n>0$ and $\epsilon^2<k_n\hat m_n$ gives positive
determinant and positive leading diagonal entry, hence positive definiteness.
The captured coercivity proof uses the explicit constant

$$
c_1=\frac{k_n\hat m_n-\epsilon^2}{2(k_n+\hat m_n)}>0,
\qquad
c_1\|(x,v)\|^2\le V_n(x,v).
$$

The function `nullspaceLyap_hsand` packages this lower bound as
the supplied class-$\mathcal{K}_\infty$ sandwich.

## Nullspace attractivity

The attractivity endpoints do not derive a damping differential inequality.
They consume the supplied trajectory premises

$$
\dot V_n(t)\le-aV_n(t)+c\|x_2(t)\|,
\qquad
\alpha_1(\|x_n(t)\|)\le V_n(x_n(t)).
$$

The cascade comparison engine then gives convergence when the driver tends to
zero, or the driven joint-state conclusion when the downstream cascade is
supplied. The concrete endpoint discharges only the sandwich through the
explicit quadratic form; the derivative premise and trajectory-dependent $c$
remain inputs.

## Formal correspondence

The definitions and selected Lyapunov/damping declarations are exact. The deprecated `nullspace_damping_gas` alias is navigation context, not a separate public output.

## What the result establishes and does not

It establishes conditional Lyapunov coercivity and the stated attractive or
driven convergence conclusions from their trajectory hypotheses. It does not
establish a globally closed robot trajectory theorem, a uniform parameter
margin, or physical stability.

## Limitations and discrepancies

The driver hypothesis `hdi` and sandwich input remain open modelling obligations. A consuming record must not present the conditional inequality as an unconditional convergence theorem.

## Evidence record

The current extract has no `sorryAx`; ordinary axiom labels are recorded. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
