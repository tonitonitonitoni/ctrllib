---
type: proof
kind: brick
brick_id: comparison_functions
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [khalil2002nonlinear]
lean_package: ctrllib
lean_modules: [ComparisonFunctions]
lean_declarations: [Ctrllib.IsClassK, Ctrllib.IsClassKInfinity, Ctrllib.IsClassKL, Ctrllib.classKInv, Ctrllib.isClassK_id, Ctrllib.isClassKInfinity_id, Ctrllib.IsClassK.monotoneOn, Ctrllib.IsClassK.nonneg, Ctrllib.IsClassK.pos_of_pos, Ctrllib.IsClassK.mapsTo, Ctrllib.IsClassK.eq_zero_iff, Ctrllib.IsClassK.const_mul, Ctrllib.IsClassK.comp, Ctrllib.IsClassK.add, Ctrllib.IsClassK.min, Ctrllib.IsClassK.max, Ctrllib.IsClassKInfinity.const_mul, Ctrllib.IsClassKInfinity.comp, Ctrllib.IsClassKInfinity.surjOn, Ctrllib.IsClassKInfinity.bijOn, Ctrllib.IsClassKInfinity.classKInv_leftInvOn, Ctrllib.IsClassKInfinity.classKInv_rightInvOn, Ctrllib.IsClassKInfinity.classKInv_isClassKInfinity, Ctrllib.IsClassKL.nonneg]
internal_bricks: []
application_interfaces: [class_k_sandwich]
brick_level: atomic
level_reason: >-
  This is a reusable comparison-function interface. Its closure and inverse
  lemmas support later stability and cascade records without proving an
  application connection.
summary: >-
  Class-K, class-K-infinity, and class-KL functions on the nonnegative ray
  have the monotonicity, closure, bijection, and inverse properties needed by
  Lyapunov comparison arguments.
keywords: [class_K, class_K_infinity, class_KL, comparison_functions, inverse]
interface:
  inputs:
    - "Functions on the real line, with their properties asserted on [0, infinity)."
  assumptions:
    - "Class-K continuity, strict increase, and zero-at-origin premises are explicit in IsClassK."
    - "Class-K-infinity adds divergence to infinity; class-KL uses strict decrease and convergence in its second argument."
  outputs:
    - id: classes
      statement: "The three comparison-function classes are represented with their ray restrictions."
      declarations: [Ctrllib.IsClassK, Ctrllib.IsClassKInfinity, Ctrllib.IsClassKL]
      proof_section: "Definitions and ray properties"
    - id: ray_properties
      statement: "Class-K functions preserve order and sign on the nonnegative ray, with zero only at the origin."
      declarations: [Ctrllib.IsClassK.monotoneOn, Ctrllib.IsClassK.nonneg, Ctrllib.IsClassK.pos_of_pos, Ctrllib.IsClassK.mapsTo, Ctrllib.IsClassK.eq_zero_iff]
      proof_section: "Definitions and ray properties"
    - id: closure
      statement: "The class-K and class-K-infinity classes are closed under the listed positive scaling and composition operations."
      declarations: [Ctrllib.IsClassK.const_mul, Ctrllib.IsClassK.comp, Ctrllib.IsClassK.add, Ctrllib.IsClassK.min, Ctrllib.IsClassK.max, Ctrllib.IsClassKInfinity.const_mul, Ctrllib.IsClassKInfinity.comp]
      proof_section: "Closure operations"
    - id: inverse
      statement: "A class-K-infinity function is a bijection of the nonnegative ray and its ray inverse is class-K-infinity."
      declarations: [Ctrllib.IsClassKInfinity.surjOn, Ctrllib.IsClassKInfinity.bijOn, Ctrllib.classKInv, Ctrllib.IsClassKInfinity.classKInv_leftInvOn, Ctrllib.IsClassKInfinity.classKInv_rightInvOn, Ctrllib.IsClassKInfinity.classKInv_isClassKInfinity]
      proof_section: "Ray inverse"
    - id: kl_sign
      statement: "A class-KL function is nonnegative on the closed first quadrant."
      declarations: [Ctrllib.IsClassKL.nonneg]
      proof_section: "Class-KL sign"
  composition: []
---

# Comparison functions


## Notation

The carrier is `ℝ → ℝ`, while all defining properties are restricted to
`Ici 0 = [0,∞)`. `classKInv f` denotes the inverse of a class-K-infinity
function on that ray.

## Statement

The module defines the classes $\mathcal{K}$, $\mathcal{K}_\infty$, and
$\mathcal{K}\mathcal{L}$ and proves their ray order,
sign, closure, and inverse properties.

## Hypotheses

The hypotheses are exactly the fields of the three structures. No physical
state, norm, frame, unit, controller, or trajectory is present.

## Proof

See [proof.md](proof.md) for the complete conventional derivation.

## What the result establishes and does not

It establishes the encoded comparison-function implications. It does not
establish a Lyapunov inequality or an application correspondence.

## Sources

The class definitions follow the project records of Khalil, *Nonlinear
Systems*, 3rd ed. (2002), Definitions 4.2–4.3, and the Panteley source
notation recorded in the module header. The formal closure and inverse results
are project derivations.

## Evidence summary

Lean module: ctrllib/Ctrllib/ComparisonFunctions.lean. Declaration: the
manifest inventory records the selected public structures and endpoints.
Acceptance: mathematical acceptance is not claimed; status is
given_assumptions. Axiom: the current Xylem capture reports only the standard
profile used by these declarations. Encodes: comparison-function classes and
ray properties, closure, and inverse behavior. This Brick does not claim a
fresh build.

## Limitations

The real-line carrier is a convenient encoding of nonnegative reals; behavior
outside the ray is unconstrained. The class-KL decreasing condition excludes
the degenerate zero first-argument slice by construction.

## Discrepancies and open items

No discrepancy was found in the inspected declaration/body correspondence.
The convention of using `ℝ → ℝ` instead of a subtype of nonnegative reals
needs review if a later application requires total-function semantics.
