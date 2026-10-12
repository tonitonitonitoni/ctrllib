---
type: proof
kind: brick
brick_id: tikhonov_modal_bounds
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [chiaverini1994review, chiaverini1997singularity, hornjohnson2013]
lean_package: ctrllib
lean_modules: [TikhonovSVD, TikhonovProp3, TikhonovUniformBound, TikhonovOperatorBound, TikhonovRealizedTask, TikhonovDeniedTask, TikhonovEquality]
lean_declarations: [Ctrllib.tikhonov_gram_eigenvalue_floor, Ctrllib.tikhonov_plus_singular_values, Ctrllib.tikhonov_plus_scalar_bound, Ctrllib.tikhonov_squared_transpose_singular_values, Ctrllib.tikhonov_squared_transpose_scalar_bound, Ctrllib.tikhonov_uniform_bound, Ctrllib.tikhonov_operator_norm_bound, Ctrllib.tikhonov_realized_task_factorization, Ctrllib.tikhonov_realized_task_properties, Ctrllib.tikhonov_denied_task_factorization, Ctrllib.tikhonov_denied_task_bound, Ctrllib.prop3_item1, Ctrllib.prop3_item2, Ctrllib.prop3_item3, Ctrllib.tikhonov_uniform_bound_eq_iff]
internal_bricks: [rayleigh_bounds, euclidean_operator_bounds]
application_interfaces: [generic_square_matrix]
brick_level: composite
level_reason: >-
  The modal/SVD derivation feeds both scheduled Prop. 3 bounds and the
  realized/denied task-map estimates.  The captured endpoints expose these as
  distinct reusable guarantees with formal factorization and scalar-bound
  dependency paths, while robot correspondence remains outside the Brick.
summary: >-
  Generic square-matrix Tikhonov reconstruction admits modal identities,
  scheduled and universal gain bounds, and realized/denied task estimates
  under explicit SVD, positivity, and floor premises.
keywords:
  - tikhonov_regularization
  - singular_value_decomposition
  - modal_bound
  - prop3_bound
  - realized_task_map
  - denied_task_map
  - operator_norm
