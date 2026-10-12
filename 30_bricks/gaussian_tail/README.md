---
type: proof
kind: brick
brick_id: gaussian_tail
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["GaussianTail"]
lean_declarations: ["Ctrllib.stdNormalPdf", "Ctrllib.stdNormalPdf_eq", "Ctrllib.hasDerivAt_neg_stdNormalPdf", "Ctrllib.integrable_mul_stdNormalPdf_Ioi", "Ctrllib.tendsto_neg_stdNormalPdf", "Ctrllib.integral_Ioi_mul_gaussianPDFReal"]
internal_bricks: []
application_interfaces: ["gaussian_tail_calculus"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Standard-normal first-moment tail numerator."
keywords: ["gaussian", "normal", "tail", "integral"]
interface:
  inputs:
    - "A real threshold and the standard-normal density."
  assumptions:
    - "Lebesgue integration and standard Gaussian analytic facts as captured."
  outputs:
    - id: gaussian_tail_integral
      statement: "For every real threshold q, the first-moment tail integral of the standard normal density is the density value at q: $\\int_q^\\infty w\\phi(w)\\,dw=\\phi(q)$."
      declarations:
        - Ctrllib.stdNormalPdf_eq
        - Ctrllib.hasDerivAt_neg_stdNormalPdf
        - Ctrllib.integrable_mul_stdNormalPdf_Ioi
        - Ctrllib.tendsto_neg_stdNormalPdf
        - Ctrllib.integral_Ioi_mul_gaussianPDFReal
      proof_section: "Gaussian tail integral"
  composition: []
---
# Standard-normal tail numerator

This Brick is `atomic` and covers Standard-normal first-moment tail numerator. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`phi` is the standard-normal density; `Ioi q` is the open right ray in the captured integral.

## Statement

**gaussian_tail_integral:** For every real threshold q, the first-moment tail integral of the standard normal density is the density value at q: $\int_q^\infty w\phi(w)\,dw=\phi(q)$.

## Hypotheses

- Lebesgue integration and standard Gaussian analytic facts as captured.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Standard-normal first-moment tail numerator. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `GaussianTail`.
- Exact declarations: 6 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No inverse CDF, quantile, full CVaR, or sampling result.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
