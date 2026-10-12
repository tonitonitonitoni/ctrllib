# Conventional proof: Tikhonov modal bounds

## Scope and provenance

This is the conventional proof for the generic square-matrix result in this
Brick. It is a project-origin derivation (result_kind: new_result) informed by
Chiaverini, Siciliano, and Egeland (1994), Chiaverini (1997), and Horn and
Johnson (2013). “New result” means new to this repository/formalization; no
literature-level novelty claim is made.

## Definitions and distinctions

Let $\Gamma\in\mathbb R^{n\times n}$ have an indexed square singular-value
factorization
$$
  \Gamma=U\,\operatorname{diag}(\sigma_i)\,V^\top,
$$
where $U^\top U=UU^\top=I$, $V^\top V=VV^\top=I$, and $\sigma_i\ge0$.
Let $\lambda$ be the regularization shift:
$$
 A_\lambda=\Gamma^\top\Gamma+\lambda I,\qquad
 \Gamma_\lambda^\dagger=A_\lambda^{-1}\Gamma^\top.
$$

The formal shift is $\lambda$. If an implementation uses damping amplitude
$\mu$, correspondence must establish $\lambda=\mu^2$; these quantities
are not interchangeable. The theorem family has modal identities, scalar
bounds, scheduled Prop. 3 bounds, and realized/denied-task estimates.

## Modal factorization

The SVD gives
$$
 \Gamma^\top\Gamma=V\,\operatorname{diag}(\sigma_i^2)\,V^\top,\qquad
 A_\lambda=V\,\operatorname{diag}(\sigma_i^2+\lambda)\,V^\top.
$$
When denominators are positive, orthogonality gives
$$
 A_\lambda^{-1}\Gamma^\top
 =V\,\operatorname{diag}\!\left(
 \frac{\sigma_i}{\sigma_i^2+\lambda}\right)U^\top.
$$
The corresponding squared normal-equations expression is
$$
 A_\lambda^{-2}\Gamma^\top
 =V\,\operatorname{diag}\!\left(
 \frac{\sigma_i}{(\sigma_i^2+\lambda)^2}\right)U^\top.
$$
The exact indexed assumptions, including inverse-unit assumptions required by
the Lean matrix inverse, are retained in
[correspondence/statements.md](correspondence/statements.md). The endpoints
are Ctrllib.tikhonov_plus_singular_values and
Ctrllib.tikhonov_squared_transpose_singular_values.

## Scalar estimates

Assume $s>0$, $\sigma\ge0$, $\lambda\ge0$, and
$s^2\le\sigma^2+\lambda$. If $\sigma\le s$, then
$\sigma/(\sigma^2+\lambda)\le s/s^2=1/s$. If $\sigma\ge s$, then
$\sigma^2+\lambda\ge\sigma^2$, so
$\sigma/(\sigma^2+\lambda)\le1/\sigma\le1/s$. Thus
$$
 \frac{\sigma}{\sigma^2+\lambda}\le\frac1s.
$$
Moreover, the first bound and the floor give
$\sigma/(\sigma^2+\lambda)^2
=(\sigma/(\sigma^2+\lambda))\,(1/(\sigma^2+\lambda))
\le(1/s)(1/s^2)=1/s^3$.
These are the two scalar endpoints.

For the universal cap, assume $\lambda>0$, put
$r=\sqrt{\lambda}>0$, and use $(\sigma-r)^2\ge0$:
$$
 2\sigma r\le\sigma^2+r^2=\sigma^2+\lambda.
$$
Thus
$$
 0\le\frac{\sigma}{\sigma^2+\lambda}
 \le\frac1{2\sqrt{\lambda}}.
$$
This is Ctrllib.tikhonov_uniform_bound. It is a universal shift bound and
does not use the scheduled floor.

## Equality in the universal scalar cap

For $\sigma\ge0$ and $\lambda>0$, both $\sigma^2+\lambda$ and
$2\sqrt\lambda$ are positive. Cross-multiplication therefore gives

