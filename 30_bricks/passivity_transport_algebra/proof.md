# Passivity and transported skew algebra

## Skew cancellation

Let $S=M^\prime-2C$ and assume $S^\mathsf{T}=-S$. For any vector $v$, the
scalar $q=v^\mathsf{T}Sv$ equals its transpose, hence
$$
q=v^\mathsf{T}S^\mathsf{T}v=-v^\mathsf{T}Sv=-q.
$$
Over $\mathbb R$, this implies $q=0$. Substituting $S=M^\prime-2C$ proves
mdot_sub_two_coriolis_skew and dotProduct_mulVec_self_of_skew.

## Passivity identity

Differentiating kinetic energy gives
$$
\frac{d}{dt}\frac12v^\mathsf{T}Mv
=v^\mathsf{T}Ma+\frac12v^\mathsf{T}M^\prime v.
$$
Using $Ma+Cv+Dv+g=\tau$ and the cancellation,
$$
\frac{d}{dt}\frac12v^\mathsf{T}Mv
=v^\mathsf{T}\tau-v^\mathsf{T}Dv.
$$
This is passivity_identity after the declared potential and input terms are
included.

## Congruence transport

For a coordinate matrix $P$, set
$$
\widetilde M=P^\mathsf{T}MP,\quad
\widetilde C=P^\mathsf{T}CP,\quad
\widetilde M^\prime=P^\mathsf{T}M^\prime P.
$$
Product and transpose expansion gives
$$
\widetilde M^\prime-2\widetilde C
=P^\mathsf{T}(M^\prime-2C)P.
$$
Thus transported_skew follows by transposition, and applying the same
quadratic cancellation gives transported_passivity_identity.

## Characteristic extension

Over a field with characteristic different from two, $q=-q$ implies $q=0$
because two is invertible. This is
dotProduct_mulVec_self_of_skew_of_charP.

## Boundary

No endpoint derives $M^\prime$ from a configuration path, extracts a
particular block size, or proves source-model correspondence.
