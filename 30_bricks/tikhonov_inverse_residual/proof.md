# Tikhonov inverse residual bound

## Residual factorization

Let $\Gamma=U\Sigma V^\mathsf{T}$ be the indexed orthogonal singular-value
decomposition, with singular values $\sigma_i>0$, and let $\lambda\ge0$. The
exact inverse and right-Gram Tikhonov inverse act modewise as
$$
\Gamma^{-1}=V\operatorname{diag}(\sigma_i^{-1})U^\mathsf{T},\qquad
(\Gamma^\mathsf{T}\Gamma+\lambda I)^{-1}\Gamma^\mathsf{T}
=V\operatorname{diag}\!\left(\frac{\sigma_i}{\sigma_i^2+\lambda}\right)U^\mathsf{T}.
$$
Here the second expression is the matrix encoded by
$(\operatorname{Alam}\ \Gamma\ \lambda)^{-1}\Gamma^\mathsf{T}$; the Gram matrix is on
the right because the factorization uses $\Gamma=U\Sigma V^\mathsf{T}$. Subtracting
coefficients gives
$$
\sigma_i^{-1}-\frac{\sigma_i}{\sigma_i^2+\lambda}
=\frac{\lambda}{\sigma_i(\sigma_i^2+\lambda)}.
$$
Orthogonal factors therefore yield the residual factorization with diagonal
coefficient $\lambda/(\sigma_i(\sigma_i^2+\lambda))$.

## Residual norm bound

If $\sigma_i\ge\delta>0$, then
$\sigma_i(\sigma_i^2+\lambda)\ge\delta^3$. Hence
$$
0\le\frac{\lambda}{\sigma_i(\sigma_i^2+\lambda)}
\le\frac{\lambda}{\delta^3}.
$$
The operator norm of an orthogonally diagonalized map is bounded by its
largest diagonal coefficient, so
$$
\left\|\Gamma^{-1}-(\Gamma^\mathsf{T}\Gamma+\lambda I)^{-1}\Gamma^\mathsf{T}\right\|
\le\frac{\lambda}{\delta^3}.
$$
The theorem uses the exact indexed norm and denominator convention in the
module.

## Exact endpoint map

- Ctrllib.inv_eq_of_svd
- Ctrllib.tikhonov_inverse_eq_of_svd
- Ctrllib.tikhonov_inverse_difference_factor
- Ctrllib.tikhonov_inverse_difference_norm_bound

## Boundary

Relating $\lambda$ to a runtime damping parameter such as $\mu^2$, and
identifying $\Gamma$ with a physical Jacobian, are external obligations.
