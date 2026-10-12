---
type: proof
kind: brick
brick_id: cvar_saa_engine
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["CvarInfForm", "CvarGridApproximation"]
lean_declarations: ["Ctrllib.cvarObj", "Ctrllib.cvarSAA", "Ctrllib.cvarObj_convexOn", "Ctrllib.cvarObj_min_at_sample", "Ctrllib.cvarSAA_eq_obj_sample", "Ctrllib.cvarObj_bddBelow", "Ctrllib.cvarSAA_le_obj", "Ctrllib.cvarObj_mono", "Ctrllib.cvarSAA_mono", "Ctrllib.cvarSAA_const", "Ctrllib.cvarSAA_translation", "Ctrllib.cvarSAA_posHomogeneous", "Ctrllib.cvarSAA_subadditive", "Ctrllib.cvarObj_threshold_lipschitz", "Ctrllib.cvarGrid_approximation"]
internal_bricks: []
application_interfaces: ["finite_empirical_cvar"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "The finite equal-weight hinge objective, its algebraic comparison laws, and a finite-grid approximation bound."
keywords: ["cvar", "saa", "ru_objective", "coherence", "finite_grid"]
interface:
  inputs:
    - "A finite positive-size family of real losses and a level alpha."
    - "For grid approximation: a loss interval, a nonempty finite threshold grid, and covering distance h."
  assumptions:
    - "0 <= alpha < 1; finite averages use the captured nonempty-index premises."
    - "All order and positivity premises are exactly those in the declaration capture."
    - "For grid approximation: h >= 0, all sample losses lie in [a,b], and each point of [a,b] is within h of a grid point."
  outputs:
    - id: finite_cvar_objective
      statement: "For a finite equal-weight sample, the empirical CVaR is the infimum of the RU hinge objective, and the objective has the stated convexity and coherence properties."
      declarations:
        - Ctrllib.cvarSAA_eq_obj_sample
        - Ctrllib.cvarObj_convexOn
        - Ctrllib.cvarObj_bddBelow
        - Ctrllib.cvarSAA_le_obj
      proof_section: "Finite CVaR objective"
    - id: cvar_coherence
      statement: "The finite-sample objective is monotone, translation equivariant, positively homogeneous, and subadditive under the displayed loss conventions."
      declarations:
        - Ctrllib.cvarObj_mono
        - Ctrllib.cvarSAA_mono
        - Ctrllib.cvarSAA_const
        - Ctrllib.cvarSAA_translation
        - Ctrllib.cvarSAA_posHomogeneous
        - Ctrllib.cvarSAA_subadditive
      proof_section: "CVaR coherence"
    - id: threshold_lipschitz
      statement: "For all real thresholds s and t, the absolute change in the empirical hinge objective is at most |s-t|/(1-alpha)."
      declarations:
        - Ctrllib.cvarObj_threshold_lipschitz
      proof_section: "Threshold continuity and finite-grid approximation"
    - id: finite_grid_approximation
      statement: "The minimum over a nonempty finite covering grid exceeds unrestricted empirical CVaR by a value between zero and h/(1-alpha). Grid points need not lie inside the loss interval."
      declarations:
        - Ctrllib.cvarGrid_approximation
      proof_section: "Threshold continuity and finite-grid approximation"
  composition: []
---
# Finite-sample CVaR hinge engine

This Brick is `atomic` and covers the finite equal-weight hinge objective, its algebraic comparison laws, and finite-grid approximation. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`cvarObj` is the thresholded hinge objective; `cvarSAA` is its finite-sample value. The exact finite-function representation is retained in statements.md.

## Statement

**finite_cvar_objective:** For a finite equal-weight sample, the empirical CVaR is the infimum of the RU hinge objective, and the objective has the stated convexity and coherence properties.
**cvar_coherence:** The finite-sample objective is monotone, translation equivariant, positively homogeneous, and subadditive under the displayed loss conventions.

**threshold_lipschitz:** For $n>0$ and $0\le\alpha<1$, the threshold objective satisfies $|F(s)-F(t)|\le |s-t|/(1-\alpha)$.

**finite_grid_approximation:** If all losses lie in $[a,b]$, $G$ is a nonempty finite grid, $h\ge0$, and every point of $[a,b]$ is within distance $h$ of $G$, then

$$0\le\min_{g\in G}F(g)-C_\alpha(z)\le\frac{h}{1-\alpha}.$$

Grid points may also lie outside $[a,b]$. The objective minimum is represented by `Finset.inf'`, with explicit nonemptiness.

## Hypotheses

- 0 <= alpha < 1; finite averages use the captured nonempty-index premises.
- All order and positivity premises are exactly those in the declaration capture.
- The grid endpoint additionally assumes the stated sample bounds and covering condition, with $h\ge0$ and a nonempty finite grid.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

The result establishes the finite equal-weight hinge objective, its algebraic comparison laws, and a deterministic bound on threshold discretization. A population-confidence certificate needs a separate composition with a statistical theorem.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `CvarInfForm`, `CvarGridApproximation`.
- Exact declarations: 15 captured declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

No population law, concentration theorem, quantile/order-statistic formula, or physical safety claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