$$
\frac{\sigma}{\sigma^2+\lambda}=\frac1{2\sqrt\lambda}
\quad\Longleftrightarrow\quad
2\sigma\sqrt\lambda=\sigma^2+\lambda
\quad\Longleftrightarrow\quad
(\sigma-\sqrt\lambda)^2=0
\quad\Longleftrightarrow\quad
\sigma=\sqrt\lambda.
$$

The middle equivalence uses $(\sqrt\lambda)^2=\lambda$. Substitution
also verifies the reverse direction directly. This is
`Ctrllib.tikhonov_uniform_bound_eq_iff`. It characterizes the maximizing
scalar mode; it does not assert that a particular matrix has such a singular
value or that its operator norm attains the universal cap.

## Scheduled floor and Prop. 3 bounds

In the scheduled family,
$$
 \lambda=\max\{\beta^2,\ s^2-\sigma_G^2\},
$$
with $\sigma_G\ge0$ and $\sigma_G\le\sigma_i$. Hence
$$
 \sigma_i^2+\lambda\ge\sigma_G^2+s^2-\sigma_G^2=s^2.
$$
This is the denominator floor. Transporting it to both Hermitian Gram
matrices gives Ctrllib.tikhonov_gram_eigenvalue_floor.

The diagonal operator norm is the largest absolute diagonal coefficient, and
orthogonal factors preserve the Euclidean operator norm. The scalar estimates
therefore give Ctrllib.prop3_item1 (the two regularized Gram inverse bounds
by $1/s^2$), Ctrllib.prop3_item2 (the regularized inverse times
$\Gamma^\top$ bound by $1/s$), and Ctrllib.prop3_item3 (the squared
inverse times $\Gamma^\top$ bound by $1/s^3$). The separate
Ctrllib.tikhonov_operator_norm_bound transports the universal scalar cap
without replacing $\lambda$ by $\mu$.

## Realized and denied task maps

Define $P_\lambda=\Gamma A_\lambda^{-1}\Gamma^\top$. The SVD gives
$$
 P_\lambda=U\,\operatorname{diag}\!\left(
 \frac{\sigma_i^2}{\sigma_i^2+\lambda}\right)U^\top.
$$
For $\lambda>0$, each coefficient lies in $[0,1)$, so the map is
symmetric positive semidefinite and nonexpansive. Its complement is
$$
 I-P_\lambda=U\,\operatorname{diag}\!\left(
 \frac{\lambda}{\sigma_i^2+\lambda}\right)U^\top.
$$
If $0\le s\le\sigma_i$, then
$$
 0\le\frac{\lambda}{\sigma_i^2+\lambda}
 \le\frac{\lambda}{s^2+\lambda},
$$
and orthogonal transport gives
$$
 \|(I-P_\lambda)x\|_2
 \le\frac{\lambda}{s^2+\lambda}\|x\|_2.
$$
These are Ctrllib.tikhonov_realized_task_factorization,
Ctrllib.tikhonov_realized_task_properties,
Ctrllib.tikhonov_denied_task_factorization, and
Ctrllib.tikhonov_denied_task_bound.

## Scope and formal evidence

The proof establishes generic static matrix implications under explicit
finite-dimensional, SVD, positivity, floor, and schedule hypotheses. A
least-label interpretation of $s$ needs a nonempty indexed SVD and a
separate sigma-min convention; the declarations use a supplied floor and do
not identify a least singular value. The scalar equality case is proved above; operator-norm attainment remains a separate statement.

No theorem identifies a robot Jacobian, frame, units, switching branch,
controller implementation, actuator behavior, or simulation with $\Gamma$.
The adjacent exact-inverse-minus-regularized residual result is not silently
added to this Brick. Full captured parameters and hypotheses are in
[correspondence/statements.md](correspondence/statements.md); build and axiom
