# Source-to-Lean map

The scalar differential inequalities map to `comparison_shift`,
`comparison_tendsto_zero`, and `comparison_bounded`. Lyapunov value estimates
map to the four `lyapunov_*` declarations. The Dini and inverse-sandwich forms
map to `comparison_lemma_dini` and `classK_sandwich_stability`. Exact binders
are captured by the repository extractor.
The 16 September scalar extension maps the constant-forcing hypothesis to
`comparison_eventual_floor`. The tracking cascade consumes this endpoint under
its explicit continuity, derivative, nonnegativity, rate, and bounded-driver
premises; this composition does not identify a physical trajectory.
Coverage classification: covered for the selected declaration statements and
their captured Lean proof bodies; partial for application, controller, frame,
unit, and physical source interpretation; unavailable for claims outside the
manifest.
