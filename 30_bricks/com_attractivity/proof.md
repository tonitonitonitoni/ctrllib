# Conventional proof — abstract CoM attractivity

## Claim and provenance

This Generated Brick proves convergence of one forward-precompact trajectory
of an abstract dissipative second-order system. Khalil, *Nonlinear Systems*,
3rd edition, Theorem 4.4 supplies the conventional invariance context. We give
the compactness reasoning explicitly for the general inner-product-space
statement used here. Generated describes project provenance, not established
literature novelty.

The selected endpoint is `Ctrllib.com_attractive`. Its exact parameters are
in [the statement appendix](correspondence/statements.md). The canonical
implementation is [ComLaSalle.lean](../../ctrllib/Ctrllib/ComLaSalle.lean),
with the limiting-set arguments in [LaSalle.lean](../../ctrllib/Ctrllib/LaSalle.lean)
and [Reduction.lean](../../ctrllib/Ctrllib/Reduction.lean).

## Objects and assumptions

Let $H$ be a real inner-product space with its induced norm. It need not be
finite dimensional. Let $M,D,K,N:H\to H$ be continuous linear maps. The map
$N$ is called `Minv` in Lean. We assume $MN=I$; we do not additionally assume
$NM=I$, so using the symbol $M^{-1}$ without this explanation would be misleading.

The operator assumptions are:

1. $M$ and $K$ are self-adjoint: for every $a,b\in H$,
   $\langle Ma,b\rangle=\langle a,Mb\rangle$ and
   $\langle Ka,b\rangle=\langle a,Kb\rangle$.
2. $M(Nw)=w$ for every $w\in H$.
3. $\langle v,Dv\rangle\ge0$ for every $v\in H$, and equality implies $v=0$.
4. $Kx=0$ implies $x=0$.

For a state $z=(v,x)\in Z=H\times H$, velocity comes first. Define

$$
f(v,x)=\bigl(-N(Dv+Kx),v\bigr),\qquad
V(v,x)=\frac12\langle v,Mv\rangle+\frac12\langle x,Kx\rangle.
$$

We are given a continuous real-time flow $\phi:\mathbb R\times Z\to Z$.
Thus $\phi(0,z)=z$ and $\phi(s+t,z)=\phi(s,\phi(t,z))$ for all real $s,t$.
It solves the field: every trajectory is differentiable and
$\frac{d}{dt}\phi(t,z)=f(\phi(t,z))$.

For the selected initial state $z_0$, assume that

$$
\mathcal K=\overline{\{\phi(t,z_0):t\ge0\}}
$$

is compact. This is forward precompactness. Boundedness alone would not
supply compactness in infinite dimension. Neither positive definiteness of
$M,K$ nor positivity of $V$ is an extra premise of this abstract endpoint.
The conclusion is $\phi(t,z_0)\to0$ as $t\to+\infty$.

## Step 1: energy dissipation and its limit

The energy is continuously differentiable because the maps are continuous
linear and the inner product is continuous bilinear. Along a solution, the
product rule and self-adjointness give

$$
\begin{aligned}
\dot V
&=\frac12\bigl(\langle\dot v,Mv\rangle+\langle v,M\dot v\rangle\bigr)
 +\frac12\bigl(\langle\dot x,Kx\rangle+\langle x,K\dot x\rangle\bigr)\\
&=\langle v,M\dot v\rangle+\langle\dot x,Kx\rangle.
\end{aligned}
$$

The equations $\dot v=-N(Dv+Kx)$ and $MN=I$ give
$M\dot v=-(Dv+Kx)$. Also $\dot x=v$. Consequently

$$
\dot V=-\langle v,Dv+Kx\rangle+\langle v,Kx\rangle
       =-\langle v,Dv\rangle\le0.
$$

These are the identities used by `com_dissipation` and `com_decrease`.
By the real mean-value theorem, $t\mapsto V(\phi(t,z_0))$ is nonincreasing.
It is bounded below because $V$ is continuous on the compact set $\mathcal K$.
It therefore has a finite limit $\ell$ as $t\to+\infty$. This step needs no
positive-definiteness claim for the energy.

## Step 2: the limiting set and constant energy

Define $\Omega$ to be the set of limits of sequences $\phi(t_j,z_0)$ with
$t_j\to+\infty$. It is nonempty: the sequence $\phi(j,z_0)$ lies in the
compact metric space $\mathcal K$ and has a convergent subsequence. Every
such limit belongs to $\mathcal K$.

For $y\in\Omega$, select $t_j\to+\infty$ with $\phi(t_j,z_0)\to y$.
Continuity of $V$ gives

$$
V(y)=\lim_j V(\phi(t_j,z_0))=\ell.
$$

The set is invariant under the full flow. For fixed $s\in\mathbb R$,
continuity and the flow law give

$$
\phi(s,y)=\lim_j\phi(s,\phi(t_j,z_0))
          =\lim_j\phi(t_j+s,z_0)\in\Omega,
$$

because $t_j+s\to+\infty$. Thus the trajectory through any $y\in\Omega$
stays in $\Omega$, and its energy is constantly $\ell$. Its energy derivative
vanishes at every time. These are the invariance and zero-dissipation facts
supplied by the local LaSalle theorem.

## Step 3: reduce the invariant zero-dissipation set

Take $y\in\Omega$ and write $\phi(s,y)=(v(s),x(s))$. The dissipation identity
and constant energy imply $\langle v(s),Dv(s)\rangle=0$ for every $s$.
Damping definiteness gives $v(s)=0$ for every $s$. Its derivative is therefore
zero, and the first field equation reduces to

$$
0=-N(Kx(s)).
$$

Applying $M$ gives $Kx(s)=0$, and injectivity of $K$ gives $x(s)=0$.
In particular $y=\phi(0,y)=0$. We have proved $\Omega\subseteq\{0\}$.
Since $\Omega$ is nonempty, $\Omega=\{0\}$. This is the invariant-set
reduction proved by `com_collapse`.

## Step 4: convergence of the entire trajectory

If $\phi(t,z_0)$ did not converge to zero, there would be an $\varepsilon>0$
and times $t_j\to+\infty$ with $\|\phi(t_j,z_0)\|\ge\varepsilon$.
Compactness supplies a convergent subsequence with limit $y\in\Omega$.
Continuity of the norm would give $\|y\|\ge\varepsilon$, contradicting
$\Omega=\{0\}$. Therefore

$$
\boxed{\phi(t,z_0)\longrightarrow0\quad(t\to+\infty).}
$$

The formal reduction theorem expresses this argument through distance to the
limiting set. For $\{0\}$, that distance is the norm. This completes the
conventional proof under the displayed operator, flow and compactness premises.

## Meaning and remaining application work

The result proves convergence of the selected forward-precompact trajectory.
It does not add Lyapunov stability or construct the supplied flow and physical
compactness witnesses. The separate [point-mass Brick](../point_mass_stability/README.md)
constructs its ideal flow and proves both stability and global convergence
under positive scalar parameters. That specialization does not change the
assumptions or conclusion of this abstract theorem.
