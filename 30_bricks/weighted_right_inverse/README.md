---
type: proof
kind: brick
brick_id: weighted_right_inverse
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [kalaycioglu2022coordinated, kalaycioglu2023rover]
lean_package: ctrllib
lean_modules: [WeightedRightInverse]
lean_declarations:
  - Ctrllib.mulVec_transpose_injective_of_surjective
  - Ctrllib.weighted_gram_posDef
  - Ctrllib.weighted_gram_isUnit
  - Ctrllib.weighted_right_inverse_mul
  - Ctrllib.weighted_right_inverse_feasible
internal_bricks: []
application_interfaces: [rectangular_inverse_kinematics]
brick_level: atomic
level_reason: One focused weighted right-inverse boundary under full-row-rank and SPD assumptions.
summary: "A positive-definite weight and surjective constraint map produce an invertible weighted Gram matrix and a feasible weighted right inverse."
keywords: [weighted_right_inverse, gramian, full_row_rank]
interface:
  inputs:
    - "A : Matrix m n ℝ with surjective mulVec, SPD W : Matrix n n ℝ, and target b : m → ℝ."
    - G = A W⁻¹ Aᵀ and B = W⁻¹ Aᵀ G⁻¹.
  assumptions:
    - A is surjective and W is positive definite, with the exact finite-index premises of Lean.
    - Equality constraints only; actuator limits, dynamics, and physical correspondence are external.
  outputs:
    - id: transpose_injectivity
      statement: Surjectivity of A implies injectivity of the transpose.
      declarations: [Ctrllib.mulVec_transpose_injective_of_surjective]
      proof_section: "Transpose injectivity"
    - id: weighted_gramian
      statement: G is positive definite and a unit under the stated assumptions.
      declarations: [Ctrllib.weighted_gram_posDef, Ctrllib.weighted_gram_isUnit]
      proof_section: "Weighted Gramian"
    - id: right_inverse
      statement: A B = I.
      declarations: [Ctrllib.weighted_right_inverse_mul]
      proof_section: "Right inverse"
    - id: feasibility
      statement: A (B b) = b.
      declarations: [Ctrllib.weighted_right_inverse_feasible]
      proof_section: "Right inverse"
  composition: []
---
# Weighted right inverse

This atomic Brick records the weighted inverse boundary. Read the complete [conventional derivation](proof.md).

## Notation

Use the definitions and finite dimensions in proof.md and the canonical declarations; Lean types and coercions are authoritative.

## Statement

A full-row-rank map with SPD weight admits the displayed weighted right inverse.

## Hypotheses

Surjectivity and positive definiteness are theorem premises. Equality-only constraints are assumed at the application boundary.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the right-inverse and feasibility identities. It does not establish box constraints, saturation, dynamics, physical realization, or scientific acceptance.

## Sources

Kalaycioglu-de Ruiter 2022 and 2023 provide contextual inverse-kinematics formulas; the proof is an in-house derivation.

## Evidence summary

- Lean module: WeightedRightInverse in ctrllib.
- Declaration: the five exact declarations listed above.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: no sorryAx is recorded for these endpoints.
- Encodes: weighted Gramian invertibility, right inverse, and feasibility.

No fresh build is claimed.

## Limitations

No actuator limits, numerical conditioning margin, frame/unit identification, or controller realization is included.

## Discrepancies and open items

Coverage is classified in correspondence/source_to_lean.md; source and physical correspondence remain open.
