# Interface — Actuation error bound

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** Both outputs are thin wiring corollaries: the scalar endpoint specializes the comparison engine and the state endpoint adds the quadratic sandwich.

## Evidence and dependencies


## Inputs

- A scalar or Lyapunov-value trajectory with the regularity and derivative premises of comparison_bounded.
- A nonnegative constant ceiling εbar and, for the state result, a QuadSandwich.

## Assumptions

- The decay rate a is positive and the initial Lyapunov value is nonnegative.
- The disturbance is bounded above by εbar on nonnegative time.

## Outputs

### Value bound

For all t≥0, v(t)≤v(0)+εbar/a.

Exact declarations: `Ctrllib.actuation_ultimate_bound`.
Proof section: [Scalar actuation ceiling](proof.md#scalar-actuation-ceiling).

### State ball

For all t≥0, c₁||x(t)||²≤c₂||x(0)||²+εbar/a.

Exact declarations: `Ctrllib.actuation_state_ball`.
Proof section: [State residual bound](proof.md#state-residual-bound).

## Composition

- Uses `Ctrllib.comparison_bounded`; establishes `Ctrllib.actuation_ultimate_bound`. The generic disturbance ceiling is instantiated with εbar.
- Uses `Ctrllib.actuation_ultimate_bound`, `Ctrllib.QuadSandwich`; establishes `Ctrllib.actuation_state_ball`. Lower and upper sandwich inequalities transport the value bound to the state norm.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
