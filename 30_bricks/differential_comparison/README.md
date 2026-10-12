---
type: proof
kind: brick
brick_id: differential_comparison
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [khalil2002nonlinear]
lean_package: ctrllib
lean_modules: [Lyapunov, TimeVaryingComparison, KhalilComparison, ComparisonUltimateBound]
lean_declarations: [Ctrllib.LyapunovDecrease, Ctrllib.QuadSandwich, Ctrllib.lyapunov_comparison, Ctrllib.lyapunov_exp_decay, Ctrllib.lyapunov_ultimate_bound, Ctrllib.lyapunov_norm_sq_exp_decay, Ctrllib.comparison_shift, Ctrllib.comparison_tendsto_zero, Ctrllib.comparison_bounded, Ctrllib.comparison_lemma_dini, Ctrllib.classK_sandwich_stability, Ctrllib.comparison_eventual_floor]
internal_bricks: [comparison_functions]
application_interfaces: [trajectory_regularities, lyapunov_decrease]
brick_level: composite
level_reason: >-
  The records first establish scalar Grönwall estimates and then transport
  them through Lyapunov and class-K sandwich interfaces. Each transport has an
  explicit declaration path.
summary: >-
  Differential comparison converts linear Lyapunov decrease, including
  vanishing or bounded disturbances, into finite-time, exponential, ultimate,
  and state-norm estimates.
keywords: [gronwall, lyapunov, comparison, exponential_decay, ultimate_bound]
interface:
  inputs:
    - "A scalar trajectory, derivative witness, continuity witness, and linear decrease inequality."
    - "For state estimates, a differentiable Lyapunov function and quadratic or class-K sandwich."
  assumptions:
    - "The comparison rate is positive where convergence is claimed."
    - "Regularity and nonnegativity premises are supplied by the applier."
  outputs:
    - id: scalar_comparison
      statement: "A Grönwall bound holds from an arbitrary start time, with convergence under a vanishing disturbance and a uniform bound under a bounded disturbance."
      declarations: [Ctrllib.comparison_shift, Ctrllib.comparison_tendsto_zero, Ctrllib.comparison_bounded]
      proof_section: "Scalar comparison"
    - id: lyapunov_rates
      statement: "Lyapunov decrease gives finite-time comparison, exponential decay, perturbed ultimate bounds, and squared-state decay through a quadratic sandwich."
      declarations: [Ctrllib.lyapunov_comparison, Ctrllib.lyapunov_exp_decay, Ctrllib.lyapunov_ultimate_bound, Ctrllib.lyapunov_norm_sq_exp_decay]
      proof_section: "Lyapunov transport"
    - id: eventual_disturbance_floor
      statement: "For a > 0 and M >= 0, scalar storage with v' <= -a*v + M eventually stays below M/a + epsilon for every positive epsilon. No sign assumption on v(0) is needed."
      declarations: [Ctrllib.comparison_eventual_floor]
      proof_section: "Eventual disturbance floor"
    - id: dini_and_classk
      statement: "The Dini-derivative comparison form and class-K sandwich estimate bound the state using the ray inverse."
      declarations: [Ctrllib.comparison_lemma_dini, Ctrllib.classK_sandwich_stability]
      proof_section: "Dini and class-K forms"
  composition:
    - uses: [Ctrllib.comparison_shift]
      establishes: Ctrllib.comparison_eventual_floor
      explanation: "The finite comparison is a vanishing exponential transient plus a disturbance term bounded by M/a."
    - uses: [Ctrllib.comparison_shift]
      establishes: Ctrllib.comparison_tendsto_zero
      explanation: "Restarting the scalar bound after the disturbance falls below a target-dependent ceiling yields convergence."
    - uses: [Ctrllib.comparison_shift]
      establishes: Ctrllib.comparison_bounded
      explanation: "A constant disturbance ceiling is inserted into the restartable bound."
    - uses: [Ctrllib.lyapunov_comparison]
      establishes: Ctrllib.lyapunov_exp_decay
      explanation: "The zero-disturbance Grönwall expression simplifies to an exponential."
    - uses: [Ctrllib.lyapunov_comparison]
      establishes: Ctrllib.lyapunov_ultimate_bound
      explanation: "The nonzero Grönwall expression is algebraically rewritten as a transient plus disturbance floor."
    - uses: [Ctrllib.lyapunov_exp_decay, Ctrllib.QuadSandwich]
      establishes: Ctrllib.lyapunov_norm_sq_exp_decay
      explanation: "The lower and upper sandwich bounds transport the value estimate to the squared state norm."
---

# Differential comparison


## Notation

LyapunovDecrease V f a ε means $DV(y)f(y)\le-aV(y)+\varepsilon$.
QuadSandwich V c₁ c₂ means
$c_1\|y\|^2\le V(y)\le c_2\|y\|^2$.

## Statement

The listed declarations provide restartable scalar comparison and its
Lyapunov transports. The eventual endpoint removes the initial transient:
for each positive tolerance, the scalar value eventually stays below the
disturbance floor plus that tolerance.

## Hypotheses

Continuity, derivative witnesses, positivity, and sandwich premises are
explicit inputs. They are not inferred from a controller or model.

## Proof

The full human derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the encoded analytic implications. It does not establish that
an application supplies the regularity or decrease premises.

## Sources

The formal shapes are guided by the project records of Khalil (2002),
Panteley (2001), and the source conventions cited in the Lean module headers.
The combined comparison API is a project derivation.

## Evidence summary

Lean module: ctrllib/Ctrllib/Lyapunov.lean,
ctrllib/Ctrllib/TimeVaryingComparison.lean, and
ctrllib/Ctrllib/KhalilComparison.lean, with the eventual extension in
ctrllib/Ctrllib/ComparisonUltimateBound.lean. Declaration: the manifest inventory
records the selected scalar, Lyapunov, Dini, and class-K endpoints. Acceptance:
mathematical acceptance is not claimed; status is given_assumptions. Axiom: the
current Xylem capture reports the standard profile for the captured bodies.
Encodes: scalar comparison transport into Lyapunov value and state estimates.
The 16 September eventual extension passed its narrow Lean 4.34.0 check;
its transitive axioms are `propext`, `Classical.choice`, and `Quot.sound`.

## Limitations

The bounds are trajectory-level and division-free in several state forms.
They do not provide physical units, model correspondence, or an independent
ODE existence theorem.

## Discrepancies and open items

No discrepancy was found in the inspected theorem statements and proof bodies.
The barbalat_integral endpoint is recorded in the separate
barbalat_convergence Brick because its conclusion is a limit theorem.
