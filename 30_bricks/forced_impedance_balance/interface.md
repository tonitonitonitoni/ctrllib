# Interface — Forced impedance energy balance

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The local mechanical derivative and generic scalar integration theorem combine to establish the finite-horizon forced-impedance power bound.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Storage identity

The forced impedance storage is the block Lyapunov quadratic.

Exact declarations: `Ctrllib.forcedImpedanceEnergy_eq_blockLyap`.
Proof section: [Storage](proof.md#storage).

### Energy derivative

Along a supplied differentiable path, storage derivative equals velocity power minus damping loss.

Exact declarations: `Ctrllib.forcedImpedance_energy_hasDerivAt`.
Proof section: [Derivative](proof.md#derivative).

### Power bound

With nonnegative damping, the storage derivative is bounded by external power.

Exact declarations: `Ctrllib.forcedImpedance_energy_deriv_le_power`.
Proof section: [Power bound and storage sign](proof.md#power-bound-and-storage-sign).

### Storage nonnegative

Positive semidefinite mass and stiffness make storage nonnegative.

Exact declarations: `Ctrllib.forcedImpedanceEnergy_nonneg`.
Proof section: [Power bound and storage sign](proof.md#power-bound-and-storage-sign).

### Integrated power

A continuous storage derivative bounded by continuous power gives V(T)-V(0) <= the integral of power; the supplied forced-impedance trajectory realizes this bound with power v dot f.

Exact declarations: `Ctrllib.integrated_storage_le_power`, `Ctrllib.forcedImpedance_energy_le_integrated_power`.
Proof section: [Integrated power bound](proof.md#integrated-power-bound).

## Composition

- Uses `Ctrllib.integrated_storage_le_power`, `Ctrllib.forcedImpedance_energy_hasDerivAt`; establishes `Ctrllib.forcedImpedance_energy_le_integrated_power`. The local energy identity supplies a continuous derivative bounded by external power; the scalar integration theorem supplies the finite-horizon inequality.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
