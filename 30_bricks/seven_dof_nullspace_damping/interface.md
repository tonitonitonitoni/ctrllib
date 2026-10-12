# Interface — Seven-DOF nullspace damping Lyapunov result

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- Nullspace coordinate, encoded Lyapunov matrix, and dissipation/driver inequalities.

## Assumptions

- SPD/coercivity and exact attractive/driven hypotheses.
- Trajectory-dependent driver terms remain supplied inputs.

## Outputs

### Lyapunov coercivity

The encoded nullspace Lyapunov function is a positive-definite quadratic form with the stated coercive and sandwich bounds.

Exact declarations: `Ctrllib.nullspaceLyap_eq_quadraticForm`, `Ctrllib.nullspaceLyapMatrix_posDef`, `Ctrllib.nullspaceLyap_coercive`, `Ctrllib.nullspaceLyap_hsand`.
Proof section: [Lyapunov coercivity](proof.md#lyapunov-coercivity).

### Nullspace attractivity

Under the displayed dissipation and driver hypotheses, the nullspace damping result gives the stated attractive or driven convergence conclusion.

Exact declarations: `Ctrllib.nullspace_damping_attractive`, `Ctrllib.nullspace_damping_driven`, `Ctrllib.nullspace_damping_attractive_concrete`.
Proof section: [Nullspace attractivity](proof.md#nullspace-attractivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
