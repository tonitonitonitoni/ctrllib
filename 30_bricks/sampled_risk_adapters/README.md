---
type: proof
kind: brick
brick_id: sampled_risk_adapters
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["CvarMarginWrapper", "CvarStateCost"]
lean_declarations: ["Ctrllib.marginLoss", "Ctrllib.cvarMargin", "Ctrllib.marginOcclusionLoss", "Ctrllib.cvarMarginOcclusion", "Ctrllib.cvarMargin_obj_convexOn", "Ctrllib.cvarMargin_min_at_scenario", "Ctrllib.cvarMargin_eq_obj_scenario", "Ctrllib.cvarMargin_antitone", "Ctrllib.cvarMargin_le_cvarMarginOcclusion", "Ctrllib.cvarSAA_lt_imp_violation_count", "Ctrllib.cvarMargin_lt_imp_clearance_count", "Ctrllib.cvarMarginOcclusion_eq_obj_scenario", "Ctrllib.stateLoss", "Ctrllib.cvarState", "Ctrllib.cvarState_obj_convexOn", "Ctrllib.cvarState_min_at_scenario", "Ctrllib.cvarState_eq_obj_scenario"]
internal_bricks: []
application_interfaces: ["sampled_margin_risk", "sampled_state_cost_risk"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Finite SAA adapters for margin, occlusion, and state costs."
keywords: ["margin", "occlusion", "state_cost", "sampled_cvar"]
interface:
  inputs:
    - "Finite scenario margins, optional nonnegative occlusion penalties, or finite state costs."
  assumptions:
    - "Scenario functions are real-valued and satisfy the exact pointwise/finite premises."
    - "Count results are interpreted only for the supplied sample."
  outputs:
    - id: margin_cvar_adapter
      statement: "For abstract scenario margins, the negative-margin SAA CVaR has the stated scenario-objective characterization and is antitone in margin; nonnegative occlusion raises the risk."
      declarations:
        - Ctrllib.cvarMargin_obj_convexOn
        - Ctrllib.cvarMargin_min_at_scenario
        - Ctrllib.cvarMargin_eq_obj_scenario
        - Ctrllib.cvarMargin_antitone
        - Ctrllib.cvarMargin_le_cvarMarginOcclusion
      proof_section: "Margin CVaR adapter"
    - id: sampled_count_guarantee
      statement: "A sampled CVaR threshold below zero implies the declared violation/clearance count bound for the sampled scenarios."
      declarations:
        - Ctrllib.cvarSAA_lt_imp_violation_count
        - Ctrllib.cvarMargin_lt_imp_clearance_count
      proof_section: "Sampled count guarantee"
    - id: state_cvar_adapter
      statement: "The abstract state-cost CVaR is the corresponding finite scenario objective and inherits convexity."
      declarations:
        - Ctrllib.cvarState_obj_convexOn
        - Ctrllib.cvarState_min_at_scenario
        - Ctrllib.cvarState_eq_obj_scenario
      proof_section: "State-cost adapter"
  composition: []
---
# Sampled margin and state-cost CVaR adapters

This Brick is `atomic` and covers Finite SAA adapters for margin, occlusion, and state costs. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

Margin loss is negative margin; occlusion adds a nonnegative loss penalty. `cvarState` uses an abstract real state cost.

## Statement

**margin_cvar_adapter:** For abstract scenario margins, the negative-margin SAA CVaR has the stated scenario-objective characterization and is antitone in margin; nonnegative occlusion raises the risk.
**sampled_count_guarantee:** A sampled CVaR threshold below zero implies the declared violation/clearance count bound for the sampled scenarios.
**state_cvar_adapter:** The abstract state-cost CVaR is the corresponding finite scenario objective and inherits convexity.

## Hypotheses

- Scenario functions are real-valued and satisfy the exact pointwise/finite premises.
- Count results are interpreted only for the supplied sample.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Finite SAA adapters for margin, occlusion, and state costs. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `CvarMarginWrapper`, `CvarStateCost`.
- Exact declarations: 17 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No geometry, population sampling, controller realization, or physical clearance claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
