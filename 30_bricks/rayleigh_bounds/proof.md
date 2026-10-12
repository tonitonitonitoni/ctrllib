# Rayleigh quadratic sandwich bounds

## Eigenbasis derivation

Let $K$ be real Hermitian on finite index set $n$. The spectral theorem supplies
an orthogonal $U$ and eigenvalue function $\lambda$ such that
$$
K=U\,\operatorname{diag}(\lambda)\,U^\mathsf{T}.
$$
Set $w=U^\mathsf{T}x$. Orthogonality preserves the Euclidean norm:
$$
x^\mathsf{T}x=w^\mathsf{T}w=\sum_i w_i^2.
$$
Diagonalization gives
$$
x^\mathsf{T}Kx
=w^\mathsf{T}\operatorname{diag}(\lambda)w
=\sum_i\lambda_iw_i^2.
$$

## Lower and upper bounds

If $\lambda_i\ge c_1$ for every $i$, then $c_1w_i^2\le\lambda_iw_i^2$
because $w_i^2\ge0$. Summing gives
$$
c_1x^\mathsf{T}x\le x^\mathsf{T}Kx.
$$
If $\lambda_i\le c_2$, the same argument gives
$$
x^\mathsf{T}Kx\le c_2x^\mathsf{T}x.
$$
These are the lower and upper endpoints in dot-product notation.

## Extreme eigenvalues and matrix sandwich

For nonempty $n$, take $c_1=\min_i\lambda_i$ and $c_2=\max_i\lambda_i$.
The two inequalities form rayleigh_sandwich. Positive definiteness is not
needed unless a strictly positive lower constant is desired.

For $y$ in Euclidean space,
$$
\|y\|^2=\operatorname{ofLp}(y)^\mathsf{T}\operatorname{ofLp}(y)
$$
translates the scalar inequalities into the QuadSandwich predicate, giving
quadSandwich_matrix.

## Exact endpoint map

- Ctrllib.le_dotProduct_mulVec
- Ctrllib.dotProduct_mulVec_le
- Ctrllib.rayleigh_sandwich
- Ctrllib.quadSandwich_matrix

## Boundary

No numerical eigenvalue computation or source-model identity follows without
its corresponding premises.
