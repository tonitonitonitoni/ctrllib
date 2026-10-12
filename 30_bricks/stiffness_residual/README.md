---
type: proof
kind: brick
brick_id: stiffness_residual
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated, hornjohnson2013]
lean_package: ctrllib
lean_modules: [StiffnessResidual]
lean_declarations:
  - Ctrllib.stiffness_residual_injective
  - Ctrllib.stiffness_residual_injective'
  - Ctrllib.stiffness_gram_posDef
internal_bricks: []
application_interfaces: [stiffness_residual, gram_coercivity]
brick_level: atomic
level_reason: >-
  This record groups one reusable mathematical boundary; the listed outputs
  share the same typed matrices and proof interface.
summary: "For an invertible square Jacobian and positive-definite stiffness, the transformed stiffness residual vanishes exactly when the error vanishes."
keywords: [stiffness_residual, linear_algebra, reusable_proof]
interface:
  inputs:
    - >-
      Typed finite-dimensional matrices, vectors, scalar fields, and theorem
      premises exactly as specified by the canonical declarations.
  assumptions:
    - >-
      Dimensions, symmetry, positivity, rank, differentiability, and norm
      hypotheses are explicit in the declarations and are not inferred here.
    - >-
      Application correspondence, numerical values, and physical realization
      are external interfaces.
  outputs:
    - id: square_residual_injective
      statement: For nonsingular square J and positive-definite K, J transpose K x = 0 implies x = 0.
      declarations: [Ctrllib.stiffness_residual_injective]
      proof_section: "Square residual"
    - id: alternate_residual
      statement: The alternate residual formulation has the same injectivity conclusion.
      declarations: [Ctrllib.stiffness_residual_injective']
      proof_section: "Square residual"
    - id: gram_coercivity
      statement: Full-column-rank J and positive-definite K make J transpose K J positive definite.
      declarations: [Ctrllib.stiffness_gram_posDef]
      proof_section: "Rectangular Gram"
  composition: []
---
# Stiffness residual injectivity

This Brick is a bounded conventional account of the named stiffness residual injectivity endpoints. Read [proof.md](proof.md) before generated statement pages.

## Notation

The conventional symbols, scalar fields, dimensions, and coordinate conventions are defined in proof.md and the exact Lean declarations. The Lean types are authoritative.

## Statement

Stiffness residual injectivity is established under the explicit theorem premises. The public guarantees are the output IDs in the manifest.

## Hypotheses

All premises used by the result are theorem arguments: finite index types, field or ring structure, rank, symmetry, positivity, and differentiability where applicable. No source-model or physical premise is silently added.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the listed algebraic or analytic implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house Lean derivation.

## Evidence summary

- Lean module: StiffnessResidual in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The Xylem snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Numerical conditioning, source correspondence, frame and unit conventions, physical realization, and controller acceptance remain open.

## Discrepancies and open items

Source-to-Lean coverage is classified in correspondence/source_to_lean.md. Any unresolved dimension, model, or physical correspondence obligation remains external.
