---
type: proof
kind: brick
brick_id: matrix_com_attractivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: [ComLaSalleMatrix]
lean_declarations: [Ctrllib.euclideanCLM_self_adjoint, Ctrllib.euclideanCLM_inv, Ctrllib.euclideanCLM_dotProduct_nonneg, Ctrllib.euclideanCLM_dotProduct_def, Ctrllib.euclideanCLM_injective, Ctrllib.com_attractive_matrix]
internal_bricks: [lasalle_flow_engine, euclidean_operator_bounds]
application_interfaces: [matrix_center_of_mass_flow, positive_definite_metric]
brick_level: composite
level_reason: >-
  The record discharges the matrix operator premises of the abstract
  center-of-mass attractivity theorem and then invokes that theorem.
summary: >-
  Self-adjoint positive-definite matrix maps provide the metric, injectivity,
  and nonnegative pairing premises needed for center-of-mass attractivity.
keywords: [center_of_mass, matrix, attractivity, self_adjoint]
interface:
  inputs:
    - "A positive-definite matrix and a supplied center-of-mass flow solution."
    - "The forward-precompactness and derivative premises required by the abstract attractivity endpoint."
  assumptions:
    - "The matrix is self-adjoint and invertible under the exact finite-dimensional hypotheses."
  outputs:
    - id: matrix_operator_facts
      statement: "The matrix map is self-adjoint, injective, invertible, and has nonnegative induced pairing."
      declarations: [Ctrllib.euclideanCLM_self_adjoint, Ctrllib.euclideanCLM_inv, Ctrllib.euclideanCLM_dotProduct_nonneg, Ctrllib.euclideanCLM_dotProduct_def, Ctrllib.euclideanCLM_injective]
      proof_section: "Matrix premises"
    - id: com_attraction
      statement: "The matrix-specialized center-of-mass trajectory is attractive under the abstract flow premises."
      declarations: [Ctrllib.com_attractive_matrix]
      proof_section: "Attractivity conclusion"
  composition:
    - uses: [Ctrllib.euclideanCLM_self_adjoint, Ctrllib.euclideanCLM_dotProduct_nonneg, Ctrllib.euclideanCLM_injective]
      establishes: Ctrllib.com_attractive_matrix
      explanation: "The matrix facts discharge the operator premises of the abstract center-of-mass attractivity theorem."
---

# Matrix center-of-mass attractivity


## Notation

The matrix map $P$ defines the center-of-mass metric pairing
$\langle Px,x\rangle$. Positive definiteness supplies a coercive metric.

## Statement

The Brick specializes abstract center-of-mass attractivity to the matrix
operator interface.

## Hypotheses

Matrix positivity, flow-solution, derivative, and forward-precompactness
premises are explicit.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded matrix-specialized attractivity implication. It
does not establish physical center-of-mass modeling or trajectory existence.

## Sources

This is a project-generated specialization in ComLaSalleMatrix.lean; no
external novelty claim is made.

## Evidence summary

Lean module: ctrllib/Ctrllib/ComLaSalleMatrix.lean. Declaration: the manifest
selects operator facts and com_attractive_matrix. Acceptance: mathematical
acceptance is not claimed; status is given_assumptions. Axiom: current Xylem
capture reports the standard profile. Encodes: matrix discharge of abstract
center-of-mass attractivity premises.

## Limitations

The abstract flow, solution, and precompactness obligations remain. Matrix
positivity does not by itself identify a physical center of mass.

## Discrepancies and open items

No discrepancy was found in the inspected declarations and bodies. The
application must provide the model correspondence for its matrix metric.
