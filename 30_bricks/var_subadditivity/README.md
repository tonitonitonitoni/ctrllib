---
type: proof
kind: brick
brick_id: var_subadditivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["VaRSubadditivity"]
lean_declarations: ["Ctrllib.FinLaw", "Ctrllib.totalMass", "Ctrllib.cumMass", "Ctrllib.reachesLevel", "Ctrllib.VaR", "Ctrllib.indepSumLaw", "Ctrllib.bond", "Ctrllib.var_bond_eq_zero", "Ctrllib.var_indepSum_eq_hundred", "Ctrllib.var_subadditivity_fails", "Ctrllib.var_not_subadditive"]
internal_bricks: []
application_interfaces: ["finite_var_counterexample"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Concrete finite VaR subadditivity failure."
keywords: ["var", "subadditivity", "counterexample", "finite_law"]
interface:
  inputs:
    - "The concrete finite defaultable-bond law and declared confidence level."
  assumptions:
    - "Finite support and exact masses are those in the module definitions."
  outputs:
    - id: component_var_zero
      statement: "Each defaultable-bond component has VaR zero at the declared confidence level."
      declarations:
        - Ctrllib.var_bond_eq_zero
      proof_section: "Component VaR"
    - id: sum_var_counterexample
      statement: "The independent sum has VaR 100, so VaR subadditivity fails for this finite law."
      declarations:
        - Ctrllib.var_indepSum_eq_hundred
        - Ctrllib.var_subadditivity_fails
        - Ctrllib.var_not_subadditive
      proof_section: "Sum counterexample"
  composition: []
---
# Finite VaR subadditivity counterexample

This Brick is `atomic` and covers Concrete finite VaR subadditivity failure. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`VaR` is the least finite support point reaching the confidence mass. The encoded confidence is 19/20.

## Statement

**component_var_zero:** Each defaultable-bond component has VaR zero at the declared confidence level.
**sum_var_counterexample:** The independent sum has VaR 100, so VaR subadditivity fails for this finite law.

## Hypotheses

- Finite support and exact masses are those in the module definitions.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Concrete finite VaR subadditivity failure. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `VaRSubadditivity`.
- Exact declarations: 11 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No general VaR theory or physical portfolio interpretation.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
