# Interface — Weighted tracking strict-rate bound

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite index types n,m; e, edot : ℝⁿ and x, xdot, r : ℝᵐ; M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J, Jdot : Matrix m n ℝ; and d₁, γ₁, κr, c₁,…,c₅, α, λ.
- Weighted forms E_M = eᵀMe and X_K = xᵀKx, with the stiffness force g = JᵀKx and value-level gdot = JdotᵀKx + JᵀKxdot.

## Assumptions

- weighted_young_cross requires Mᵀ = M, zᵀMz ≥ 0 for every z, and λ > 0; weighted_residual_bound requires Kᵀ = K, yᵀKy ≥ 0 for every y, ρ > 0, and rᵀKr ≤ ρ²X_K.
- strict_rate_dominated_weighted requires Kᵀ = K, Mdot = C + Cᵀ, M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - Jᵀ *ᵥ (K *ᵥ x), xdot = J *ᵥ e + r, α ≥ 0, λ > 0, and c₂+c₃+c₄+c₅ ≥ 0.
- Its named weighted bounds are d₁E_M ≤ eᵀDe, xᵀKr ≤ κrX_K, γ₁²X_K ≤ gᵀg, and the four gdot/Mdot/C/D cross bounds with coefficients c₁,…,c₅.

## Outputs

### Weighted young

For symmetric PSD M and λ > 0, uᵀMv ≤ (λ/2)uᵀMu + (1/(2λ))vᵀMv.

Exact declarations: `Ctrllib.weighted_young_cross`.
Proof section: [Public result 1: weighted Young inequality](proof.md#public-result-1-weighted-young-inequality).

### Weighted residual

For symmetric PSD K, ρ > 0, and rᵀKr ≤ ρ²xᵀKx, the residual satisfies xᵀKr ≤ ρxᵀKx.

Exact declarations: `Ctrllib.weighted_residual_bound`.
Proof section: [Public result 2: weighted residual bound](proof.md#public-result-2-weighted-residual-bound).

### Weighted strict rate

The exact weighted dynamics, residual bound, stiffness-force lower bound, and four weighted cross bounds yield the stated minimum coefficient multiplying E_M + X_K.

Exact declarations: `Ctrllib.strict_rate_dominated_weighted`.
Proof section: [Weighted strict-rate domination](proof.md#weighted-strict-rate-domination).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
