# Source-to-Lean correspondence — Finite-family validation confidence

The former population_risk proof sections Fixed-threshold validation and Finite candidate selection are the conventional source for this split.

The finite-grid extension consumes the independent finite-grid theorem
`Ctrllib.cvarGrid_approximation` from the `cvar_saa_engine` Brick, then uses
the selected grid point in the validation confidence composition. The exact
loss envelope, nonempty finite grid, covering radius, outer-measure, and
independence premises remain explicit in the captured declarations.

Coverage classification: partial/local formal coverage. The correspondence page records orientation only; it does not validate semantic equivalence, source transcription, or physical correspondence.
