# Interface — Cruise-lag steady-state algebra

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- A finite index type n, matrices J, K, C : Matrix n n ℝ, vectors x, vd, F : n → ℝ, and the exact balance 0 = -(C *ᵥ vd) - (Jᵀ * K) *ᵥ x - F.

## Assumptions

- The general solution requires IsUnit (Jᵀ * K); the Coriolis-only branch sets F = 0. The positive-definite adapter requires K.PosDef and IsUnit J, with no skew premise.

## Outputs

### Cruise lag solution

Under the exact balance and IsUnit (Jᵀ * K), x = -((Jᵀ * K)⁻¹ *ᵥ (C *ᵥ vd + F)) uniquely; setting F = 0 gives the Coriolis-only form.

Exact declarations: `Ctrllib.cruise_lag_unique`, `Ctrllib.cruise_lag_iff`, `Ctrllib.cruise_lag`, `Ctrllib.cruise_lag_coriolis_only`.
Proof section: [Cruise-lag solution](proof.md#cruise-lag-solution).

### Posdef nonsingularity

K.PosDef and IsUnit J imply IsUnit (Jᵀ * K), enabling the same cruise-lag solution; the declaration has no skew-Coriolis premise.

Exact declarations: `Ctrllib.isUnit_transpose_mul_of_posDef`, `Ctrllib.cruise_lag_of_posDef`.
Proof section: [Positive-definite nonsingularity](proof.md#positive-definite-nonsingularity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
