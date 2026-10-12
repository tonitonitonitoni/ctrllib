# Interface — Population CVaR objective and error transfer

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- A probability space, an integrable real loss, a CVaR level, and optional comparison loss/error.

## Assumptions

- The measure is a probability measure.
- Losses are integrable and the stated almost-sure inequalities hold.
- 0 <= alpha < 1.

## Outputs

### Population cvar objective

For an integrable real loss $Z$ on a probability space and $0\le\alpha<1$, the population RU objective is integrable, bounded below by $\mathbb E[Z]$, and its infimum is no larger than every threshold objective.

Exact declarations: `Ctrllib.integrable_cvar_hinge`, `Ctrllib.integral_le_cvarPopObj`, `Ctrllib.cvarPopObj_bddBelow`, `Ctrllib.cvarPop_le_obj`, `Ctrllib.integral_le_cvarPop`.
Proof section: [Population objective](proof.md#population-objective).

### Population loss transfer

If $Z\le Y+\eta$ almost surely, then $C_\alpha(Z)\le C_\alpha(Y)+\eta$; an almost-sure absolute error gives an absolute CVaR difference bound.

Exact declarations: `Ctrllib.cvarPop_le_of_ae_le_add`, `Ctrllib.cvarPop_mono`, `Ctrllib.abs_cvarPop_sub_le_of_ae_abs_sub_le`.
Proof section: [Loss-error transfer](proof.md#loss-error-transfer).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
