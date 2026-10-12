# Conventional derivation

## LaSalle conclusion

Let $x(t)=\phi(t,x_0)$ be a forward trajectory whose forward orbit has compact
closure. Assume $V$ is continuous on that compact closure and

$$
\frac{d}{dt}V(x(t))=DV(x(t))[F(x(t))]\le0.
$$

The forward orbit is contained in the compact set given by its supplied
orbit-closure; intersecting that closure with the relevant $V$-sublevel gives
the compact absorber used by the omega-limit argument. The nonincreasing
function $t\mapsto V(x(t))$ has a finite limit $L$ (its infimum). Define the omega-limit set by

$$
\omega(x)=\{y:\text{there are }t_n\to\infty\text{ with }x(t_n)\to y\}.
$$

Precompactness makes this set nonempty. If $y\in\omega(x)$, continuity of the
flow transfers the shifted trajectory $\phi(s,x(t_n))$ to
$\phi(s,y)$, so $\omega(x)$ is invariant. Continuity of $V$ along the
subsequence gives $V(y)=L$; hence $V$ is constant on $\omega(x)$.

For $y\in\omega(x)$, invariance makes $s\mapsto\phi(s,y)$ a curve in
$\omega(x)$, so its constant $V$ value has derivative zero at $s=0$.
The solution chain rule therefore gives the explicit conclusion

$$
DV(y)[F(y)]=0.
$$

This is stronger than merely repeating the nonpositive derivative inequality:
it uses constancy of $V$ on the invariant omega-limit set.

## Neighborhood conclusion

If the omega-limit set is contained in a closed target set $S$, assume the
trajectory visits the complement of an arbitrary neighborhood of $S$
arbitrarily late. A subsequence of such visits has a convergent subsubsequence
by precompactness. Its limit belongs to the omega-limit set and hence to $S$,
contradicting that every selected point stays outside the neighborhood.
Therefore the trajectory eventually belongs to every prescribed neighborhood
of $S$.

The theorem uses supplied flow and solution witnesses throughout; it does not
prove that an ODE has a solution or that a physical system realizes the flow.
