---
type: proof
kind: brick
brick_id: reference_calculus
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ReferenceCalculus]
lean_declarations:
  - Ctrllib.hasDerivAt_reference_comp
  - Ctrllib.hasDerivAt_reference_velocity
internal_bricks: []
application_interfaces: [reference_trajectory]
brick_level: atomic
level_reason: >-
  The outputs form one reusable reference trajectory calculus boundary under
  explicit theorem premises.
summary: "Chain and product rules give the first and second derivatives of a vector reference composed with a scalar phase trajectory."
keywords: [reference_calculus, reusable_proof, formal_assurance]
interface:
  inputs:
    - >-
      The typed matrices, vectors, states, trajectories, parameters, and
      hypotheses in the canonical module signatures.
  assumptions:
    - >-
      Every dimension, algebraic structure, positivity, rank, differentiability,
      passivity, and compactness premise used by an endpoint is explicit.
    - >-
      Application correspondence and numerical or physical evidence are
      external interfaces.
  outputs:
    - id: reference_composition
      statement: If u̇(t)=s(u(t)) and p'(u(t))=p₁(u(t)), then the derivative of p(u(t)) is s(u(t)) • p₁(u(t)).
      declarations: [Ctrllib.hasDerivAt_reference_comp]
      proof_section: "Reference composition"
    - id: reference_velocity
      statement: If s'(u(t))=s₁(u(t)) and p₁'(u(t))=p₂(u(t)) in addition to the phase premise, then the derivative of s(u(t)) • p₁(u(t)) is s(u(t))² • p₂(u(t)) + (s₁(u(t))s(u(t))) • p₁(u(t)).
      declarations: [Ctrllib.hasDerivAt_reference_velocity]
      proof_section: "Reference velocity"
  composition: []
---
# Reference trajectory calculus

This atomic Brick groups the reusable reference trajectory calculus endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish reference trajectory calculus under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

This is a generated in-house derivation with no literature-novelty claim.

## Evidence summary

- Lean module: ReferenceCalculus in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
