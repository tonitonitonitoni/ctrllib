---
type: proof
kind: brick
brick_id: forced_impedance_balance
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ForcedImpedance, IntegratedEnergy]
lean_declarations:
  - Ctrllib.ForcedImpedanceCoord
  - Ctrllib.forcedImpedanceEnergy
  - Ctrllib.forcedImpedanceEnergy_eq_blockLyap
  - Ctrllib.forcedImpedance_energy_path_hasDerivAt
  - Ctrllib.forcedImpedance_energy_hasDerivAt
  - Ctrllib.forcedImpedanceEnergy_nonneg
  - Ctrllib.forcedImpedance_energy_deriv_le_power
  - Ctrllib.integrated_storage_le_power
  - Ctrllib.forcedImpedanceExternalPower
  - Ctrllib.forcedImpedanceDampingPower
  - Ctrllib.forcedImpedance_energy_le_integrated_power
internal_bricks: []
application_interfaces: [forced_impedance_model, external_power]
brick_level: composite
level_reason: >-
  The local mechanical derivative and generic scalar integration theorem
  combine to establish the finite-horizon forced-impedance power bound.
summary: "For constant symmetric mass and stiffness matrices, the supplied forced impedance equation gives an exact local storage derivative and local and integrated power inequalities under PSD damping."
keywords: [forced_impedance_balance, reusable_proof, formal_assurance]
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
    - id: storage_identity
      statement: The forced impedance storage is the block Lyapunov quadratic.
      declarations: [Ctrllib.forcedImpedanceEnergy_eq_blockLyap]
      proof_section: "Storage"
    - id: energy_derivative
      statement: Along a supplied differentiable path, storage derivative equals velocity power minus damping loss.
      declarations: [Ctrllib.forcedImpedance_energy_hasDerivAt]
      proof_section: "Derivative"
    - id: power_bound
      statement: With nonnegative damping, the storage derivative is bounded by external power.
      declarations: [Ctrllib.forcedImpedance_energy_deriv_le_power]
      proof_section: "Power bound and storage sign"
    - id: storage_nonnegative
      statement: Positive semidefinite mass and stiffness make storage nonnegative.
      declarations: [Ctrllib.forcedImpedanceEnergy_nonneg]
      proof_section: "Power bound and storage sign"
    - id: integrated_power
      statement: "A continuous storage derivative bounded by continuous power gives V(T)-V(0) <= the integral of power; the supplied forced-impedance trajectory realizes this bound with power v dot f."
      declarations: [Ctrllib.integrated_storage_le_power, Ctrllib.forcedImpedance_energy_le_integrated_power]
      proof_section: "Integrated power bound"
  composition:
    - uses: [Ctrllib.integrated_storage_le_power, Ctrllib.forcedImpedance_energy_hasDerivAt]
      establishes: Ctrllib.forcedImpedance_energy_le_integrated_power
      explanation: "The local energy identity supplies a continuous derivative bounded by external power; the scalar integration theorem supplies the finite-horizon inequality."
---
# Forced impedance energy balance

This composite Brick connects the local forced-impedance energy identity to
a finite-horizon integrated power bound. Read the complete
[conventional derivation](proof.md) before generated statement pages.

## Notation

The symbols, dimensions, frames, signs, and units are defined in proof.md and the exact canonical declarations. Lean types are authoritative.

## Statement

The listed endpoints establish forced impedance energy balance under their explicit theorem premises.
The integrated endpoint gives $V(T)-V(0)\le\int_0^T v^\mathsf{T}f\,dt$
for $T\ge0$ under the stated trajectory regularity and PSD damping.

## Hypotheses

Finite-dimensional structure and every algebraic or analytic premise are supplied by theorem arguments. Model, controller, source, numerical, and physical correspondence are separate assumptions.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named mathematical implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

This is a generated in-house derivation with no literature-novelty claim.

## Evidence summary

- Lean modules: ForcedImpedance and IntegratedEnergy in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The integrated extension passed its narrow Lean 4.34.0 check on 16 September.
Both new theorem endpoints use only `propext`, `Classical.choice`, and

## Limitations

The theorem boundary supplies mathematical facts only. Frame, unit, source, numerical, controller, and physical realization obligations remain external.

## Discrepancies and open items

Source-to-Lean coverage and unresolved obligations are recorded in correspondence/source_to_lean.md and correspondence/discrepancies.md.
