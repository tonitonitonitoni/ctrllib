# Component B: startup ramp composition

`Ctrllib.ComStartupRampComposition` imports the checked [Component A module](https://github.com/tonitonitonitoni/ctrllib/blob/230b85f1fdfa7c1002670f78ff67e528db653500/ctrllib/Ctrllib/ComControllerPlantComposition.lean). All existing declarations are preserved. `Ctrllib.lean` adds one import to expose the new module to the default build.

The controller input is `(t, (v, x))`, with a stationary reference. Its assumptions are `τ > 0`, `t ≥ 0`, `d > 0`, and `k > 0`. The environment additionally requires `m > 0`. The controller outputs its unchanged input together with `r(t) • f_nominal`, where `r(t) = 1 - exp(-t/τ)` and `f_nominal = -d • v - k • x`. `ramp_bounds` proves `0 ≤ r(t) < 1`; `ramp_zero` proves `r(0) = 0`; `ramp_tendsto_one` proves that the ramp tends to one as time tends to infinity.

`stateForceWire` maps the controller output to `((v, x), force)`, explicitly dropping time. The plant relation, contract, and derivative are reused from Component A. `downstream_compatible` discharges the plant assumption. Controller and plant satisfaction and enabledness, environment admissibility, and composed satisfaction and enabledness use the existing [assume–guarantee definitions and composition rules](https://github.com/tonitonitonitoni/ctrllib/blob/230b85f1fdfa7c1002670f78ff67e528db653500/ctrllib/Ctrllib/AssumeGuarantee.lean).

`closedLoop_eq_rampedPointMassField` and `connected_iff_rampedPointMassField` establish the exact velocity-first derivative

```
(-(r(t)*d/m)) • v - (r(t)*k/m) • x, v
```

The field equality is algebraic for all real parameters; admissibility and positive mass are separate contract premises. Enabledness means an instantaneous output exists. It does not prove the existence of a time-varying ODE solution.

`force_norm_le_nominal` compares the two forces at the same state under `τ > 0` and `t ≥ 0`. `force_difference_norm` proves the exact difference `exp(-t/τ) * ‖f_nominal‖`; this identity itself needs no positivity premises. The proof uses real exponential positivity and the scalar norm identity from [mathlib 4.34.0](https://github.com/leanprover-community/mathlib4/tree/v4.34.0/Mathlib/Analysis).

For refinement, `nominalTimedContract` lifts Component A's exact-force guarantee to the same time/state interface and startup assumptions. `startup_not_refines` gives an admissible counterexample at `t = 0`, `v = 0`, and any nonzero position with positive stiffness. `concrete_startup_not_refines` fixes `τ = d = k = 1` and `x = (1, 0, 0)`. The ramped force is zero while the nominal force is nonzero. Failure comes from the guarantee, not incompatible assumptions.

Scope is continuous time, stationary reference, exact instantaneous state and ideal force application. No integral action, saturation, stability, trajectory comparison, or physical verification is claimed.

## Validation

Use the repository's [build instructions](https://github.com/tonitonitonitoni/ctrllib/blob/230b85f1fdfa7c1002670f78ff67e528db653500/ctrllib/README.md) and pinned Lean 4.34.0/mathlib 4.34.0:

```
cd ctrllib
lake build
lake env lean Ctrllib/ComStartupRampComposition.lean
```

Every declaration introduced by the module has a `#print axioms` command. The full build succeeded, and all 30 declarations audited depend only on `propext`, `Classical.choice`, and `Quot.sound`; none depends on `sorryAx`. The source contains no `sorry`, `admit`, or new axioms. All nine cached dependency revisions were checked against `lake-manifest.json`. Existing repository linter warnings remain, including the module-header copyright convention; no ownership or license text is invented.
