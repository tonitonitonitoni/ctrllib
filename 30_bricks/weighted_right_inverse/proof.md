# Weighted right inverse

## Transpose injectivity

Let $A:\mathbb{R}^n\to\mathbb{R}^m$ be surjective. If $A^\mathsf{T}y=0$,
then $y^\mathsf{T}Ax=(A^\mathsf{T}y)^\mathsf{T}x=0$ for every $x$. Surjectivity
makes $Ax$ range over all of $\mathbb{R}^m$, so $y^\mathsf{T}y=0$ and $y=0$.
Thus $A^\mathsf{T}$ is injective.

## Weighted Gramian

Let $W$ be symmetric positive definite and $G=AW^{-1}A^\mathsf{T}$. For
$y\ne0$, transpose injectivity gives $A^\mathsf{T}y\ne0$. Positive
definiteness of $W^{-1}$ gives
$$
y^\mathsf{T}Gy=(A^\mathsf{T}y)^\mathsf{T}W^{-1}(A^\mathsf{T}y)>0.
$$
Hence $G$ is positive definite and invertible.

## Right inverse

Define $B=W^{-1}A^\mathsf{T}G^{-1}$. Associativity gives
$$
AB=AW^{-1}A^\mathsf{T}G^{-1}=GG^{-1}=I.
$$
Multiplication by a target yields $A(Bb)=b$, which is feasibility.

## Exact endpoint map

- Ctrllib.mulVec_transpose_injective_of_surjective
- Ctrllib.weighted_gram_posDef
- Ctrllib.weighted_gram_isUnit
- Ctrllib.weighted_right_inverse_mul
- Ctrllib.weighted_right_inverse_feasible

## Boundary

This is an equality-only right-inverse result. It does not impose actuator
boxes, saturation, dynamics, or physical frame correspondence.
