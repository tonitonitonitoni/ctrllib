# Conventional proof: König decomposition

## Objects and assumptions

Let $E$ be a real inner-product space and $S$ a finite index set.
For each $i\in S$, choose $m_i\in\mathbb R$ and $w_i,w_i^\prime\in E$.
Let $v,v^\prime\in E$ and put $m_t=\sum_{i\in S}m_i$.
Assume the two balance identities
$$
\sum_{i\in S}m_iw_i=0,\qquad \sum_{i\in S}m_iw_i^\prime=0.
$$
Only the first is needed for the single-field conclusions. These are algebraic
assumptions; no positivity of the weights or division by $m_t$ is involved.

## Cancellation of the cross term

Linearity in the second argument and compatibility with real scalar multiplication give
$$
\sum_{i\in S}m_i\langle v,w_i\rangle
=\left\langle v,\sum_{i\in S}m_iw_i\right\rangle
=\langle v,0\rangle=0.
$$
Symmetry of the real inner product likewise gives
$\sum_i m_i\langle w_i,v^\prime\rangle=0$.
The same argument applied to the primed balance gives
$\sum_i m_i\langle v,w_i^\prime\rangle=0$.

## Polarized decomposition

Expand each summand using bilinearity:
$$
\langle v+w_i,v^\prime+w_i^\prime\rangle
=\langle v,v^\prime\rangle+\langle v,w_i^\prime\rangle
+\langle w_i,v^\prime\rangle+\langle w_i,w_i^\prime\rangle.
$$
Multiply by $m_i$ and sum over the finite set. The first term factors because
it does not depend on $i$; both mixed sums vanish by the preceding calculation.
Consequently,
$$
\sum_{i\in S}m_i\langle v+w_i,v^\prime+w_i^\prime\rangle
=m_t\langle v,v^\prime\rangle+\sum_{i\in S}m_i\langle w_i,w_i^\prime\rangle.
$$
This is the polarized endpoint. It expresses the absence of cross terms in
this finite quadratic form under the two supplied balance conditions.

## Kinetic and energy forms

Set $v^\prime=v$ and $w_i^\prime=w_i$. The second balance is then identical to
the first. Using $\langle x,x\rangle=\|x\|^2$ gives
$$
\sum_{i\in S}m_i\|v+w_i\|^2=m_t\|v\|^2+\sum_{i\in S}m_i\|w_i\|^2.
$$
Multiplying this identity by $1/2$ gives
$$
T=\tfrac12m_t\|v\|^2+T_{\mathrm{int}},\qquad
T=\tfrac12\sum_i m_i\|v+w_i\|^2,\quad
T_{\mathrm{int}}=\tfrac12\sum_i m_i\|w_i\|^2.
$$
With the relative vectors held fixed, $T_{\mathrm{int}}$ has no dependence on $v$.
The identity remains true for an empty index set and for signed weights.

## Formal and physical scope

The four public declarations follow exactly these finite-sum manipulations.
Interpreting the weights as masses and the vectors as velocities requires a
consistent physical frame and units. The formal identity alone does not identify
a configuration-dependent robot inertia matrix or prove that its Coriolis rows
vanish. No derivative-level mechanical conclusion is included here.
