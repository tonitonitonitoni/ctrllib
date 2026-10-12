# Conventional proof: spherical-helix coordinate speed

## Definitions and formal scope

Let $R,a,\phi_0,b,u$ be real and set $\theta=au$, $\phi=\phi_0+bu$.
For a fixed centre $c\in\mathbb R^3$, consider the coordinate formula
$$
p(u)=c+R(\cos\phi\cos\theta,\;\cos\phi\sin\theta,\;\sin\phi).
$$
The formal module defines the following vector explicitly:
$$
v(u)=R\begin{pmatrix}
-b\sin\phi\cos\theta-a\cos\phi\sin\theta\\
-b\sin\phi\sin\theta+a\cos\phi\cos\theta\\
b\cos\phi
\end{pmatrix}.
$$
Elementary componentwise differentiation gives $p'(u)=v(u)$ conventionally.
The formal public results below concern the displayed coordinate vector itself:
the module has not yet supplied the `HasDerivAt` representation bridge.
Accordingly, the checked conclusion is a sum of three coordinate squares.

## Squared coordinate speed

Write $A=b\sin\phi$ and $B=a\cos\phi$. Expanding the first two squares gives
$$
(-A\cos\theta-B\sin\theta)^2+
(-A\sin\theta+B\cos\theta)^2
=A^2(\cos^2\theta+\sin^2\theta)+B^2(\sin^2\theta+\cos^2\theta).
$$
The mixed terms cancel with opposite signs. Using $\sin^2\theta+\cos^2\theta=1$
and then adding the third coordinate square yields
$$
\begin{aligned}
\sum_{i=1}^3 v_i(u)^2
&=R^2\bigl(b^2\sin^2\phi+a^2\cos^2\phi+b^2\cos^2\phi\bigr)\\
&=R^2\bigl(b^2+a^2\cos^2\phi\bigr).
\end{aligned}
$$
This identity uses no positivity premise and is the first public endpoint.

## Strict positivity

If $R>0$ and $b\ne0$, then $R^2>0$ and $b^2>0$.
Since $a^2\cos^2\phi\ge0$, the parenthesized factor in the identity is strictly
positive. Its product with $R^2$ is strictly positive, proving the second endpoint
uniformly in $u$. In particular, the explicit vector cannot be zero.

## Correspondence and limitations

Lean uses `Fin 3 → ℝ` and an explicit finite sum. The derivation above uses the
same coordinate formulas; no normed-space wrapper, controller realization,
time-parameterization theorem, or physical unit convention is established by
the two formal endpoints. Nonzero phase speed is not an actuator feasibility claim.
