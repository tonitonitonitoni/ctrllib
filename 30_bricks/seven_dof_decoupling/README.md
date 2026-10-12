---
type: proof
kind: brick
brick_id: seven_dof_decoupling
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["SevenDofDecoupling"]
lean_declarations: ["Ctrllib.gamma_a_khat_eq", "Ctrllib.mhat_symm", "Ctrllib.mhat_selfmotion_column", "Ctrllib.mhat_selfmotion_row", "Ctrllib.task_M_orthogonal", "Ctrllib.selfmotion_inertia_eq_denom", "Ctrllib.selfmotion_inertia_pos"]
internal_bricks: []
application_interfaces: ["seven_dof_task_selfmotion"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Abstract seven-DOF task/self-motion block decoupling."
keywords: ["seven_dof", "decoupling", "self_motion", "inertia"]
interface:
  inputs:
    - "Abstract task map, self-motion column, and inertia-like matrix."
  assumptions:
    - "Exact inverse, symmetry, nonzero, and SPD premises from the signatures."
  outputs:
    - id: task_selfmotion_decoupling
      statement: "Under $G P=I$, $\\hat k=P e_j$, the row relation $\\operatorname{denom}G^\\mathsf T e_j=M\\hat k$, symmetry where required, and $M\\succ0$ for the positivity endpoint, the task and self-motion blocks decouple and the self-motion inertia equals the positive denominator."
      declarations:
        - Ctrllib.gamma_a_khat_eq
        - Ctrllib.mhat_symm
        - Ctrllib.mhat_selfmotion_column
        - Ctrllib.mhat_selfmotion_row
        - Ctrllib.task_M_orthogonal
        - Ctrllib.selfmotion_inertia_eq_denom
        - Ctrllib.selfmotion_inertia_pos
      proof_section: "Task/self-motion decoupling"
  composition: []
---
# Seven-DOF task/self-motion decoupling

This Brick is `atomic` and covers Abstract seven-DOF task/self-motion block decoupling. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

G is the square augmented map, P is its inverse witness, and
$\hat k=P e_j$ is the selected self-motion column. Therefore the formal
target is $G\hat k=e_j$. Hatted symbols are formal block variables; they are
not silently identified with source symbols.

## Statement

**task_selfmotion_decoupling:** Under $G P=I$, $\hat k=P e_j$, the row
relation $\operatorname{denom}G^\mathsf T e_j=M\hat k$, symmetry where
required, and $M\succ0$ for the positivity endpoint, the task and self-motion
blocks decouple and the self-motion inertia equals the positive denominator.

## Hypotheses

- $G P=I$, $\hat k=P e_j$, and
  $\operatorname{denom}\,G^\mathsf T e_j=M\hat k$ are explicit algebraic
  premises for the decoupling endpoints; symmetry is used for the row result.
  The positivity endpoint additionally assumes $M\succ0$.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Abstract seven-DOF task/self-motion block decoupling. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `SevenDofDecoupling`.
- Exact declarations: 7 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: abstract inverse-based task/self-motion block decoupling and positive self-motion inertia.

## Limitations

No physical/source/controller instantiation or convergence.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: abstract inverse-based task/self-motion block decoupling and positive self-motion inertia.
