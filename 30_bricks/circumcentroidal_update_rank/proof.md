# Circumcentroidal update rank

## Update rank

For a factorized update
$$
J_{\rm corr}=J_0+UV,\qquad
U:\mathbb{R}^6\to\mathbb{R}^6,\quad V:\mathbb{R}^6\to\mathbb{R}^3,
$$
the range of $UV$ is contained in the range of $U$. Hence
$$
\operatorname{rank}(UV)\le\operatorname{rank}(V)\le3.
$$
The generic endpoint correctedJacobian_update_rank_le records this rank
bound for the canonical corrected construction.

## Six-dimensional specialization

The circumcentroidal update uses exactly the three-dimensional middle factor,
so
$$
\operatorname{rank}(J_{\rm corr}-J_0)\le3.
$$
This is circumcentroidal_update_rank_le_three. It bounds only the update, not
the rank of $J_{\rm corr}$ and not rank improvement.

## Exact endpoint map

- Ctrllib.correctedJacobian_update_rank_le
- Ctrllib.circumcentroidal_update_rank_le_three

## Boundary

Physical Jacobian correspondence, singularity margin, and seven-DOF
full-rank behavior remain external.
