# Interface — Circumcentroidal correction

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** Combines the corrected-map algebra with a separately reusable update-rank guarantee.  The rank module imports the correction module, and the six-by-three rank endpoint depends on the generic update-rank endpoint.

## Evidence and dependencies


## Inputs

- Conformable finite matrices $J,U,V$ over a commutative ring, defining $J_{\oplus}=J-UV$.
- A vector x for the corrected-map action identities
- For determinant factorization, a square $J$ whose determinant is a unit; over a field this means $\det J\ne0$.
- Euclidean norms, a nonempty column index, and an RCLike scalar structure for smallest-gain bounds
- For the gain bounds, define $\gamma(A)=\inf_{\|x\|_2=1}\|Ax\|_2$, using Euclidean vector norms and their induced operator norm.
- Real finite matrices, with the six-by-three U specialization for the rank bounds
- The application names J_nu_e, R_eb0, and Jv_bar when a robot correspondence is attempted

## Assumptions

- Matrix dimensions and algebraic structures are conformable for each displayed identity
- The determinant factorization requires det J to be a unit, equivalently det J != 0 over a field
- Smallest-gain statements use the Euclidean unit-sphere infimum and a nonempty column index
- Rank statements are over real matrices and bound rank(J - J_oplus), not rank(J_oplus)
- Frame, reference-point, parameter, unit, joint-order, and robot-model correspondence are supplied externally

## Outputs

### Corrected map action

The definition $J_{\oplus}=J-UV$ gives $J_{\oplus}x=Jx-U(Vx)$ for every vector $x$.

Exact declarations: `Ctrllib.correctedJacobian`, `Ctrllib.correctedJacobian_mulVec`.
Proof section: [Corrected-map action and Gram identity](proof.md#corrected-map-action-and-gram-identity).

### Generic gram expansion

The corrected Gram matrix satisfies $J_{\oplus}^\top J_{\oplus}=J^\top J-J^\top UV-V^\top U^\top J+V^\top U^\top UV$.

Exact declarations: `Ctrllib.correctedJacobian_gram`.
Proof section: [Corrected-map action and Gram identity](proof.md#corrected-map-action-and-gram-identity).

### Six by three gram expansion

The six-by-three circumcentroidal specialization satisfies its corresponding corrected Gram expansion with the fixed block sizes.

Exact declarations: `Ctrllib.circumcentroidalJacobian_gram`.
Proof section: [Corrected-map action and Gram identity](proof.md#corrected-map-action-and-gram-identity).

### Augmented determinant identity

For square J, the augmented block determinant det [[J,U],[V,I]] equals det(J_oplus).

Exact declarations: `Ctrllib.det_fromBlocks_eq_det_correctedJacobian`.
Proof section: [Augmented determinant identity](proof.md#augmented-determinant-identity).

### Determinant factorization

When $\det J$ is a unit (equivalently nonzero over a field), $\det(J_{\oplus})=\det(J)\det(I-VJ^{-1}U)$, including the six-by-six circumcentroidal specialization.

Exact declarations: `Ctrllib.det_correctedJacobian`, `Ctrllib.det_circumcentroidalJacobian`.
Proof section: [Determinant factorization](proof.md#determinant-factorization).

### Smallest gain bounds

The Euclidean smallest gain satisfies $\max\{0,\gamma(J)-\|UV\|\}\le\gamma(J_{\oplus})\le\gamma(J)+\|UV\|$.

Exact declarations: `Ctrllib.euclideanSmallestGain_correctedJacobian_bounds`.
Proof section: [Smallest-gain bounds](proof.md#smallest-gain-bounds).

### Generic update rank bound

For real finite matrices, the update rank $\operatorname{rank}(J-J_{\oplus})$ is at most the cardinality of the inner index type.

Exact declarations: `Ctrllib.correctedJacobian_update_rank_le`.
Proof section: [Update-rank bounds](proof.md#update-rank-bounds).

### Six by three update rank bound

For the six-by-three circumcentroidal correction, the update rank is at most three; this is not a rank bound on J_oplus itself.

Exact declarations: `Ctrllib.circumcentroidal_update_rank_le_three`.
Proof section: [Update-rank bounds](proof.md#update-rank-bounds).

## Composition

- Uses `Ctrllib.correctedJacobian`; establishes `Ctrllib.correctedJacobian_update_rank_le`. The rank proof rewrites the update as U V through the correctedJacobian definition and applies the image/rank bound for multiplication.
- Uses `Ctrllib.correctedJacobian_update_rank_le`, `Ctrllib.correctedJacobian`; establishes `Ctrllib.circumcentroidal_update_rank_le_three`. The six-by-three endpoint specializes the generic update-rank bound to an inner index of cardinality three and uses the same corrected map.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