interface:
  inputs:
    - "A finite-dimensional square real matrix Gamma with indexed SVD factors U, V, and singular labels sigma_i"
    - 'A nonnegative regularization shift $\lambda$ and, for scheduled results, $\beta,\sigma_G,s$.'
    - 'The maps $A_\lambda=\Gamma^\top\Gamma+\lambda I$, $B_\lambda=\Gamma\Gamma^\top+\lambda I$, and $\Gamma_\lambda^\dagger=A_\lambda^{-1}\Gamma^\top$.'
    - "Realized and denied task maps P_lambda and I - P_lambda acting on Euclidean task vectors"
  assumptions:
    - "The displayed orthogonality, singular-value, Hermitian, positivity, inverse-unit, floor, and schedule premises hold for each endpoint"
    - 'Universal-gain and realized/denied-task results require $\lambda>0$.'
    - 'Scheduled Prop. 3 results use $\lambda=\max\{\beta^2,s^2-\sigma_G^2\}$, $0<\beta\le s$, $s>0$, and $0\le\sigma_G\le\sigma_i$ for every index.'
    - 'Prop. 3 assumes the indexed square SVD, Hermitian $A_\lambda,B_\lambda$, and invertible $A_\lambda$; item 1 also explicitly assumes invertible $B_\lambda$.'
    - "An implementation damping amplitude mu corresponds through lambda = mu^2 and is not substituted directly for lambda"
    - "A least-label sigma-min interpretation, robot Jacobian correspondence, frames, units, switching, and physical behavior remain external"
  outputs:
    - id: tikhonov_modal_factorization
      statement: >-
        The regularized inverse and its squared normal-equations variant have
        the SVD modal coefficients $\sigma_i/(\sigma_i^2+\lambda)$ and
        $\sigma_i/(\sigma_i^2+\lambda)^2$ under their indexed SVD and inverse premises.
      declarations:
        - Ctrllib.tikhonov_plus_singular_values
        - Ctrllib.tikhonov_squared_transpose_singular_values
      proof_section: "Modal factorization"
    - id: tikhonov_scalar_and_universal_bounds
      statement: >-
        If $s>0$, $\sigma_i\ge0$, $\lambda\ge0$, and
        $s^2\le\sigma_i^2+\lambda$, the modal coefficients are bounded by
        $1/s$ and $1/s^3$. Separately, $\sigma_i\ge0$ and $\lambda>0$ give
        the universal bound $1/(2\sqrt\lambda)$; an indexed square SVD
        transports that bound to the Euclidean operator norm.
      declarations:
        - Ctrllib.tikhonov_plus_scalar_bound
        - Ctrllib.tikhonov_squared_transpose_scalar_bound
        - Ctrllib.tikhonov_uniform_bound
        - Ctrllib.tikhonov_operator_norm_bound
      proof_section: "Scalar estimates"
    - id: tikhonov_scheduled_prop3_bounds
      statement: >-
        Under the scheduled premises stated above, the Gram eigenvalue floor
        yields the Prop. 3 bounds $1/s^2$ for both Gram inverses, $1/s$ for
        $A_\lambda^{-1}\Gamma^\top$, and $1/s^3$ for $A_\lambda^{-2}\Gamma^\top$.
      declarations:
        - Ctrllib.tikhonov_gram_eigenvalue_floor
        - Ctrllib.prop3_item1
        - Ctrllib.prop3_item2
        - Ctrllib.prop3_item3
      proof_section: "Scheduled floor and Prop. 3 bounds"
    - id: tikhonov_realized_task_properties
      statement: >-
        The realized task map has the displayed SVD factorization and is
        symmetric positive semidefinite and nonexpansive, while its complement
        has the displayed factorization and floor-controlled vector bound.
      declarations:
        - Ctrllib.tikhonov_realized_task_factorization
        - Ctrllib.tikhonov_realized_task_properties
        - Ctrllib.tikhonov_denied_task_factorization
        - Ctrllib.tikhonov_denied_task_bound
      proof_section: "Realized and denied task maps"
    - id: scalar_equality_case
      statement: "For sigma >= 0 and lambda > 0, the modal gain equals 1/(2*sqrt lambda) exactly when sigma = sqrt lambda."
      declarations: [Ctrllib.tikhonov_uniform_bound_eq_iff]
      proof_section: "Equality in the universal scalar cap"
  composition:
    - uses:
        - Ctrllib.tikhonov_plus_scalar_bound
        - Ctrllib.tikhonov_gram_eigenvalue_floor
        - Ctrllib.tikhonov_plus_singular_values
      establishes: Ctrllib.prop3_item2
      explanation: >-
        Prop. 3 item 2 transports the scalar 1/s modal bound through the SVD
        factorization and Euclidean diagonal operator-norm bridge.
    - uses:
        - Ctrllib.tikhonov_realized_task_factorization
        - Ctrllib.tikhonov_denied_task_factorization
      establishes: Ctrllib.tikhonov_realized_task_properties
      explanation: >-
        The realized-map property endpoint combines the realized and denied
        SVD factorizations to establish positivity, complement positivity, and
        nonexpansiveness for the same regularized task map.
---

# Generic Tikhonov modal bounds

Reader routes: [interface](interface.md) · [conventional proof](proof.md) · [references](correspondence/references.md) · [exact statement appendix](correspondence/statements.md).

This is a Generated Brick: project-derived bounds, with no claim of literature novelty.

The complete conventional derivation is in [proof.md](proof.md). The
generated statement appendix retains every captured binder and hypothesis in
[correspondence/statements.md](correspondence/statements.md).

## Notation

For a square real matrix `J`, `lambda` is the Gram-matrix shift and `J_lambda_dagger = (J^T J + lambda I)^(-1) J^T`. The modal coefficient is `sigma_i / (sigma_i^2 + lambda)`. A spectral floor `s` is an explicit hypothesis in several formal declarations. An application damping amplitude `mu` must be related by `lambda = mu^2`, not compared directly.

## Statement

The in-house result gives the singular-value modal representation of the
normal-equations Tikhonov reconstruction, scalar modal estimates under an
explicit floor, the universal scalar and Euclidean operator gain cap for a positive shift, and the
three Prop. 3 bounds under their declared schedule and matrix hypotheses. The realized task map is symmetric, positive semidefinite and nonexpansive,
with positive-semidefinite complement. A nonnegative lower bound on the
singular labels bounds the denied-task operator and every denied vector. The
formal claim is conditional on those matrix premises; it is not a claim that a
robot or runtime supplies them.

## Hypotheses

The formal results use finite-dimensional square matrices, singular-value or Hermitian side conditions, positive shifts/floors where displayed, and the explicit Prop. 3 schedule. No robot, frame, runtime, simulator, trajectory, or seven-DOF hypothesis belongs to this Brick.

