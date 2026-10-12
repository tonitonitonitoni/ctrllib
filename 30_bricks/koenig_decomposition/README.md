---
type: proof
kind: brick
brick_id: koenig_decomposition
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- giordano2019coordinated
lean_package: ctrllib
lean_modules:
- KoenigDecomposition
lean_declarations:
- Ctrllib.com_cross_term_zero
- Ctrllib.koenig_inertia_bilinear
- Ctrllib.koenig_kinetic_split
- Ctrllib.koenig_energy_split
internal_bricks: []
application_interfaces:
- This is finite-sum inner-product algebra. Physical mass identification, coordinate transformations and
  derivative/Coriolis conclusions require separate correspondence.
brick_level: atomic
level_reason: One reusable mathematical interface, with its defining identity and immediate consequences.
summary: A balanced finite family of relative velocities has no translational cross term and admits a
  polarized and kinetic-energy decomposition.
keywords:
- koenig_decomposition
- KoenigDecomposition
interface:
  inputs:
  - A real inner-product space E, a finite index set S, real weights m_i, and vectors v, v_prime, w_i,
    w_prime_i in E.
  assumptions:
  - $\sum_{i\in S}m_iw_i=0$; the polarized identity also requires $\sum_{i\in S}m_iw_i^\prime=0$.
  - The weights are arbitrary reals. Positivity, nonzero total mass and finite-dimensionality of E are
    not required for these algebraic identities.
  outputs:
  - id: cross_term
    statement: $\sum_i m_i\langle v,w_i\rangle=0$ for a balanced relative field.
    declarations:
    - Ctrllib.com_cross_term_zero
    proof_section: Cancellation of the cross term
  - id: polarized_split
    statement: $\sum_i m_i\langle v+w_i,v^\prime+w_i^\prime\rangle=(\sum_i m_i)\langle v,v^\prime\rangle+\sum_i
      m_i\langle w_i,w_i^\prime\rangle$.
    declarations:
    - Ctrllib.koenig_inertia_bilinear
    proof_section: Polarized decomposition
  - id: kinetic_split
    statement: $\sum_i m_i\|v+w_i\|^2=(\sum_i m_i)\|v\|^2+\sum_i m_i\|w_i\|^2$; multiplying by one half
      gives the energy split.
    declarations:
    - Ctrllib.koenig_kinetic_split
    - Ctrllib.koenig_energy_split
    proof_section: Kinetic and energy forms
  composition: []
---

# König kinetic-energy decomposition

A balanced finite family of relative velocities has no translational cross term and admits a polarized and kinetic-energy decomposition.

## Notation

Type: vectors in an arbitrary real inner-product space; dimension is not restricted. Lean finite sums run over a Finset. Frame: all physical velocity interpretations require a common frame. Sign: weights may be signed in the formal algebra. Units: interpreting weights as masses and vectors as velocities is external to the untyped-real formalization.

See the [notation record](correspondence/notation.md) and [conventional proof](proof.md).

## Statement

$\sum_i m_i\langle v,w_i\rangle=0$ for a balanced relative field.

$\sum_i m_i\langle v+w_i,v^\prime+w_i^\prime\rangle=(\sum_i m_i)\langle v,v^\prime\rangle+\sum_i m_i\langle w_i,w_i^\prime\rangle$.

$\sum_i m_i\|v+w_i\|^2=(\sum_i m_i)\|v\|^2+\sum_i m_i\|w_i\|^2$; multiplying by one half gives the energy split.

## Hypotheses

$\sum_{i\in S}m_iw_i=0$; the polarized identity also requires $\sum_{i\in S}m_iw_i^\prime=0$.

The weights are arbitrary reals. Positivity, nonzero total mass and finite-dimensionality of E are not required for these algebraic identities.

## Proof

The [conventional derivation](proof.md) defines the objects and derives every public output.
The [exact declaration map](correspondence/source_to_lean.md) identifies its formal endpoints.

## What the result establishes and does not

This is finite-sum inner-product algebra. Physical mass identification, coordinate transformations and derivative/Coriolis conclusions require separate correspondence.

## Sources

This is a project derivation of the existing canonical module `KoenigDecomposition`; the label makes no literature-novelty claim.
The module records König’s second theorem as background and cites Giordano 2019 equations (19), (21) and (22a) for its application context. Those source-model identifications are not reverified by this packaging pass.

## Evidence summary

| Item | Evidence |
| --- | --- |
| Lean module | `Ctrllib.KoenigDecomposition` |
| Declaration | Public identities are listed in the manifest and correspondence record. |
| Acceptance | Mathematical acceptance is not claimed; the user owns that decision. |
| Axiom | The selected capture records only the standard project axioms for these endpoints. |
| Encodes | A balanced finite family of relative velocities has no translational cross term and admits a polarized and kinetic-energy decomposition. |


## Limitations

This is finite-sum inner-product algebra. Physical mass identification, coordinate transformations and derivative/Coriolis conclusions require separate correspondence.

## Discrepancies and open items

The formal/conventional boundary and remaining application obligations are recorded in
[the discrepancy record](correspondence/discrepancies.md). Application and scientific acceptance remain open.
