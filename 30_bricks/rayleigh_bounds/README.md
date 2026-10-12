---
type: proof
kind: brick
brick_id: rayleigh_bounds
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- hornjohnson2013
lean_package: ctrllib
lean_modules:
- Rayleigh
lean_declarations:
- Ctrllib.le_dotProduct_mulVec
- Ctrllib.dotProduct_mulVec_le
- Ctrllib.rayleigh_sandwich
- Ctrllib.quadSandwich_matrix
internal_bricks: []
application_interfaces:
- lyapunov_quadratic_form
brick_level: atomic
level_reason: This record groups one reusable mathematical boundary; the listed outputs share the same typed matrices and proof interface.
summary: Hermitian finite real matrices with supplied lower and upper eigenvalue bounds satisfy the corresponding Rayleigh quadratic-form inequalities.
keywords:
- rayleigh_bounds
- linear_algebra
- reusable_proof
interface:
  inputs:
  - Typed finite-dimensional matrices, vectors, scalar fields, and theorem premises exactly as specified by the canonical declarations.
  assumptions:
  - Dimensions, symmetry, positivity, rank, differentiability, and norm hypotheses are explicit in the declarations and are not inferred here.
  - Application correspondence, numerical values, and physical realization are external interfaces.
  outputs:
  - id: lower_quadratic_bound
    statement: Every eigenvalue at least c1 implies c1 times the squared norm is below the quadratic form.
    declarations:
    - Ctrllib.le_dotProduct_mulVec
    proof_section: Eigenbasis derivation
  - id: upper_quadratic_bound
    statement: Every eigenvalue at most c2 implies the quadratic form is below c2 times the squared norm.
    declarations:
    - Ctrllib.dotProduct_mulVec_le
    proof_section: Eigenbasis derivation
  - id: rayleigh_sandwich
    statement: The extreme eigenvalues give the two-sided Rayleigh sandwich.
    declarations:
    - Ctrllib.rayleigh_sandwich
    proof_section: Extreme eigenvalues and matrix sandwich
  - id: matrix_quadratic_sandwich
    statement: Uniform eigenvalue bounds produce the QuadSandwich interface.
    declarations:
    - Ctrllib.quadSandwich_matrix
    proof_section: Extreme eigenvalues and matrix sandwich
  composition: []
---
# Rayleigh quadratic sandwich bounds

This Brick is a bounded conventional account of the named rayleigh quadratic sandwich bounds endpoints. Read [proof.md](proof.md) before generated statement pages.

## Notation

The conventional symbols, scalar fields, dimensions, and coordinate conventions are defined in proof.md and the exact Lean declarations. The Lean types are authoritative.

## Statement

Rayleigh quadratic sandwich bounds is established under the explicit theorem premises. The public guarantees are the output IDs in the manifest.

## Hypotheses

All premises used by the result are theorem arguments: finite index types, field or ring structure, rank, symmetry, positivity, and differentiability where applicable. No source-model or physical premise is silently added.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the listed algebraic or analytic implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house Lean derivation.

## Evidence summary

- Lean module: Rayleigh in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The Xylem snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Numerical conditioning, source correspondence, frame and unit conventions, physical realization, and controller acceptance remain open.

## Discrepancies and open items

Source-to-Lean coverage is classified in correspondence/source_to_lean.md. Any unresolved dimension, model, or physical correspondence obligation remains external.
