# Coordinated determinant and invertibility

## Definitions

Let Gamma be the block matrix
$$
\Gamma =
\operatorname{fromBlocks}(\mathit{Rot},T,0,
  \operatorname{fromBlocks}(1,0,G,J)).
$$
Writing the top-right block as $T=(T_1\ T_2)$, the same matrix is the
three-by-three block array
$$
\Gamma=
\begin{bmatrix}
\mathit{Rot} & T_1 & T_2\\
0&I_3&0\\
0&G&J
\end{bmatrix}.
$$
The outer row/column partition is $l$ versus $m\oplus n$; the nested
lower-right block is $m$ versus $n$. In the Euclidean specialization
$l=m=3$, $n=6$, so $\Gamma$ is $12\times12$ and $J$ is
$6\times6$. The generic declaration works over a commutative ring and
arbitrary finite index types with decidable equality.

## Nested block determinant

For a block matrix with zero lower-left block, the determinant theorem gives
$$
\det\operatorname{fromBlocks}(A,B,0,D)=\det(A)\det(D).
$$
Apply this once to the outer matrix and once to the inner matrix:
$$
\begin{aligned}
\det\Gamma
 &=\det(\mathit{Rot})\,
   \det\operatorname{fromBlocks}(I_m,0,G,J)\\
 &=\det(\mathit{Rot})\,\det(I_m)\det(J).
\end{aligned}
$$
The hypotheses $\det(\mathit{Rot})=1$ and $\det(I_m)=1$ therefore give
$$
\det(\Gamma)=\det(\mathit{Rot})\det(1)\det(J)=\det(J).
$$
$T$ and coupling block $G$ never enter this
calculation and are arbitrary. The generic theorem is the reusable
algebraic step. The Euclidean endpoint det_gamma_eq_det_J_oplus instantiates
the partitions $3,3,6$; membership of $\mathit{Rot}$ in
$SO(3)$ supplies $\det(\mathit{Rot})=1$.

## Unit and nonsingularity criteria

Substituting the determinant identity into a nonzero test transports the
criterion directly:
$$
\det(\Gamma)\ne0\iff\det(J)\ne0.
$$
For units, the field-independent determinant criterion
$$
\operatorname{IsUnit}(M)\iff\operatorname{IsUnit}(\det M)
$$
is applied to both matrices. Replacing $\det\Gamma$ by $\det J$ gives
$$
\operatorname{IsUnit}(\Gamma)\iff\operatorname{IsUnit}(J).
$$
The abstract endpoints are isUnit_coordinated_transform and
det_ne_zero_coordinated_transform; gamma_nonsingular_iff and
gamma_isUnit_iff are their $3,3,6$ Euclidean specializations.

## Singular-value bridge

The endpoint gamma_isUnit_iff_sigmaMin_pos accepts the named hypothesis
$$
h_{\mathrm{svd}}:\quad 0<\operatorname{sigmaMin}(J)
\Longleftrightarrow\det(J)\ne0.
$$
For the $3,3,6$ blocks, the preceding unit equivalence and the
determinant criterion yield
$$
\begin{aligned}
0<\operatorname{sigmaMin}(J)
&\Longleftrightarrow\det(J)\ne0\\
&\Longleftrightarrow\operatorname{IsUnit}(\Gamma).
\end{aligned}
$$
The first equivalence is an input, so this Brick does not silently claim an
SVD proof.

## Exact endpoint map

The public declarations are Ctrllib.det_coordinated_transform, Ctrllib.det_gamma_eq_det_J_oplus, Ctrllib.gamma_nonsingular_iff, Ctrllib.gamma_isUnit_iff, and the conditional Ctrllib.gamma_isUnit_iff_sigmaMin_pos. Helper rewrites remain internal to the source.

## Boundary

The result is a matrix-algebra certificate. It does not identify J with a measured Jacobian, prove a controller realization, or supply hsvd. Those are separate evidence layers.
