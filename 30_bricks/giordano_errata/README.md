---
type: proof
kind: brick
brick_id: giordano_errata
result_kind: mixed
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: ["giordano2019coordinated"]
lean_package: ctrllib
lean_modules: ["GiordanoErrata"]
lean_declarations: ["Ctrllib.eq31FromComponentLaws", "Ctrllib.eq31AsPrinted", "Ctrllib.eq34dConformingOrder", "Ctrllib.eq34dPrintedOrder", "Ctrllib.eq34dDeclaredStack", "Ctrllib.eq34dConformingSelector", "Ctrllib.eq34dPrintedSelector", "Ctrllib.eq31_printed_sign_counterexample", "Ctrllib.eq34d_printed_block_order_counterexample", "Ctrllib.eq34d_declared_block_widths_differ", "Ctrllib.eq34dConformingSelector_mulVec_declaredStack"]
internal_bricks: []
application_interfaces: ["printed_equation_review"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Algebraic inconsistency witnesses for two encoded printed expressions."
keywords: ["giordano", "errata", "block_order", "sign"]
interface:
  inputs:
    - "The encoded component laws, printed equations, block stack, and finite witnesses."
  assumptions:
    - "Finite dimensions and values are exactly those in the module."
    - "Printed/source interpretation remains an external correspondence premise."
  outputs:
    - id: eq31_sign_witness
      statement: "The printed Eq. (31) expression disagrees in sign with the expression obtained from the declared component laws for the supplied witness."
      declarations:
        - Ctrllib.eq31_printed_sign_counterexample
      proof_section: "Eq. 31 sign witness"
    - id: eq34d_order_witness
      statement: "The printed Eq. (34d) block order/selector differs from the declared stack, yielding the stated width and multiplication mismatch."
      declarations:
        - Ctrllib.eq34d_printed_block_order_counterexample
        - Ctrllib.eq34d_declared_block_widths_differ
        - Ctrllib.eq34dConformingSelector_mulVec_declaredStack
      proof_section: "Eq. 34d order witness"
  composition: []
---
# Printed equation inconsistency witnesses

This Brick is `atomic` and covers Algebraic inconsistency witnesses for two encoded printed expressions. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

Printed and conforming expressions are distinct definitions. Block order and selector dimensions are retained exactly.

## Statement

**eq31_sign_witness:** The printed Eq. (31) expression disagrees in sign with the expression obtained from the declared component laws for the supplied witness.
**eq34d_order_witness:** The printed Eq. (34d) block order/selector differs from the declared stack, yielding the stated width and multiplication mismatch.

## Hypotheses

- Finite dimensions and values are exactly those in the module.
- Printed/source interpretation remains an external correspondence premise.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Algebraic inconsistency witnesses for two encoded printed expressions. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Giordano, Ott, and Albu-Schäffer, 2019 RA-L, doi:10.1109/LRA.2019.2899433; source-equation identity is recorded as provenance, while witnesses are local.


## Evidence summary

- Lean modules: `GiordanoErrata`.
- Exact declarations: 11 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: finite algebraic counterexamples for the printed Eq. (31) sign and Eq. (34d) block-order witnesses.

## Limitations

No authorial-intent, source-fidelity, controller, or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: finite algebraic counterexamples for the printed Eq. (31) sign and Eq. (34d) block-order witnesses.
