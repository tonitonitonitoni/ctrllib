# Source-to-Lean correspondence

Coverage classification: partial/covered. The abstract implication and its
supporting interfaces are covered by the declarations listed below; the
physical model-to-field correspondence and concrete point-mass specialization
are unavailable in this Brick and remain open.

## Formal declaration

The headline declaration is:

```text
Ctrllib.com_attractive
```

in `ctrllib/Ctrllib/ComLaSalle.lean`.

Its field and energy are:

```text
comField M D K Minv z = (-Minv (D z.1 + K z.2), z.1)
comEnergy M K z = 1/2 ⟪z.1, M z.1⟫ + 1/2 ⟪z.2, K z.2⟫
```

The proof assembles:

1. `com_dissipation`, the energy derivative identity;
2. `com_decrease`, the nonpositive derivative conclusion;
3. `com_collapse`, the invariant-zero-dissipation collapse;
4. `lasalle` and the reduction lemmas;
5. `com_attractive`, convergence of the selected forward-precompact orbit.

## Meaning of the correspondence

The Lean declaration formalizes the abstract implication under its visible
premises. It does not formalize the modelling step that identifies a physical
spacecraft/manipulator controller with `comField`, nor does it construct a
general ODE flow for every admissible operator tuple.

The concrete point-mass result in `ctrllib/Ctrllib/PointMassComFlow.lean` is a
separate specialization. Its canonical endpoint
`Ctrllib.pointMass_tendsto_zero` constructs the scalar operator-exponential
flow and proves convergence for positive mass, damping, and stiffness; it is
not part of this abstract Brick's declaration set. The corresponding
Lyapunov-stability/GAS extension is canonical in `PointMassStability` and
documented in the [point-mass Brick](../../point_mass_stability/README.md).
Any application or acceptance claim must keep those records
separate from this abstract correspondence.
