# Rectangular rank and nullspace consequences

## Full row rank

Let $J:\mathbb{R}^7\to\mathbb{R}^6$ and let $\sigma_6(J)$ be the singular-value
entry at index five. The range criterion gives
$$
0<\sigma_6(J)\Longleftrightarrow
\operatorname{finrank}(\operatorname{range}J)=6.
$$
Because the range is a subspace of the six-dimensional codomain, dimension
six is exactly full row rank.

## Nullity one

Rank-nullity in the seven-dimensional domain gives
$$
\operatorname{finrank}(\operatorname{range}J)+
\operatorname{finrank}(\ker J)=7.
$$
Substituting full row rank yields $\operatorname{finrank}(\ker J)=1$.
Thus the kernel is nontrivial, so there is $k\ne0$ with $Jk=0$.

## Kernel spanning

If $k\ne0$ is any kernel vector and $x$ is another one, both lie in the
one-dimensional subspace $\ker J$. Therefore some $c\in\mathbb{R}$ satisfies
$$
x=c\,k.
$$
This is pointwise and does not choose $k$ continuously as $J$ varies.

## Scaling

For $c\ne0$,
$$
(cJ)x=0\Longleftrightarrow c(Jx)=0\Longleftrightarrow Jx=0.
$$
The kernel is unchanged, and rank-nullity gives
$$
0<\sigma_6(cJ)\Longleftrightarrow0<\sigma_6(J).
$$

## Exact endpoint map

- Ctrllib.sigmaSixEuclid_pos_iff_finrank_range_eq_six
- Ctrllib.sigmaSixEuclid_pos_implies_finrank_ker_eq_one
- Ctrllib.sigmaSixEuclid_pos_implies_exists_nonzero_kernel
- Ctrllib.sigmaSixEuclid_kernel_spanned_by
- Ctrllib.sigmaSixEuclid_smul_pos_iff
- Ctrllib.smul_mulVec_eq_zero_iff

## Boundary

This is a 6 by 7 linear-algebra result. It does not choose a physical
self-motion, prove actuator feasibility, or establish continuity of a null
direction.
