# Conventional proof: Finite-sample CVaR hinge engine

This document is the authored conventional-derivation authority for the
finite-sample CVaR hinge engine. The generated interface and captured
statements retain the formal binders; they do not replace this derivation.

## Scope and provenance

This is a Generated Brick packaging the finite equal-weight
Rockafellar–Uryasev hinge formulation in CvarInfForm. It makes no
literature-novelty claim and does not assert that a sampled loss is a
population law.

## Definitions and notation

Let a finite sample have size $n>0$, losses
$z_0,\ldots,z_{n-1}\in\mathbb R$, and level $0\le\alpha<1$. Put
$\rho=1-\alpha>0$. The hinge is $(u)_+=\max(u,0)$ and the empirical
objective is
$$
F(t)=t+\frac{1}{n\rho}\sum_{j=0}^{n-1}(z_j-t)_+.
$$
The SAA CVaR is $\inf_t F(t)$. CvarInfForm represents the finite sample
with Lean finite functions and explicit averages.

## Statement of result

The minimum-at-sample characterization identifies the SAA expression with the
RU objective. The supporting bounds and comparison lemmas establish
convexity, monotonicity, translation, positive homogeneity, and subadditivity
under their exact formal premises.

## Assumptions

The level satisfies $0\le\alpha<1$ and the sample is finite with positive
cardinality where an average is used. Losses are real-valued. Any
interpretation as a population risk, validation sample, margin, or state cost
is an application premise.

## Finite CVaR objective

Each map $t\mapsto(z_j-t)_+$ is convex, being the maximum of two affine
functions. Positive scaling, finite summation, and addition of $t$ prove
convexity of $F$. This step needs only $\alpha<1$ and $n>0$.

For the minimum characterization, put $a=\min_j z_j$ and $b=\max_j z_j$.
For $t\le a$,
$$F(t)=\frac{\bar z}{\rho}-\frac{\alpha}{\rho}t,$$
which is nonincreasing because $\alpha\ge0$. For $t\ge b$, $F(t)=t$,
which is increasing. Between consecutive distinct sample values every hinge
has a fixed affine expression; consequently $F$ is affine there and its
minimum on that interval occurs at an endpoint. Thus some sample value
$t_*=z_{j_*}$ minimizes $F$ over the entire real line. Repeated values do not
affect the argument, and $\alpha=0$ merely makes the leftmost interval flat.
Therefore
$$C_\alpha(z)=\inf_t F(t)=F(z_{j_*})\le F(t)\quad(t\in\mathbb R).$$
Boundedness below can also be seen directly: averaging
$z_j\le t+(z_j-t)_+$ and using $1/\rho\ge1$ gives $\bar z\le F(t)$.

## CVaR coherence

If $z_j\le y_j$ pointwise, then
$(z_j-t)_+\le(y_j-t)_+$ for every $t$, hence the objective and its infimum are
ordered: evaluate the smaller objective at a minimizing threshold of the
larger one. For a constant sample $z_j=c$, the mean lower bound and
$F(c)=c$ give $C_\alpha(c)=c$.

Adding $c$ to every loss gives $F_{z+c}(t)=c+F_z(t-c)$. Since translation of
the threshold is a bijection of $\mathbb R$, taking minima proves translation
equivariance. For $\lambda>0$,
$F_{\lambda z}(\lambda t)=\lambda F_z(t)$ and the same bijection argument
proves positive homogeneity; $\lambda=0$ follows from the constant-sample result.

For two samples on the same finite index set,
$$ (z_j+y_j-(s+t))_+\le(z_j-s)_++(y_j-t)_+,$$
so $F_{z+y}(s+t)\le F_z(s)+F_y(t)$. Choose minimizing thresholds for
$z$ and $y$. Comparing the minimum of the left objective with this candidate
threshold proves $C_\alpha(z+y)\le C_\alpha(z)+C_\alpha(y)$.

## Threshold continuity and finite-grid approximation

The grid approximation uses a nearby threshold in place of an exact
minimizer. The proof first controls the change in the objective, then applies
the minimum-at-sample result already established above. No sampling law is
needed: the following statements hold for each fixed real loss sample.

Let $s\le t$ and write $d=t-s\ge0$. For every loss $z_j$,

