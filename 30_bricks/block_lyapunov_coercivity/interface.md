# Interface — Block Lyapunov coercivity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The pair first builds a block quadratic Lyapunov function and then derives norm coercivity and forward precompactness from it.

## Evidence and dependencies


## Inputs

- Two finite real vector blocks v and x, with square matrices M and K of the matching dimensions.
- For precompactness, a supplied flow on the product of the two Euclidean spaces and an initial state.

## Assumptions

- The sandwich requires symmetric matrices and supplied eigenvalue bounds; it does not require positive definiteness.
- Coercivity, nonnegativity, and the zero criterion require positive-definite M and K and nonempty finite index types.
- Precompactness requires the supplied forward inequality V(phi(t,y0)) <= V(y0) for every t >= 0.
- The product uses the maximum of its block norms; its square is at most the sum of squared block norms.

## Outputs

### Quadratic energy

The block Lyapunov function is nonnegative, coercive, and zero exactly at the origin.

Exact declarations: `Ctrllib.blockLyap_sandwich`, `Ctrllib.blockLyap_coercive`, `Ctrllib.blockLyap_nonneg`, `Ctrllib.blockLyap_eq_zero_iff`.
Proof section: [Block quadratic energy](proof.md#block-quadratic-energy).

### Norm coercivity

The half-weighted block energy is bounded below by a positive constant times the squared product norm.

Exact declarations: `Ctrllib.blockLyap_norm_coercive`.
Proof section: [Norm coercivity and precompactness](proof.md#norm-coercivity-and-precompactness).

### Forward precompact

The supplied block-state flow is forward precompact when its energy never exceeds the initial energy.

Exact declarations: `Ctrllib.forwardPrecompact_blockLyap`.
Proof section: [Norm coercivity and precompactness](proof.md#norm-coercivity-and-precompactness).

## Composition

- Uses `Ctrllib.blockLyap_norm_coercive`; establishes `Ctrllib.forwardPrecompact_blockLyap`. The concrete coercivity endpoint supplies the coercivity premise consumed by the precompactness endpoint.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
