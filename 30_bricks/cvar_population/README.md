---
type: proof
kind: brick
brick_id: cvar_population
result_kind: mixed
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: ["rockafellar2002conditional"]
lean_package: ctrllib
lean_modules: ["CvarPopulation"]
lean_declarations: ["Ctrllib.cvarPopObj", "Ctrllib.cvarPop", "Ctrllib.integrable_cvar_hinge", "Ctrllib.integral_le_cvarPopObj", "Ctrllib.cvarPopObj_bddBelow", "Ctrllib.cvarPop_le_obj", "Ctrllib.integral_le_cvarPop", "Ctrllib.cvarPop_le_of_ae_le_add", "Ctrllib.cvarPop_mono", "Ctrllib.abs_cvarPop_sub_le_of_ae_abs_sub_le"]
internal_bricks: []
application_interfaces: ["integrable_population_loss"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Population RU objective, lower bound, and one-sided/absolute loss-transfer results."
keywords: ["population_cvar", "loss_comparison", "integrability"]
interface:
  inputs:
    - "A probability space, an integrable real loss, a CVaR level, and optional comparison loss/error."
  assumptions:
    - "The measure is a probability measure."
    - "Losses are integrable and the stated almost-sure inequalities hold."
    - "0 <= alpha < 1."
  outputs:
    - id: population_cvar_objective
      statement: "For an integrable real loss $Z$ on a probability space and $0\\le\\alpha<1$, the population RU objective is integrable, bounded below by $\\mathbb E[Z]$, and its infimum is no larger than every threshold objective."
      declarations:
        - Ctrllib.integrable_cvar_hinge
        - Ctrllib.integral_le_cvarPopObj
        - Ctrllib.cvarPopObj_bddBelow
        - Ctrllib.cvarPop_le_obj
        - Ctrllib.integral_le_cvarPop
      proof_section: "Population objective"
    - id: population_loss_transfer
      statement: "If $Z\\le Y+\\eta$ almost surely, then $C_\\alpha(Z)\\le C_\\alpha(Y)+\\eta$; an almost-sure absolute error gives an absolute CVaR difference bound."
      declarations:
        - Ctrllib.cvarPop_le_of_ae_le_add
        - Ctrllib.cvarPop_mono
        - Ctrllib.abs_cvarPop_sub_le_of_ae_abs_sub_le
      proof_section: "Loss-error transfer"
  composition: []
---
# Population CVaR objective and error transfer

This Brick is `atomic` and covers Population RU objective, lower bound, and one-sided/absolute loss-transfer results. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`cvarPopObj alpha mu Z tau` is the threshold objective; `cvarPop alpha mu Z` is its infimum. `ae` premises are almost-everywhere statements in the captured measure.

## Statement

**population_cvar_objective:** For an integrable real loss $Z$ on a probability space and $0\lealpha<1$, the population RU objective is integrable, bounded below by $\mathbb E[Z]$, and its infimum is no larger than every threshold objective.
**population_loss_transfer:** If $Z\le Y+\eta$ almost surely, then $C_alpha(Z)\le C_alpha(Y)+\eta$; an almost-sure absolute error gives an absolute CVaR difference bound.

## Hypotheses

- The measure is a probability measure.
- Losses are integrable and the stated almost-sure inequalities hold.
- 0 <= alpha < 1.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Population RU objective, lower bound, and one-sided/absolute loss-transfer results. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Rockafellar and Uryasev, “Conditional Value-at-Risk for General Loss Distributions,” JBF 26(7), 1443–1471 (2002), DOI: 10.1016/S0378-4266(02)00271-6, Theorem 10 on author-manuscript page 14, motivates the RU objective. Exact source correspondence is limited to the recorded notation; local formal proofs establish the comparison results.


## Evidence summary

- Lean modules: `CvarPopulation`.
- Exact declarations: 10 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No density, quantile, conditional-tail-mean, sampling, episode-law, or physical guarantee.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
