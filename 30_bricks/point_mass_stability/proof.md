# Conventional proof: ideal point-mass stability

## Provenance and scope

This is a Generated Brick: the project proposes and proves the specialized
point-mass stability result. “Generated” records project provenance; it makes
no claim that the result is novel in the literature. Khalil's *Nonlinear
Systems*, 3rd ed. (2002), Theorem 4.1 and Theorem 4.4/Corollary 4.2 supply the
stability and invariance framework. The exact source and locator are recorded
listed in [correspondence/statements.md](correspondence/statements.md) and
implemented canonically in
[`PointMassStability.lean`](../../ctrllib/Ctrllib/PointMassStability.lean)
and [`PointMassComFlow.lean`](../../ctrllib/Ctrllib/PointMassComFlow.lean).

The theorem concerns an ideal autonomous system. It does not identify that
system with a hardware plant, controller implementation, sampled loop, or
experiment.

## Model and assumptions

Let

$$
H=\operatorname{EuclideanSpace}(\mathbb R,\operatorname{Fin}3),
\qquad Z=H\times H.
$$

Write a state as $z=(v,x)$, with velocity $v\in H$ first and position error
$x\in H$ second. Let $m,d,k\in\mathbb R$ satisfy

$$
m>0,\qquad d>0,\qquad k>0.
$$

The field is

$$
f(v,x)=\left(-\frac d m v-\frac k m x,\ v\right),
$$

so the equations are $\dot v=-(d/m)v-(k/m)x$ and $\dot x=v$. The canonical
flow is the operator-exponential flow

$$
\Phi(t,z)=\exp(tA)z,
\qquad
A(v,x)=\left(-\frac d m v-\frac k m x,\ v\right).
$$

The `PointMassComFlow` construction proves continuity, the flow group law,
the value $\Phi(0,z)=z$, and the derivative
$\frac{d}{dt}\Phi(t,z)=A\Phi(t,z)$. Thus the flow and solution property are
part of the formal construction, rather than extra caller assumptions.

## Energy and positivity

Define the mechanical energy

$$
V(v,x)=\frac m2\lVert v\rVert^2+\frac k2\lVert x\rVert^2.
$$

At the origin, both norms vanish, so $V(0,0)=0$. Suppose $z=(v,x)\ne(0,0)$.
If $v\ne0$, then $\lVert v\rVert^2>0$ and $m/2>0$, while the position
term is nonnegative; hence $V(v,x)>0$. If $v=0$, then $x\ne0$, so
$\lVert x\rVert^2>0$ and $k/2>0$, while the velocity term vanishes; again
$V(v,x)>0$. Therefore

$$
z\ne0\quad\Longrightarrow\quad V(z)>0.
$$

This is the endpoint `pointMassEnergy_pos`. It uses only $m>0$ and $k>0$.

## Derivative and Lyapunov stability

Along a differentiable trajectory, the chain rule gives

$$
\begin{aligned}
\dot V
 &=m\langle v,\dot v\rangle+k\langle x,\dot x\rangle\\
 &=m\left\langle v,-\frac d m v-\frac k m x\right\rangle
   +k\langle x,v\rangle\\
 &=-d\lVert v\rVert^2-k\langle v,x\rangle+k\langle x,v\rangle\\
 &=-d\lVert v\rVert^2\le0.
\end{aligned}
$$

The cancellation uses symmetry of the real inner product. This conventional
calculation establishes the derivative equality. The formal stability proof
rewrites the point-mass field and energy as scalar-operator instances of the
CoM field and energy, then uses the nonpositive derivative bound supplied by
`com_decrease`. This Brick does not export a separate point-mass
derivative-equality endpoint. Differentiability is inherited from the
corresponding CoM energy.

The derivative is only negative semidefinite: it is zero whenever $v=0$, even
if $x\ne0$. The strict-derivative asymptotic theorem therefore does not apply.
The nonincreasing positive-definite energy does satisfy the hypotheses of the
Lyapunov stability theorem, so the origin is Lyapunov stable. This discharges
`pointMass_lyapStable`.

## Global convergence

The convergence half is supplied by the existing endpoint
`pointMass_tendsto_zero`. Its argument uses the same energy: positive
coefficients give a coercive lower bound on the product-state norm, so an
energy sublevel is bounded; continuity makes it closed; finite-dimensional
Euclidean compactness gives forward precompactness. Since $\dot V\le0$, every
trajectory remains in its initial energy sublevel.

On the zero-dissipation set, $\dot V=0$ implies
$d\lVert v\rVert^2=0$. Since $d>0$, this gives $v=0$. A trajectory that stays
in that set must also satisfy $\dot v=0$, and the first equation then gives
$-(k/m)x=0$. Since $k/m>0$, $x=0$. Thus the largest invariant subset of the
zero-dissipation set is the origin. The sealed CoM LaSalle argument concludes

$$
\forall z_0\in Z,\qquad
\Phi(t,z_0)\longrightarrow(0,0)\quad(t\to+\infty).
$$

Pairing this convergence with `pointMass_lyapStable` gives the exact global
endpoint `pointMass_globally_asymptotically_stable`:

$$
\operatorname{LyapStable}(\Phi)\quad\land\quad
\forall z_0,\ \Phi(t,z_0)\to0.
$$

Finally, `pointMass_asympStable` is the local corollary. Choose radius
$\delta=1$. Lyapunov stability is global, and the global convergence result
applies in particular to every initial state satisfying $\lVert z_0\rVert<1$.

## Endpoint coverage and gaps

The long-form argument covers all four exact endpoints in this Brick:
`pointMassEnergy_pos`, `pointMass_lyapStable`,
`pointMass_globally_asymptotically_stable`, and `pointMass_asympStable`.
The captured statements retain the exact three-dimensional product state and
the positivity hypotheses. The one substantive boundary is deliberate: this
is not a theorem for arbitrary dimension, flexible dynamics, moving
references, saturation, switching, or sampled implementation. Physical
state, units, frame, and controller correspondence remain open as recorded in
the Brick's discrepancy and acceptance records.
