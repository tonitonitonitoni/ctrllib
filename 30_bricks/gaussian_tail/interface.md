# Interface — Standard-normal tail numerator

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- A real threshold and the standard-normal density.

## Assumptions

- Lebesgue integration and standard Gaussian analytic facts as captured.

## Outputs

### Gaussian tail integral

For every real threshold q, the first-moment tail integral of the standard normal density is the density value at q: $\int_q^\infty w\phi(w)\,dw=\phi(q)$.

Exact declarations: `Ctrllib.stdNormalPdf_eq`, `Ctrllib.hasDerivAt_neg_stdNormalPdf`, `Ctrllib.integrable_mul_stdNormalPdf_Ioi`, `Ctrllib.tendsto_neg_stdNormalPdf`, `Ctrllib.integral_Ioi_mul_gaussianPDFReal`.
Proof section: [Gaussian tail integral](proof.md#gaussian-tail-integral).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
