# Conventional proof: Seven-DOF augmented passivity algebra

This document is the authored conventional-derivation authority for `seven_dof_passivity`.

## Scope and provenance

This Generated Brick isolates the passivity portion of `SevenDof`. It extends abstract matrix transport to the encoded augmented seven-DOF algebra. It does not instantiate a source controller or prove trajectory behavior.

## Definitions and notation

Let $M,C,Ginv,Gdot,Ginvdot$ be finite square matrices over a commutative
ring. In an application, $Ginv$ and $Ginvdot$ may represent an inverse and
its rate, but the formal declarations do not introduce a time variable or
prove invertibility from a determinant. The inverse-rate endpoint instead
assumes the one-sided identity $Ginv\,G=I$ and the product-rule premise
$Gdot\,Ginv+G\,Ginvdot=0$. The augmented coordinate and velocity variables
are arbitrary finite vectors. A skew matrix $S$ satisfies
$x^\mathsf TSx=0$.

## Statement of result

The inverse derivative identity and congruence-skew identity decompose the augmented power expression into symmetric derivative terms and a skew term; the skew term contributes zero, yielding `augmented_passivity_identity`.

## Assumptions

For inv_deriv_eq, the exact assumptions are
$Ginv\,G=I$ and $Gdot\,Ginv+G\,Ginvdot=0$ over a commutative ring. The
passivity endpoints additionally assume $M^\mathsf T=M$ and the displayed
inverse-rate substitution
$Ginvdot=-Ginv\,Gdot\,Ginv$. These are algebraic inputs; the product-rule
premise and any interpretation as differentiability are external. Source and
controller correspondence is external.

## Augmented passivity

The endpoint inv_deriv_eq is purely algebraic: from the supplied identities
$G_{\mathrm{inv}}G=I$ and
$\dot G\,G_{\mathrm{inv}}+G\,\dot G_{\mathrm{inv}}=0$, left multiplication by
$G_{\mathrm{inv}}$ yields

$$
G_{\mathrm{inv}}\dot G_{\mathrm{inv}}
=-G_{\mathrm{inv}}\dot G\,G_{\mathrm{inv}}.
$$

No differentiation is proved by this theorem; the product identity must be
supplied by an external trajectory or calculus argument. Congruence transport
preserves skew symmetry. Expanding the declared residual gives the
additive-decomposition endpoint, and a skew matrix contributes zero to a
quadratic form:

$$
x^\mathsf{T}Sx=0\quad\text{when }S^\mathsf{T}=-S.
$$

This is the algebraic route to augmented_passivity_identity.

## Formal correspondence

The five declarations above are the selected public/support path. Exact finite dimensions, function arguments, and derivative premises are retained in `statements.md`.

## What the result establishes and does not

It establishes the encoded algebraic passivity identity. It does not establish that a physical seven-DOF manipulator has the encoded matrices, nor stability, convergence, or experimental behavior.

## Limitations and discrepancies

The derivative and skew premises remain application/model obligations. No parameter-uniform margin or source-equivalence claim is included.

## Evidence record

The current capture reports no `sorryAx` and only the ordinary axiom labels. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
