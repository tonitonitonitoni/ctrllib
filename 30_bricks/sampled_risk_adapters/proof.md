# Conventional proof: Sampled margin and state-cost CVaR adapters

This document is the authored conventional-derivation authority for `sampled_risk_adapters`.

## Scope and provenance

This Generated Brick packages two finite SAA instantiations of the reusable CVaR engine. It contains no geometry: a margin, occlusion penalty, or state cost is supplied as a real scenario function by the application.

## Definitions and notation

For scenario $s$, let $m(s)$ be a clearance margin and $o(s)\ge0$ an occlusion penalty. The margin loss is $\ell_m(s)=-m(s)$ and the occluded loss is $\ell_o(s)=-m(s)+o(s)$ under the module convention. For a state cost $J(s)$, `stateLoss` is the corresponding real loss. Apply the finite RU objective at level $0\le\alpha<1$ to each scenario family.

## Statement of result

The margin and state adapters expose the CVaR objective at a scenario threshold, convexity, and minimum-at-scenario characterizations. Larger margins lower the sampled risk; adding nonnegative occlusion penalty cannot lower it. A sampled negative CVaR yields the module's deterministic count statement.

## Assumptions

The scenario family is finite and uses the exact nonempty/index premises of the captured declarations. Margins, penalties, and costs are real-valued. The occlusion comparison needs pointwise nonnegativity. No population law is assumed by the count endpoints.

## Margin CVaR adapter

Unfolding `marginLoss` turns the generic hinge objective into the negative-margin objective. The generic convexity and minimum-at-scenario lemmas apply without changing the threshold variable. If $m_1\le m_2$ pointwise, then $-m_2\le-m_1$, and monotonicity of the finite CVaR gives $C_\alpha(-m_2)\le C_\alpha(-m_1)$. If $o\ge0$, then $-m\le-m+o$, so the occluded risk is at least the unoccluded risk.

## Sampled count guarantee

Let $P=\{j:c<z_j\}$, $N=|P|$, and $\rho=1-\alpha>0$. Suppose, for a
contradiction, that $N>n\rho$. For any $t\le c$, the violating terms give
$$\sum_j(z_j-t)_+\ge N(c-t),\qquad
F(t)\ge t+\frac{N}{n\rho}(c-t)\ge c.$$
For $t>c$, nonnegativity of the hinge sum gives $F(t)\ge t>c$.
Thus $c$ is a lower bound of every objective value and $C_\alpha(z)\ge c$.
The contrapositive is exactly
$$C_\alpha(z)<c\ \Longrightarrow\ |\{j:c<z_j\}|\le n(1-\alpha).$$
For $z_j=-m(s_j)$ and $c=-\delta$, the inequality $c<z_j$ is equivalent to
$m(s_j)<\delta$. Hence a margin CVaR strictly below $-\delta$ bounds the
number of sampled clearances strictly below $\delta$ by $n(1-\alpha)$.
The formal endpoint states this non-strict count bound; no population law enters.

## State-cost adapter

Replacing the scenario margin by an abstract state cost $J$ is a definitional specialization of the same finite hinge objective. Convexity and the minimum-at-scenario characterization follow from the generic engine, with no additional probabilistic or dynamical content.

## Formal correspondence

The wrapper declarations encode the loss definitions and adapter equations; generic engine helpers remain in the manifest inventory. The exact threshold, finite-index, sign, and positivity premises are in `statements.md`.

## What the result establishes and does not

It establishes finite sampled risk comparisons and the count implication under explicit scenario premises. It does not establish population confidence, geometric clearance of an actual robot, or a controller's behavior.

## Limitations and discrepancies

The margin and occlusion functions are fully abstract. A sampled count does not become a population violation probability without an independent sampling theorem. Units and frame meaning belong to the application interface.

## Evidence record

The declarations are in the current Xylem capture. The recorded axiom footprint is `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` is present. Acceptance is not claimed.
