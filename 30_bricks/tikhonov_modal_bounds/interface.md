# Interface — Generic Tikhonov modal bounds

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The modal/SVD derivation feeds both scheduled Prop. 3 bounds and the realized/denied task-map estimates.  The captured endpoints expose these as distinct reusable guarantees with formal factorization and scalar-bound dependency paths, while robot correspondence remains outside the Brick.

## Evidence and dependencies


## Inputs

- A finite-dimensional square real matrix Gamma with indexed SVD factors U, V, and singular labels sigma_i
- A nonnegative regularization shift $\lambda$ and, for scheduled results, $\beta,\sigma_G,s$.
- The maps $A_\lambda=\Gamma^\top\Gamma+\lambda I$, $B_\lambda=\Gamma\Gamma^\top+\lambda I$, and $\Gamma_\lambda^\dagger=A_\lambda^{-1}\Gamma^\top$.
- Realized and denied task maps P_lambda and I - P_lambda acting on Euclidean task vectors

## Assumptions

- The displayed orthogonality, singular-value, Hermitian, positivity, inverse-unit, floor, and schedule premises hold for each endpoint
- Universal-gain and realized/denied-task results require $\lambda>0$.
- Scheduled Prop. 3 results use $\lambda=\max\{\beta^2,s^2-\sigma_G^2\}$, $0<\beta\le s$, $s>0$, and $0\le\sigma_G\le\sigma_i$ for every index.
- Prop. 3 assumes the indexed square SVD, Hermitian $A_\lambda,B_\lambda$, and invertible $A_\lambda$; item 1 also explicitly assumes invertible $B_\lambda$.
- An implementation damping amplitude mu corresponds through lambda = mu^2 and is not substituted directly for lambda
- A least-label sigma-min interpretation, robot Jacobian correspondence, frames, units, switching, and physical behavior remain external

## Outputs

### Tikhonov modal factorization

The regularized inverse and its squared normal-equations variant have the SVD modal coefficients $\sigma_i/(\sigma_i^2+\lambda)$ and $\sigma_i/(\sigma_i^2+\lambda)^2$ under their indexed SVD and inverse premises.

Exact declarations: `Ctrllib.tikhonov_plus_singular_values`, `Ctrllib.tikhonov_squared_transpose_singular_values`.
Proof section: [Modal factorization](proof.md#modal-factorization).

### Tikhonov scalar and universal bounds

If $s>0$, $\sigma_i\ge0$, $\lambda\ge0$, and $s^2\le\sigma_i^2+\lambda$, the modal coefficients are bounded by $1/s$ and $1/s^3$. Separately, $\sigma_i\ge0$ and $\lambda>0$ give the universal bound $1/(2\sqrt\lambda)$; an indexed square SVD transports that bound to the Euclidean operator norm.

Exact declarations: `Ctrllib.tikhonov_plus_scalar_bound`, `Ctrllib.tikhonov_squared_transpose_scalar_bound`, `Ctrllib.tikhonov_uniform_bound`, `Ctrllib.tikhonov_operator_norm_bound`.
Proof section: [Scalar estimates](proof.md#scalar-estimates).

### Tikhonov scheduled prop3 bounds

Under the scheduled premises stated above, the Gram eigenvalue floor yields the Prop. 3 bounds $1/s^2$ for both Gram inverses, $1/s$ for $A_\lambda^{-1}\Gamma^\top$, and $1/s^3$ for $A_\lambda^{-2}\Gamma^\top$.

Exact declarations: `Ctrllib.tikhonov_gram_eigenvalue_floor`, `Ctrllib.prop3_item1`, `Ctrllib.prop3_item2`, `Ctrllib.prop3_item3`.
Proof section: [Scheduled floor and Prop. 3 bounds](proof.md#scheduled-floor-and-prop-3-bounds).

### Tikhonov realized task properties

The realized task map has the displayed SVD factorization and is symmetric positive semidefinite and nonexpansive, while its complement has the displayed factorization and floor-controlled vector bound.

Exact declarations: `Ctrllib.tikhonov_realized_task_factorization`, `Ctrllib.tikhonov_realized_task_properties`, `Ctrllib.tikhonov_denied_task_factorization`, `Ctrllib.tikhonov_denied_task_bound`.
Proof section: [Realized and denied task maps](proof.md#realized-and-denied-task-maps).

### Scalar equality case

For sigma >= 0 and lambda > 0, the modal gain equals 1/(2*sqrt lambda) exactly when sigma = sqrt lambda.

Exact declarations: `Ctrllib.tikhonov_uniform_bound_eq_iff`.
Proof section: [Equality in the universal scalar cap](proof.md#equality-in-the-universal-scalar-cap).

## Composition

- Uses `Ctrllib.tikhonov_plus_scalar_bound`, `Ctrllib.tikhonov_gram_eigenvalue_floor`, `Ctrllib.tikhonov_plus_singular_values`; establishes `Ctrllib.prop3_item2`. Prop. 3 item 2 transports the scalar 1/s modal bound through the SVD factorization and Euclidean diagonal operator-norm bridge.
- Uses `Ctrllib.tikhonov_realized_task_factorization`, `Ctrllib.tikhonov_denied_task_factorization`; establishes `Ctrllib.tikhonov_realized_task_properties`. The realized-map property endpoint combines the realized and denied SVD factorizations to establish positivity, complement positivity, and nonexpansiveness for the same regularized task map.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
