# Conventional proof: Seven-DOF task/self-motion decoupling

This document is the authored conventional-derivation authority for `seven_dof_decoupling`.

## Scope and provenance

This Generated Brick records the abstract seven-DOF block decoupling algebra. It does not identify the abstract symbols with a source controller or a measured robot.

## Definitions and notation

Let $G$ be the square augmented task map, $P$ its inverse witness,
$\hat k$ the self-motion column, and $M$ an inertia-like matrix. For a
selected coordinate vector $e_j$, the declarations assume $G P=I$ and
$\hat k=P e_j$. Thus the self-motion column is characterized by
$G\hat k=e_j$, rather than by a scalar equality to $1$.

## Statement of result

The formal block identities establish symmetry of $\hat M$, vanishing task/self-motion cross terms, orthogonality in the $M$ metric, and positivity of the self-motion inertia denominator.

## Assumptions

The exact inverse, symmetry, finite dimensions, row construction, and
positive-definiteness premises in the signatures are required. In particular,
the column/row decoupling uses
$\operatorname{denom}\,G^\mathsf T e_j=M\hat k$; the positive endpoint uses
$M\succ0$. No physical rank or source equation is inferred.

## Task/self-motion decoupling

The endpoint gamma_a_khat_eq uses the exact hypotheses
$G P=I$ and $\hat k=P e_j$ to obtain

$$
G\hat k=GPe_j=e_j.
$$

The self-motion column theorem additionally requires the explicit row relation
$\mathrm{denom}\,G^\mathsf{T}e_j=M\hat k$. It then rewrites
$P^\mathsf{T}M\hat k$ as $\mathrm{denom}\,e_j$, so every off-diagonal entry
in that column vanishes. The row theorem requires symmetry
$M^\mathsf{T}=M$ and obtains the transpose conclusion. The metric
orthogonality endpoint uses the same row relation and the premise
$e_j^\mathsf{T}Gc=0$:

$$
\hat k^\mathsf{T}Mc
=\mathrm{denom}\,e_j^\mathsf{T}Gc=0.
$$

Finally, substituting $c=\hat k$ and using $G\hat k=e_j$ gives
$\hat k^\mathsf{T}M\hat k=\mathrm{denom}$. Positive definiteness then makes
this scalar strictly positive only after the theorem's nonzero conclusion for
$\hat k$ is established from $G\hat k=e_j$.

## Formal correspondence

All seven declarations are retained because the row/column helpers explain the final decoupling output. Exact abstract binders and dimensions are in the capture.

## What the result establishes and does not

It establishes the encoded algebraic decoupling and positive scalar denominator. It does not establish source/controller correspondence, physical redundancy, or trajectory convergence.

## Limitations and discrepancies

The abstract inverse and SPD premises must be discharged by the consuming application. Source matrix identification remains open.

## Evidence record

The capture has no `sorryAx`; ordinary labels are `propext`, `Classical.choice`, and `Quot.sound`. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
