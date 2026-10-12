# Notation record

Coverage labels for this abstract Brick:

- Type: `H` is a real inner-product space; `z` is a `ComState H`; `M`, `D`,
  and `K` are continuous linear operators.
- Dimension: the theorem is dimension-independent; no finite dimension is
  assumed, and no seven-DOF dimension is encoded.
- Frame: no physical frame is assumed. Any body, inertial, or task frame is
  inapplicable until a separate physical correspondence is supplied.
- Sign: damping is nonnegative in the energy derivative, and the field uses
  the displayed negative damping/stiffness term; the exact formal premises are
  authoritative.
- Unit: physical units are inapplicable to this abstract theorem; unit
  consistency belongs to the concrete specialization.
- Lean: the formal representation column below records the corresponding Lean
  types and declarations.

| Symbol | Meaning in the source/prose | Formal representation |
|---|---|---|
| `H` | real inner-product space | Lean type with the required inner-product and continuity structure |
| `z = (z₁, z₂)` | state, velocity first, position second | `ComState H` |
| `M` | inertia operator | continuous linear operator `H →L[ℝ] H` |
| `D` | damping operator | continuous linear operator `H →L[ℝ] H` |
| `K` | stiffness operator | continuous linear operator `H →L[ℝ] H` |
| `M⁻` | named right inverse of inertia | operator argument; not asserted to be Moore–Penrose or two-sided inverse |
| `f` | first-order dissipative field | `comField M D K Minv` with the project’s argument order |
| `V` | mechanical energy | `comEnergy M K` |
| `ϕ` | realizing flow | `Flow ℝ (ComState H)` |
| `z₀` | selected initial state | `ComState H` |
| `ω⁺(z₀)` | forward omega-limit set | the omega-limit construction used by `LaSalle.lean` |

The source packet also uses `m`, `v_c`, and `x_c` for a concrete CoM row. Those
symbols do not identify the abstract theorem: in this Brick, `M` is an operator
and is not total mass. The concrete point-mass notation belongs to a separate
Brick.

The project convention reserves `q` for the full free-flying configuration,
not the arm-joint vector. That convention is recorded for cross-reference only;
no robot configuration appears in this abstract statement.
