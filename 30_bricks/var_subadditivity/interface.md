# Interface — Finite VaR subadditivity counterexample

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- The concrete finite defaultable-bond law and declared confidence level.

## Assumptions

- Finite support and exact masses are those in the module definitions.

## Outputs

### Component var zero

Each defaultable-bond component has VaR zero at the declared confidence level.

Exact declarations: `Ctrllib.var_bond_eq_zero`.
Proof section: [Component VaR](proof.md#component-var).

### Sum var counterexample

The independent sum has VaR 100, so VaR subadditivity fails for this finite law.

Exact declarations: `Ctrllib.var_indepSum_eq_hundred`, `Ctrllib.var_subadditivity_fails`, `Ctrllib.var_not_subadditive`.
Proof section: [Sum counterexample](proof.md#sum-counterexample).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
