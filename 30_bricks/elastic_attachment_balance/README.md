---
type: proof
kind: brick
brick_id: elastic_attachment_balance
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ElasticAttachment]
lean_declarations:
  - Ctrllib.attachmentStorage
  - Ctrllib.attachmentForce
  - Ctrllib.hasDerivAt_attachment_map
  - Ctrllib.hasDerivAt_attachment_deformation
  - Ctrllib.attachment_port_power_cancel
  - Ctrllib.attachmentStorage_hasDerivAt
  - Ctrllib.elasticAttachment_energy_hasDerivAt
  - Ctrllib.elasticAttachment_total_balance
  - Ctrllib.elasticAttachment_total_balance_le_external
  - Ctrllib.elasticAttachment_total_deriv_le_external
  - Ctrllib.attachmentStorage_nonneg
internal_bricks: []
application_interfaces: [elastic_attachment_model, external_power]
brick_level: atomic
level_reason: >-
  The outputs form one reusable elastic attachment energy balance boundary under
  explicit theorem premises.
summary: "The declared elastic attachment and rigid subsystem exchange equal and opposite port power; total stored energy changes by external power minus damping."
keywords: [elastic_attachment_balance, reusable_proof, formal_assurance]
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
    - id: port_cancellation
      statement: Attachment force and deformation power cancel between the two ports.
      declarations: [Ctrllib.attachment_port_power_cancel]
      proof_section: "Port cancellation"
    - id: attachment_storage
      statement: The attachment storage derivative equals the declared internal port power.
      declarations: [Ctrllib.attachmentStorage_hasDerivAt]
      proof_section: "Port cancellation"
    - id: total_balance
      statement: The lumped plus attachment total energy has the supplied external-power balance.
      declarations: [Ctrllib.elasticAttachment_total_balance]
      proof_section: "Total balance and bound"
    - id: external_power_bound
      statement: Nonnegative damping bounds total derivative by external power.
      declarations: [Ctrllib.elasticAttachment_total_deriv_le_external]
      proof_section: "Total balance and bound"
    - id: storage_nonnegative
      statement: Positive semidefinite attachment stiffness makes attachment storage nonnegative.
      declarations: [Ctrllib.attachmentStorage_nonneg]
      proof_section: "Total balance and bound"
  composition: []
---
# Elastic attachment energy balance

This atomic Brick groups the reusable elastic attachment energy balance endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish elastic attachment energy balance under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

This is a generated in-house derivation with no literature-novelty claim.

## Evidence summary

- Lean module: ElasticAttachment in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
