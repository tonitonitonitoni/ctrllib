---
type: proof
kind: brick
brick_id: smallest_singular_value
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated, hornjohnson2013]
lean_package: ctrllib
lean_modules: [SigmaMinDet, SingularValueInterface]
lean_declarations:
  - Ctrllib.sigmaMinEuclid
  - Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero
  - Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos
  - Ctrllib.sigmaMinSquareEuclid
  - Ctrllib.sigmaMinSquareEuclid_fin6_eq
  - Ctrllib.sigmaMinSquareEuclid_pos_iff_det_ne_zero
  - Ctrllib.sigmaMinSquareEuclid_smul_pos_iff
  - Ctrllib.lowerGainBound_of_comparison
  - Ctrllib.leastGain_le_of_comparison
internal_bricks: [coordinated_invertibility]
application_interfaces: [singular_value_condition, euclidean_gain]
brick_level: composite
level_reason: >-
  This record groups one reusable mathematical boundary; the listed outputs
  share the same typed matrices and proof interface.
summary: "Finite orthogonal singular-value decompositions connect the least singular value, injectivity, determinant nonsingularity, and matrix gain bounds under their explicit premises."
keywords: [smallest_singular_value, linear_algebra, reusable_proof]
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
    - id: square_singular_value
      statement: The last singular value of a nonempty square Euclidean matrix is positive exactly when its determinant is nonzero.
      declarations: [Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero]
      proof_section: "Square singular value"
    - id: square_gain_comparison
      statement: A supplied Euclidean lower-gain comparison transfers a nonnegative bound from Gamma to J and orders least gains.
      declarations: [Ctrllib.lowerGainBound_of_comparison]
      proof_section: "Gain comparison"
    - id: coordinated_singular_region
      statement: The concrete six-dimensional smallest singular value is equivalent to coordinated-transform invertibility.
      declarations: [Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos]
      proof_section: "Concrete coordinated bridge"
  composition:
    - uses: [Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero]
      establishes: Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos
      explanation: The concrete sigma-min theorem supplies the hsvd premise to the coordinated unit equivalence.
---
# Smallest singular value and gain comparison

This Brick is a bounded conventional account of the named smallest singular value and gain comparison endpoints. Read [proof.md](proof.md) before generated statement pages.

## Notation

The conventional symbols, scalar fields, dimensions, and coordinate conventions are defined in proof.md and the exact Lean declarations. The Lean types are authoritative.

## Statement

Smallest singular value and gain comparison is established under the explicit theorem premises. The public guarantees are the output IDs in the manifest.

## Hypotheses

All premises used by the result are theorem arguments: finite index types, field or ring structure, rank, symmetry, positivity, and differentiability where applicable. No source-model or physical premise is silently added.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the listed algebraic or analytic implications for the exact Lean objects. It does not establish source-model identity, numerical agreement, controller realization, physical behavior, or engineering acceptance.

## Sources

The listed bibliography entries provide contextual mathematical or application references; the endpoint proof is an in-house Lean derivation.

## Evidence summary

- Lean module: SigmaMinDet, SingularValueInterface in the ctrllib package.
- Declaration: the exact public declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded declaration snapshot has no sorryAx for these endpoints.
- Encodes: the typed mathematical implications stated by the output mappings.

The Xylem snapshot is navigation evidence; no fresh build is claimed.

## Limitations

The theorem boundary supplies mathematical facts only. Numerical conditioning, source correspondence, frame and unit conventions, physical realization, and controller acceptance remain open.

## Discrepancies and open items

Source-to-Lean coverage is classified in correspondence/source_to_lean.md. Any unresolved dimension, model, or physical correspondence obligation remains external.
