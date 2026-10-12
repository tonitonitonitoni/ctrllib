# Interface — Finite-sample CVaR hinge engine

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- A finite positive-size family of real losses and a level alpha.
- For grid approximation: a loss interval, a nonempty finite threshold grid, and covering distance h.

## Assumptions

- 0 <= alpha < 1; finite averages use the captured nonempty-index premises.
- All order and positivity premises are exactly those in the declaration capture.
- For grid approximation: h >= 0, all sample losses lie in [a,b], and each point of [a,b] is within h of a grid point.

## Outputs

### Finite cvar objective

For a finite equal-weight sample, the empirical CVaR is the infimum of the RU hinge objective, and the objective has the stated convexity and coherence properties.

Exact declarations: `Ctrllib.cvarSAA_eq_obj_sample`, `Ctrllib.cvarObj_convexOn`, `Ctrllib.cvarObj_bddBelow`, `Ctrllib.cvarSAA_le_obj`.
Proof section: [Finite CVaR objective](proof.md#finite-cvar-objective).

### Cvar coherence

The finite-sample objective is monotone, translation equivariant, positively homogeneous, and subadditive under the displayed loss conventions.

Exact declarations: `Ctrllib.cvarObj_mono`, `Ctrllib.cvarSAA_mono`, `Ctrllib.cvarSAA_const`, `Ctrllib.cvarSAA_translation`, `Ctrllib.cvarSAA_posHomogeneous`, `Ctrllib.cvarSAA_subadditive`.
Proof section: [CVaR coherence](proof.md#cvar-coherence).

### Threshold lipschitz

For all real thresholds s and t, the absolute change in the empirical hinge objective is at most |s-t|/(1-alpha).

Exact declarations: `Ctrllib.cvarObj_threshold_lipschitz`.
Proof section: [Threshold continuity and finite-grid approximation](proof.md#threshold-continuity-and-finite-grid-approximation).

### Finite grid approximation

The minimum over a nonempty finite covering grid exceeds unrestricted empirical CVaR by a value between zero and h/(1-alpha). Grid points need not lie inside the loss interval.

Exact declarations: `Ctrllib.cvarGrid_approximation`.
Proof section: [Threshold continuity and finite-grid approximation](proof.md#threshold-continuity-and-finite-grid-approximation).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
