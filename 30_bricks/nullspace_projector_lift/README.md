---
type: proof
kind: brick
brick_id: nullspace_projector_lift
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["NullspaceMotion", "KernelLift"]
lean_declarations: ["Ctrllib.rankOneProjector", "Ctrllib.inertiaProjector", "Ctrllib.inertiaDenominator", "Ctrllib.inertiaWeightedCovector", "Ctrllib.inertiaProjectedDescentVelocity", "Ctrllib.rankOneProjector_mulVec", "Ctrllib.rankOneProjector_idempotent", "Ctrllib.rankOneProjector_neg_neg", "Ctrllib.task_annihilates_rankOneProjector", "Ctrllib.task_annihilates_projected_velocity", "Ctrllib.taskWrench_dot_null_eq_zero", "Ctrllib.inertiaDenominator_pos", "Ctrllib.inertiaWeightedCovector_dot_kernel", "Ctrllib.inertiaProjector_idempotent", "Ctrllib.task_annihilates_inertiaProjector", "Ctrllib.inertiaDenominator_neg", "Ctrllib.gradient_dot_inertiaProjectedDescentVelocity", "Ctrllib.gradient_dot_inertiaProjectedDescentVelocity_nonpos", "Ctrllib.inertiaWeightedCovector_neg", "Ctrllib.inertiaProjector_neg", "Ctrllib.inertiaProjectedDescentVelocity_neg_basis", "Ctrllib.task_annihilates_inertiaProjectedDescentVelocity", "Ctrllib.kernelLift", "Ctrllib.coordinatedMap", "Ctrllib.kernelLift_ne_zero", "Ctrllib.coordinated_annihilates_kernelLift", "Ctrllib.eq_kernelLift_of_mem_kernel", "Ctrllib.coordinated_annihilates_kernelLift_of_inv", "Ctrllib.coordinated_annihilates_kernelLift_projector", "Ctrllib.inertiaDenominator_kernelLift_pos", "Ctrllib.coordinated_annihilates_inertiaProjector_kernelLift", "Ctrllib.exists_nonzero_coordinated_kernel_of_sigmaSixEuclid_pos"]
internal_bricks: []
application_interfaces: ["nullspace_projector", "coordinated_kernel_lift"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Reusable task-annihilating projectors and explicit coordinated kernel lift."
keywords: ["nullspace", "projector", "kernel", "inertia", "lift"]
interface:
  inputs:
    - "A task map/covector, inertia matrix, nullspace vector, and optional coordinated block maps."
  assumptions:
    - "Exact kernel, inverse, SPD, nonzero, and finite-dimensional premises from the declarations."
  outputs:
    - id: projector_annihilation
      statement: "The rank-one and inertia-weighted projectors, and their projected velocities, are annihilated by the task map under the supplied kernel premises."
      declarations:
        - Ctrllib.task_annihilates_rankOneProjector
        - Ctrllib.task_annihilates_projected_velocity
        - Ctrllib.task_annihilates_inertiaProjector
        - Ctrllib.task_annihilates_inertiaProjectedDescentVelocity
      proof_section: "Projector annihilation"
    - id: kernel_lift_characterization
      statement: "The explicit coordinated kernel lift is nonzero and is annihilated by the coordinated map; under the inverse premise, the kernel is characterized by the lift."
      declarations:
        - Ctrllib.kernelLift_ne_zero
        - Ctrllib.coordinated_annihilates_kernelLift
        - Ctrllib.eq_kernelLift_of_mem_kernel
        - Ctrllib.coordinated_annihilates_kernelLift_of_inv
      proof_section: "Kernel lift characterization"
    - id: inertia_positive
      statement: "The inertia denominator is positive under the SPD/nonzero hypotheses, including for the coordinated kernel lift."
      declarations:
        - Ctrllib.inertiaDenominator_pos
        - Ctrllib.inertiaDenominator_kernelLift_pos
      proof_section: "Inertia denominator positivity"
  composition: []
---
# Nullspace projectors and coordinated lifts

This Brick is `atomic` and covers Reusable task-annihilating projectors and explicit coordinated kernel lift. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

`P_M` denotes the inertia-weighted projector; `d=n^T M n`. `kernelLift` uses the module block order.

## Statement

**projector_annihilation:** The rank-one and inertia-weighted projectors, and their projected velocities, are annihilated by the task map under the supplied kernel premises.
**kernel_lift_characterization:** The explicit coordinated kernel lift is nonzero and is annihilated by the coordinated map; under the inverse premise, the kernel is characterized by the lift.
**inertia_positive:** The inertia denominator is positive under the SPD/nonzero hypotheses, including for the coordinated kernel lift.

## Hypotheses

- Exact kernel, inverse, SPD, nonzero, and finite-dimensional premises from the declarations.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Reusable task-annihilating projectors and explicit coordinated kernel lift. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `NullspaceMotion`, `KernelLift`.
- Exact declarations: 32 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: task-annihilating rank-one and inertia-weighted projectors plus the explicit coordinated kernel lift.

## Limitations

No physical redundancy, controller, dynamics, or acceptance claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: task-annihilating rank-one and inertia-weighted projectors plus the explicit coordinated kernel lift.
