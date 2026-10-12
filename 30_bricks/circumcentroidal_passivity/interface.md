# Interface — Circumcentroidal transform and passivity identity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- The concrete finite matrices and residual variables supplied by the module.

## Assumptions

- For gammaCircum, R is in SO(3), T is an arbitrary 3-by-9 matrix, G is 6-by-3, and J is 6-by-6 over the reals; the inverse endpoint additionally assumes IsUnit(det J).
- For circumResidual passivity, M is symmetric and Gam, C, and Gamdot are arbitrary square matrices of the declared 12-dimensional type.
- Physical/source correspondence is external.

## Outputs

### Circum transform inverse

For R in SO(3) and IsUnit(det J), the concrete matrix $\Gamma$ has det $\Gamma$ = det J and satisfies $\Gamma^{-1}\Gamma=I$.

Exact declarations: `Ctrllib.gammaCircum_det`, `Ctrllib.circum_gamma_inv_mul`.
Proof section: [Circumcentroidal transform](proof.md#circumcentroidal-transform).

### Circum passivity

For arbitrary Gam, C, and Gamdot and symmetric M, the encoded residual has zero full quadratic form and zero quadratic form on its lower-right 9-by-9 block.

Exact declarations: `Ctrllib.dotProduct_mulVec_toBlocks₂₂`, `Ctrllib.circum_coriolis_house_form`, `Ctrllib.circum_passivity_identity_full`, `Ctrllib.circum_passivity_identity`.
Proof section: [Circumcentroidal passivity](proof.md#circumcentroidal-passivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
