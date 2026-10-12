---
type: proof
kind: brick
brick_id: binomial_confidence
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["BinomialConfidence", "BernoulliCount", "BinomialZeroFailure"]
lean_declarations: ["Ctrllib.binomialLowerTail", "Ctrllib.binomialUpperConfidenceSet", "Ctrllib.binomialLowerTail_of_le", "Ctrllib.binomial_real_Iic", "Ctrllib.binomialLowerTail_of_hasLaw", "Ctrllib.binomialLowerTail_mono", "Ctrllib.binomial_lower_tail_adaptive_rejection", "Ctrllib.binomial_upper_confidence_set_coverage", "Ctrllib.binomial_upper_confidence_set_coverage_of_hasLaw", "Ctrllib.hasLaw_fin_indicator_count", "Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators", "Ctrllib.binomialLowerTail_zero", "Ctrllib.binomial_zero_failure_iff", "Ctrllib.mem_binomialUpperConfidenceSet_zero_iff"]
internal_bricks: []
application_interfaces: ["binomial_count_law", "bernoulli_episode_indicators"]
brick_level: composite
level_reason: "The exact finite Binomial confidence boundary is packaged with a proved finite Bernoulli count-law bridge and a strict zero-failure endpoint."
summary: "Exact finite Binomial CDF, Bernoulli episode count law, confidence-set inversion, and strict zero-failure endpoint."
keywords: ["binomial", "bernoulli", "confidence_set", "lower_tail", "zero_failure"]
interface:
  inputs:
    - "A finite count, n, p, delta, and an explicit exact Binomial law when transporting coverage."
    - "For the finite-indicator bridge, a measurable Prop-valued family indexed by Fin n with common Bernoulli law and independence."
    - "For the zero-failure endpoint, n > 0, p in [0,1], and 0 < delta < 1."
  assumptions:
    - "p lies in [0,1]; delta follows the captured nonnegative convention."
    - "The generic transport endpoint consumes an explicit HasLaw count premise; the finite-indicator endpoint derives that count law from common Bernoulli marginals, measurability, and independence."
    - "The zero-failure endpoint assumes n > 0 and 0 < delta < 1, and retains strict inequalities."
  outputs:
    - id: binomial_tail_identity
      statement: "The finite lower-tail polynomial equals the CDF of a Binomial count under the exact finite-law convention."
      declarations:
        - Ctrllib.binomialLowerTail_of_le
        - Ctrllib.binomial_real_Iic
        - Ctrllib.binomialLowerTail_of_hasLaw
      proof_section: "Lower-tail identity"
    - id: binomial_confidence_set
      statement: "Inverting the adaptive lower-tail rejection test produces a confidence set whose true-parameter exclusion probability is at most the supplied delta."
      declarations:
        - Ctrllib.binomial_lower_tail_adaptive_rejection
        - Ctrllib.binomial_upper_confidence_set_coverage
        - Ctrllib.binomial_upper_confidence_set_coverage_of_hasLaw
      proof_section: "Confidence-set coverage"
    - id: bernoulli_count_law
      statement: "An independent finite family of Prop-valued Bernoulli indicators has a Binomial cardinality law, and the existing confidence coverage theorem applies to that count."
      declarations:
        - Ctrllib.hasLaw_fin_indicator_count
        - Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators
      proof_section: "Bernoulli count-law bridge"
    - id: zero_failure_endpoint
      statement: "At zero observed failures, the lower tail is (1-p)^n and the existing strict confidence-set membership is equivalent to the strict real-power endpoint."
      declarations:
        - Ctrllib.binomialLowerTail_zero
        - Ctrllib.binomial_zero_failure_iff
        - Ctrllib.mem_binomialUpperConfidenceSet_zero_iff
      proof_section: "Zero-failure endpoint"
  composition:
    - uses: [Ctrllib.hasLaw_fin_indicator_count, Ctrllib.binomial_upper_confidence_set_coverage_of_hasLaw]
      establishes: Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators
      explanation: "The proved Binomial count law is supplied to the existing exact coverage transport."
    - uses: [Ctrllib.binomialLowerTail_zero]
      establishes: Ctrllib.binomial_zero_failure_iff
      explanation: "The zero-count polynomial identity is combined with strict real-power inversion."
    - uses: [Ctrllib.binomial_zero_failure_iff]
      establishes: Ctrllib.mem_binomialUpperConfidenceSet_zero_iff
      explanation: "Confidence-set membership unfolds to the strict lower-tail test."
---
# Exact Binomial confidence and Bernoulli count bridge

This Brick is `composite` and covers the exact finite Binomial CDF and confidence-set inversion together with a finite independent Bernoulli count-law bridge and a strict zero-failure endpoint. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`B_{n,p}(r)` denotes the finite lower-tail polynomial. Strictness in the confidence set follows the exact definition.

## Statement

**binomial_tail_identity:** The finite lower-tail polynomial equals the CDF of a Binomial count under the exact finite-law convention.
**binomial_confidence_set:** Inverting the adaptive lower-tail rejection test produces a confidence set whose true-parameter exclusion probability is at most the supplied delta.
**bernoulli_count_law:** An independent finite family of Prop-valued Bernoulli indicators has a Binomial cardinality law, with a direct confidence-set coverage corollary.
**zero_failure_endpoint:** The zero-count lower tail is $(1-p)^n$, and strict confidence-set membership has the exact real-power endpoint.

## Hypotheses

- p lies in [0,1]; delta follows the captured nonnegative convention.
- The generic transport endpoint consumes an explicit `HasLaw` count premise; the finite-indicator endpoint derives that count law from measurable Prop-valued indicators, common Bernoulli laws, and independence across the finite episode family.
- The zero-failure endpoint assumes n > 0, 0 < delta < 1, and preserves the existing strict confidence-set convention.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Exact finite Binomial CDF, adaptive rejection, confidence-set inversion, the independent Bernoulli count-law bridge, and the strict zero-failure endpoint. These results do not establish episode independence, Bernoulli modelling, controller or plant correspondence, source equivalence, numerical or physical validity, or scientific acceptance.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `BinomialConfidence`, `BernoulliCount`, `BinomialZeroFailure`.
- Exact declarations: 14 declarations, including the original finite confidence API and the five new public extension declarations.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Capture: the existing declaration inventory remains the correspondence source; this packaging pass does not refresh extraction artifacts.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No general-count endpoint inversion, closed confidence interval, normal approximation, or physical episode count-law claim. The Bernoulli bridge requires its explicit Prop-valued indicator measurability, common Bernoulli laws, and independence premises. The endpoint theorem preserves the existing strict convention and covers only zero failures.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
