# Source-to-Lean correspondence

Coverage classification: the following in-house implications are covered. Physical observer/model selection is not covered.

| Conventional claim | Exact declaration in namespace `Ctrllib` |
| --- | --- |
| Error identity from plant minus correction update | `linearObserver_error_identity` |
| One-step induced-norm bound | `linearObserver_error_norm_le` |
| Finite geometric estimate | `norm_error_le_geometric` |
| Strict-contraction closed form | `norm_error_le_contraction_bound` |
| Time-varying equations plus uniform premises imply error estimate | `linearObserver_error_le_geometric` |
| One-sided and absolute population CVaR transfer | `cvarPop_le_of_estimation_error`, `abs_cvarPop_sub_le_of_estimation_error` |
| Strict contraction plus additive recurrence implies an eventual radius bound for every positive tolerance | `norm_error_eventually_le_contraction_radius` in `ObserverUltimateBound` |

The family-uniform extension maps shared recurrence and initial-error bounds
to `norm_error_family_eventually_le_contraction_radius` in
`ObserverUniformBound`. Its common threshold is uniform over the parameter
family for each fixed tolerance; the endpoint does not construct the shared
application bounds.

Definitions `linearPlantStep` and `linearObserverStep` are exactly the displayed discrete equations. The eighth endpoint is generic in a normed additive commutative group and uses the finite recurrence bound together with $r^k\to0$. Its threshold is pointwise in the fixed sequence, parameters and tolerance; no parameter-uniform threshold is encoded. No estimator optimality or probability-of-error conclusion is encoded.
