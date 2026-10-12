# Conventional proof: scalar phase error and product flow

## State and component interfaces

Write $z=(v,e)\in\mathbb R^3\times\mathbb R^3$ and $q\in\mathbb R$.
The point-mass component has the encoded field
$$
F_{\mathrm{pm}}(v,e)=(-m^{-1}(dv+ke),v).
$$
For $m,d,k>0$, the ideal point-mass Brick supplies a global flow $\Phi_t$
solving this field and satisfying $\Phi_t(z_0)\to0$ for every $z_0$.
We use those results at their stated interface. The additional component is
the scalar equation $\dot q=-\lambda q$; it has no coupling back into $F_{\mathrm{pm}}$.

## Scalar flow and derivative

Define $\psi_t(q)=e^{-\lambda t}q$ for all real $t,q,\lambda$.
The exponential addition law gives
$$
\psi_{s+t}(q)=e^{-\lambda s}e^{-\lambda t}q
=\psi_s(\psi_t(q)),\qquad \psi_0(q)=q.
$$
Continuity of multiplication and the exponential gives joint continuity in
$(t,q)$. These facts establish the flow laws. Differentiating with respect to
$t$ by the chain rule gives
$$
\frac{d}{dt}\psi_t(q_0)=-\lambda e^{-\lambda t}q_0
=-\lambda\psi_t(q_0).
$$
Thus the derivative agrees with the scalar field everywhere. No sign condition
on $\lambda$ is required for this solution identity.

## Scalar convergence

If $\lambda>0$, then $-\lambda t\to-\infty$ as $t\to+\infty$.
The exponential tends to zero at negative infinity, so multiplication by the
fixed initial value gives $\psi_t(q_0)\to0$.

## Product solution

Define $\Psi_t(z,q)=(\Phi_t(z),\psi_t(q))$. Joint continuity and the two
flow laws hold componentwise. Under $m,d,k>0$, the point-mass solution
theorem and the scalar derivative calculation give
$$
\frac{d}{dt}\Psi_t(z_0,q_0)
=\bigl(F_{\mathrm{pm}}(\Phi_t(z_0)),-\lambda\psi_t(q_0)\bigr).
$$
This is exactly the augmented field evaluated at $\Psi_t(z_0,q_0)$.
The public formal solution theorem retains the three positive point-mass
parameter premises even though the scalar calculation itself does not use them.

## Joint convergence

If also $\lambda>0$, both components tend to zero. To see joint convergence
directly, use the product norm $\|(z,q)\|=\max\{\|z\|,|q|\}$.
Given $\varepsilon>0$, choose times after which each component norm is below
$\varepsilon$; after the larger of those times the product norm is below
$\varepsilon$. Hence $\Psi_t(z_0,q_0)\to(0,0)$.

## Correspondence and limitations

The formal proof composes the existing point-mass convergence declaration with
the scalar convergence declaration using the product topology. It establishes
this autonomous uncoupled product system. It does not identify a robot’s
moving reference, arbitrary matrix gains, a sampled implementation, switching,
saturation, or a controller modification with that system.