$$
(z_j-s)_+-d\le (z_j-t)_+\le (z_j-s)_+.
$$

The upper inequality follows because $z_j-t\le z_j-s$ and the positive-part
map is monotone. For the lower inequality, both $z_j-s=(z_j-t)+d$ and
$0\le d$ give $(z_j-s)_+\le(z_j-t)_++d$.
Summing over the $n$ sample values yields

$$
-nd\le\sum_j\bigl((z_j-t)_+-(z_j-s)_+\bigr)\le0.
$$

Since $n\rho>0$, the definition of $F$ implies

$$
d-\frac d\rho\le F(t)-F(s)\le d.
$$

We have $0<\rho\le1$, so $d\le d/\rho$ and
$d-d/\rho\ge-d/\rho$. Thus $|F(t)-F(s)|\le d/\rho$.
Interchanging $s$ and $t$ handles the other order and proves, for all real
thresholds,

$$
|F(t)-F(s)|\le\frac{|t-s|}{1-\alpha}.
$$

This is a global Lipschitz bound for the threshold objective. The ordered
hinge estimate keeps the contribution of the linear threshold term; bounding
the two terms independently would give an unnecessarily larger constant.

Now let $G$ be a nonempty finite set of real thresholds and let $h\ge0$.
Suppose each sample value has a grid point within distance $h$. Define

$$
C_G=\min_{g\in G}F(g),\qquad C=\inf_{t\in\mathbb R}F(t).
$$

The finite minimum exists because $G$ is nonempty. Since $C\le F(g)$ for
every threshold, $C\le C_G$.

By the minimum-at-sample theorem, some $t_*=z_{j_*}$ satisfies $F(t_*)=C$.
Choose $g_*\in G$ with $|g_*-t_*|\le h$. The Lipschitz estimate gives

$$
C_G\le F(g_*)\le F(t_*)+\frac{|g_*-t_*|}{\rho}
\le C+\frac h\rho.
$$

Combining the two comparisons proves the approximation theorem:

$$
\boxed{\quad 0\le C_G-C\le\frac h{1-\alpha}.\quad}
$$

In particular, suppose all losses lie in $[a,b]$ and every point of $[a,b]$
has a point of $G$ within distance $h$. Applying the covering condition to
each $z_j$ supplies the hypothesis just used. This proves the atlas's
finite-grid result. Requiring $G\subseteq[a,b]$ is allowed but unnecessary;
additional grid points outside the interval cannot invalidate the estimate.
Repeated losses, $\alpha=0$, and a degenerate support interval are included.
An empty sample, an empty grid, and $\alpha=1$ are excluded by the hypotheses.

The conclusion controls deterministic threshold discretization. A
population-confidence certificate still requires the separate statistical
theorem and its composition with this bound.

## Formal correspondence

The displayed objective is encoded by cvarObj and its threshold infimum by
cvarSAA; all helper declarations remain in the manifest inventory. Lean
proves the named inequalities under the captured finite-function and order
assumptions. This correspondence does not validate a source transcription or
supply an application loss model.

`Ctrllib.cvarObj_threshold_lipschitz` is the displayed global threshold
estimate. `Ctrllib.cvarGrid_approximation` formalizes the interval-cover
version of the grid result, representing the minimum as
`G.inf' hG (fun g => cvarObj α Z g)`. Its premises include positive sample
size, $0\le\alpha<1$, all sample losses in $[a,b]$, a nonempty finite grid,
the interval-cover condition, and $h\ge0$. The conventional argument above
shows why proximity at sample values suffices for the proof; the public Lean
endpoint uses the stated interval-cover interface.

## What the result establishes and does not

It establishes the finite SAA objective and the named algebraic risk
comparisons. It does not establish statistical consistency, population CVaR
estimation, quantile formulas, or safety of a controller using the score.

## Limitations and discrepancies

The minimum is attained at a sample value, including samples with ties. This
does not supply a sorted-tail averaging formula or a population sampling law.
The exact level and cardinality conventions are retained in the captured declarations.

## Evidence record

The declaration list comes from
20_tools/generated/xylem/declarations.json, generated with the repository Lean
4.34.0 toolchain. The recorded axiom profile is propext, Classical.choice,
and Quot.sound; no sorryAx occurs in the extract. Mathematical and scientific
acceptance are not claimed.
