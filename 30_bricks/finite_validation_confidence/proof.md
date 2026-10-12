# Conventional proof: Finite-family validation confidence

This document is the authored conventional-derivation authority for `finite_validation_confidence`.

## Scope and provenance

This Generated Brick is the finite validation-confidence component extracted from the former `population_risk` bundle. It packages the bounded-mean route used in `population_cvar/validation_certificate.md` and `population_confidence/mean_confidence.md`.

## Definitions and notation

Let $Z_0,\ldots,Z_{n-1}$ be independent validation losses, each taking values in $[a,b]$ almost surely, with the same law as the supplied population loss $Z$. For a fixed threshold $\tau\ge a$, set $H_j=(Z_j-\tau)_+$ and $\bar H=n^{-1}\sum_jH_j$. At level $0\le\alpha<1$, write $\rho=1-\alpha$ and
$$U_\tau=\tau+\rho^{-1}(\bar H+\epsilon).$$
A finite candidate family consists of fixed pairs $(\tau_i,\epsilon_i)$, with the candidate chosen after observing the sample.

## Statement of result

For each fixed candidate, the probability that the population CVaR exceeds the empirical hinge certificate by the formal radius is bounded by the displayed Hoeffding exponential. A finite fixed family has failure probability bounded by the sum of its candidate bounds, and a one-sided almost-sure reconstruction loss bound transfers the result to the target population loss.

## Assumptions

The sample count is positive; validation losses are measurable and independent; each has the declared common law/mean and envelope $[a,b]$; thresholds satisfy $\tau_i\ge a$ and radii satisfy $\epsilon_i\ge0$. The family is fixed before validation, although its selected index may depend on observations. The formal theorem uses outer measure and does not require selector measurability.

## Fixed-threshold certificate

For $H=(Z-\tau)_+$, the envelope $Z\in[a,b]$ and $\tau\ge a$ imply $0\le H\le b-a$. Measurable composition preserves independence. Put $h=\mathbb EH$ and $\sigma^2=(b-a)^2/4$. The bounded-variable sub-Gaussian lemma gives the centered hinge this variance parameter. Independence multiplies the moment-generating bounds, so for $s\ge0$,
$$\mathbb E\exp\left(s\sum_j(h-H_j)\right)\le\exp(n\sigma^2s^2/2).$$
Exponential Markov therefore bounds the probability that the sum is at least $n\epsilon$ by $\exp(-sn\epsilon+n\sigma^2s^2/2)$. For $b>a$, choosing $s=\epsilon/\sigma^2$ gives
$$\Pr\{\mathbb E H-\bar H\ge\epsilon\}\le\exp\left(-\frac{2n\epsilon^2}{(b-a)^2}\right)$$
when $b>a$. When $a=b$, the formal real-division convention makes the theorem's exponential bound equal to $1$, a valid but uninformative bound. Since $C_\alpha(Z)\le\tau+\rho^{-1}\mathbb EH$, failure of $C_\alpha(Z)\le U_\tau$ is contained in this mean lower-tail event. The supporting mean theorem needs only a common mean; the CVaR specialization supplies a common loss law so that the transformed hinge means agree. The captured theorem retains the unsimplified denominator, including its zero-width convention.

## Finite-family selection

Apply the fixed-threshold event inclusion to each member of the fixed family. The union of all candidate failures contains the event that the selected candidate fails, regardless of how the index is chosen from the observations. The union bound therefore gives the sum of the individual exponential radii. If the target loss $Z$ satisfies $Z\le Y+\eta$ almost surely, apply the population-CVaR transfer inequality to add $\eta$ to the certificate.

## Unrestricted empirical CVaR certificate

Assume additionally $a<b$, and fix a nonempty finite grid $G\subseteq[a,b]$
before validation. Let $h\ge0$ be a covering radius: every threshold in
$[a,b]$ is within distance $h$ of some grid point. Use one common hinge-mean
allowance $\eta\ge0$ for all grid points. For the observed sample $z$, write
$Q_n(g)$ for its hinge objective and $C_n$ for unrestricted empirical CVaR.
Choose a grid minimizer $\widehat g\in G$ of $Q_n$; it exists because $G$
is nonempty and finite.

For each fixed $g\in G$, the earlier certificate bounds failure of
$C_\alpha^{\mathrm{pop}}\le Q_n(g)+\eta/\rho$. The finite-family theorem
therefore gives, also for the sample-dependent choice $\widehat g$,

$$
\Pr^*\{C_\alpha^{\mathrm{pop}}>Q_n(\widehat g)+\eta/\rho\}
\le |G|\exp\!\left(-\frac{2n\eta^2}{(b-a)^2}\right).
$$

Here $\Pr^*$ denotes outer probability, matching the existing formal
interface; no measurability of the chosen minimizer is assumed. Each sample
loss lies in $[a,b]$ almost surely by its common law, and the intersection of
these finitely many full-measure events still has probability one. On that
event, the deterministic grid theorem gives

$$
Q_n(\widehat g)=\min_{g\in G}Q_n(g)\le C_n+h/\rho.
$$

Consequently, except on a null set,

$$
\{C_\alpha^{\mathrm{pop}}>C_n+(\eta+h)/\rho\}
\subseteq
\{C_\alpha^{\mathrm{pop}}>Q_n(\widehat g)+\eta/\rho\}.
$$

Outer-measure monotonicity under almost-everywhere inclusion now proves

$$
\Pr^*\!\left\{C_\alpha^{\mathrm{pop}}>C_n+
             \frac{\eta+h}{1-\alpha}\right\}
\le |G|\exp\!\left(-\frac{2n\eta^2}{(b-a)^2}\right).
$$

The allowance $\eta$ and grid penalty $h$ enter additively before division
by $1-\alpha$. The proof does not optimize either parameter. A dense grid
decreases its deterministic error but increases the union-bound factor.
The simplified exponential uses $n>0$ and $a<b$; the raw endpoint retains
the existing concentration expression without dividing by a nonzero width.

## Formal correspondence

The sub-Gaussian MGF and empirical-mean endpoints supply the concentration step. `cvarValidationUpper_eq_cvarObj` identifies the validation expression with the finite-sample objective plus $\epsilon/(1-\alpha)$, while the two finite-family endpoints encode the union and reconstruction steps. Exact independence, measurability, envelope, threshold, radius, and outer-measure binders are retained in the statement appendix.

## What the result establishes and does not

It establishes fixed-threshold, finite-family, and grid-based unrestricted
empirical-CVaR confidence under the declared independent bounded-loss model.
It does not establish DKW quantile control, an episode law, or physical safety.

## Limitations and discrepancies

The sample correspondence and envelope are application premises. Dependent samples within an episode cannot be silently treated as independent episodes. The selector need not be measurable because the formal result uses outer measure. Degenerate envelope and confidence-parameter conventions follow the exact declarations.

## Evidence record

The declarations are from the current 4.34.0 Xylem extract; no new Lean check was run for this packaging pass. The extract reports `propext`, `Classical.choice`, and `Quot.sound`, with no `sorryAx`. Acceptance is not claimed.
