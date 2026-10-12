# Interface — Printed equation inconsistency witnesses

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- The encoded component laws, printed equations, block stack, and finite witnesses.

## Assumptions

- Finite dimensions and values are exactly those in the module.
- Printed/source interpretation remains an external correspondence premise.

## Outputs

### Eq31 sign witness

The printed Eq. (31) expression disagrees in sign with the expression obtained from the declared component laws for the supplied witness.

Exact declarations: `Ctrllib.eq31_printed_sign_counterexample`.
Proof section: [Eq. 31 sign witness](proof.md#eq-31-sign-witness).

### Eq34d order witness

The printed Eq. (34d) block order/selector differs from the declared stack, yielding the stated width and multiplication mismatch.

Exact declarations: `Ctrllib.eq34d_printed_block_order_counterexample`, `Ctrllib.eq34d_declared_block_widths_differ`, `Ctrllib.eq34dConformingSelector_mulVec_declaredStack`.
Proof section: [Eq. 34d order witness](proof.md#eq-34d-order-witness).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
