---
type: brick_set
set_id: population_risk
set_kind: topic
title: Population risk and validation confidence
summary: Population CVaR, finite-family validation, and exact binomial confidence as separate reusable interfaces.
bricks:
  - cvar_population
  - finite_validation_confidence
  - binomial_confidence
---
# Population risk and validation confidence

This set separates the population risk functional, a finite-family validation
chain, and exact binomial confidence. Each has different probabilistic
premises. Reading them together does not derive an episode law or turn the
three contracts into one end-to-end guarantee.

## Included Bricks and reading path

| Brick | Purpose |
| --- | --- |
| [Population CVaR](../../30_bricks/cvar_population/interface.md) | Define the population infimum objective for an integrable loss and prove loss-comparison guarantees. |
| [Finite validation confidence](../../30_bricks/finite_validation_confidence/interface.md) | Transfer bounded independent validation losses into fixed-threshold and fixed-finite-family CVaR certificates. |
| [Binomial confidence](../../30_bricks/binomial_confidence/interface.md) | Invert a finite binomial lower-tail test under an explicitly supplied binomial law. |

Start with the population functional, then inspect the additional sampling
assumptions in validation. Read binomial confidence as a separate law-based
result. Its supplied law is not a consequence of membership in this set.

## Boundaries and open items

Independence, integrability, boundedness, the finite candidate family, and
the binomial law must be supplied where the selected theorem requires them.
The set adds no unrestricted empirical-optimizer theorem, stochastic
