# Conventional derivation

## Basic operator bounds

For Euclidean operator norm,

$$
\|ABx\|\le\|A\|_{\mathrm{op}}\|Bx\|
\le\|A\|_{\mathrm{op}}\|B\|_{\mathrm{op}}\|x\|.
$$

Taking the supremum over unit vectors gives
$\|AB\|_{\mathrm{op}}\le\|A\|_{\mathrm{op}}\|B\|_{\mathrm{op}}$. The Euclidean
adjoint preserves singular values, so $\|A^\mathsf{T}\|_{\mathrm{op}}
=\|A\|_{\mathrm{op}}$.

## Inverse bound

If $A$ is Hermitian, is explicitly assumed invertible, and every eigenvalue is
at least $c^2$ for some $c>0$, the spectral theorem gives
$\|A^{-1}x\|\le c^{-2}\|x\|$ in the eigenbasis. The invertibility premise is
kept separately in the formal endpoint because its matrix inverse is the
algebraic inverse operation; the positive eigenvalue floor supplies the
numerical estimate. Taking the supremum yields

$$
\|A^{-1}\|_{\mathrm{op}}\le\frac{1}{c^2}.
$$

## Spectral bounds

If every singular value is at most $s$, the singular-value decomposition
expresses $A$ as orthogonal factors around a diagonal map. Orthogonality
preserves the Euclidean norm, and the diagonal estimate gives
$\|A\|_{\mathrm{op}}\le s$. A conjugate diagonal representation has the same
argument after transporting through the stated conjugating maps.
