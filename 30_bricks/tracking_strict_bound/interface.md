# Interface — Tracking strict-storage bounds

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite error vectors e : ℝⁿ and x : ℝᵐ; matrices M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J, Jdot : Matrix m n ℝ; and constants d₁, γ₁, κr, c₁,…,c₆, α, λ.
- The value-level dynamics M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - Jᵀ *ᵥ (K *ᵥ x), kinematics xdot = J *ᵥ e + r, passivity Mdot = C + Cᵀ, and Kᵀ = K.

## Assumptions

- The rate endpoint requires α ≥ 0, λ > 0, c₂+c₃+c₄+c₅ ≥ 0, d₁E ≤ eᵀDe, xᵀKr ≤ κrX, γ₁²X ≤ gᵀg, and the four named cross bounds.
- The storage sandwich requires Rayleigh lower/upper bounds for M,K and |gᵀMe| ≤ c₆√E√X; the forced adapter additionally requires nonnegative E,X,f,ρ,α,γ₂,κ and positive c_lo,c_hi.

## Outputs

### Strict storage sandwich

Under Rayleigh bounds and |gᵀMe| ≤ c₆√E√X, W lies between the exact min/max quadratic coefficients stated by strict_storage_lower, strict_storage_upper, and strict_storage_sandwich.

Exact declarations: `Ctrllib.strict_storage_lower`, `Ctrllib.strict_storage_upper`, `Ctrllib.strict_storage_sandwich`.
Proof section: [Strict-storage sandwich](proof.md#strict-storage-sandwich).

### Strict rate domination

Young’s inequality turns the four cross bounds into the exact minimum coefficient κ for no-forcing, exact-twist, and forced rate endpoints; the sandwich yields the stated square-root comparison form.

Exact declarations: `Ctrllib.young_cross`, `Ctrllib.quad_form_dominates`, `Ctrllib.strict_rate_dominated`, `Ctrllib.strict_rate_dominated_exact_twist`, `Ctrllib.strict_rate_dominated_forced`, `Ctrllib.forced_rate_sqrt_comparison`.
Proof section: [Strict-rate domination](proof.md#strict-rate-domination).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
