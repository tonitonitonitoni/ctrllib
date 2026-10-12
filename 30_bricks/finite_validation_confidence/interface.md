# Interface — Finite-family validation confidence

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The finite-family confidence theorem and deterministic empirical-CVaR grid bound compose into confidence for unrestricted empirical CVaR.

## Evidence and dependencies


## Inputs

- Independent bounded validation losses, fixed thresholds/radii, a CVaR level, and optionally a reconstruction loss bound.

## Assumptions

- n > 0; losses are measurable, independent, and bounded in [a,b].
- Thresholds/radii are fixed before validation; selection may depend on observations.
- The population-law/common-mean and one-sided reconstruction premises are explicit.
- The unrestricted empirical certificate additionally uses a predetermined nonempty grid in [a,b] covering that interval within h >= 0; the simplified radius assumes a < b.

## Outputs

### Fixed threshold certificate

Under bounded independent validation losses, a fixed threshold gives the stated exponential upper bound on failure of the population CVaR certificate.

Exact declarations: `Ctrllib.cvarValidationUpper_eq_cvarObj`, `Ctrllib.cvarPop_fixed_threshold_failure_le`.
Proof section: [Fixed-threshold certificate](proof.md#fixed-threshold-certificate).

### Finite family certificate

A fixed finite family may be selected after observing validation data; the failure probability is bounded by the sum of its individual exponential bounds, with the stated one-sided reconstruction transfer.

Exact declarations: `Ctrllib.cvarPop_finite_threshold_selection_failure_le`, `Ctrllib.cvarPop_finite_threshold_failure_le_of_loss_error`.
Proof section: [Finite-family selection](proof.md#finite-family-selection).

### Empirical cvar certificate

Population CVaR exceeds unrestricted empirical CVaR plus (eta+h)/(1-alpha) with outer probability at most |G| exp(-2*n*eta^2/(b-a)^2).

Exact declarations: `Ctrllib.cvarPop_empirical_cvar_failure_le_raw`, `Ctrllib.cvarPop_empirical_cvar_failure_le`.
Proof section: [Unrestricted empirical CVaR certificate](proof.md#unrestricted-empirical-cvar-certificate).

## Composition

- Uses `Ctrllib.cvarGrid_approximation`, `Ctrllib.cvarPop_finite_threshold_selection_failure_le`; establishes `Ctrllib.cvarPop_empirical_cvar_failure_le_raw`. A grid minimizer gives a sample-dependent finite selector. The deterministic grid bound yields an almost-everywhere inclusion of the empirical-CVaR failure event in the selected-threshold failure event.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
