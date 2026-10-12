# Conventional proof: Exact Binomial lower-tail confidence

This document is the authored conventional-derivation authority for `binomial_confidence`.

## Scope and provenance

This Generated Brick is the exact finite Binomial component formerly bundled in `population_risk`. It proves a discrete CDF identity, adaptive rejection bound, confidence-set coverage, an iid finite Bernoulli count-law bridge, and a strict zero-failure endpoint.

## Definitions and notation

For $n\in\mathbb N$, $p\in[0,1]$, and a natural-number count $r$, define
$$B_{n,p}(r)=\sum_{k=0}^{\min(r,n)}{n\choose k}p^k(1-p)^{n-k}.$$
The confidence set inverts the rejection condition $B_{n,p}(R)\le\delta$, namely $\mathcal C_\delta(r)=\{p\in[0,1]:\delta<B_{n,p}(r)\}$.

## Statement of result

Under the exact Binomial law, the polynomial is the lower-tail CDF. The adaptive rejection event has probability at most $\delta$, and the inverted confidence set excludes the true $p$ with probability at most $\delta$.

## Assumptions

The count is natural-number-valued, $p\in[0,1]$, and $\delta\ge0$ under the captured theorem conventions. The generic transport endpoint consumes an explicit `HasLaw R (Binomial n p)` premise. The finite-indicator bridge derives that count law from measurable independent indicators with the supplied common Bernoulli law. Establishing those episode premises for a controller remains application work. Strict zero-failure inversion additionally assumes $n>0$ and $0<\delta<1$.

## Lower-tail identity

Finite support of a Binomial count is $0,\ldots,n$. Expanding the finite probability of the interval $(-\infty,r]$ gives the sum through $\min(r,n)$, and for $r>n$ the sum includes the whole support. The formal `binomial_real_Iic` endpoint evaluates the real-valued measure of a lower interval of natural counts; its domain is not a real-valued count. The `HasLaw` endpoint then transports the finite calculation to a supplied random variable.

## Confidence-set coverage

For each fixed $p$, the map $r\mapsto B_{n,p}(r)$ is monotone. If no support count is rejected, the rejection event has probability zero. Otherwise, select the largest rejected count in the finite support. The rejection event is contained in the corresponding lower-tail event, whose probability is bounded by $\delta$. Inverting the rejection predicate therefore gives
$$\Pr\{p\notin\mathcal C_\delta(R)\}\le\delta,$$
with the exact strictness convention from the definition. The adaptive rejection endpoint is the finite combinatorial step; the coverage endpoints apply it to the confidence set.

## Formal correspondence

`binomialLowerTail` is the finite polynomial and `binomialUpperConfidenceSet` is its inversion. The exact count-law, interval, monotonicity, and confidence declarations are retained. Lean's finite computations establish the stated discrete result under the captured premises.

## What the result establishes and does not

It establishes the exact finite Binomial lower-tail and inverted-set results under their captured premises, derives the Binomial law for an independent finite family of Prop-valued Bernoulli indicators, and characterizes the strict zero-failure endpoint. It does not establish that a robotics violation count has the required episode law, independence, or Bernoulli model, nor does it provide a normal approximation, population-CVaR confidence, source equivalence, or physical validation.

## Limitations and discrepancies

The confidence set's shape and numerical endpoint computation are outside scope beyond the exact zero-failure characterization below. General-count endpoint inversion, closed interval conventions, and normal approximations remain open.

## Evidence record

The declarations are from the current 4.34.0 capture; its axiom labels are `propext`, `Classical.choice`, and `Quot.sound`, with no `sorryAx`. Acceptance is not claimed.

## Bernoulli count-law bridge

Let `ind : Fin n → Ω → Prop` be a family of Prop-valued indicators. The
proposition `ind i ω` means that trial `i` is a success. Assume each indicator
is measurable, every indicator has the common law
`Ber(True, False, p)` for `p ∈ [0,1]`, and the family is independent under `P`.
Define the natural-valued success count

