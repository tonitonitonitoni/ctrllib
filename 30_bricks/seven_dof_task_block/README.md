---
type: proof
kind: brick
brick_id: seven_dof_task_block
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["SevenDofTaskBlock"]
lean_declarations: ["Ctrllib.TaskIdx", "Ctrllib.taskBlock", "Ctrllib.taskRows", "Ctrllib.taskBlock_one", "Ctrllib.taskBlock_apply", "Ctrllib.taskRows_apply", "Ctrllib.taskBlock_transpose", "Ctrllib.taskBlock_neg", "Ctrllib.taskBlock_skew", "Ctrllib.taskBlock_mul_of_col_zero", "Ctrllib.taskBlock_mul_of_row_zero", "Ctrllib.taskBlock_gramian", "Ctrllib.mhat_mul_operational", "Ctrllib.operational_mul_mhat", "Ctrllib.operational_mul_mhat_task", "Ctrllib.mhat_task_eq_inv_operational", "Ctrllib.mhat_task_eq_mbreve", "Ctrllib.mhat_task_eq_nonredundant_congruence", "Ctrllib.mhat_task_symm", "Ctrllib.mhat_task_passivity_skew", "Ctrllib.mhat_task_passivity_identity", "Ctrllib.mhat_task_posDef", "Ctrllib.mhat_task_eq_inv_operational_of_posDef", "Ctrllib.mulVec_injective_of_mul_eq_one", "Ctrllib.mhat_entry_col_zero", "Ctrllib.mhat_entry_row_zero"]
internal_bricks: []
application_interfaces: ["operational_inertia_identification", "seven_dof_task_block_passivity"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Operational task-block identification and passivity algebra."
keywords: ["seven_dof", "task_block", "operational_inertia", "passivity"]
interface:
  inputs:
    - "Finite task selectors, operational matrix, encoded inertia blocks, and inverse/positivity premises."
  assumptions:
    - "Exact block order/dimensions and supplied inverse, zero-row/column, and SPD hypotheses."
  outputs:
    - id: operational_inertia_identification
      statement: "The task block of the encoded inertia is identified with the operational block/congruence expression under the supplied inverse and task-block premises."
      declarations:
        - Ctrllib.mhat_mul_operational
        - Ctrllib.operational_mul_mhat
        - Ctrllib.operational_mul_mhat_task
        - Ctrllib.mhat_task_eq_inv_operational
        - Ctrllib.mhat_task_eq_mbreve
        - Ctrllib.mhat_task_eq_nonredundant_congruence
      proof_section: "Operational inertia identification"
    - id: task_block_passivity
      statement: "The identified task block is symmetric/positive definite under the stated assumptions and satisfies the encoded passivity identity."
      declarations:
        - Ctrllib.mhat_task_symm
        - Ctrllib.mhat_task_passivity_skew
        - Ctrllib.mhat_task_passivity_identity
        - Ctrllib.mhat_task_posDef
        - Ctrllib.mhat_task_eq_inv_operational_of_posDef
      proof_section: "Task-block passivity"
  composition: []
---
# Seven-DOF operational task block algebra

This Brick is `atomic` and covers Operational task-block identification and passivity algebra. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

TaskIdx is $\{i:n\mid i\ne j\}$. taskBlock restricts a full matrix to those
common task rows and columns; taskRows restricts rows while retaining all
columns. These functions fix the finite task coordinate order used by the
module.

## Statement

**operational_inertia_identification:** The task block of the encoded inertia is identified with the operational block/congruence expression under the supplied inverse and task-block premises.
**task_block_passivity:** The identified task block is symmetric/positive definite under the stated assumptions and satisfies the encoded passivity identity.

## Hypotheses

- Exact block order/dimensions, $G P=I$, the named inverse witness
  $M M_{\mathrm{inv}}=I$, the supplied zero-row/column relations, and the
  relevant SPD hypotheses.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Operational task-block identification and passivity algebra. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `SevenDofTaskBlock`.
- Exact declarations: 26 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: generic task-block selectors, operational-inertia identification, positivity, symmetry, and restricted passivity.

## Limitations

No source/controller/physical correspondence or actuator claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: generic task-block selectors, operational-inertia identification, positivity, symmetry, and restricted passivity.
