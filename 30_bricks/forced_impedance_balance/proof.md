# Forced impedance energy balance

## Storage

Let $e$ be impedance deformation and $v=e^\prime$. For symmetric mass $M$ and
stiffness $K$, define
$$
V(e,v)=\frac12v^\mathsf{T}Mv+\frac12e^\mathsf{T}Ke.
$$
The block-Lyapunov equality endpoint is the direct expansion of this
quadratic into the declared block matrix.

## Derivative

Along a supplied differentiable path satisfying
$$
Mv^\prime+Dv+Ke=f,\qquad e^\prime=v,
$$
the chain rule gives
$$
\dot V=v^\mathsf{T}Mv^\prime+e^\mathsf{T}Ke^\prime
=v^\mathsf{T}(f-Dv-Ke)+e^\mathsf{T}Kv
=v^\mathsf{T}f-v^\mathsf{T}Dv.
$$
Symmetry of $K$ cancels the two stiffness terms. This is
forcedImpedance_energy_hasDerivAt.

## Power bound and storage sign

If $D$ is positive semidefinite, $v^\mathsf{T}Dv\ge0$, so
$$
\dot V\le v^\mathsf{T}f.
$$
Positive semidefinite $M,K$ also give $V\ge0$. These are
forcedImpedance_energy_deriv_le_power and forcedImpedanceEnergy_nonneg.

## Integrated power bound

Fix a finite horizon $T\ge0$. First consider a scalar storage $V$, a
derivative witness $d$, and supplied power $s$. Suppose $V,d,s$ are
continuous on $[0,T]$, $V'(t)=d(t)$ on $(0,T)$, and $d(t)\le s(t)$
on $[0,T]$. Continuous functions on this compact interval are integrable.
The fundamental theorem of calculus and integral monotonicity give

$$
V(T)-V(0)=\int_0^T d(t)\,dt\le\int_0^T s(t)\,dt.
$$

For $T=0$, both sides are zero. This is
`Ctrllib.integrated_storage_le_power`; no differential equation is part
of the generic scalar contract.

For the forced-impedance instance, retain the fixed symmetric matrices
$M,K$, positive semidefinite $D$, and supplied paths satisfying
$e'=v$ and $Ma+Dv+Ke=f$ with $v'=a$. The existing local energy identity
supplies

$$
d(t)=v(t)^\mathsf{T}f(t)-v(t)^\mathsf{T}Dv(t),
\qquad s(t)=v(t)^\mathsf{T}f(t).
$$

The derivative witnesses imply continuity of $v,e$ and of the quadratic
storage. A continuous force path on $[0,T]$ makes $s$ continuous; the
fixed linear damping map makes $v^\mathsf{T}Dv$ continuous. Thus $d$ is
continuous without separately requiring continuity of acceleration.
Positive semidefiniteness gives $v^\mathsf{T}Dv\ge0$, hence $d\le s$.
Applying the scalar result yields

$$
V(e(T),v(T))-V(e(0),v(0))
\le\int_0^T v(t)^\mathsf{T}f(t)\,dt.
$$

This is `Ctrllib.forcedImpedance_energy_le_integrated_power`.
The formal storage function takes the arguments in velocity-then-deformation
order. Its power functions use the real Euclidean inner product, which
equals the displayed dot product. For a nonnegative-storage passivity
interpretation, additionally supply positive semidefinite $M$ and $K$ and
use `forcedImpedanceEnergy_nonneg`. The integrated inequality itself only
needs their symmetry. It does not prove that a solution exists or that the
forced system is stable.

## Exact endpoint map

- Ctrllib.forcedImpedanceEnergy_eq_blockLyap
- Ctrllib.forcedImpedance_energy_hasDerivAt
- Ctrllib.forcedImpedance_energy_deriv_le_power
- Ctrllib.forcedImpedanceEnergy_nonneg
- Ctrllib.integrated_storage_le_power
- Ctrllib.forcedImpedance_energy_le_integrated_power

## Boundary

Differentiability, symmetry, and semidefinite assumptions are supplied by the
theorem. The result does not establish a physical impedance identification or
an external-power measurement.
