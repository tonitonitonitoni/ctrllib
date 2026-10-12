# Conventional proof: Printed equation inconsistency witnesses

This document is the authored conventional-derivation authority for `giordano_errata`.

## Scope and provenance

This Mixed Brick records local algebraic witnesses concerning printed expressions attributed to Giordano, Ott, and Albu-Schäffer (2019). The source equations motivate the comparison; the formal witnesses establish inconsistency of the encoded printed and conforming expressions, not authorial intent.

## Definitions and notation

`eq31FromComponentLaws` is the expression obtained from the local component laws and `eq31AsPrinted` is the separately encoded printed expression. For Eq. (34d), the module distinguishes a conforming block order, the printed order, the declared stack, and the corresponding selectors. All vectors and blocks have the exact finite dimensions in the Lean signatures.

## Statement of result

There is a supplied finite witness for which the Eq. (31) printed expression differs in sign from the component-law expression. For Eq. (34d), the printed block order is inconsistent with the declared stack, the declared block widths differ from the printed arrangement, and the conforming selector multiplication has the stated type/value relation.

## Assumptions

The component laws, block dimensions, and witness values are the definitions in the module. No claim is made about the source authors' intended notation or about an implementation outside these encodings.

## Eq. 31 sign witness

Evaluate both expressions on the supplied witness. The component-law expression contains the sign dictated by the declared cross terms; substituting the same witness into the separately encoded printed expression produces the opposite value. Since the two real values differ, the equality between them is false for that witness. This is a counterexample to the encoded printed equality, not a proof about every possible transcription.

## Eq. 34d order witness

The conforming expression applies blocks in the order represented by `eq34dConformingOrder`, whereas the printed expression uses `eq34dPrintedOrder`. Applying both to the declared stack exposes a block-width mismatch. The conforming selector is then shown to multiply the declared stack with the expected dimensions. The compile-time failure witness for the printed selector is retained as an elaboration diagnostic rather than recast as a theorem.

## Formal correspondence

The exact finite definitions and counterexample endpoints are in `statements.md`. The formal result compares local encodings; it does not prove source fidelity or infer intent from a paper.

## What the result establishes and does not

It establishes the named algebraic counterexamples and declared-stack mismatch. It does not establish a corrected publication, a controller theorem, or a physical implementation defect.

## Limitations and discrepancies

The result is conditional on the local encodings and witnesses. The source-to-formal mapping for the printed equations remains a review obligation. The `#check_failure` output is not an admitted theorem and must retain that status.

## Evidence record

The declaration extract reports no `sorryAx`; the ordinary labels are `propext`, `Classical.choice`, and `Quot.sound`. Acceptance and source-equivalence are not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
## Concrete arithmetic check

At the supplied witness $(\mathrm{stiffness},\mathrm{damping})=(1,1)$, the
component-law expression is $-1-1=-2$, while the separately encoded printed
expression is $1+1=2$. Thus the two real values are unequal. At
$(g,\omega,\nu)=(2,1,3)$, the conforming scalar proxy is
$-2\cdot1+3=1$, while the printed positional proxy is $1-2\cdot3=-5$.
The independent width witness is $3\ne6$. These are finite witnesses for the
local encodings; they do not assert authorial intent.
