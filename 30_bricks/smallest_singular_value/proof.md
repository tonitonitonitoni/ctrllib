# Smallest singular value and gain comparison

## Square singular value

For a nonempty square real matrix $J:\mathbb{R}^n\to\mathbb{R}^n$, define
$$
\sigma_{\min}(J)=\operatorname{singularValues}(\operatorname{toEuclideanLin}J)(n-1).
$$
The singular-value positivity criterion makes this last entry positive exactly
when the Euclidean map is injective. The reason the last entry suffices is
antitonicity: if $i<n$, then
$$
\sigma_{\min}(J)\le
\operatorname{singularValues}(\operatorname{toEuclideanLin}J)(i).
$$
Thus positivity of the last entry implies positivity at every index, while
the converse is immediate from the last index.

For a finite-dimensional square map, injectivity is equivalent to having no
nonzero kernel vector. The Euclidean embedding preserves the matrix action:
$$
\operatorname{toEuclideanLin}(J)(\operatorname{toLp}(v))=0
\Longleftrightarrow J\,v=0.
$$
The determinant criterion says that a square matrix has nonzero determinant
exactly when it has no nonzero null vector. Therefore
$$
0<\sigma_{\min}(J)
\Longleftrightarrow \operatorname{Injective}(\operatorname{toEuclideanLin}J)
\Longleftrightarrow \det J\ne0.
$$
At dimension six, this is sigmaMinEuclid and the square interface agrees
definitionally with it. The concrete coordinated endpoint then rewrites the
determinant criterion through gamma_isUnit_iff.

## Gain comparison

For a real matrix $M$, a scalar $s$ is a lower gain when
$$
\forall x,\qquad s\lVert x\rVert\le
\lVert\operatorname{toEuclideanLin}(M)x\rVert.
$$
Suppose a comparison witness supplies $e$ with
$$
\lVert y\rVert\le\lVert e(y)\rVert,\qquad
\lVert\operatorname{toEuclideanLin}(\Gamma)e(y)\rVert
=\lVert\operatorname{toEuclideanLin}(J)y\rVert.
$$
If $s\ge0$ is a lower gain for $\Gamma$, then
$$
s\lVert y\rVert\le s\lVert e(y)\rVert
\le\lVert\operatorname{toEuclideanLin}(\Gamma)e(y)\rVert
=\lVert\operatorname{toEuclideanLin}(J)y\rVert.
$$
Hence $s$ is a lower gain for $J$. If $s_\Gamma$ and $s_J$ are least gains
and $s_\Gamma\ge0$, applying this transfer to $s_\Gamma$ gives
$s_\Gamma\le s_J$.

## Concrete coordinated bridge

The theorem gamma_isUnit_iff_sigmaMinEuclid_pos supplies the explicit
smallest-singular-value characterization to the coordinated invertibility
endpoint. It proves the six-dimensional equivalence
$$
0<\sigma_{\min}(J)\Longleftrightarrow\operatorname{IsUnit}(\Gamma)
$$
for the exact 3,3,6 block transform.

## Exact endpoint map

- Ctrllib.sigmaMinEuclid_pos_iff_det_ne_zero
- Ctrllib.sigmaMinSquareEuclid_pos_iff_det_ne_zero
- Ctrllib.sigmaMinSquareEuclid_smul_pos_iff
- Ctrllib.lowerGainBound_of_comparison
- Ctrllib.leastGain_le_of_comparison
- Ctrllib.gamma_isUnit_iff_sigmaMinEuclid_pos

## Boundary

The derivation is finite-dimensional matrix mathematics. It does not identify
a measured singular value, prove a numerical conditioning margin, or establish
controller-level gain until a source/model correspondence supplies the matrix
and the comparison witness.
