---
type: proof
kind: brick
brick_id: manipulator_energy_balance
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ManipulatorEnergy]
lean_declarations:
  - Ctrllib.manipulatorEnergy
  - Ctrllib.hasDerivAt_inertia_of_configuration
  - Ctrllib.manipulatorEnergy_path_hasDerivAt
  - Ctrllib.manipulator_kinetic_skew_identity
  - Ctrllib.manipulator_power_identity
  - Ctrllib.manipulatorEnergy_hasDerivAt
  - Ctrllib.manipulatorEnergy_deriv_le_power
  - Ctrllib.manipulatorEnergy_nonneg
internal_bricks: []
application_interfaces: [manipulator_dynamics, external_wrench_power]
brick_level: atomic
level_reason: >-
  The outputs form one reusable variable-inertia manipulator energy balance boundary under
  explicit theorem premises.
summary: "The supplied variable-inertia dynamics and skew identity give the kinetic-plus-potential power balance and damping inequality."
keywords: [manipulator_energy_balance, reusable_proof, formal_assurance]
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
    - id: energy_derivative
      statement: Along a supplied differentiable configuration path, manipulator energy derivative equals supplied power minus damping loss.
      declarations: [Ctrllib.manipulatorEnergy_hasDerivAt]
      proof_section: "Derivative and skew identity"
    - id: skew_power_identity
      statement: The declared variable-inertia skew identity cancels kinetic and Coriolis terms.
      declarations: [Ctrllib.manipulator_power_identity]
      proof_section: "Derivative and skew identity"
    - id: power_bound
      statement: Nonnegative damping bounds energy derivative by external generalized power.
      declarations: [Ctrllib.manipulatorEnergy_deriv_le_power]
      proof_section: "Power bound and sign"
    - id: energy_nonnegative
      statement: Positive semidefinite inertia and potential terms make energy nonnegative.
      declarations: [Ctrllib.manipulatorEnergy_nonneg]
      proof_section: "Power bound and sign"
  composition: []
---
# Variable-inertia manipulator energy balance

This atomic Brick groups the reusable variable-inertia manipulator energy balance endpoints. Read the complete [conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish variable-inertia manipulator energy balance under their explicit theorem premises.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

This is a generated in-house derivation with no literature-novelty claim.

## Evidence summary

- Lean module: ManipulatorEnergy in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
