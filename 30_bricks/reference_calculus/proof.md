# Reference trajectory calculus

## Reference composition

Let $E$ be a real normed vector space. At a time $t$, take a scalar phase
$u:\mathbb R\to\mathbb R$ and a vector reference curve
$p:\mathbb R\to E$. The theorem assumes the two local derivative identities
$$
\dot u(t)=s(u(t)),\qquad p'(u(t))=p_1(u(t)),
$$
where $s:\mathbb R\to\mathbb R$ and $p_1:\mathbb R\to E$. The chain rule then
gives the vector reference velocity
$$
\frac{d}{dt}p(u(t))=p'(u(t))\,\dot u(t)
                 =s(u(t))\,p_1(u(t)).
$$
In Lean, the final scalar-vector product is represented by
`s (u t) • p₁ (u t)`, and `hasDerivAt_reference_comp` records this conclusion
with the exact `HasDerivAt` premises.

## Reference velocity

For the velocity field $v_d(t)=s(u(t))\,p_1(u(t))$, assume in addition
$$
s'(u(t))=s_1(u(t)),\qquad p_1'(u(t))=p_2(u(t)).
$$
Applying the chain rule separately to the two composed factors yields
$$
\frac{d}{dt}s(u(t))=s_1(u(t))s(u(t)),qquad
\frac{d}{dt}p_1(u(t))=s(u(t))\,p_2(u(t)).
$$
The scalar-vector product rule therefore gives
$$
\begin{aligned}
\dot v_d(t)
 &=\bigl(s_1(u(t))s(u(t))\bigr)p_1(u(t))
   +s(u(t))\bigl(s(u(t))p_2(u(t))\bigr)\\
 &=s(u(t))^2p_2(u(t))
   +\bigl(s_1(u(t))s(u(t))\bigr)p_1(u(t)).
\end{aligned}
$$
The last rearrangement uses commutativity of real scalar multiplication and
associativity of its action on $E$. This is precisely the conclusion of
`hasDerivAt_reference_velocity`; it does not claim that any controller realizes
the reference curve.

## Exact endpoint map

- Ctrllib.hasDerivAt_reference_comp
- Ctrllib.hasDerivAt_reference_velocity

## Boundary

These local calculus facts do not identify a reference trajectory with a
controller command, prove tracking, or provide numerical derivative evidence.
