# Interface — Nullspace projectors and coordinated lifts

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory.

## Evidence and dependencies


## Inputs

- A task map/covector, inertia matrix, nullspace vector, and optional coordinated block maps.

## Assumptions

- Exact kernel, inverse, SPD, nonzero, and finite-dimensional premises from the declarations.

## Outputs

### Projector annihilation

The rank-one and inertia-weighted projectors, and their projected velocities, are annihilated by the task map under the supplied kernel premises.

Exact declarations: `Ctrllib.task_annihilates_rankOneProjector`, `Ctrllib.task_annihilates_projected_velocity`, `Ctrllib.task_annihilates_inertiaProjector`, `Ctrllib.task_annihilates_inertiaProjectedDescentVelocity`.
Proof section: [Projector annihilation](proof.md#projector-annihilation).

### Kernel lift characterization

The explicit coordinated kernel lift is nonzero and is annihilated by the coordinated map; under the inverse premise, the kernel is characterized by the lift.

Exact declarations: `Ctrllib.kernelLift_ne_zero`, `Ctrllib.coordinated_annihilates_kernelLift`, `Ctrllib.eq_kernelLift_of_mem_kernel`, `Ctrllib.coordinated_annihilates_kernelLift_of_inv`.
Proof section: [Kernel lift characterization](proof.md#kernel-lift-characterization).

### Inertia positive

The inertia denominator is positive under the SPD/nonzero hypotheses, including for the coordinated kernel lift.

Exact declarations: `Ctrllib.inertiaDenominator_pos`, `Ctrllib.inertiaDenominator_kernelLift_pos`.
Proof section: [Inertia denominator positivity](proof.md#inertia-denominator-positivity).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
