# Conventional derivation

## Derivative form

Let $f$ converge to $L$, let $f'$ be uniformly continuous, and fix
$\epsilon>0$. Uniform continuity gives $\delta>0$ such that derivatives at
points less than $\delta$ apart differ by less than $\epsilon/2$. Since
$f(t+\delta)-f(t)\to0$, the Mean Value Theorem gives a point
$c\in(t,t+\delta)$ with

$$
f'(c)=\frac{f(t+\delta)-f(t)}{\delta}.
$$

Thus eventually $|f'(c)|<\epsilon/2$. The distance between $t$ and $c$ is
below $\delta$, and the triangle inequality gives $|f'(t)|<\epsilon$. This is
the derivative endpoint barbalat.

## Lyapunov-like form

If $V'\le0$ and $V$ is bounded below, then $V$ is antitone and therefore
converges to the infimum of its range. Applying the derivative form to $V$
gives barbalat_lyapunov.

## Integral form

For uniformly continuous $\phi$, continuity makes

$$
F(t)=\int_0^t\phi(\tau)\,d\tau
$$

differentiable with $F'(t)=\phi(t)$ by the first fundamental theorem of
calculus. A finite limit of $F$ and uniform continuity of $\phi=F'$ satisfy
the derivative form, proving barbalat_integral.
