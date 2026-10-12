# Interface — Weighted right inverse

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** One focused weighted right-inverse boundary under full-row-rank and SPD assumptions.

## Evidence and dependencies


## Inputs

- A : Matrix m n ℝ with surjective mulVec, SPD W : Matrix n n ℝ, and target b : m → ℝ.
- G = A W⁻¹ Aᵀ and B = W⁻¹ Aᵀ G⁻¹.

## Assumptions

- A is surjective and W is positive definite, with the exact finite-index premises of Lean.
- Equality constraints only; actuator limits, dynamics, and physical correspondence are external.

## Outputs

### Transpose injectivity

Surjectivity of A implies injectivity of the transpose.

Exact declarations: `Ctrllib.mulVec_transpose_injective_of_surjective`.
Proof section: [Transpose injectivity](proof.md#transpose-injectivity).

### Weighted gramian

G is positive definite and a unit under the stated assumptions.

Exact declarations: `Ctrllib.weighted_gram_posDef`, `Ctrllib.weighted_gram_isUnit`.
Proof section: [Weighted Gramian](proof.md#weighted-gramian).

### Right inverse

A B = I.

Exact declarations: `Ctrllib.weighted_right_inverse_mul`.
Proof section: [Right inverse](proof.md#right-inverse).

### Feasibility

A (B b) = b.

Exact declarations: `Ctrllib.weighted_right_inverse_feasible`.
Proof section: [Right inverse](proof.md#right-inverse).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
