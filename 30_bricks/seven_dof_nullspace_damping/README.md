---
type: proof
kind: brick
brick_id: seven_dof_nullspace_damping
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: []
lean_package: ctrllib
lean_modules: ["SevenDof"]
lean_declarations: ["Ctrllib.nullspaceLyapMatrix", "Ctrllib.nullspaceLyap", "Ctrllib.nullspace_damping_attractive", "Ctrllib.nullspace_damping_driven", "Ctrllib.nullspaceLyap_eq_quadraticForm", "Ctrllib.nullspaceLyapMatrix_posDef", "Ctrllib.nullspaceLyap_coercive", "Ctrllib.nullspaceLyap_hsand", "Ctrllib.nullspace_damping_attractive_concrete"]
internal_bricks: []
application_interfaces: ["seven_dof_nullspace_damping"]
brick_level: atomic
level_reason: "This record isolates one independently reusable theorem boundary; supporting declarations remain navigable in its complete inventory."
summary: "Conditional seven-DOF nullspace damping Lyapunov result."
keywords: ["seven_dof", "lyapunov", "nullspace", "damping"]
interface:
  inputs:
    - "Nullspace coordinate, encoded Lyapunov matrix, and dissipation/driver inequalities."
  assumptions:
    - "SPD/coercivity and exact attractive/driven hypotheses."
    - "Trajectory-dependent driver terms remain supplied inputs."
  outputs:
    - id: lyapunov_coercivity
      statement: "The encoded nullspace Lyapunov function is a positive-definite quadratic form with the stated coercive and sandwich bounds."
      declarations:
        - Ctrllib.nullspaceLyap_eq_quadraticForm
        - Ctrllib.nullspaceLyapMatrix_posDef
        - Ctrllib.nullspaceLyap_coercive
        - Ctrllib.nullspaceLyap_hsand
      proof_section: "Lyapunov coercivity"
    - id: nullspace_attractivity
      statement: "Under the displayed dissipation and driver hypotheses, the nullspace damping result gives the stated attractive or driven convergence conclusion."
      declarations:
        - Ctrllib.nullspace_damping_attractive
        - Ctrllib.nullspace_damping_driven
        - Ctrllib.nullspace_damping_attractive_concrete
      proof_section: "Nullspace attractivity"
  composition: []
---
# Seven-DOF nullspace damping Lyapunov result

This Brick is `atomic` and covers Conditional seven-DOF nullspace damping Lyapunov result. The authored [conventional derivation](proof.md) is the reading authority; generated [interface](interface.md), [references](correspondence/references.md), and [captured statements](correspondence/statements.md) are correspondence aids.

## Notation

The concrete function is
$V_n(x,v)=\frac12 k_nx^2+\frac12\hat m_nv^2+\epsilon xv$ and equals
$\frac12[x\ v]K_n[x\ v]^\mathsf T$. The hypotheses hdi and hsand are explicit
driver and sandwich premises.

## Statement

**lyapunov_coercivity:** The encoded nullspace Lyapunov function is a positive-definite quadratic form with the stated coercive and sandwich bounds.
**nullspace_attractivity:** Under the displayed dissipation and driver
hypotheses, the nullspace damping result gives the stated attractive or driven
convergence conclusion.

## Hypotheses

- SPD/coercivity and exact attractive/driven hypotheses.
- Trajectory-dependent driver terms remain supplied inputs.

## Proof

The complete conventional derivation is in [proof.md](proof.md). It follows the exact premises and output headings listed above.

## What the result establishes and does not

Conditional seven-DOF nullspace damping Lyapunov result. It does not extend beyond the explicit mathematical premises or establish source, physical, numerical, controller, or acceptance claims not listed here.

## Sources

Generated project derivation; no literature-novelty claim.


## Evidence summary

- Lean modules: `SevenDof`.
- Exact declarations: 9 captured declarations, including the selected public outputs and support helpers.
- Capture: `20_tools/generated/xylem/declarations.json`, Lean 4.34.0; no new formal check is claimed by this packaging pass.
- Axiom profile in the current extract: `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Mathematical/scientific acceptance: not claimed.

Encodes: the concrete two-dimensional nullspace Lyapunov coercivity and conditional cascade attractivity interfaces.

## Limitations

No closed trajectory proof, uniform margin, source/controller or physical claim.

## Discrepancies and open items

The exact captured signatures remain authoritative. Source equivalence, physical correspondence, and acceptance are open where stated.
Encodes: the concrete two-dimensional nullspace Lyapunov coercivity and conditional cascade attractivity interfaces.
