---
type: proof
kind: brick
brick_id: finite_validation_confidence
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: ["rockafellar2002conditional"]
lean_package: ctrllib
lean_modules: ["HoeffdingViewLoss", "PopulationMeanConfidence", "CvarConfidence", "CvarEmpiricalConfidence"]
lean_declarations: ["Ctrllib.centered_view_loss_hasSubgaussianMGF_of_mem_Icc", "Ctrllib.bounded_view_loss_empirical_mean_upper_tail", "Ctrllib.centered_neg_iIndepFun_of_iIndepFun", "Ctrllib.bounded_view_loss_population_mean_lower_tail", "Ctrllib.cvarValidationUpper", "Ctrllib.cvarValidationUpper_eq_cvarObj", "Ctrllib.cvarPop_fixed_threshold_failure_le", "Ctrllib.cvarPop_finite_threshold_selection_failure_le", "Ctrllib.cvarPop_finite_threshold_failure_le_of_loss_error", "Ctrllib.cvarPop_empirical_cvar_failure_le_raw", "Ctrllib.cvarPop_empirical_cvar_failure_le"]
internal_bricks: [cvar_saa_engine]
application_interfaces: ["independent_validation_losses", "fixed_finite_threshold_family", "reconstructed_loss_envelope"]
brick_level: composite
level_reason: "The finite-family confidence theorem and deterministic empirical-CVaR grid bound compose into confidence for unrestricted empirical CVaR."
summary: "Finite validation confidence for fixed thresholds, finite families, and unrestricted empirical CVaR through a predetermined covering grid."
keywords: ["validation", "hoeffding", "finite_family", "confidence"]
interface:
  inputs:
    - "Independent bounded validation losses, fixed thresholds/radii, a CVaR level, and optionally a reconstruction loss bound."
  assumptions:
    - "n > 0; losses are measurable, independent, and bounded in [a,b]."
    - "Thresholds/radii are fixed before validation; selection may depend on observations."
    - "The population-law/common-mean and one-sided reconstruction premises are explicit."
    - "The unrestricted empirical certificate additionally uses a predetermined nonempty grid in [a,b] covering that interval within h >= 0; the simplified radius assumes a < b."
  outputs:
    - id: fixed_threshold_certificate
      statement: "Under bounded independent validation losses, a fixed threshold gives the stated exponential upper bound on failure of the population CVaR certificate."
      declarations:
        - Ctrllib.cvarValidationUpper_eq_cvarObj
        - Ctrllib.cvarPop_fixed_threshold_failure_le
      proof_section: "Fixed-threshold certificate"
    - id: finite_family_certificate
      statement: "A fixed finite family may be selected after observing validation data; the failure probability is bounded by the sum of its individual exponential bounds, with the stated one-sided reconstruction transfer."
      declarations:
        - Ctrllib.cvarPop_finite_threshold_selection_failure_le
        - Ctrllib.cvarPop_finite_threshold_failure_le_of_loss_error
      proof_section: "Finite-family selection"
    - id: empirical_cvar_certificate
      statement: "Population CVaR exceeds unrestricted empirical CVaR plus (eta+h)/(1-alpha) with outer probability at most |G| exp(-2*n*eta^2/(b-a)^2)."
      declarations: [Ctrllib.cvarPop_empirical_cvar_failure_le_raw, Ctrllib.cvarPop_empirical_cvar_failure_le]
      proof_section: "Unrestricted empirical CVaR certificate"
  composition:
    - uses: [Ctrllib.cvarGrid_approximation, Ctrllib.cvarPop_finite_threshold_selection_failure_le]
      establishes: Ctrllib.cvarPop_empirical_cvar_failure_le_raw
      explanation: "A grid minimizer gives a sample-dependent finite selector. The deterministic grid bound yields an almost-everywhere inclusion of the empirical-CVaR failure event in the selected-threshold failure event."
---
# Finite-family validation confidence

This composite Brick covers finite-family validation confidence and its
composition into an unrestricted empirical-CVaR certificate. The authored
[conventional derivation](proof.md) is the reading authority; generated
[interface](interface.md), [references](correspondence/references.md), and
[captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`U_tau` is the empirical hinge certificate with radius; `rho=1-alpha`. The formal selector is handled with outer measure.

## Statement

**fixed_threshold_certificate:** Under bounded independent validation losses, a fixed threshold gives the stated exponential upper bound on failure of the population CVaR certificate.
**finite_family_certificate:** A fixed finite family may be selected after observing validation data; the failure probability is bounded by the sum of its individual exponential bounds, with the stated one-sided reconstruction transfer.

**empirical_cvar_certificate:** For a fixed covering grid and iid bounded
validation losses, the population CVaR is bounded by unrestricted empirical
CVaR plus $(\eta+h)/(1-\alpha)$ except on an event of outer probability at
most $|G|\exp(-2n\eta^2/(b-a)^2)$.

## Hypotheses

- n > 0; losses are measurable, independent, and bounded in [a,b].
- Thresholds/radii are fixed before validation; selection may depend on observations.
- The population-law/common-mean and one-sided reconstruction premises are explicit.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Finite validation confidence for a fixed threshold or fixed finite candidate family. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `HoeffdingViewLoss`, `PopulationMeanConfidence`, `CvarConfidence`, `CvarEmpiricalConfidence`.
- Exact declarations: 11 declarations, including the selected public outputs and support helpers.
- Encodes: the exact public mathematical implication stated by the selected outputs under their captured premises.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

## Limitations

The empirical certificate pays explicit grid and sampling penalties. It
does not prove DKW, a dependent-episode bridge, or physical safety.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
