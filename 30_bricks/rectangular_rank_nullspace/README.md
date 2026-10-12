---
type: proof
kind: brick
brick_id: rectangular_rank_nullspace
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [hornjohnson2013]
lean_package: ctrllib
lean_modules: [SingularValueInterface]
lean_declarations:
  - Ctrllib.sigmaSixEuclid
  - Ctrllib.sigmaSixEuclid_pos_iff_finrank_range_eq_six
  - Ctrllib.sigmaSixEuclid_pos_implies_finrank_ker_eq_one
  - Ctrllib.sigmaSixEuclid_pos_implies_exists_nonzero_kernel
  - Ctrllib.sigmaSixEuclid_kernel_spanned_by
  - Ctrllib.sigmaSixEuclid_smul_pos_iff
  - Ctrllib.smul_mulVec_eq_zero_iff
internal_bricks: []
application_interfaces: [rectangular_task_map, null_direction]
brick_level: atomic
level_reason: >-
  This record groups one reusable mathematical boundary; the listed outputs
  share the same typed matrices and proof interface.
summary: "A full-row-rank rectangular map has a positive-definite row Gram matrix and a surjective action, with the stated nullspace dimension and kernel witness."
keywords: [rectangular_rank_nullspace, linear_algebra, reusable_proof]
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
    - id: full_row_rank
      statement: For a 6 by 7 Euclidean matrix, positive sigmaSixEuclid is equivalent to range dimension six.
      declarations: [Ctrllib.sigmaSixEuclid_pos_iff_finrank_range_eq_six]
      proof_section: "Full row rank"
    - id: nullity_one
      statement: Positive sigmaSixEuclid gives a one-dimensional kernel and a nonzero kernel witness.
      declarations: [Ctrllib.sigmaSixEuclid_pos_implies_finrank_ker_eq_one]
      proof_section: "Nullity one"
    - id: kernel_span
      statement: Any kernel vector is a scalar multiple of a supplied nonzero kernel vector.
      declarations: [Ctrllib.sigmaSixEuclid_kernel_spanned_by]
      proof_section: "Kernel spanning"
    - id: scaling_kernel
      statement: Nonzero scalar scaling preserves the rectangular zero-set and rank decision.
      declarations: [Ctrllib.sigmaSixEuclid_smul_pos_iff]
      proof_section: "Scaling"
  composition: []
---
# Rectangular rank and nullspace consequences

This Brick is a bounded conventional account of the named rectangular rank and nullspace consequences endpoints. Read [proof.md](proof.md) before generated statement pages.

## Notation

The conventional symbols, scalar fields, dimensions, and coordinate conventions are defined in proof.md and the exact Lean declarations. The Lean types are authoritative.

## Statement

Rectangular rank and nullspace consequences is established under the explicit theorem premises. The public guarantees are the output IDs in the manifest.

## Hypotheses

All premises used by the result are theorem arguments: finite index types, field or ring structure, rank, symmetry, positivity, and differentiability where applicable. No source-model or physical premise is silently added.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the listed algebraic or analytic implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house Lean derivation.

## Evidence summary

- Lean module: SingularValueInterface in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The Xylem snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Numerical conditioning, source correspondence, frame and unit conventions, physical realization, and controller acceptance remain open.

## Discrepancies and open items

Source-to-Lean coverage is classified in correspondence/source_to_lean.md. Any unresolved dimension, model, or physical correspondence obligation remains external.
