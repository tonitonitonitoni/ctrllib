---
type: proof
kind: brick
brick_id: circumcentroidal_passivity
result_kind: mixed
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: ["giordano2019coordinated"]
lean_package: ctrllib
lean_modules: ["CircumcentroidalPassivity"]
lean_declarations: ["Ctrllib.ReducedCoord", "Ctrllib.CircumCoord", "Ctrllib.gammaCircum", "Ctrllib.circumResidual", "Ctrllib.gammaCircum_det", "Ctrllib.circum_gamma_inv_mul", "Ctrllib.dotProduct_mulVec_toBlocks₂₂", "Ctrllib.circum_coriolis_house_form", "Ctrllib.circum_passivity_identity_full", "Ctrllib.circum_passivity_identity"]
internal_bricks: []
application_interfaces: ["circumcentroidal_coordinates", "passivity_identity"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Concrete circumcentroidal transform inverse and encoded passivity algebra."
keywords: ["circumcentroidal", "passivity", "matrix_inverse", "reduced_coordinates"]
interface:
  inputs:
    - "The concrete finite matrices and residual variables supplied by the module."
  assumptions:
    - "For gammaCircum, R is in SO(3), T is an arbitrary 3-by-9 matrix, G is 6-by-3, and J is 6-by-6 over the reals; the inverse endpoint additionally assumes IsUnit(det J)."
    - "For circumResidual passivity, M is symmetric and Gam, C, and Gamdot are arbitrary square matrices of the declared 12-dimensional type."
    - "Physical/source correspondence is external."
  outputs:
    - id: circum_transform_inverse
      statement: "For R in SO(3) and IsUnit(det J), the concrete matrix $\\Gamma$ has det $\\Gamma$ = det J and satisfies $\\Gamma^{-1}\\Gamma=I$."
      declarations:
        - Ctrllib.gammaCircum_det
        - Ctrllib.circum_gamma_inv_mul
      proof_section: "Circumcentroidal transform"
    - id: circum_passivity
      statement: "For arbitrary Gam, C, and Gamdot and symmetric M, the encoded residual has zero full quadratic form and zero quadratic form on its lower-right 9-by-9 block."
      declarations:
        - Ctrllib.dotProduct_mulVec_toBlocks₂₂
        - Ctrllib.circum_coriolis_house_form
        - Ctrllib.circum_passivity_identity_full
        - Ctrllib.circum_passivity_identity
      proof_section: "Circumcentroidal passivity"
  composition: []
---
# Circumcentroidal transform and passivity identity

This Brick is `atomic` and covers Concrete circumcentroidal transform inverse and encoded passivity algebra. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

Gamma is the concrete gammaCircum matrix
$\begin{bmatrix}R&T_1&T_2\\0&I_3&0\\0&G&J\end{bmatrix}$ with
$T=(T_1\ T_2)$. The Gam argument of circumResidual is an arbitrary
12-by-12 matrix; the passivity endpoints do not themselves identify it with
gammaCircum.

## Statement

**circum_transform_inverse:** If $R\in SO(3)$ and $\det J$ is a unit, the
concrete matrix $\Gamma$ satisfies $\det\Gamma=\det J$ and
$\Gamma^{-1}\Gamma=I$.
**circum_passivity:** For arbitrary finite matrices Gam, C, and Gamdot and
symmetric $M$, the encoded residual has zero full quadratic form and zero
quadratic form on its lower-right 9-by-9 block.

## Hypotheses

- $R\in SO(3)$, $T$ arbitrary $3\times9$, $G$ of size $6\times3$, and $J$
  of size $6\times6$; the inverse endpoint additionally assumes
  $\operatorname{IsUnit}(\det J)$.
- The passivity endpoint assumes only $M^\mathsf T=M$ for its arbitrary
  Gam, C, and Gamdot parameters; source and physical correspondence are
  external.
- Physical/source correspondence is external.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Concrete circumcentroidal transform inverse and encoded passivity algebra. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Giordano, Ott, and Albu-Schäffer, 2019 RA-L, doi:10.1109/LRA.2019.2899433,
equations 19, 21, 22b, and 23; the formal specialization is a project
derivation and carries no literature-novelty claim.

Locator: Giordano et al. Equation 19, Equation 21, Equation 22b, and
Equation 23.


## Evidence summary

- Lean modules: `CircumcentroidalPassivity`.
- Exact declarations: 10 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: the 12-dimensional block transform, conditional inverse, and reduced passivity quadratic-form identity.

## Limitations

No dynamic product rule, source equivalence, physical calibration, or convergence.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: the 12-dimensional block transform, conditional inverse, and reduced passivity quadratic-form identity.
