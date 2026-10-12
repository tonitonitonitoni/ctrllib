# Interface — Tracking storage comparison cascade

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The tracking rate majorant and scalar eventual comparison combine to give storage and tracking norm floors.

## Evidence and dependencies


## Inputs

- Functions W,W' : ℝ → ℝ and trajectories x₁ : ℝ → E₁, x₂ : ℝ → E₂ on the domain [0,∞), with constants c_lo,c_hi,κ,c',ρ and driver ceiling Mx.
- The pointwise forced rate W' t ≤ -(κ/c_hi)W t + c'(‖x₂ t‖+ρ)√(W t), plus the lower sandwich c_lo‖x₁ t‖² ≤ W t.

## Assumptions

- The majorant requires c_hi>0, κ>0, c'>0, ρ≥0, W≥0, and the supplied forced-rate inequality.
- Attractivity additionally requires c_lo>0, continuity of W on [0,∞), HasDerivWithinAt for W, and x₂ → 0; boundedness additionally requires W(0)≥0, Mx≥0, and ‖x₂ t‖≤Mx. The COM specialization retains SPD matrices, a flow-solution witness, and forward precompactness.

## Outputs

### Forced rate majorant

Young’s inequality converts the exact square-root forced rate into W' ≤ -(κ/(2c_hi))W + c'^2c_hi(‖x₂‖+ρ)²/(2κ).

Exact declarations: `Ctrllib.tracking_forced_rate_majorant`.
Proof section: [Forced-rate majorant](proof.md#forced-rate-majorant).

### Cascade bound

Under the exact continuity, derivative, lower-sandwich, driver-limit or driver-ceiling premises, the storage and tracking-error attractivity or uniform bounds follow; the COM endpoint obtains the driver limit from com_gas_matrix.

Exact declarations: `Ctrllib.tracking_cascade_gas`, `Ctrllib.tracking_cascade_storage_bounded`, `Ctrllib.tracking_cascade_bounded`, `Ctrllib.tracking_cascade_gas_com`.
Proof section: [Tracking cascade bound](proof.md#tracking-cascade-bound).

### Eventual floors

For every positive epsilon, eventually W <= B/a+epsilon and norm(x1) <= sqrt((B/a+epsilon)/c_lo), with a=kappa/(2*c_hi) and B=cprime^2*c_hi*(Mx+rho)^2/(2*kappa).

Exact declarations: `Ctrllib.tracking_storage_eventual_floor`, `Ctrllib.tracking_norm_eventual_floor`.
Proof section: [Eventual storage and tracking floors](proof.md#eventual-storage-and-tracking-floors).

## Composition

- Uses `Ctrllib.comparison_eventual_floor`; establishes `Ctrllib.tracking_storage_eventual_floor`. A private helper applies the tracking majorant to obtain a constant forcing ceiling; the scalar comparison removes the transient. The capture omits the private helper, so this edge records only the visible comparison dependency.
- Uses `Ctrllib.tracking_storage_eventual_floor`; establishes `Ctrllib.tracking_norm_eventual_floor`. The lower storage sandwich, positive division, and square-root monotonicity transport the eventual storage ceiling to the state norm.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
