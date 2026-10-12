# Conventional proof: Standard-normal tail numerator

This document is the authored conventional-derivation authority for `gaussian_tail`.

## Scope and provenance

This Generated Brick records the calculus identity needed for a Gaussian tail numerator. It makes no claim to formalize a Gaussian risk measure or a source-paper theorem.

## Definitions and notation

Let $\phi(w)=(2\pi)^{-1/2}e^{-w^2/2}$ be the standard-normal density. The module defines `stdNormalPdf` and proves the corresponding Mathlib real-Gaussian identity.

## Statement of result

For every $q\in\mathbb R$,
$$\int_q^\infty w\phi(w)\,dw=\phi(q).$$

## Assumptions

The integration is over the real line with Lebesgue measure and the standard Gaussian density. The displayed improper integral is interpreted using the formal interval integral convention. No inverse CDF or tail-probability premise is present.

## Gaussian tail integral

Differentiate the density: $\phi'(w)=-w\phi(w)$. Hence $w\phi(w)=-\phi'(w)$. Integrability on $(q,\infty)$ follows from Gaussian decay. Integrating the derivative over $[q,R]$ gives
$$\int_q^R w\phi(w)\,dw=\phi(q)-\phi(R).$$
As $R\to\infty$, $\phi(R)\to0$, yielding the stated identity. The formal derivative, integrability, limit, and interval-integral endpoints separate these analytic steps.

## Formal correspondence

`stdNormalPdf` supplies the density; `stdNormalPdf_eq` identifies its expression; the derivative, integrability, tail limit, and final integral declarations encode the proof. Exact measure and interval binders remain in the captured statements.

## What the result establishes and does not

It establishes one standard-normal first-moment tail identity. It does not establish a Gaussian quantile, probit inverse, conditional-tail mean, CVaR closed form, or statistical model for an application.

## Limitations and discrepancies

The result is a numerator identity only. Any use with a denominator tail probability or an inverse quantile requires separate premises and results.

## Evidence record

The declaration capture is from the current 4.34.0 extract with no `sorryAx`; the ordinary axiom labels are `propext`, `Classical.choice`, and `Quot.sound`. Acceptance is not claimed.
