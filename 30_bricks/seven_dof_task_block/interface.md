# Interface — Seven-DOF operational task block algebra

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite task selectors, operational matrix, encoded inertia blocks, and inverse/positivity premises.

## Assumptions

- Exact block order/dimensions and supplied inverse, zero-row/column, and SPD hypotheses.

## Outputs

### Operational inertia identification

The task block of the encoded inertia is identified with the operational block/congruence expression under the supplied inverse and task-block premises.

Exact declarations: `Ctrllib.mhat_mul_operational`, `Ctrllib.operational_mul_mhat`, `Ctrllib.operational_mul_mhat_task`, `Ctrllib.mhat_task_eq_inv_operational`, `Ctrllib.mhat_task_eq_mbreve`, `Ctrllib.mhat_task_eq_nonredundant_congruence`.
Proof section: [Operational inertia identification](proof.md#operational-inertia-identification).

### Task block passivity

The identified task block is symmetric/positive definite under the stated assumptions and satisfies the encoded passivity identity.

Exact declarations: `Ctrllib.mhat_task_symm`, `Ctrllib.mhat_task_passivity_skew`, `Ctrllib.mhat_task_passivity_identity`, `Ctrllib.mhat_task_posDef`, `Ctrllib.mhat_task_eq_inv_operational_of_posDef`.
Proof section: [Task-block passivity](proof.md#task-block-passivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
