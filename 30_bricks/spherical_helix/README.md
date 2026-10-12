---
type: proof
kind: brick
brick_id: spherical_helix
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules:
- SphericalHelix
lean_declarations:
- Ctrllib.sphericalHelixD1_sq_sum
- Ctrllib.sphericalHelixD1_sq_sum_pos
internal_bricks: []
application_interfaces:
- The formal results concern explicit coordinate squares. A HasDerivAt/PiLp bridge, controller correspondence
  and physical feasibility are not supplied.
brick_level: atomic
level_reason: One reusable mathematical interface, with its defining identity and immediate consequences.
summary: An explicit spherical-helix coordinate vector has a closed squared-speed formula and is nonzero
  under positive radius and nonzero elevation rate.
keywords:
- spherical_helix
- SphericalHelix
interface:
  inputs:
  - Real parameters R, a, phi_0, b and phase u; a centre c in the raw three-coordinate real function space.
  assumptions:
  - The squared-sum identity holds for all real parameters.
  - Strict positivity requires R > 0 and b != 0; no condition on a is needed.
  outputs:
  - id: squared_speed
    statement: $\sum_{i=1}^3 v_i(u)^2=R^2(b^2+a^2\cos^2(\phi_0+bu))$ for the explicitly defined coordinate
      vector $v$.
    declarations:
    - Ctrllib.sphericalHelixD1_sq_sum
    proof_section: Squared coordinate speed
  - id: nonzero_speed
    statement: If $R>0$ and $b\ne0$, then $\sum_i v_i(u)^2>0$ for every phase $u$.
    declarations:
    - Ctrllib.sphericalHelixD1_sq_sum_pos
    proof_section: Strict positivity
  composition: []
---

# Spherical-helix coordinate speed

An explicit spherical-helix coordinate vector has a closed squared-speed formula and is nonzero under positive radius and nonzero elevation rate.

## Notation

Type and dimension: three real coordinates (`Fin 3 → ℝ` in Lean). The centre is translated componentwise. Frame: a fixed coordinate frame is assumed for interpretation; no physical frame is identified. Sign: a and b are signed phase rates. Units: the formal scalars are untyped reals; an application must choose consistent length and phase units.

See the [notation record](correspondence/notation.md) and [conventional proof](proof.md).

## Statement

$\sum_{i=1}^3 v_i(u)^2=R^2(b^2+a^2\cos^2(\phi_0+bu))$ for the explicitly defined coordinate vector $v$.

If $R>0$ and $b\ne0$, then $\sum_i v_i(u)^2>0$ for every phase $u$.

## Hypotheses

The squared-sum identity holds for all real parameters.

Strict positivity requires R > 0 and b != 0; no condition on a is needed.

## Proof

The [conventional derivation](proof.md) defines the objects and derives every public output.
The [exact declaration map](correspondence/source_to_lean.md) identifies its formal endpoints.

## What the result establishes and does not

The formal results concern explicit coordinate squares. A HasDerivAt/PiLp bridge, controller correspondence and physical feasibility are not supplied.

## Sources

This is a project derivation of the existing canonical module `SphericalHelix`; the label makes no literature-novelty claim.


## Evidence summary

| Item | Evidence |
| --- | --- |
| Lean module | `Ctrllib.SphericalHelix` |
| Declaration | Public identities are listed in the manifest and correspondence record. |
| Acceptance | Mathematical acceptance is not claimed; the user owns that decision. |
| Axiom | The selected capture records only the standard project axioms for these endpoints. |
| Encodes | An explicit spherical-helix coordinate vector has a closed squared-speed formula and is nonzero under positive radius and nonzero elevation rate. |


## Limitations

The formal results concern explicit coordinate squares. A HasDerivAt/PiLp bridge, controller correspondence and physical feasibility are not supplied.

## Discrepancies and open items

The formal/conventional boundary and remaining application obligations are recorded in
[the discrepancy record](correspondence/discrepancies.md). Application and scientific acceptance remain open.
