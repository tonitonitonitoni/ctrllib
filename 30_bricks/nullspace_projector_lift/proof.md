# Conventional proof: Nullspace projectors and coordinated lifts

This document is the authored conventional-derivation authority for `nullspace_projector_lift`.

## Scope and provenance

This Generated Brick combines the reusable nullspace projector algebra with the explicit block kernel lift. It is a kinematic/algebraic interface; it does not claim a controller realizes the maps or that a nullspace motion is physically safe.

## Definitions and notation

Let $T$ be a task map and $n$ a candidate nullspace vector. The rank-one projector is the outer-product correction built from a task covector and $n$. With an SPD inertia matrix $M$, let $d=n^\mathsf TMn$ and define the inertia-weighted covector/projector using $d^{-1}$. `kernelLift` is the explicit block vector $[-\bar Bn;0;n]$, and `coordinatedMap` is the corresponding block map.

## Statement of result

The projectors and projected descent velocity are task-annihilated under their kernel premises. The explicit lift is nonzero and is annihilated by the coordinated map; with the inverse/block premise it characterizes the relevant kernel. SPD gives positivity of the inertia denominator.

## Assumptions

The task covector, inertia matrix, block map, inverse, and finite dimensions are exactly those in the declarations. Positivity requires the captured SPD and nonzero-vector premises. No dynamic or physical correspondence is assumed.

## Projector annihilation

For the module's rank-one projector $P=kz^\mathsf T$, multiplication gives
$TP=(Tk)z^\mathsf T$. Thus $Tk=0$ implies $TP=0$, and $T(Px)=0$ follows
for every vector $x$. Idempotence requires the explicit normalization
$z^\mathsf Tk=1$; this is not the complementary projector
$I-kz^\mathsf T$. The inertia-weighted case uses
$z=d^{-1}Mk$ with $d=k^\mathsf TMk$, so the normalization follows when
$d\ne0$. The gradient endpoint is

$$
\nabla^\mathsf T v_{\mathrm{des}}
=\frac{-g\,(k^\mathsf T\nabla)^2}{d},
$$

which is nonpositive only with the stated $g\ge0$ and $d>0$ premises.

## Kernel lift characterization

Substitute $L n=[-\bar Bn;0;n]$ into the declared block map. The middle
equation is zero, the lower equation is $J n=0$, and the upper equation is
$R(-\bar Bn)+R\bar Bn=0$. Thus $J n=0$ implies $\Gamma L n=0$. The last
block of $L n$ is $n$, so $n\ne0$ implies $L n\ne0$. Conversely, if
$\Gamma x=0$, the middle block gives the zero angular component, the lower
block gives $J n=0$, and a left inverse of $R$ gives the first component
$-\bar Bn$. Hence $x=L n$ under exactly the inverse premise.

## Inertia denominator positivity

For nonzero $v$, SPD gives $v^\mathsf TMv>0$. Applying this to the rank-one nullspace vector proves `inertiaDenominator_pos`; substituting the explicit lift proves the kernel-lift specialization. The additional sigma-six existence endpoint is a finite-dimensional existence statement under its explicit positivity premise.

## Formal correspondence

All definitions and support identities are retained in the manifest; the three named outputs select only the reusable annihilation, lift, and positivity boundaries. Exact block dimensions and inverse premises remain in the statement capture.

## What the result establishes and does not

It establishes algebraic task annihilation, kernel-lift characterization, and inertia positivity under explicit premises. It does not establish redundancy of a physical robot, controller stability, or frame/unit correspondence.

## Limitations and discrepancies

The block-map and inverse hypotheses must be proved by the application. Projector sign and coordinate conventions are those in the exact declarations. No simulation or hardware evidence is included.

## Evidence record

The current extract has no `sorryAx`; ordinary labels are `propext`, `Classical.choice`, and `Quot.sound`. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
