# Conventional proof: Circumcentroidal transform and passivity identity

This document is the authored conventional-derivation authority for `circumcentroidal_passivity`.

## Scope and provenance

This Mixed Brick packages the concrete circumcentroidal matrix algebra used for the Giordano-style reduced coordinates. The source terminology motivates the construction; the formal result is an encoded finite-dimensional identity and does not establish a dynamic source correspondence.

## Definitions and notation

Let $\operatorname{ReducedCoord}=\operatorname{Fin}3\oplus\operatorname{Fin}6$
and $\operatorname{CircumCoord}=\operatorname{Fin}3\oplus\operatorname{ReducedCoord}$.
For $R\in\mathbb R^{3\times3}$, $T\in\mathbb R^{3\times9}$,
$G\in\mathbb R^{6\times3}$, and $J\in\mathbb R^{6\times6}$, define

$$
\Gamma=\operatorname{gammaCircum}(R,T,G,J)
=\begin{bmatrix}R&T_1&T_2\\0&I_3&0\\0&G&J\end{bmatrix},
\qquad T=(T_1\ T_2).
$$

The inner lower-triangular block has determinant $\det J$, while the outer
block matrix is upper triangular. The symbol $Gam$ in
$\operatorname{circumResidual}(M,C,Gam,Gamdot)$ is an arbitrary
$12\times12$ matrix parameter. The passivity declarations do not add the
premise $Gam=\Gamma$; that identification belongs to an application
correspondence argument. The coordinate abbreviations and all block
dimensions are those in the module.

## Statement of result

The determinant endpoint gives $\det\Gamma=\det J$ when $R\in SO(3)$.
The inverse endpoint gives $\Gamma^{-1}\Gamma=I$ only after the explicit
premise that $\det J$ is a unit. Separately, for arbitrary $Gam,C,Gamdot$
and symmetric $M$, the residual quadratic form is zero; the reduced endpoint
is its $9\times9$ lower-right block restriction.

## Assumptions

For the transform, $R\in SO(3)$, $T$ is arbitrary of size $3\times(3+6)$,
$G$ has size $6\times3$, and $J$ has size $6\times6$ over $\mathbb R$;
the index sets are finite. The inverse additionally assumes
$\operatorname{IsUnit}(\det J)$. For the passivity identity, $M,C,Gam,Gamdot$
are arbitrary square matrices indexed by $\operatorname{CircumCoord}$ and
the only substantive premise is $M^\mathsf T=M$. The block extraction is
valid for every finite direct-sum index. Identifying these matrices with a
physical manipulator or a source-paper dynamic equation is external.

## Circumcentroidal transform

Partition $T=(T_1\ T_2)$ so that the concrete matrix is

$$
\Gamma=
\begin{bmatrix}
R&T_1&T_2\\
0&I_3&0\\
0&G&J
\end{bmatrix}.
$$

The outer $3+(3+6)$ block form is upper triangular, so its determinant is
$\det R$ times the determinant of the inner lower-triangular block. Since
$R\in SO(3)$ gives $\det R=1$, and the inner determinant is
$\det I_3\det J$, one obtains

$$
\det\Gamma=\det J.
$$

If $\det J$ is a unit, then this determinant is a unit and the formal
nonsingularity theorem supplies $\Gamma^{-1}\Gamma=I$. This is the exact
conditional inverse result; it does not claim invertibility for an
arbitrary $J$.

## Circumcentroidal passivity

For arbitrary $Gam,C,Gamdot$, expand the residual definition using
$P=Gam^{-1}$ and $\dot P=-Gam^{-1}Gamdot\,Gam^{-1}$:

$$
\begin{aligned}
\operatorname{circumResidual}(M,C,Gam,Gamdot)
={}&\dot P^\mathsf T M P+P^\mathsf T(C+C^\mathsf T)P
 +P^\mathsf T M\dot P\\
&-2P^\mathsf T(CP+M\dot P).
\end{aligned}
$$

Here the dot on $P$ names the rate expression used by the definition; the
Lean endpoint does not prove that it is a time derivative. The house-form
identity is the ring rearrangement

$$
Gam^{-\mathsf T}\bigl(C-MGam^{-1}Gamdot\bigr)Gam^{-1}
=Gam^{-\mathsf T}\bigl(CGam^{-1}
 +M(-Gam^{-1}Gamdot Gam^{-1})\bigr).
$$

With $M^\mathsf T=M$, the transported factorization reduces the quadratic
form of this residual to zero for every full vector. This endpoint is pure
matrix algebra: no trajectory equation, or
$Gam=\operatorname{gammaCircum}(R,T,G,J)$ substitution is proved. Finally,
for $w\in\mathbb R^9$, use the supported-vector identity

$$
(0,w)^\mathsf T A(0,w)=w^\mathsf T A_{22}w
$$

to obtain the reduced declaration.

## Formal correspondence

`gammaCircum` and `circumResidual` are definitions. The determinant, inverse, block dot-product, house-form, and passivity declarations are the exact public/support inventory. Their finite dimensions and matrix conventions remain in `statements.md`.

## What the result establishes and does not

It establishes the conditional concrete matrix inverse and encoded passivity
identity. It does not establish that a physical system has these matrices,
that the source's dynamics equal the encoded residual, or that a controller
converges.

## Limitations and discrepancies

The product-rule calculus, dynamic identification $P=\Gamma^{-1}$, and source-to-formal block extraction are open correspondence obligations. Use “circumcentroidal dynamics” for the transformed-coordinate terminology.

## Evidence record

The current declaration capture has no `sorryAx` and records only `propext`, `Classical.choice`, and `Quot.sound`. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
## Explicit block and invertibility conditions

The determinant conclusion is

$$
\det(\operatorname{gammaCircum}(R,T,G,J))=\det J
$$

under the declared special-orthogonal hypothesis on $R$. The inverse
conclusion adds the explicit side condition that $\det J$ is a unit. It is
therefore a conditional inverse witness, rather than a claim that the
transform is invertible for every $J$.

For a reduced vector $w$, embed it as $(0,w)$ in the full direct-sum
coordinate. The block extraction identity is

$$
(0,w)^\mathsf{T}A(0,w)=w^\mathsf{T}A_{22}w.
$$

The full passivity endpoint applies this identity to the encoded
circumResidual; the reduced endpoint follows without adding a product-rule or
trajectory theorem.
