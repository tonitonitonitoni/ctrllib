---
type: proof
kind: brick
brick_id: coupled_field_dissipation
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated]
lean_package: ctrllib
lean_modules: [CoupledField, CoupledDissipation]
lean_declarations:
  - Ctrllib.CoupledState
  - Ctrllib.g2Field
  - Ctrllib.coupledEnergy
  - Ctrllib.g2Field_origin
  - Ctrllib.coupledEnergy_origin
  - Ctrllib.coupledEnergy_differentiable
  - Ctrllib.coupledEnergy_fderiv
  - Ctrllib.coupledEnergy_fderiv_field
  - Ctrllib.coupledLyapRate
  - Ctrllib.coupled_total_dissipation
  - Ctrllib.coupled_decrease
  - Ctrllib.coupled_hdec
  - Ctrllib.coupled_block_tendsto
internal_bricks: []
application_interfaces: [coupled_field_model, precompact_trajectory]
brick_level: atomic
level_reason: >-
  The outputs form one reusable coupled field energy and dissipation boundary under
  explicit theorem premises.
summary: "A supplied passivity identity cancels the interconnection terms in a coupled quadratic energy derivative, leaving the stated damping loss."
keywords: [coupled_field_dissipation, reusable_proof, formal_assurance]
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
    - id: field_derivative
      statement: The coupled field energy has the declared derivative and field-only derivative.
      declarations: [Ctrllib.coupledEnergy_fderiv_field]
      proof_section: "Field derivative"
    - id: dissipation
      statement: Under the passivity hypothesis, the total Lyapunov rate equals the negative dissipative quadratic term.
      declarations: [Ctrllib.coupled_total_dissipation]
      proof_section: "Total dissipation"
    - id: decrease
      statement: The coupled Lyapunov rate is nonpositive under nonnegative damping.
      declarations: [Ctrllib.coupled_decrease]
      proof_section: "Total dissipation"
    - id: convergence_ceiling
      statement: With supplied real/field convergence and precompactness hypotheses, the coupled block tends to zero.
      declarations: [Ctrllib.coupled_block_tendsto]
      proof_section: "Convergence ceiling"
  composition: []
---
# Coupled field energy and dissipation

This atomic Brick groups the reusable coupled field energy and dissipation endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish coupled field energy and dissipation under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house derivation.

## Evidence summary

- Lean module: CoupledField, CoupledDissipation in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
