---
type: proof
kind: brick
brick_id: coupled_lasalle_specialization
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated]
lean_package: ctrllib
lean_modules: [CoupledCollapse, CoupledCollapseMatrix, CoupledSandwich]
lean_declarations:
  - Ctrllib.coupled_collapse
  - Ctrllib.coupled_attractive
  - Ctrllib.coupled_velocity_tendsto
  - Ctrllib.euclideanCLM_adjoint
  - Ctrllib.euclideanCLM_passivity
  - Ctrllib.euclideanCLM_injective_of_isUnit
  - Ctrllib.euclideanCLM_stiffness_injective
  - Ctrllib.gamma_jacobian_mulVec_injective
  - Ctrllib.coupled_attractive_matrix
  - Ctrllib.isClassKInfinity_sq
  - Ctrllib.blockLyap_classKInfinity_sandwich
  - Ctrllib.blockLyap_hsand
internal_bricks: [coupled_field_dissipation, coordinated_invertibility, stiffness_residual]
application_interfaces: [coupled_lasalle_flow, precompact_trajectory]
brick_level: composite
level_reason: >-
  The outputs form one reusable coupled lasalle collapse specialization boundary under
  explicit theorem premises.
summary: "Under supplied flow, precompactness, passivity, and injectivity premises, the coupled zero-dissipation invariant set collapses to the origin and yields attractivity."
keywords: [coupled_lasalle_specialization, reusable_proof, formal_assurance]
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
    - id: invariant_collapse
      statement: The largest invariant subset of the zero-dissipation set is the origin under the stated injectivity premises.
      declarations: [Ctrllib.coupled_collapse]
      proof_section: "Invariant collapse"
    - id: attractivity
      statement: The coupled state tends to the origin under the supplied flow and precompactness hypotheses.
      declarations: [Ctrllib.coupled_attractive]
      proof_section: "Invariant collapse"
    - id: matrix_specialization
      statement: The Euclidean coupled matrix has the declared passivity and injectivity consequences.
      declarations: [Ctrllib.coupled_attractive_matrix]
      proof_section: "Matrix specialization"
    - id: lower_sandwich
      statement: The block Lyapunov function has the lower class-K sandwich hsand.
      declarations: [Ctrllib.blockLyap_hsand]
      proof_section: "Lower sandwich"
  composition:
    - uses: [Ctrllib.coupled_collapse]
      establishes: Ctrllib.coupled_attractive
      explanation: The attractivity endpoint applies the invariant-collapse conclusion under its additional flow and precompactness premises.
    - uses: [Ctrllib.blockLyap_classKInfinity_sandwich]
      establishes: Ctrllib.blockLyap_hsand
      explanation: The lower sandwich endpoint is the class-K consequence; the strict hdi side remains outside this record.
---
# Coupled LaSalle collapse specialization

This composite Brick groups the reusable coupled lasalle collapse specialization endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish coupled lasalle collapse specialization under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house derivation.

## Evidence summary

- Lean module: CoupledCollapse, CoupledCollapseMatrix, CoupledSandwich in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
