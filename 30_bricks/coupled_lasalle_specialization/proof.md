# Coupled LaSalle collapse specialization

## Invariant collapse

The dissipation identity gives
$$
\dot V_{\rm tot}=0\Longrightarrow D\breve v=0.
$$
With positive-definite damping, $\breve v=0$. An invariant trajectory in this
zero-velocity set must also satisfy $\dot{\breve v}=0$. Substitution in the
field equation gives
$$
J^\mathsf{T}K\widetilde x=0.
$$
The stiffness-residual injectivity premise forces $\widetilde x=0$; the real
subsystem invariant-set premise forces the remaining state to zero. Hence
the largest invariant subset is the origin, which is coupled_collapse.
LaSalle’s supplied differentiability and precompactness premises then give
coupled_attractive. Retaining only the velocity conclusion gives
coupled_velocity_tendsto.

## Matrix specialization

The Euclidean coupled matrix is assembled from adjoint blocks. Direct
transpose calculation proves euclideanCLM_adjoint and the associated
passivity identity. Determinant or stiffness injectivity proves
euclideanCLM_injective_of_isUnit and euclideanCLM_stiffness_injective; the
Jacobian consequence is gamma_jacobian_mulVec_injective. Substitution into
the preceding invariant-set argument yields coupled_attractive_matrix.

## Lower sandwich

For $r\ge0$, $\alpha(r)=c r^2$ is continuous, strictly increasing and
unbounded when $c>0$, with $\alpha(0)=0$. The quadratic lower bound
therefore has the class-$\mathcal K_\infty$ form
$$
\alpha_1(\|y\|)\le V(y),\qquad \alpha_1(r)=c r^2.
$$
This is blockLyap_classKInfinity_sandwich and its lower endpoint
blockLyap_hsand. The strict upper-side hdi condition is not discharged.

## Exact endpoint map

- Ctrllib.coupled_collapse
- Ctrllib.coupled_attractive
- Ctrllib.coupled_velocity_tendsto
- Ctrllib.coupled_attractive_matrix
- Ctrllib.blockLyap_hsand

## Boundary

The collapse endpoints require the exact flow, passivity, stiffness,
invariance, and compactness premises. They do not certify a physical
coordinated controller or imply the missing hdi condition.
