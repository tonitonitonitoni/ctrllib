# Variable-inertia manipulator energy balance

## Energy and dynamics

Let $q$ be configuration, $v=q^\prime$, inertia $M(q)$, Coriolis matrix
$C(q,v)$, potential $U(q)$, damping $D$, input $\tau$, and external wrench
power $v^\mathsf{T}J^\mathsf{T}f$. Define
$$
V(q,v)=\frac12v^\mathsf{T}M(q)v+U(q).
$$
The dynamics boundary is
$$
M(q)a+C(q,v)v+\nabla U(q)+Dv=\tau+J(q)^\mathsf{T}f.
$$

## Derivative and skew identity

Differentiating along a supplied configuration path gives
$$
\dot V=v^\mathsf{T}M(q)a+\frac12v^\mathsf{T}\dot M(q)v+
v^\mathsf{T}\nabla U(q).
$$
The declared skew identity
$$
v^\mathsf{T}(\dot M-2C)v=0
$$
replaces the first two kinetic terms by $v^\mathsf{T}M a+v^\mathsf{T}Cv$.
Substituting the dynamics cancels Coriolis and potential terms:
$$
\dot V=v^\mathsf{T}\tau+v^\mathsf{T}J^\mathsf{T}f-v^\mathsf{T}Dv.
$$
This is manipulator_power_identity followed by manipulatorEnergy_hasDerivAt.

## Power bound and sign

When $D$ is positive semidefinite,
$$
\dot V\le v^\mathsf{T}\tau+v^\mathsf{T}J^\mathsf{T}f.
$$
Positive semidefinite inertia and potential terms give $V\ge0$. These are the
power-bound and nonnegativity endpoints.

## Exact endpoint map

- Ctrllib.manipulatorEnergy_hasDerivAt
- Ctrllib.manipulator_kinetic_skew_identity
- Ctrllib.manipulator_power_identity
- Ctrllib.manipulatorEnergy_deriv_le_power
- Ctrllib.manipulatorEnergy_nonneg

## Boundary

The theorem receives the path derivatives, skew identity, and dynamics as
premises. It does not prove a robot model correspondence, controller
realization, or physical power measurement.
