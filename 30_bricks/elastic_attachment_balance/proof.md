# Elastic attachment energy balance

## Port variables

Let deformation be $\delta=\eta-s(q)$ and let relative velocity be
$\mathrm{rel}=\eta^\prime-(s\circ q)^\prime$. With
$$
\lambda=K\delta+D\delta^\prime,
$$
the attachment storage is
$$
V_a=\frac12u^\mathsf{T}Mu+\frac12\delta^\mathsf{T}K\delta,
$$
where $u=\eta^\prime$. The declared attachment-map and deformation
endpoints are the chain and subtraction rules giving
$\delta^\prime=u-Jq^\prime$.

## Port cancellation

The lumped body receives the attachment force $-\lambda$, while the rigid
subsystem receives $J^\mathsf{T}\lambda$. Their port powers satisfy
$$
 (J^\mathsf{T}\lambda)^\mathsf{T}q^\prime
=\lambda^\mathsf{T}(Jq^\prime),\qquad
(-\lambda)^\mathsf{T}u=-\lambda^\mathsf{T}u.
$$
The port-power difference is therefore
$\lambda^\mathsf{T}(Jq^\prime-u)=-\lambda^\mathsf{T}\mathrm{rel}$.
The storage derivative before substitution is
$$
\dot V_a=u^\mathsf{T}Mu^\prime+\delta^\mathsf{T}K\mathrm{rel}.
$$
Using $M u^\prime=-\lambda+f$, the symmetry of $K$, and
$\lambda=K\delta+D\mathrm{rel}$, this becomes
$$
\dot V_a=u^\mathsf{T}f-w^\mathsf{T}\lambda
-\mathrm{rel}^\mathsf{T}D\mathrm{rel},
\qquad w=u-\mathrm{rel},
$$
which is the exact elasticAttachment_energy_hasDerivAt endpoint.

## Total balance and bound

Adding the lumped, rigid, and attachment derivatives cancels the internal
port power, leaving only external power:
$$
\dot V_{\rm total}=P_{\rm ext}-\delta^{\prime\mathsf{T}}D\delta^\prime.
$$
For positive semidefinite $D$ this is at most $P_{\rm ext}$, and positive
semidefinite $K$ gives $V_a\ge0$.

## Exact endpoint map

- Ctrllib.attachment_port_power_cancel
- Ctrllib.attachmentStorage_hasDerivAt
- Ctrllib.elasticAttachment_total_balance
- Ctrllib.elasticAttachment_total_deriv_le_external
- Ctrllib.attachmentStorage_nonneg

## Boundary

The lumped balance, rigid derivative, and sign convention are theorem inputs.
No physical attachment identification, contact model, or measured power
acceptance is included.
