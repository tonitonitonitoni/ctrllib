# Conventional proof: tracking error Jacobian nonsingularity

This Brick records the finite block-matrix algebra in TrackingErrorJacobian. It separates the determinant and nonsingularity fact from the transport block and then applies the exact stiffness-residual injectivity adapter. It does not derive the block form from robot kinematics or identify it with a physical controller.

## Definitions and dimensions

Let $R$ be a commutative ring and let $l,m,n$ be finite index types. For
$P\in R^{m\times n}$ and $Q\in R^{n\times n}$, define

$$
E(P,Q):=
\begin{bmatrix}
I_m & P\\
0 & Q
\end{bmatrix}.
$$

The stacked matrix in the source is

$$
J_{\rm stack}(J_b,P,Q):=
\begin{bmatrix}
J_b&0\\
0&E(P,Q)
\end{bmatrix},
\qquad J_b\in R^{l\times l}.
$$

The source's real residual uses
$K\in\mathbb{R}^{(m\oplus n)\times(m\oplus n)}$ and the map
$E(P,Q)^\mathsf{T}Kx$ for $x\in\mathbb{R}^{m\oplus n}$.

## Jacobian nonsingularity

Because $E(P,Q)$ is block upper triangular with identity in its first diagonal block, the finite block determinant formula gives

$$
\det E(P,Q)=\det(I_m)\det Q=\det Q.
$$

The transport block $P$ does not occur in this expression. Over the commutative ring, the block-matrix unit criterion is

$$
E(P,Q)\text{ is a unit}
\iff I_m\text{ is a unit and }Q\text{ is a unit}
\iff Q\text{ is a unit}.
$$

This proves the exact endpoints det_trackingErrorJacobian and isUnit_trackingErrorJacobian_iff. Replacing $P$ by any other $P'$ leaves the right side unchanged, so

$$
E(P,Q)\text{ is a unit}\iff E(P',Q)\text{ is a unit}.
$$

That is the source endpoint isUnit_trackingErrorJacobian_transport_free. It says that printed and implemented choices of transport block have the same singular set. It does not say that their residual vectors are equal.

## Public result 2: stacked nonsingularity

The stacked matrix is block diagonal. Applying the same block-unit criterion twice yields

$$
J_{\rm stack}(J_b,P,Q)\text{ is a unit}
\iff J_b\text{ is a unit}\ \land\ E(P,Q)\text{ is a unit}
\iff J_b\text{ is a unit}\ \land\ Q\text{ is a unit}.
$$

This is isUnit_trackingJacobian_iff. All dimensions in this equation are the finite sums shown above; no informal square block is substituted for the source's sum-index construction.

## Stiffness-residual injectivity

Now work over $\mathbb{R}$. Assume $K$ is positive definite in the source matrix sense and $Q$ is a unit. The preceding criterion makes $E(P,Q)$ a unit. In finite dimensions, its vector action is injective, and transposition and multiplication by the positive-definite $K$ preserve the required nonsingularity. Equivalently, the source stiffness-residual adapter states directly that

$$
E(P,Q)^\mathsf{T}Kx=0\quad\Longrightarrow\quad x=0.
$$

For the stacked case, add the premise that $J_b$ is a unit. The stacked criterion then makes $J_{\rm stack}$ a unit, and the same positive-definite stiffness-residual argument yields

$$
J_{\rm stack}(J_b,P,Q)^\mathsf{T}Kx=0\quad\Longrightarrow\quad x=0.
$$

The transport block remains arbitrary in this kernel implication because only the unit property is used. The residual vector itself still depends on $P$ through $E(P,Q)^\mathsf{T}Kx$.

## Correspondence and limitations

The exact declarations, including the finite index binders, sum types, matrix products, and unit predicates, are retained in correspondence/statements.md. The result establishes finite algebraic nonsingularity and a conditional kernel implication. It does not establish numerical conditioning, robustness under perturbations, a kinematic derivation of $P$, trajectory convergence, or safety.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The ring endpoint uses finite $l,m,n$ and a commutative ring $R$. The real residual endpoints require $K$ positive definite, $Q$ unit, and the exact residual vector on $m\oplus n$; the stacked endpoint adds $J_b$ unit. The source proves nonsingularity and injectivity only. It does not prove that the block matrix came from a physical reference-frame model.
