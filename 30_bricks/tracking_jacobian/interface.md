# Interface — Tracking error Jacobian nonsingularity

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Finite index types l, m, n; a commutative ring R; P : Matrix m n R; Q : Matrix n n R; and the block E(P,Q) = [[I_m,P],[0,Q]].
- For the real residual endpoints, K : Matrix (m ⊕ n) (m ⊕ n) ℝ, P and Q, and residual vectors x : (m ⊕ n) → ℝ; the stacked endpoint also takes Jb : Matrix l l ℝ.

## Assumptions

- The ring block uses finite indices and the unit criterion; the real residual uses K.PosDef and IsUnit Q, with IsUnit Jb additionally for the stacked form.

## Outputs

### Jacobian nonsingularity

For E(P,Q) = [[I_m,P],[0,Q]], det E(P,Q) = det Q and E(P,Q) is a unit exactly when Q is a unit; replacing P leaves this singular set unchanged.

Exact declarations: `Ctrllib.det_trackingErrorJacobian`, `Ctrllib.isUnit_trackingErrorJacobian_iff`, `Ctrllib.isUnit_trackingErrorJacobian_transport_free`, `Ctrllib.isUnit_trackingJacobian_iff`.
Proof section: [Jacobian nonsingularity](proof.md#jacobian-nonsingularity).

### Stiffness residual injectivity

With K.PosDef and IsUnit Q, E(P,Q)ᵀ K x = 0 implies x = 0; the stacked residual has the same conclusion after adding IsUnit Jb.

Exact declarations: `Ctrllib.tracking_stiffness_residual_injective`, `Ctrllib.tracking_stiffness_residual_injective_stacked`.
Proof section: [Stiffness-residual injectivity](proof.md#stiffness-residual-injectivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
