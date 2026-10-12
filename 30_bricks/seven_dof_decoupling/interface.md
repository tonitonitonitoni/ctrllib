# Interface — Seven-DOF task/self-motion decoupling

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Abstract task map, self-motion column, and inertia-like matrix.

## Assumptions

- Exact inverse, symmetry, nonzero, and SPD premises from the signatures.

## Outputs

### Task selfmotion decoupling

Under $G P=I$, $\hat k=P e_j$, the row relation $\operatorname{denom}G^\mathsf T e_j=M\hat k$, symmetry where required, and $M\succ0$ for the positivity endpoint, the task and self-motion blocks decouple and the self-motion inertia equals the positive denominator.

Exact declarations: `Ctrllib.gamma_a_khat_eq`, `Ctrllib.mhat_symm`, `Ctrllib.mhat_selfmotion_column`, `Ctrllib.mhat_selfmotion_row`, `Ctrllib.task_M_orthogonal`, `Ctrllib.selfmotion_inertia_eq_denom`, `Ctrllib.selfmotion_inertia_pos`.
Proof section: [Task/self-motion decoupling](proof.md#taskself-motion-decoupling).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
