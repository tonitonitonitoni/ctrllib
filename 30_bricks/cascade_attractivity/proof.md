# Conventional proof: class-K-infinity cascade attractivity

This Brick gives the comparison proof for the cascade endpoints in Cascade. The attractivity theorem is trajectory-level: it combines a vanishing driving signal with a scalar Lyapunov comparison for the driven signal. The boundedness theorem supplies a Lyapunov-value ceiling. A state-norm ceiling requires a separate properness or inverse-sandwich argument.

## Class-K-infinity transport

Let $\alpha_1:\mathbb{R}\to\mathbb{R}$ be class $\mathcal K_\infty$, let
$x:\mathbb{R}\to E$ be a normed-group trajectory, and let $w:\mathbb{R}\to\mathbb{R}$ satisfy, eventually,

$$
\alpha_1(\|x(t)\|)\le w(t).
$$

The class-$\mathcal K$ properties imply $\alpha_1(r)\ge0$ for $r\ge0$ and
$\alpha_1(r)>0$ for $r>0$. Since $\alpha_1$ is strictly increasing and
unbounded on the nonnegative ray, it has a continuous increasing inverse on
that ray. The inequality above first implies $w(t)\ge0$ eventually and then

$$
\|x(t)\|\le \alpha_1^{-1}(w(t)).
$$

If $w(t)\to0$, continuity of the ray inverse and
$\alpha_1^{-1}(0)=0$ give $\alpha_1^{-1}(w(t))\to0$. Hence
$\|x(t)\|\to0$, and therefore $x(t)\to0$. This is the exact
IsClassKInfinity.tendsto_zero_of_sandwich endpoint. Only the lower sandwich
is needed; an upper comparison function does not enter this implication.

## Attractivity

Let $x_1:\mathbb{R}\to E_1$ and $x_2:\mathbb{R}\to E_2$ be the driven and
driving trajectories, let $V:E_1\to\mathbb{R}$ be the driven comparison value,
and let $v'$ be its supplied derivative value. Assume

$$
a>0,\qquad
\alpha_1\in\mathcal K_\infty,\qquad
\alpha_1(\|x_1(t)\|)\le V(x_1(t))
$$

on $[0,\infty)$, together with continuity of $V(x_1(t))$, the exact
within-domain derivative predicate, and

$$
v'(t)\le-aV(x_1(t))+c\|x_2(t)\|.
$$

Assume also $x_2(t)\to0$. Define
$\varepsilon(t):=c\|x_2(t)\|$. Norm continuity gives
$\varepsilon(t)\to0$ when $c$ is the source's nonnegative coupling coefficient.
The lower sandwich implies

$$
0\le V(x_1(t))
$$

because $\alpha_1$ is nonnegative on the norm ray. The scalar comparison
endpoint therefore applies to

$$
v'(t)\le-av(t)+\varepsilon(t)
$$

and gives $V(x_1(t))\to0$. Applying the class-$\mathcal K_\infty$ transport
above yields $x_1(t)\to0$. The product topology then gives

$$
\boxed{(x_1(t),x_2(t))\longrightarrow(0,0).}
$$

This is exactly the cascade_attractive endpoint. The specialized
propIV1_cascade_attractive endpoint supplies the driving limit by the
abstract COM attractivity theorem and feeds that limit into the same
comparison argument. Its driven-state sandwich, continuity, derivative, and
interconnection inequality remain explicit hypotheses.

## Boundedness

Assume instead that $c\ge0$ and

$$
\|x_2(t)\|\le M_x,\qquad M_x\ge0.
$$

Then

$$
c\|x_2(t)\|\le cM_x,
$$

so the scalar comparison endpoint yields the exact value ceiling

$$
\boxed{
V(x_1(t))\le V(x_1(0))+\frac{cM_x}{a}
}
$$

for every $t\ge0$, which is cascade_bounded. The comparison proof retains the
initial value; it does not silently replace it by an asymptotic floor.

The source theorem's public conclusion is a ceiling on the comparison value.
To convert it into a state-norm bound, one must additionally use the lower
class-$\mathcal K_\infty$ sandwich:

$$
\|x_1(t)\|
\le
\alpha_1^{-1}\left(V(x_1(0))+\frac{cM_x}{a}\right).
$$

This conversion is valid because the right side is nonnegative, but it is a
separate post-processing step and is not an upper-sandwich argument. Together
with the supplied bound on $\|x_2(t)\|$, it also bounds the represented pair
of states.

## Correspondence and limitations

The exact finite or infinite normed spaces, class-function predicates,
continuity and derivative hypotheses, domains, and flow-level composition are
retained in correspondence/statements.md. The theorem establishes
attractivity of the supplied trajectory and a Lyapunov-value ceiling under
the named interfaces. It does not establish epsilon-delta stability,
uniformity over initial conditions, global existence, boundedness of
unobserved driving coordinates, or physical controller correspondence.

The interconnection inequality bundles application-side facts such as a
reshaped Lyapunov decrease and a growth bound. The COM specialization retains
its own flow solution and forward-precompactness premises. No literature
citation is used as evidence that an application satisfies these hypotheses.

## Evidence record

The declaration inventory is drawn from the current Xylem capture, which reports no sorryAx for these source declarations; ordinary labels are recorded. This packaging pass does not run Lean, establish source equivalence, or grant mathematical or scientific acceptance.

## Exact interface audit

The attractivity endpoint consumes $x_2\to0$, a lower class-$\mathcal K_\infty$
sandwich, continuity, the supplied derivative predicate, and the differential
comparison inequality. The bounded endpoint consumes a uniform driver bound
and returns a value ceiling. A norm bound requires the inverse of the lower
sandwich; no upper comparison function is used to infer coercivity.
