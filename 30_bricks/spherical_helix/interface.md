# Interface — Spherical-helix coordinate speed

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** One reusable mathematical interface, with its defining identity and immediate consequences.

## Evidence and dependencies


## Inputs

- Real parameters R, a, phi_0, b and phase u; a centre c in the raw three-coordinate real function space.

## Assumptions

- The squared-sum identity holds for all real parameters.
- Strict positivity requires R > 0 and b != 0; no condition on a is needed.

## Outputs

### Squared speed

$\sum_{i=1}^3 v_i(u)^2=R^2(b^2+a^2\cos^2(\phi_0+bu))$ for the explicitly defined coordinate vector $v$.

Exact declarations: `Ctrllib.sphericalHelixD1_sq_sum`.
Proof section: [Squared coordinate speed](proof.md#squared-coordinate-speed).

### Nonzero speed

If $R>0$ and $b\ne0$, then $\sum_i v_i(u)^2>0$ for every phase $u$.

Exact declarations: `Ctrllib.sphericalHelixD1_sq_sum_pos`.
Proof section: [Strict positivity](proof.md#strict-positivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
