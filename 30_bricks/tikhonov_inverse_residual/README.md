---
type: proof
kind: brick
brick_id: tikhonov_inverse_residual
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [hornjohnson2013]
lean_package: ctrllib
lean_modules: [TikhonovInverseDifference]
lean_declarations:
  - Ctrllib.inv_eq_of_svd
  - Ctrllib.tikhonov_inverse_eq_of_svd
  - Ctrllib.tikhonov_inverse_difference_factor
  - Ctrllib.tikhonov_inverse_difference_norm_bound
internal_bricks: []
application_interfaces: [regularized_inverse, singularity_margin]
brick_level: atomic
level_reason: >-
  The outputs form one reusable tikhonov inverse residual bound boundary under
  explicit theorem premises.
summary: >-
  Tikhonov inverse residual bound with exact Lean premises and a conventional derivation that keeps
  source-model, numerical, and physical claims outside the formal endpoint.
keywords: [tikhonov_inverse_residual, reusable_proof, formal_assurance]
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
    - id: inverse_factor
      statement: An indexed orthogonal SVD factors exact inverse minus damped inverse.
      declarations: [Ctrllib.tikhonov_inverse_difference_factor]
      proof_section: "Residual factorization"
    - id: inverse_bound
      statement: If singular values are bounded below by delta, the residual norm is at most lambda divided by delta cubed.
      declarations: [Ctrllib.tikhonov_inverse_difference_norm_bound]
      proof_section: "Residual norm bound"
  composition: []
---
# Tikhonov inverse residual bound

This atomic Brick groups the reusable tikhonov inverse residual bound endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish tikhonov inverse residual bound under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house derivation.

## Evidence summary

- Lean module: TikhonovInverseDifference in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
