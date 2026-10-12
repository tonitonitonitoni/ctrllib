# Interface — Sampled margin and state-cost CVaR adapters

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite scenario margins, optional nonnegative occlusion penalties, or finite state costs.

## Assumptions

- Scenario functions are real-valued and satisfy the exact pointwise/finite premises.
- Count results are interpreted only for the supplied sample.

## Outputs

### Margin cvar adapter

For abstract scenario margins, the negative-margin SAA CVaR has the stated scenario-objective characterization and is antitone in margin; nonnegative occlusion raises the risk.

Exact declarations: `Ctrllib.cvarMargin_obj_convexOn`, `Ctrllib.cvarMargin_min_at_scenario`, `Ctrllib.cvarMargin_eq_obj_scenario`, `Ctrllib.cvarMargin_antitone`, `Ctrllib.cvarMargin_le_cvarMarginOcclusion`.
Proof section: [Margin CVaR adapter](proof.md#margin-cvar-adapter).

### Sampled count guarantee

A sampled CVaR threshold below zero implies the declared violation/clearance count bound for the sampled scenarios.

Exact declarations: `Ctrllib.cvarSAA_lt_imp_violation_count`, `Ctrllib.cvarMargin_lt_imp_clearance_count`.
Proof section: [Sampled count guarantee](proof.md#sampled-count-guarantee).

### State cvar adapter

The abstract state-cost CVaR is the corresponding finite scenario objective and inherits convexity.

Exact declarations: `Ctrllib.cvarState_obj_convexOn`, `Ctrllib.cvarState_min_at_scenario`, `Ctrllib.cvarState_eq_obj_scenario`.
Proof section: [State-cost adapter](proof.md#state-cost-adapter).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
