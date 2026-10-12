---
type: brick_set
set_id: risk_and_estimation
set_kind: topic
title: Risk and estimation
summary: Finite risk algebra, population definitions, confidence statements, and estimation-error
  transfer.
bricks:
- cvar_saa_engine
- sampled_risk_adapters
- var_subadditivity
- gaussian_tail
- cvar_population
- finite_validation_confidence
- binomial_confidence
- estimation_error
---
# Risk and estimation

Finite risk algebra, population definitions, confidence statements, and estimation-error transfer. Each Brick retains its own assumptions and evidence. This reading order supplies no additional composition theorem.

## Reading path

- [Finite-sample CVaR hinge engine](../../30_bricks/cvar_saa_engine/interface.md): The finite equal-weight hinge objective and its algebraic comparison laws.
- [Sampled margin and state-cost CVaR adapters](../../30_bricks/sampled_risk_adapters/interface.md): Finite SAA adapters for margin, occlusion, and state costs.
- [Finite VaR subadditivity counterexample](../../30_bricks/var_subadditivity/interface.md): Concrete finite VaR subadditivity failure.
- [Standard-normal tail numerator](../../30_bricks/gaussian_tail/interface.md): Standard-normal first-moment tail numerator.
- [Population CVaR objective and error transfer](../../30_bricks/cvar_population/interface.md): Population RU objective, lower bound, and one-sided/absolute loss-transfer results.
- [Finite-family validation confidence](../../30_bricks/finite_validation_confidence/interface.md): Finite validation confidence for a fixed threshold or fixed finite candidate family.
- [Exact Binomial lower-tail confidence](../../30_bricks/binomial_confidence/interface.md): Exact finite Binomial CDF, adaptive rejection, and confidence-set inversion.
- [Estimation error and population risk](../../30_bricks/estimation_error/interface.md): Observer recurrences yield finite-time, contraction-radius, and eventual error bounds, while a Lipschitz loss transfers an almost-sure state-error radius into a population-CVaR bound.

## Boundaries

Read each interface before reuse. An algebraic identity, a trajectory estimate, a sampling theorem, and a physical-model correspondence are separate obligations. Membership in this set does not discharge any of them.
