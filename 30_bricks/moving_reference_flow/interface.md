# Interface — Scalar phase error and product-flow convergence

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The explicitly recorded dependency supplies the component result used by the conclusion.

## Evidence and dependencies


## Inputs

- Real m, d, k and lambda; an initial point-mass state z_0=(v_0,e_0) in R^3 x R^3 and scalar phase error q_0.

## Assumptions

- The scalar flow and derivative identity hold for arbitrary real lambda; its convergence requires lambda > 0.
- The product solution theorem requires m > 0, d > 0 and k > 0. Joint convergence additionally requires lambda > 0.

## Outputs

### Scalar solution

$q(t)=e^{-\lambda t}q_0$ solves $\dot q=-\lambda q$.

Exact declarations: `Ctrllib.phaseErrorFlow_hasDerivAt`, `Ctrllib.phaseError_isSolutionTo`.
Proof section: [Scalar flow and derivative](proof.md#scalar-flow-and-derivative).

### Scalar convergence

For $\lambda>0$, $q(t)\to0$ as $t\to+\infty$.

Exact declarations: `Ctrllib.phaseError_tendsto_zero`.
Proof section: [Scalar convergence](proof.md#scalar-convergence).

### Product solution

The product of the encoded point-mass and scalar flows solves the corresponding product field.

Exact declarations: `Ctrllib.augmentedPointMass_isSolutionTo`.
Proof section: [Product solution](proof.md#product-solution).

### Product convergence

Under positive $m,d,k,\lambda$, the product state $(z(t),q(t))$ converges to zero.

Exact declarations: `Ctrllib.augmentedPointMass_tendsto_zero`.
Proof section: [Joint convergence](proof.md#joint-convergence).

## Composition

- Uses `Ctrllib.pointMass_tendsto_zero`, `Ctrllib.phaseError_tendsto_zero`; establishes `Ctrllib.augmentedPointMass_tendsto_zero`. The two component limits yield convergence in the product topology.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
