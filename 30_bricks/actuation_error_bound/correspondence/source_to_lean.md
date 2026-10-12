# Source-to-Lean map

The scalar bound maps to `actuation_ultimate_bound`; the state transport maps
to `actuation_state_ball`. The first body calls `comparison_bounded`, and the
second uses the two projections of `QuadSandwich`.
Coverage classification: covered for the selected declaration statements and
their captured Lean proof bodies; partial for application, controller, frame,
unit, and physical source interpretation; unavailable for claims outside the
manifest.
