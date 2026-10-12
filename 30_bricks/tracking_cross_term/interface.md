# Interface — Tracking strict-storage cross term

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite index types n,m; e, edot, F : ℝⁿ; x, xdot, r : ℝᵐ; M, Mdot, C, D : Matrix n n ℝ; K : Matrix m m ℝ; and J, Jdot : Matrix m n ℝ.
- The value-level stiffness force g = Jᵀ *ᵥ (K *ᵥ x), encoded gdot, dynamics M *ᵥ edot = -(C *ᵥ e) - D *ᵥ e - g - F, and kinematics xdot = J *ᵥ e + r.

## Assumptions

- Kᵀ = K and Mdot = C + Cᵀ for the rate identity; F = 0 and r = 0 for the no-forcing specialization.
- The strict-force zero endpoint requires K.PosDef and Function.Injective J.mulVec; PSD K alone is insufficient.

## Outputs

### Cross term identity

The exact value-level identity retains -eᵀF, xᵀKr, -gᵀF, and all cross-rate terms; setting F = 0 and r = 0 gives the no-forcing identity.

Exact declarations: `Ctrllib.cross_term_rate_identity`, `Ctrllib.cross_term_rate_no_forcing`.
Proof section: [Cross-term identity](proof.md#cross-term-identity).

### Strict term zero

With K.PosDef and injective J.mulVec, gᵀg = 0 exactly when x = 0 for g = JᵀKx.

Exact declarations: `Ctrllib.strict_term_zero_iff`.
Proof section: [Strict-term zero condition](proof.md#strict-term-zero-condition).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
