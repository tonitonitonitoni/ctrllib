# Nominal MPC shift and append

## Data and finite plans

Let $X$ and $U$ be arbitrary state and input types. For each absolute time
$j\in\mathbb N$, supply a transition $f_j:X\times U\to X$, admissibility
predicate $Z_j(x,u)$, real stage cost $\ell_j(x,u)$, terminal set
$X^f_j\subseteq X$, terminal cost $V^f_j:X\to\mathbb R$, and feedback
$\kappa_j:X^f_j\to U$. The feedback is defined only on the terminal set.
These data are fixed sequences indexed by absolute time; successive plans
use the same data at overlapping times.

Fix a positive horizon $N$, initial time $k$, state $x$, and input plan
$u=(u_0,\ldots,u_{N-1})$. Define the rollout and cost by

$$
z_0=x,\qquad z_{i+1}=f_{k+i}(z_i,u_i),\qquad
J_N(k,x,u)=\sum_{i=0}^{N-1}\ell_{k+i}(z_i,u_i)+V^f_{k+N}(z_N).
$$

The plan is feasible when $Z_{k+i}(z_i,u_i)$ holds for every $i<N$ and
$z_N\in X^f_{k+N}$. In Lean the horizon is represented as $N=n+1$,
so `n = 0` covers a one-stage plan. Inputs have type `Fin (n+1) → U`;
states have type `Fin (n+2) → X`. The definitions are `nominalRollout`,
`nominalFeasible`, and `nominalCost`.

## Terminal contract

For every $j$ and $z\in X^f_j$, write $u^f=\kappa_j(z)$ and
$z^+=f_j(z,u^f)$. Assume

$$
Z_j(z,u^f),\qquad z^+\in X^f_{j+1},\qquad
V^f_{j+1}(z^+)\le V^f_j(z)-\ell_j(z,u^f).
$$

These are terminal admissibility, invariance and cost decrease. Neither
feasibility of the shifted full plan nor its cost decrease is assumed.
No positivity of the costs, differentiability, convexity, optimizer
existence or topology on $X,U$ is needed for this finite-plan lemma.

## Shifted rollout and feasibility

Given a feasible old plan, set $x^+=z_1$ and define

$$
\widehat u_i=u_{i+1}\quad(0\le i<N-1),\qquad
\widehat u_{N-1}=\kappa_{k+N}(z_N).
$$

The terminal membership from old feasibility makes the last command
well-defined. This is `nominalShiftAppend`.

Let $\widehat z$ be the rollout from $x^+$ at time $k+1$. Induction gives
$\widehat z_i=z_{i+1}$ for $0\le i<N$: the initial states coincide, and
each subsequent transition uses the same retained input and absolute time
$(k+1)+i=k+(i+1)$. The new last state is
$\widehat z_N=f_{k+N}(z_N,\kappa_{k+N}(z_N))$.

For $i<N-1$, the shifted state/input pair inherits the corresponding old
constraint. At the last stage, terminal admissibility supplies the missing
constraint; terminal invariance supplies the new terminal membership at
time $(k+1)+N=(k+N)+1$. Thus the shifted plan is feasible. This argument
also covers $N=1$, when there are no retained inputs.

## Cost decrease

The rollout identity rewrites the new cost as

$$
J_N(k+1,x^+,\widehat u)
=\sum_{i=1}^{N-1}\ell_{k+i}(z_i,u_i)
 +\ell_{k+N}(z_N,\kappa_{k+N}(z_N))
 +V^f_{k+N+1}(\widehat z_N).
$$

The terminal decrease inequality bounds the last two terms by
$V^f_{k+N}(z_N)$. The remaining sum is the old stage-cost sum without its
first term. Hence

$$
J_N(k+1,x^+,\widehat u)
\le J_N(k,x,u)-\ell_k(x,u_0).
$$

The formal endpoint `Ctrllib.nominal_shift_append` returns both the new
feasibility and this cost inequality. It compares finite candidate plans.
An attained optimizer and exact first-input execution are further premises
for a closed-loop recursive-feasibility/value-decrease theorem. Tracking
convergence requires additional stage-cost and value bounds.

## Scope and correspondence

This is the finite-plan part of the project's conventional nominal MPC
packet, with arbitrary state/input types instead of a selected rover model.
It does not establish optimizer attainment, numerical solver accuracy,
plant-model identity, command execution, robustness, physical constraints,
or scientific acceptance. Forecast replacement that changes the overlapping
absolute-time data is outside the result. No global orientation chart or
physical unit convention is inferred from these abstract types.
