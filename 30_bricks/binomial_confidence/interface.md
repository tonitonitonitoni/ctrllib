# Interface — Exact Binomial confidence and Bernoulli count bridge

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The exact finite Binomial confidence boundary is packaged with a proved finite Bernoulli count-law bridge and a strict zero-failure endpoint.

## Evidence and dependencies


## Inputs

- A finite count, n, p, delta, and an explicit exact Binomial law when transporting coverage.
- For the finite-indicator bridge, a measurable Prop-valued family indexed by Fin n with common Bernoulli law and independence.
- For the zero-failure endpoint, n > 0, p in [0,1], and 0 < delta < 1.

## Assumptions

- p lies in [0,1]; delta follows the captured nonnegative convention.
- The generic transport endpoint consumes an explicit HasLaw count premise; the finite-indicator endpoint derives that count law from common Bernoulli marginals, measurability, and independence.
- The zero-failure endpoint assumes n > 0 and 0 < delta < 1, and retains strict inequalities.

## Outputs

### Binomial tail identity

The finite lower-tail polynomial equals the CDF of a Binomial count under the exact finite-law convention.

Exact declarations: `Ctrllib.binomialLowerTail_of_le`, `Ctrllib.binomial_real_Iic`, `Ctrllib.binomialLowerTail_of_hasLaw`.
Proof section: [Lower-tail identity](proof.md#lower-tail-identity).

### Binomial confidence set

Inverting the adaptive lower-tail rejection test produces a confidence set whose true-parameter exclusion probability is at most the supplied delta.

Exact declarations: `Ctrllib.binomial_lower_tail_adaptive_rejection`, `Ctrllib.binomial_upper_confidence_set_coverage`, `Ctrllib.binomial_upper_confidence_set_coverage_of_hasLaw`.
Proof section: [Confidence-set coverage](proof.md#confidence-set-coverage).

### Bernoulli count law

An independent finite family of Prop-valued Bernoulli indicators has a Binomial cardinality law, and the existing confidence coverage theorem applies to that count.

Exact declarations: `Ctrllib.hasLaw_fin_indicator_count`, `Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators`.
Proof section: [Bernoulli count-law bridge](proof.md#bernoulli-count-law-bridge).

### Zero failure endpoint

At zero observed failures, the lower tail is (1-p)^n and the existing strict confidence-set membership is equivalent to the strict real-power endpoint.

Exact declarations: `Ctrllib.binomialLowerTail_zero`, `Ctrllib.binomial_zero_failure_iff`, `Ctrllib.mem_binomialUpperConfidenceSet_zero_iff`.
Proof section: [Zero-failure endpoint](proof.md#zero-failure-endpoint).

## Composition

- Uses `Ctrllib.hasLaw_fin_indicator_count`, `Ctrllib.binomial_upper_confidence_set_coverage_of_hasLaw`; establishes `Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators`. The proved Binomial count law is supplied to the existing exact coverage transport.
- Uses `Ctrllib.binomialLowerTail_zero`; establishes `Ctrllib.binomial_zero_failure_iff`. The zero-count polynomial identity is combined with strict real-power inversion.
- Uses `Ctrllib.binomial_zero_failure_iff`; establishes `Ctrllib.mem_binomialUpperConfidenceSet_zero_iff`. Confidence-set membership unfolds to the strict lower-tail test.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
