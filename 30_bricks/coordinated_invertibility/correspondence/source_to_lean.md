# Source to Lean

The source shape is a nested block transform with zero lower-left blocks,
rotation determinant one, arbitrary top-right and coupling blocks, and a
lower-right task block. Lean represents this shape with fromBlocks and proves
the determinant by the two zero-block determinant identities. The
3,3,6 specialization is 12 by 12 to 6 by 6. Source-model identity and
controller realization remain separate obligations.

Coverage classification: covered for the algebraic block determinant and its
unit/nonzero consequences; partial for the source Jacobian and controller
interpretation; unavailable for physical realization.