$$
C(ω)=\operatorname{ncard}\{i\in\operatorname{Fin}(n):ind_i(ω)\}.
$$

The declaration `Ctrllib.hasLaw_fin_indicator_count` proves that $C$ has law
`Bin(n,p)`. The direct confidence consequence is
`Ctrllib.binomial_upper_confidence_set_coverage_of_fin_indicators`.

The proof has four finite measure steps. First, independence and the common
marginal law give the product law of the proposition-valued vector:

$$
\mathcal L\bigl(ω\mapsto(i\mapsto ind_i(ω))\bigr)
 =\operatorname{Measure.pi}\bigl(i\mapsto\operatorname{Ber}(\mathrm{True},\mathrm{False},p)\bigr).
$$

Second, apply the measurable map

$$
q\mapsto\{i:q_i\}.
$$

The resulting random subset has the finite set-Bernoulli law
`setBer(univ,p)`. Third, apply the measurable cardinality map
`Set.ncard`; the count law is then
`(setBer(univ,p)).map Set.ncard`.

Fourth, identify this measure with `Bin(n,p)`. For every singleton count
`{k}`, the finite set-Bernoulli calculation gives

$$
\binom nk p^k(1-p)^{n-k},
$$

because the index set is `Fin n`. The library's singleton formula for `Bin(n,p)`
is the same. Measures on the natural numbers are determined by their singleton
masses, so the two count measures are equal. This proves the `HasLaw` statement,
after which the existing exact confidence theorem can be applied directly.

The count is one complete episode per indicator. The theorem does not infer
independence from observations, establish the common Bernoulli law from a
controller or plant, or justify treating time samples inside an episode as
independent.

## Zero-failure endpoint

The existing lower-tail polynomial is

$$
B_{n,p}(r)=\sum_{k=0}^{\min(r,n)}\binom nk p^k(1-p)^{n-k},
$$

and the existing strict confidence set is

$$
\mathcal C_δ(r)=\{p\in[0,1]:δ<B_{n,p}(r)\}.
$$

At zero observed failures, only the term $k=0$ remains. Since
`choose(n,0)=1`, $p^0=1$, and $n-0=n$,

$$
B_{n,p}(0)=(1-p)^n.
$$

This is `Ctrllib.binomialLowerTail_zero`, and it does not require `n > 0`.

Now assume $n>0$, $p\in[0,1]$, $0<δ<1$, and set $q=1-p$. Then $q\ge0$ and
the real cast of $n$ is positive. Strict real-power inversion gives

$$
δ^{1/n}<q\quad\Longleftrightarrow\quad δ<q^n.
$$

Substituting $q=1-p$ and rearranging preserves strictness:

$$
δ<(1-p)^n
\quad\Longleftrightarrow\quad
δ^{1/n}<1-p
\quad\Longleftrightarrow\quad
p<1-δ^{1/n}.
$$

Therefore `Ctrllib.binomial_zero_failure_iff` proves

$$
δ<B_{n,p}(0)
\quad\Longleftrightarrow\quad
p<1-δ^{1/n}.
$$

Finally, unfolding the existing confidence-set definition gives

$$
p\in\mathcal C_δ(0)
\quad\Longleftrightarrow\quad
p<1-δ^{1/n},
$$

which is `Ctrllib.mem_binomialUpperConfidenceSet_zero_iff`. All inequalities
remain strict. The result does not silently turn the endpoint into a closed
interval and does not characterize the general observed-count endpoint.

## Extension verification

The two extension modules were checked separately on 16 September 2026 with
the pinned repository wrapper:

```text
20_tools/lake.sh env lean Ctrllib/BernoulliCount.lean
20_tools/lake.sh env lean Ctrllib/BinomialZeroFailure.lean
```

Both checks succeeded. The five new declarations report only
`propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` occurs. This
packaging pass does not claim a full project build, fresh extraction, or
independent source-equivalence validation.
