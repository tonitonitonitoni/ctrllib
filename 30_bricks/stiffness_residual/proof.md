# Stiffness residual injectivity

## Square residual

Let $J$ be square and let $K$ be positive definite. Assume the exact formal
full-column-rank premise that the map $x\mapsto Jx$ is injective (over a
finite-dimensional field this is equivalent to $\det J\ne0$). If
$$
J^\mathsf{T}Kx=0,
$$
injectivity of $J$ makes $J^\mathsf{T}$ invertible, so $Kx=0$. Positive definiteness implies
$x^\mathsf{T}Kx>0$ for $x\ne0$, so $Kx=0$ forces $x=0$. Hence
$$
J^\mathsf{T}Kx=0\Longrightarrow x=0.
$$
The alternate residual endpoint is the same implication in the declaration’s
reassociated form.

## Rectangular Gram

For full-column-rank $J$ and positive-definite $K$, any $x\ne0$ has $Jx\ne0$.
Therefore
$$
x^\mathsf{T}J^\mathsf{T}KJx=(Jx)^\mathsf{T}K(Jx)>0.
$$
Thus $J^\mathsf{T}KJ$ is positive definite. Full column rank is essential
here; this does not extend the square residual endpoint to arbitrary
rectangular maps.

## Exact endpoint map

- Ctrllib.stiffness_residual_injective
- Ctrllib.stiffness_residual_injective'
- Ctrllib.stiffness_gram_posDef

## Boundary

The result is a matrix coercivity implication. It does not identify $K$ with
a physical stiffness or supply a numerical conditioning margin.
