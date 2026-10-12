# Interface — Tracking storage dissipation identity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Vectors v, vd, vdot, vddot : ℝⁿ and x, xdot : ℝᵐ; matrices M, Mdot, C, D : Matrix n n ℝ, K : Matrix m m ℝ, J : Matrix m n ℝ; and forcing F : ℝⁿ.
- The exact absolute-velocity dynamics M *ᵥ vdot = -(C *ᵥ v) - D *ᵥ (v - vd) - Jᵀ *ᵥ (K *ᵥ x) - F + M *ᵥ vddot and kinematics xdot = J *ᵥ (v - vd).

## Assumptions

- Kᵀ = K and Mdot = C + Cᵀ for the identity/passivity branches; the velocity-feedforward branch changes the dynamics to -C *ᵥ (v - vd).
- The nonpositive branch requires D quadratic-form PSD and F = 0; the separate storage-coercivity endpoint requires M.PosDef and K.PosDef.

## Outputs

### Tracking rate identity

Under Kᵀ = K, the exact dynamics, and xdot = J *ᵥ (v - vd), the rate equals -eᵀDe - eᵀC vd - eᵀF + (1/2)eᵀMdot e - eᵀCe, with the absolute-kinetic specialization retained.

Exact declarations: `Ctrllib.stiffness_cross_symm`, `Ctrllib.passivity_bracket`, `Ctrllib.tracking_rate_identity`, `Ctrllib.tracking_rate_identity_absKin`.
Proof section: [Tracking rate identity](proof.md#tracking-rate-identity).

### Tracking rate dissipation

Mdot = C + Cᵀ removes the passivity bracket; velocity feedforward removes -eᵀC vd; PSD D and F = 0 give a nonpositive rate, while PD M,K give the separate quadratic storage lower bound.

Exact declarations: `Ctrllib.tracking_rate_passive`, `Ctrllib.tracking_rate_velocity_ff`, `Ctrllib.tracking_rate_velocity_ff_nonpos`, `Ctrllib.tracking_storage_coercive`.
Proof section: [Tracking dissipation](proof.md#tracking-dissipation).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
