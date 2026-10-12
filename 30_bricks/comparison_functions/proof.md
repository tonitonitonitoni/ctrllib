# Conventional derivation

## Definitions and ray properties

For $f:\mathbb{R}\to\mathbb{R}$, class $\mathcal{K}$ means continuity on
$[0,\infty)$, strict increase there, and $f(0)=0$. Class
$\mathcal{K}_\infty$ adds $f(r)\to\infty$. A class-$\mathcal{K}\mathcal{L}$
function $\beta$ has a class-$\mathcal{K}$ first slice for each $s\ge0$,
and each positive first slice is strictly decreasing to zero as $s\to\infty$.
These are the fields of the Lean structures.

If $0\le a\le b$, strict increase gives $f(a)\le f(b)$, and if $a<b$, it
gives $f(a)<f(b)$. Taking $a=0$ yields $0=f(0)\le f(b)$, and strictness
yields $f(b)>0$ for $b>0$. Thus $f$ maps the ray to the ray and
$f(b)=0$ on the ray exactly when $b=0$. Applying the first-slice property
gives nonnegativity of $\beta$ on the first quadrant.

## Closure operations

If $c>0$, multiplication by $c$ preserves continuity, strict increase,
and the zero value. Composition preserves continuity because the inner map
maps the ray to itself, and preserves strict increase by applying the two
strict inequalities in sequence. Sums preserve strict increase term by term.
For the pointwise minimum, each component is strictly below its corresponding
value at the larger argument, so the minimum is strictly below the minimum at
that argument; the maximum case is analogous. The class-$\mathcal{K}_\infty$
divergence field is preserved by positive scaling and composition.

## Class-KL sign

For a class-$\mathcal{K}\mathcal{L}$ map, the first-slice class-$\mathcal{K}$
properties give $\beta(r,s)\ge0$ whenever $r\ge0$ and $s\ge0$. This is the
nonnegativity endpoint for the closed first quadrant.

## Ray inverse

Continuity, $f(0)=0$, and $f\to\infty$ imply by the intermediate value
theorem that every $y\ge0$ has a preimage $x\ge0$. Strict increase gives
uniqueness, so the restriction of $f$ is a bijection of the ray. The partial
inverse classKInv therefore satisfies both inverse identities on the ray. Its
strict increase follows by reversing the order argument for $f$, and it
diverges because values above $f(\max\{R,0\})$ have inverse at least $R$.
Continuity follows by viewing the restriction as an order isomorphism of the
ray and using continuity of the inverse order isomorphism. The inverse is
consequently class-$\mathcal{K}_\infty$.

These arguments establish exactly the public outputs listed in the manifest.
They say nothing about a function away from the nonnegative ray.
