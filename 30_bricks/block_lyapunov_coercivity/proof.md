# Conventional derivation

## Block quadratic energy

For two finite real vectors $v,x$ and square matrices $M,K$ of their respective
dimensions, the exact stored energy is
$$V(v,x)=\tfrac12v^\mathsf{T}Mv+\tfrac12x^\mathsf{T}Kx.$$
First assume only that $M,K$ are symmetric, with eigenvalue bounds
$a_M\le\lambda_i(M)\le b_M$ and $a_K\le\lambda_j(K)\le b_K$.
In an orthonormal eigenbasis the quadratic form is the sum of each eigenvalue
times the square of its coordinate. Bounding each eigenvalue above and below
and using invariance of the sum of squares gives
$$\tfrac12a_M\|v\|_2^2+\tfrac12a_K\|x\|_2^2
\le V(v,x)\le
\tfrac12b_M\|v\|_2^2+\tfrac12b_K\|x\|_2^2.$$
This sandwich does not require positive definiteness.

Now assume both index types are nonempty and $M,K$ are positive definite.
Their finite eigenvalue minima $a_M,a_K$ are strictly positive, so
$c=\tfrac12\min(a_M,a_K)>0$. The lower bound implies
$$c(\|v\|_2^2+\|x\|_2^2)\le V(v,x).$$
This proves coercivity and nonnegativity. If $V(v,x)=0$, both nonnegative
squared norms must vanish, hence $v=x=0$. Conversely, substitution of the
zero vectors gives $V(0,0)=0$.

## Norm coercivity and precompactness

The formal state is the product of two Euclidean spaces. Its product norm is
$\|(v,x)\|=\max(\|v\|_2,\|x\|_2)$, rather than the Euclidean norm of a
concatenated vector. Therefore the needed relation is the inequality
$$\|(v,x)\|^2\le\|v\|_2^2+\|x\|_2^2.$$
Multiplication by $c>0$ and the preceding lower bound give
$c\|(v,x)\|^2\le V(v,x)$, exactly the norm-coercivity endpoint.

Finally supply a flow $\varphi$ on this product space and an initial state
$y_0$ with the explicit forward-energy premise
$$V(\varphi_t(y_0))\le V(y_0)\quad(t\ge0).$$
It follows that
$$\|\varphi_t(y_0)\|\le\sqrt{V(y_0)/c}\quad(t\ge0).$$
The radius is well defined because $V(y_0)\ge0$. The orbit is bounded, and
finite dimension makes its closure compact. This proves forward
precompactness. The Brick derives the coercive bound from the matrices;
the flow and its forward-energy inequality are supplied by the caller.
