# Conventional proof: Population CVaR objective and error transfer

This document is the authored conventional-derivation authority for `cvar_population`.

## Scope and provenance

This is the population component extracted from the former mixed `population_risk` bundle. Its conventional derivation is retained in `20_context/20_proof_machine/30_risk_and_estimation/population_cvar/README.md`; the former bundle remains a reader-set narrative. The RU objective notation is source-motivated, while the formal comparison proofs are local derivations.

## Definitions and notation

Let $(\Omega,\mathcal F,\mu)$ be a probability space and let $Z:\Omega\to\mathbb R$ be integrable. For $0\le\alpha<1$, write $\rho=1-\alpha$ and
$$F_Z(t)=t+\rho^{-1}\int_\Omega (Z(\omega)-t)_+\,d\mu(\omega),\qquad C_\alpha(Z)=\inf_{t\in\mathbb R}F_Z(t).$$
The hinge is $(u)_+=\max(u,0)$. All inequalities between random variables below are almost sure with respect to the named measure.

## Statement of result

The population hinge is integrable and the objective is bounded below by the population mean. Consequently $\mathbb E[Z]\le C_\alpha(Z)\le F_Z(t)$ for every threshold $t$. Almost-sure loss order and additive error transfer through $C_\alpha$; an almost-sure absolute error at most $\eta$ bounds the absolute CVaR difference by $\eta$.

## Assumptions

The measure is a probability measure, $Z$ (and $Y$ when used) is integrable, and $0\le\alpha<1$. The transfer results require the displayed almost-sure order or absolute-error premise and integrability of the participating losses.

## Population objective

For fixed $t$, the positive-part inequality $(Z-t)_+\le |Z|+|t|$ gives integrability because $Z$ is integrable and a finite constant is integrable on a probability space. Since $\rho>0$, the objective is finite. The pointwise inequality $Z\le t+(Z-t)_+$ and the probability normalization give
$$
\mathbb E[Z]\le t+\mathbb E[(Z-t)_+].
$$
Moreover, $0<\rho\le1$ implies $\rho^{-1}\ge1$. The hinge expectation is nonnegative, hence
$$
\mathbb E[Z]\le t+\mathbb E[(Z-t)_+]\le t+\rho^{-1}\mathbb E[(Z-t)_+]=F_Z(t).
$$
Thus the nonempty range of the finite objective is bounded below by $\mathbb E[Z]$. The defining infimum satisfies $\mathbb E[Z]\le C_\alpha(Z)$, and, being an infimum of this bounded-below range, satisfies $C_\alpha(Z)\le F_Z(t)$ for each $t$.

## Loss-error transfer

Suppose $Z\le Y+\eta$ almost surely. For any threshold $t$, use the shifted threshold $t-\eta$ for $Y$. Pointwise,
$$ (Z-t)_+\le(Y+\eta-t)_+=(Y-(t-\eta))_+.$$
Adding $t=(t-\eta)+\eta$, scaling by the positive $\rho^{-1}$, and integrating gives $F_Z(t)\le F_Y(t-\eta)+\eta$. Taking infima gives $C_\alpha(Z)\le C_\alpha(Y)+\eta$. Pointwise order gives monotonicity by the same argument with $\eta=0$ in the appropriate direction. Applying the one-sided inequality to both $Z-Y$ and $Y-Z$ under $|Z-Y|\le\eta$ produces the absolute difference bound.

## Formal correspondence

`cvarPopObj` and `cvarPop` encode the objective and its infimum. The named integrability, integral, order, and absolute-difference declarations are the public endpoints. The exact probability-measure, integrability, almost-sure, and level binders are authoritative in `correspondence/statements.md`.

## What the result establishes and does not

It establishes population-CVaR comparison under explicit measure-theoretic premises. It does not establish that a finite sample estimates this population quantity, an episode law, a density or quantile representation, or physical/controller validity.

## Limitations and discrepancies

No statistical concentration or empirical-process argument is included. The infimum formulation is used directly; an attained threshold or conditional-tail-mean formula is outside scope. Almost-sure inequalities and integrability must be supplied by the application.

## Evidence record

The current declaration capture is the 4.34.0 Xylem extract with 628 declarations and no extraction errors. Its axiom labels are `propext`, `Classical.choice`, and `Quot.sound`, with no `sorryAx`. Acceptance remains unclaimed.
