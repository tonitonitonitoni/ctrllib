---
type: proof
kind: brick
brick_id: coordinated_invertibility
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated]
lean_package: ctrllib
lean_modules: [DetGamma, GammaInvertible]
lean_declarations:
  - Ctrllib.det_coordinated_transform
  - Ctrllib.det_gamma_eq_det_J_oplus
  - Ctrllib.isUnit_coordinated_transform
  - Ctrllib.det_ne_zero_coordinated_transform
  - Ctrllib.gamma_nonsingular_iff
  - Ctrllib.gamma_isUnit_iff
  - Ctrllib.gamma_isUnit_iff_sigmaMin_pos
internal_bricks: []
application_interfaces: [coordinated_transform, singularity_free_region]
brick_level: composite
level_reason: The determinant identity supplies the block algebra used by the invertibility equivalences.
summary: A determinant and unit criterion for the block coordinated transform with lower-right block J, with an explicit singular-value premise for the final equivalence.
keywords: [determinant, invertibility, coordinated_transform, singularity]
interface:
  inputs:
    - "Finite index types l, m, n with decidable equality and a commutative ring R."
    - "Rot : Matrix l l R with det Rot = 1, T : Matrix l (m ⊕ n) R, G : Matrix n m R, and J : Matrix n n R."
    - "In the Euclidean specialization, Rot is in SO(3), T is 3 by (3 ⊕ 6), G is 6 by 3, and J is 6 by 6."
  assumptions:
    - The outer matrix is the nested block Gamma = fromBlocks Rot T 0 (fromBlocks I_m 0 G J).
    - The lower-left blocks are zero; T and G are arbitrary.
    - The implication involving sigmaMin uses the named hypothesis hsvd in GammaInvertible.
  outputs:
    - id: nested_determinant
      statement: The nested block transform has determinant det J when det Rot = 1.
      declarations: [Ctrllib.det_coordinated_transform, Ctrllib.det_gamma_eq_det_J_oplus]
      proof_section: "Nested block determinant"
    - id: abstract_unit_equivalence
      statement: The generic nested transform is a unit exactly when J is a unit.
      declarations: [Ctrllib.isUnit_coordinated_transform]
      proof_section: "Unit and nonsingularity criteria"
    - id: abstract_nonsingularity_equivalence
      statement: The generic nested transform has nonzero determinant exactly when J does.
      declarations: [Ctrllib.det_ne_zero_coordinated_transform]
      proof_section: "Unit and nonsingularity criteria"
    - id: euclidean_nonsingularity
      statement: In the 3,3,6 specialization, Gamma has nonzero determinant exactly when J does.
      declarations: [Ctrllib.gamma_nonsingular_iff]
      proof_section: "Unit and nonsingularity criteria"
    - id: euclidean_unit
      statement: In the 3,3,6 specialization, Gamma is a unit exactly when J is a unit.
      declarations: [Ctrllib.gamma_isUnit_iff]
      proof_section: "Unit and nonsingularity criteria"
    - id: singular_value_region
      statement: Under hsvd, positivity of sigmaMin J is equivalent to the Euclidean transform being a unit.
      declarations: [Ctrllib.gamma_isUnit_iff_sigmaMin_pos]
      proof_section: "Singular-value bridge"
  composition:
    - uses: [Ctrllib.det_coordinated_transform]
      establishes: Ctrllib.det_gamma_eq_det_J_oplus
      explanation: The Euclidean theorem instantiates the generic nested identity with block sizes 3, 3, and 6 and derives det Rot = 1 from SO(3).
---
# Coordinated transform determinant and invertibility

This composite Brick isolates the determinant and invertibility boundary for
the nested coordinated transform. Read the authored conventional derivation
in proof.md before generated statement pages.

## Notation

For finite index types $l,m,n$, write
$$
\Gamma=\operatorname{fromBlocks}\!\left(\mathit{Rot},T,0,
\operatorname{fromBlocks}(I_m,0,G,J)\right).
$$
The outer block has size $l$ and $m\oplus n$; the inner block has size
$m$ and $n$. In the Euclidean specialization, $\mathit{Rot}$ is
$3\times3$, $T$ is $3\times(3\oplus6)$, $G$ is $6\times3$, $J$
is $6\times6$, and $\Gamma$ is $12\times12$.

## Statement

The determinant endpoint is
$$
\det\Gamma=\det(\mathit{Rot})\det(I_m)\det(J)=\det J,
$$
because $\det(\mathit{Rot})=1$. Hence the generic transform has nonzero
determinant exactly when $J$ does, and over the real field it is a unit
exactly when $J$ is a unit. The Euclidean endpoints state the same
equivalences for block sizes $3,3,6$. Given
$$
h_{\mathrm{svd}}:\quad 0<\operatorname{sigmaMin}(J)
\Longleftrightarrow\det J\ne0,
$$
the final endpoint identifies positivity of sigmaMin with being a unit.

## Hypotheses

The generic statements require a commutative ring, finite index types, and
decidable equality. They take $\det(\mathit{Rot})=1$ as a premise. The
specialization takes $\mathit{Rot}\in SO(3)$, from which Lean obtains this
determinant equality. The blocks $T,G$ are arbitrary. The sigma-min
endpoint takes $h_{\mathrm{svd}}$ as a named premise; this Brick does not
prove it.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the determinant, nonsingularity, and unit equivalences for
the exact nested block matrix and the conditional sigma-min rewrite. It does
not establish that a source Jacobian, controller, or measured transform is
represented by this matrix, and it does not prove $h_{\mathrm{svd}}$.

## Sources

The coordinated-transform shape is contextualized by Giordano 2019
(giordano2019coordinated). The determinant proof is an in-house Lean
derivation; the source is not asserted to be a proof of these declarations.

## Evidence summary

- Lean module: DetGamma and GammaInvertible in the ctrllib package.
- Declaration: the seven exact endpoints listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the recorded snapshot has no sorryAx for these declarations.
- Encodes: det Gamma = det J, its nonsingularity/unit consequences, and the
  conditional sigma-min region equivalence.

The Xylem declaration snapshot records the named declarations with no
extraction errors under Lean 4.34.0. This record does not report a fresh build.

## Limitations

The result is algebraic and dimension-specific at its Euclidean endpoint. It
does not provide a determinant margin, numerical conditioning bound, physical
frame/unit correspondence, or controller realization.

## Discrepancies and open items

The full transform is $12\times12$ and its lower-right block is $6\times6$;
it is not a repeated $\operatorname{diag}(J,J)$ construction. The
singular-value bridge remains the explicit $h_{\mathrm{svd}}$ interface.
A reader must connect it to SigmaMinDet only after checking exact definitions.
