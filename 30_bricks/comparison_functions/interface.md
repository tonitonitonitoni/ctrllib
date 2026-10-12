# Interface — Comparison functions

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This is a reusable comparison-function interface. Its closure and inverse lemmas support later stability and cascade records without proving an application connection.

## Evidence and dependencies


## Inputs

- Functions on the real line, with their properties asserted on [0, infinity).

## Assumptions

- Class-K continuity, strict increase, and zero-at-origin premises are explicit in IsClassK.
- Class-K-infinity adds divergence to infinity; class-KL uses strict decrease and convergence in its second argument.

## Outputs

### Classes

The three comparison-function classes are represented with their ray restrictions.

Exact declarations: `Ctrllib.IsClassK`, `Ctrllib.IsClassKInfinity`, `Ctrllib.IsClassKL`.
Proof section: [Definitions and ray properties](proof.md#definitions-and-ray-properties).

### Ray properties

Class-K functions preserve order and sign on the nonnegative ray, with zero only at the origin.

Exact declarations: `Ctrllib.IsClassK.monotoneOn`, `Ctrllib.IsClassK.nonneg`, `Ctrllib.IsClassK.pos_of_pos`, `Ctrllib.IsClassK.mapsTo`, `Ctrllib.IsClassK.eq_zero_iff`.
Proof section: [Definitions and ray properties](proof.md#definitions-and-ray-properties).

### Closure

The class-K and class-K-infinity classes are closed under the listed positive scaling and composition operations.

Exact declarations: `Ctrllib.IsClassK.const_mul`, `Ctrllib.IsClassK.comp`, `Ctrllib.IsClassK.add`, `Ctrllib.IsClassK.min`, `Ctrllib.IsClassK.max`, `Ctrllib.IsClassKInfinity.const_mul`, `Ctrllib.IsClassKInfinity.comp`.
Proof section: [Closure operations](proof.md#closure-operations).

### Inverse

A class-K-infinity function is a bijection of the nonnegative ray and its ray inverse is class-K-infinity.

Exact declarations: `Ctrllib.IsClassKInfinity.surjOn`, `Ctrllib.IsClassKInfinity.bijOn`, `Ctrllib.classKInv`, `Ctrllib.IsClassKInfinity.classKInv_leftInvOn`, `Ctrllib.IsClassKInfinity.classKInv_rightInvOn`, `Ctrllib.IsClassKInfinity.classKInv_isClassKInfinity`.
Proof section: [Ray inverse](proof.md#ray-inverse).

### Kl sign

A class-KL function is nonnegative on the closed first quadrant.

Exact declarations: `Ctrllib.IsClassKL.nonneg`.
Proof section: [Class-KL sign](proof.md#class-kl-sign).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
