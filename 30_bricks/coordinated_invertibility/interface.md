# Interface — Coordinated transform determinant and invertibility

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The determinant identity supplies the block algebra used by the invertibility equivalences.

## Evidence and dependencies


## Inputs

- Finite index types l, m, n with decidable equality and a commutative ring R.
- Rot : Matrix l l R with det Rot = 1, T : Matrix l (m ⊕ n) R, G : Matrix n m R, and J : Matrix n n R.
- In the Euclidean specialization, Rot is in SO(3), T is 3 by (3 ⊕ 6), G is 6 by 3, and J is 6 by 6.

## Assumptions

- The outer matrix is the nested block Gamma = fromBlocks Rot T 0 (fromBlocks I_m 0 G J).
- The lower-left blocks are zero; T and G are arbitrary.
- The implication involving sigmaMin uses the named hypothesis hsvd in GammaInvertible.

## Outputs

### Nested determinant

The nested block transform has determinant det J when det Rot = 1.

Exact declarations: `Ctrllib.det_coordinated_transform`, `Ctrllib.det_gamma_eq_det_J_oplus`.
Proof section: [Nested block determinant](proof.md#nested-block-determinant).

### Abstract unit equivalence

The generic nested transform is a unit exactly when J is a unit.

Exact declarations: `Ctrllib.isUnit_coordinated_transform`.
Proof section: [Unit and nonsingularity criteria](proof.md#unit-and-nonsingularity-criteria).

### Abstract nonsingularity equivalence

The generic nested transform has nonzero determinant exactly when J does.

Exact declarations: `Ctrllib.det_ne_zero_coordinated_transform`.
Proof section: [Unit and nonsingularity criteria](proof.md#unit-and-nonsingularity-criteria).

### Euclidean nonsingularity

In the 3,3,6 specialization, Gamma has nonzero determinant exactly when J does.

Exact declarations: `Ctrllib.gamma_nonsingular_iff`.
Proof section: [Unit and nonsingularity criteria](proof.md#unit-and-nonsingularity-criteria).

### Euclidean unit

In the 3,3,6 specialization, Gamma is a unit exactly when J is a unit.

Exact declarations: `Ctrllib.gamma_isUnit_iff`.
Proof section: [Unit and nonsingularity criteria](proof.md#unit-and-nonsingularity-criteria).

### Singular value region

Under hsvd, positivity of sigmaMin J is equivalent to the Euclidean transform being a unit.

Exact declarations: `Ctrllib.gamma_isUnit_iff_sigmaMin_pos`.
Proof section: [Singular-value bridge](proof.md#singular-value-bridge).

## Composition

- Uses `Ctrllib.det_coordinated_transform`; establishes `Ctrllib.det_gamma_eq_det_J_oplus`. The Euclidean theorem instantiates the generic nested identity with block sizes 3, 3, and 6 and derives det Rot = 1 from SO(3).

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
