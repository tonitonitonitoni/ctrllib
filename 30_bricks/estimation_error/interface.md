# Interface — Estimation error and population risk

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** This record combines a deterministic observer-error chain with a distinct population-CVaR transfer chain.  The observer recurrence has a captured geometric-bound dependency, and the CVaR endpoint has a captured population comparison dependency; the population-risk Brick is an explicit internal interface.

## Evidence and dependencies


## Inputs

- Real normed state, measurement, and control spaces E, F, and U
- Time-indexed bounded linear maps A_k, B_k, C_k, and L_k with plant and observer states and residuals
- Uniform operator, model-residual, measurement-residual, and observer-gain bounds with r and ell
- A normed additive commutative group sequence e, recurrence constants r and b, and an eventual tolerance
- A common probability law, random states $X,\widehat X$, a $K$-Lipschitz loss, integrability of both composed losses, and an almost-sure state-error radius.

## Assumptions

- The plant and observer share the displayed known control and measurement correction equations
- All pointwise bounds hold at every natural index; r and ell are nonnegative, and the closed form additionally has r < 1
- The pointwise eventual endpoint fixes one sequence; the family endpoint additionally requires common r, b and an initial-error bound M across every parameter
- The generic eventual bound requires $b\ge0$ in addition to $0\le r<1$.
- CVaR transfer requires 0 <= alpha < 1, integrable losses, K >= 0, and the stated almost-sure state-error bound
- Observer residuals are deterministic here; sensor calibration, noise laws, norm scaling, and physical correspondence remain external
- The observer and CVaR results are separate compositions. Applying the latter to an observer requires a supplied probability model and an almost-sure error bound; this packet does not construct that connection.

## Outputs

### Observer error identity

Subtracting the observer update from the plant update gives $e_{k+1}=(A_k-L_kC_k)e_k+w_k-L_kv_k$.

Exact declarations: `Ctrllib.linearObserver_error_identity`.
Proof section: [Exact error recursion](proof.md#exact-error-recursion).

### Observer one step bound

The error recursion satisfies $\lVert e_{k+1}\rVert\le\lVert A_k-L_kC_k\rVert\lVert e_k\rVert +\lVert w_k\rVert+\lVert L_k\rVert\lVert v_k\rVert$.

Exact declarations: `Ctrllib.linearObserver_error_norm_le`.
Proof section: [One-step norm bound](proof.md#one-step-norm-bound).

### Observer geometric bound

A recurrence $q_{k+1}\le rq_k+b$ with $r\ge0$ gives $q_k\le r^kq_0+b\sum_{j=0}^{k-1}r^j$, including the observer's uniform-bound specialization.

Exact declarations: `Ctrllib.norm_error_le_geometric`, `Ctrllib.linearObserver_error_le_geometric`.
Proof section: [Finite-time geometric estimate](proof.md#finite-time-geometric-estimate).

### Observer contraction bound

For $r<1$, $\lVert e_k\rVert\le r^k\lVert e_0\rVert+ b(1-r^k)/(1-r)$ under the uniform observer bounds.

Exact declarations: `Ctrllib.norm_error_le_contraction_bound`.
Proof section: [Finite-time geometric estimate](proof.md#finite-time-geometric-estimate).

### Eventual contraction radius

If $0\le r<1$, $b\ge0$, and $\lVert e_{k+1}\rVert\le r\lVert e_k\rVert+b$, then for every $\varepsilon>0$ there is $N$ such that $\lVert e_k\rVert\le b/(1-r)+\varepsilon$ for $k\ge N$.

Exact declarations: `Ctrllib.norm_error_eventually_le_contraction_radius`.
Proof section: [Eventual observer-error bound](proof.md#eventual-observer-error-bound).

### Population cvar loss transfer

For $0\le\alpha<1$ and a $K$-Lipschitz loss with $K\ge0$, suppose $\|X-\widehat X\|\le\varepsilon$ almost surely and both composed losses are integrable. Their population CVaRs then differ by at most $K\varepsilon$.

Exact declarations: `Ctrllib.cvarPop_le_of_estimation_error`, `Ctrllib.abs_cvarPop_sub_le_of_estimation_error`.
Proof section: [Lipschitz loss and population CVaR](proof.md#lipschitz-loss-and-population-cvar).

### Uniform eventual radius

With shared contraction and disturbance bounds and norm(e theta 0) <= M for all parameters, every positive tolerance admits one N that works for all parameters and all k >= N.

Exact declarations: `Ctrllib.norm_error_family_eventually_le_contraction_radius`.
Proof section: [Uniform eventual observer-error bound](proof.md#uniform-eventual-observer-error-bound).

## Composition

- Uses `Ctrllib.norm_error_le_contraction_bound`; establishes `Ctrllib.norm_error_family_eventually_le_contraction_radius`. The common initial-error bound gives a parameter-independent scalar majorant; its limit supplies one N before selecting a family member.
- Uses `Ctrllib.norm_error_le_contraction_bound`; establishes `Ctrllib.norm_error_eventually_le_contraction_radius`. The eventual endpoint takes the finite contraction bound, proves its geometric tail converges to b/(1-r), and then applies the definition of convergence with the fixed tolerance.
- Uses `Ctrllib.cvarPop_le_of_ae_le_add`; establishes `Ctrllib.cvarPop_le_of_estimation_error`. Given the almost-sure state-error premise, the Lipschitz inequality supplies an almost-sure additive loss bound. The population comparison theorem consumes that bound under the same probability law. This is not a derivation of a probability model for the deterministic observer.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