## Proof

Write the indexed square SVD as `Gamma = U * diagonal sigma * V^T`, with
orthogonal factors. Direct multiplication gives
`Alam Gamma lambda = V * diagonal (sigma_i^2 + lambda) * V^T`.
The scheduled shift and the singular-value floor give
`s^2 <= sigma_i^2 + lambda`; when `s > 0`, every denominator is positive.
Inverting the diagonal form and multiplying by `Gamma^T` gives the modal
factorization with coefficients
`sigma_i / (sigma_i^2 + lambda)`. The scalar inequalities in
`tikhonov_plus_scalar_bound` and
`tikhonov_squared_transpose_scalar_bound`, followed by the indexed diagonal
operator-norm bridge, yield Prop. 3 items 2 and 3. The same spectral floor,
transported to both Hermitian Gram matrices, yields item 1 through the inverse
norm bridge. These steps are exactly the named Lean declarations listed below.
The realized-task factorization has coefficients `sigma_i^2/(sigma_i^2+lambda)`
in `[0,1)`, proving positivity of both the map and its complement. For a
nonnegative singular-label floor `s`, the complementary coefficients satisfy
`lambda/(sigma_i^2+lambda) <= lambda/(s^2+lambda)`, which the Euclidean
operator bridge transports to every task vector. The separate `tikhonov_operator_norm_bound` transports the scalar cap through
the indexed SVD and induced Euclidean norm bridge; it requires no scheduled
floor or supplied inverse-unit premise.

## What the result establishes and does not

It establishes the generic modal and scheduled matrix implications represented by the named declarations. It does not establish robot-specific Gamma correspondence, switched inverse correctness, simulation behavior, convergence, actuator compliance, or seven-DOF applicability.

## Sources

Chiaverini, Siciliano, and Egeland, “Review of the Damped Least-Squares Inverse Kinematics with Experiments on an Industrial Robot Manipulator,” *IEEE Transactions on Control Systems Technology* 2(2), 123–134 (1994), doi:10.1109/87.294335. Chiaverini, “Singularity-Robust Task-Priority Redundancy Resolution for Real-Time Kinematic Control of Robot Manipulators,” *IEEE Transactions on Robotics and Automation* 13(3), 398–410 (1997), doi:10.1109/70.585902. Horn and Johnson, *Matrix Analysis*, 2nd ed. (2013), ISBN 978-0-521-54823-6, Theorem 4.2.2(c).

## Evidence summary

- Lean modules: `TikhonovSVD`, `TikhonovProp3`, `TikhonovUniformBound`, `TikhonovOperatorBound`, `TikhonovRealizedTask`, `TikhonovDeniedTask`, and `TikhonovEquality`, all under `ctrllib/Ctrllib/`.
- Declarations: modal, scalar, universal-gain, realized/denied-task, spectral-floor, and Prop. 3 declarations listed in frontmatter.
- Acceptance: formal status `given_assumptions`; the recorded declarations compile under their displayed premises, while mathematical acceptance is `not_claimed`.
- Axiom: current module-specific audits report only `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` is present.
- Encodes: generic modal representation, universal and scheduled bounds, realized-task positivity/nonexpansiveness, and denied-task estimates under explicit hypotheses.

## Limitations

The formal realized map has norm at most one; its modal coefficients are
strictly below one. No single strict contraction constant over all matrices
and shifts is asserted. The denied-task bound uses an explicit nonnegative
singular-label floor; choosing the least label yields the conventional
minimum-label estimate. A named Mathlib sigma-min identification and
operator-norm equality characterization remain outside the theorem set. The scalar equality case is now proved: the universal cap is attained exactly at $\sigma=\sqrt\lambda$. Both scalar and Euclidean operator universal-gain endpoints are formalized.
They do not establish an application result.

## Discrepancies and open items

Formal coverage is narrower than the surrounding prose packet. The source
packet’s CSE94/GOA19/HJ13 provenance and this record’s selected contextual
references require final root-bibliography reconciliation. The adjacent
`TikhonovInverseDifference` module was reviewed but is not part of this
modal/Prop. 3 Brick; it can receive a separate residual Brick if the
application correspondence is promoted. User mathematical acceptance and the
unformalized conventional claims remain open. See the detailed [discrepancy
and [source-to-Lean map](correspondence/source_to_lean.md).
