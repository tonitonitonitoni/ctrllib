---
type: proof
kind: brick
brick_id: passivity_transport_algebra
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated]
lean_package: ctrllib
lean_modules: [Passivity, PassivityTransport, SkewCharP]
lean_declarations:
  - Ctrllib.mdot_sub_two_coriolis_skew
  - Ctrllib.dotProduct_mulVec_self_of_skew
  - Ctrllib.passivity_identity
  - Ctrllib.congruence_transport
  - Ctrllib.transported_skew
  - Ctrllib.transported_passivity_identity
  - Ctrllib.dotProduct_mulVec_self_of_skew_of_charP
internal_bricks: []
application_interfaces: [manipulator_passivity, coordinate_transport]
brick_level: atomic
level_reason: >-
  The outputs form one reusable passivity and transported skew algebra boundary under
  explicit theorem premises.
summary: "Congruence and coordinate-transport identities preserve the specified skew cancellation and quadratic power pairing under explicit matrix premises."
keywords: [passivity_transport_algebra, reusable_proof, formal_assurance]
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
    - id: skew_cancellation
      statement: A skew quadratic form vanishes, yielding the Mdot minus 2C cancellation.
      declarations: [Ctrllib.dotProduct_mulVec_self_of_skew]
      proof_section: "Skew cancellation"
    - id: passivity_identity
      statement: The kinetic-energy algebra reduces to the damping term under the declared skew hypothesis.
      declarations: [Ctrllib.passivity_identity]
      proof_section: "Passivity identity"
    - id: transport
      statement: Congruence transport preserves skewness and the passivity identity.
      declarations: [Ctrllib.transported_passivity_identity]
      proof_section: "Congruence transport"
    - id: characteristic_extension
      statement: The skew quadratic cancellation holds over a field of characteristic different from two.
      declarations: [Ctrllib.dotProduct_mulVec_self_of_skew_of_charP]
      proof_section: "Characteristic extension"
  composition: []
---
# Passivity and transported skew algebra

This atomic Brick groups the reusable passivity and transported skew algebra endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish passivity and transported skew algebra under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house derivation.

## Evidence summary

- Lean module: Passivity, PassivityTransport, SkewCharP in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
