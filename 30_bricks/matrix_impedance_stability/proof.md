# Conventional proof: constant matrix impedance stability

## Provenance and scope

This is a Generated Brick: the finite-dimensional matrix specialization and
its exponential-flow construction are project derivations. “Generated” means
agent-proposed project provenance and makes no literature novelty claim.
Khalil's *Nonlinear Systems*, 3rd ed. (2002), Theorem 4.1 and
Theorem 4.4/Corollary 4.2 provide the conventional Lyapunov and invariance
framework; the exact recovered source and locator are in
are in [correspondence/statements.md](correspondence/statements.md). Canonical
implementations are [`LinearOperatorFlow.lean`](../../ctrllib/Ctrllib/LinearOperatorFlow.lean)
and [`MatrixImpedance.lean`](../../ctrllib/Ctrllib/MatrixImpedance.lean).

The conclusion concerns an ideal constant task equation. It does not identify
that equation with a rover, manipulator, variable-gain controller, or physical
experiment.

## Generic exponential-flow lemma

Before specializing to matrices, let $E$ be any real Banach space: a real
normed additive commutative group with a real normed-space structure and a
complete metric. For a bounded linear operator $A:E\to E$, define

$$
\Psi_A(t,z)=\exp(tA)z.
$$

The operator exponential is defined by its convergent power series. Completeness
of $E$ and of the bounded-operator algebra gives convergence for every real
$t$. Continuity of the series and of evaluation gives continuity in $(t,z)$.
Because $tA$ and $sA$ commute, the exponential product law gives

$$
\Psi_A(t+s,z)=\Psi_A(t,\Psi_A(s,z)),
\qquad \Psi_A(0,z)=z.
$$

Termwise differentiation of the convergent operator series gives

$$
\frac{d}{dt}\Psi_A(t,z)=A\Psi_A(t,z).
$$

These are the conventional contents of `linearOperatorFlow_hasDerivAt` and
`linearOperatorFlow_isSolutionTo`. They require only the generic Banach-space
instances in the captured statements; they do not require a finite index type,
matrices, positivity, or nonemptiness. The matrix flow below is obtained by
choosing a particular finite-dimensional $E$ and a particular block operator.

## Model and assumptions

Let $n$ be a finite index type and write
$E=\operatorname{EuclideanSpace}(\mathbb R,n)$ and $Z=E\times E$. A state is
$z=(v,e)$, with velocity first and task error second. Let
$M,D,K\in\mathbb R^{n\times n}$ be constant matrices. For the energy,
stability, and convergence endpoints, assume $n$ is nonempty and each matrix
is symmetric positive definite:

$$
M=M^\top>0,\qquad D=D^\top>0,\qquad K=K^\top>0.
$$

The field is

$$
f(v,e)=\left(-M^{-1}(Dv+Ke),\ v\right),
$$

equivalently

$$
M\dot v+Dv+Ke=0,\qquad \dot e=v.
$$

The formal `matrixImpedanceCLM` is exactly this block operator. The
`matrixImpedanceFlow` is the exponential flow

$$
\Phi(t,z)=\exp(tA)z,
\qquad A(v,e)=\left(-M^{-1}(Dv+Ke),v\right).
$$

The generic construction above applies to this finite-dimensional block
operator. Therefore `matrixImpedance_isSolutionTo` discharges the specialized
flow/field correspondence. For the energy, stability, and convergence
endpoints, the captured statements additionally retain a `Nonempty n`
instance, which is included in the SPD assumptions for the remainder of this
proof.

## Energy, decrease, and positivity

Define

$$
V(v,e)=\frac12v^\top Mv+\frac12e^\top Ke.
$$

Symmetry and positive definiteness imply $V(z)>0$ for every $z\ne0$. More
explicitly, $v^\top Mv\ge0$ and $e^\top Ke\ge0$. If $v\ne0$, the first term
is strictly positive; if $v=0$, then $e\ne0$ and the second term is strictly
positive. Thus

$$
V(0)=0,\qquad z\ne0\Longrightarrow V(z)>0.
$$

This is the content of `matrixImpedanceEnergy_pos`, with the finite, nonempty
index assumptions retained in the captured statement.

Along a solution,

$$
\begin{aligned}
\dot V
 &=v^\top M\dot v+e^\top K\dot e\\
 &=v^\top M\bigl(-M^{-1}(Dv+Ke)\bigr)+e^\top Kv\\
 &=-v^\top Dv-v^\top Ke+e^\top Kv\\
 &=-v^\top Dv\le0.
\end{aligned}
$$

The cancellation follows from $K=K^\top$. The factor $MM^{-1}$ reduces to
the identity because $M$ is positive definite and therefore invertible. This
is the conventional form of `matrixImpedanceEnergy_antitone`.

The energy is coercive. Let $\lambda_M>0$ and $\lambda_K>0$ be positive lower
Rayleigh bounds for $M$ and $K$. Then

$$
V(v,e)\ge\frac12\lambda_M\lVert v\rVert^2
          +\frac12\lambda_K\lVert e\rVert^2
\ge c\lVert(v,e)\rVert^2
$$

for some $c>0$. In the formal product norm,
$\lVert(v,e)\rVert=\max(\lVert v\rVert,\lVert e\rVert)$, and the sum of
squares dominates this maximum squared. Hence bounded energy sublevels are
bounded. Their closedness follows from continuity of $V$, and
finite-dimensional Heine–Borel gives compactness.

The positive-definite energy and nonpositive derivative meet the hypotheses of
the Lyapunov stability theorem, yielding `matrixImpedance_lyapStable`.

## Global convergence

Because $V$ is nonincreasing, each trajectory remains in its initial compact
energy sublevel. It is therefore forward precompact. The zero-dissipation set
is characterized by

$$
\dot V=0\Longrightarrow v^\top Dv=0.
$$

Positive definiteness of $D$ implies $v=0$. For a trajectory contained in
this set, $v$ is identically zero, so $\dot v=0$. The first equation then
reduces to $Ke=0$. Positive definiteness of $K$ implies that $K$ is
invertible, hence $e=0$. Thus the largest invariant subset of the
zero-dissipation set is $\{0\}$.

The existing finite-dimensional CoM/LaSalle endpoint `com_attractive_matrix`
then gives

$$
\forall z_0\in Z,\qquad \Phi(t,z_0)\to0
\quad(t\to+\infty).
$$

Together with Lyapunov stability this is the exact conclusion of
`matrixImpedance_globally_asymptotically_stable`. The flow construction also
shows that the origin is an equilibrium and that the exponential flow fixes
it.

## Endpoint coverage and gaps

This derivation covers the eight exact endpoints listed by the Brick:
`linearOperatorFlow_hasDerivAt`, `linearOperatorFlow_isSolutionTo`,
`matrixImpedance_isSolutionTo`, `matrixImpedanceEnergy_antitone`,
`matrixImpedanceEnergy_pos`, `matrixImpedance_lyapStable`,
`matrixImpedance_tendsto_zero`, and
`matrixImpedance_globally_asymptotically_stable`.

The result remains an ideal constant SPD theorem. It does not cover
time-varying gains, contact inputs, actuator limits, flexible modes, sampled
control, or global orientation coordinates. Applying it to a physical system
requires a separately justified task chart, wrench/rate pairing, reference
cancellation, units, and plant/controller correspondence.
