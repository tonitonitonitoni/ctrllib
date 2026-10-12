# Conventional derivation — circumcentroidal correction

## Definitions, scope, and provenance

This engineer-facing derivation separates the GOA19 correction convention
from the in-house algebraic bridges. Let $J\in R^{m\times n}$,
$U\in R^{m\times r}$, and $V\in R^{r\times n}$ be conformable finite
matrices over a commutative ring, and define

$$
J_{\oplus}=J-UV.
$$

In GOA19 §II.C eq. (7), §III.A eq. (11), and §III.A eq. (14), the application
reading is $J=J_{\nu_e}$, $U=R_{eb0}=[R_{eb};0]$, and
$V=\bar J_v$. The application identification requires matching frames,
reference point, parameters, units, and joint order.

## Corrected-map action and Gram identity

For every vector $x$, distributivity gives

$$
J_{\oplus}x=Jx-U(Vx),
\qquad J_{\oplus}^{\top}=J^{\top}-V^{\top}U^{\top}.
$$

Thus $Vx=0$ implies $J_{\oplus}x=Jx$, and $Jx=Vx=0$ implies
$J_{\oplus}x=0$. Replacing $U,V$ by $-U,-V$ leaves the update unchanged,
since $(-U)(-V)=UV$. Expanding the product gives the Gram identity

$$
J_{\oplus}^{\top}J_{\oplus}=J^{\top}J-J^{\top}UV
-V^{\top}U^{\top}J+V^{\top}U^{\top}UV.
$$

## Augmented determinant identity

For square $J$, row elimination in

$$
B=\begin{bmatrix}J&U\\V&I_r\end{bmatrix}
$$

replaces the first block row by itself minus $U$ times the second. The
result is block triangular with diagonal blocks $J-UV$ and $I_r$, so

$$
\det B=\det(J-UV)\det(I_r)=\det J_{\oplus}.
$$

## Determinant factorization

The factorization assumes that $\det J$ is a unit in the coefficient ring
(over a field, this means $\det J\ne0$). Eliminate the lower left block
instead, subtracting $VJ^{-1}$ times the first block row from the second.
The new diagonal blocks are $J$ and $I_r-VJ^{-1}U$, giving

$$
\det(J-UV)=\det(J)\det(I_r-VJ^{-1}U).
$$

The identity itself does not establish a physical nonsingularity claim.

## Smallest-gain bounds

For a real or complex matrix $A$ (the formal gain section assumes the
`RCLike` scalar structure), write
$\gamma(A)=\inf_{\|x\|_2=1}\|Ax\|_2$. All norms in this paragraph are
Euclidean vector norms and their induced operator norms. Fix a unit vector
$x$. Since $J_{\oplus}x-Jx=-UVx$, the reverse triangle inequality and the induced
norm bound give

$$
\left|\|J_{\oplus}x\|-\|Jx\|\right|\le\|UVx\|\le\|UV\|.
$$

The unit-sphere infimum requires a nonempty column index type $n$. For every
unit $x$, we have
$\|J_{\oplus}x\|\ge\|Jx\|-\|UV\|\ge\gamma(J)-\|UV\|$.
Taking the infimum proves the lower bound. Exchanging the two maps gives
$\gamma(J)\ge\gamma(J_{\oplus})-\|UV\|$, hence the upper bound.
An infimum of these nonnegative norms is nonnegative, so

$$
|\gamma(J_{\oplus})-\gamma(J)|\le\|UV\|,\qquad
\max\{0,\gamma(J)-\|UV\|\}\le\gamma(J_{\oplus})
\le\gamma(J)+\|UV\|.
$$

These bounds alone do not guarantee a strictly positive corrected-map gain.

## Update-rank bounds

For the rank endpoints, restrict to real matrices, as the formal declarations
do. Since $J-J_{\oplus}=UV$, the image of $UV$ lies in the image of
$U$, hence

$$
\operatorname{rank}(UV)\le\operatorname{rank}(U)\le |r|.
$$

Here $|r|$ is the cardinality of the finite inner index set. For the
six-by-three correction, the update rank is therefore at most three,
not exactly three.

## Coverage and limitations

These arguments cover the listed generic Lean endpoints:
the definition and action/Gram identities, augmented determinant and
unit-determinant factorization, variational smallest-gain
two-sided bounds, the six-by-six Gram/determinant specialization, and the
generic and six-by-three update-rank bounds. The gain statements require a
nonempty column index and the `RCLike` scalar scope; the rank declarations
are over the reals, while the determinant identities allow a commutative ring.
They do not establish robot
correspondence, controller behavior, passivity, stability, or a seven-joint
theorem. Exact captured binders are in
[correspondence/statements.md](correspondence/statements.md).

The transpose, kernel and sign identities, and the absolute gain estimate,
are supporting results used or explained in this derivation. They are not
separate public endpoints in this Brick's current manifest.
