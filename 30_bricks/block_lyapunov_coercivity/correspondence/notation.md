# Notation correspondence

The Lean energy has exactly two vector blocks, $v:n\to\mathbb R$ and
$x:m\to\mathbb R$, with matching square matrices $M$ and $K$:

$$
V(v,x)=\frac12v^\mathsf T Mv+\frac12x^\mathsf T Kx.
$$

The ambient state is the product $(v,x)$ and its formal product norm is
$\|(v,x)\|=\max(\|v\|_2,\|x\|_2)$.

Coercivity means a positive lower quadratic bound.
Dimension: two finite Euclidean block spaces. Type: two block vectors,
two square matrices, and a real quadratic energy. Frame: block coordinates
have no physical frame here. Sign: positive-definite blocks yield
nonnegative energy and positive coercivity. Unit: abstract quadratic units;
physical units are external. Lean: blockLyap and ForwardPrecompact encode the
exact types.
