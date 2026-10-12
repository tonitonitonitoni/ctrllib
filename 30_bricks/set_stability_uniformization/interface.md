# Interface — Set stability uniformization

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Composite.
**Level rationale:** The two modules provide one uniformization pipeline: capture gives a semi-attractor, exit-time arguments give stability, and relative asymptotic stability supplies uniform capture.

## Evidence and dependencies


## Inputs

- A supplied continuous two-sided flow and nested target sets Gamma1 inside Gamma2.
- Relative stability and attraction, or an explicit uniform semi-attractor premise, selected by endpoint.

## Assumptions

- Uniformization from relative asymptotic stability requires finite dimension, closed forward-invariant Gamma2, and inclusion Gamma1 in Gamma2.
- Full stability requires nonempty compact Gamma1, local uniform boundedness, local stability near Gamma1, and uniform semi-attraction.
- The base stability endpoint consumes first-exit and continuous-dependence premises; its strengthened form derives these using finite dimension and forward invariance of Gamma1.
- The final reduction additionally consumes local attraction to Gamma2 and relative stability and attraction; the final variant derives uniform semi-attraction using forward invariance of Gamma2.

## Outputs

### Uniform capture

Relative asymptotic stability yields a uniform semi-attractor and a uniform capture-time ball.

Exact declarations: `Ctrllib.exists_captureTime_ball`, `Ctrllib.uniformSemiAttractor_of_asymStableRelativeTo`.
Proof section: [Uniform capture](proof.md#uniform-capture).

### Stability from capture

A uniform basin exists over compact subsets of the target; with local boundedness, local stability, and the stated flow regularity, uniform semi-attraction yields full stability.

Exact declarations: `Ctrllib.uniform_basin_of_uniformSemiAttractor`, `Ctrllib.stableSet_of_uniformSemiAttractor`, `Ctrllib.stableSet_of_uniformSemiAttractor_of_forwardInvariant`.
Proof section: [Stability from capture](proof.md#stability-from-capture).

### Exit time

Failure of stability produces a first exit time and a uniform tube-radius obstruction.

Exact declarations: `Ctrllib.contDep_of_flow`, `Ctrllib.exists_firstExitTime`, `Ctrllib.exists_uniform_tube_radius`, `Ctrllib.firstExit_of_not_stableSet`.
Proof section: [Exit-time argument](proof.md#exit-time-argument).

### Final reduction

The nested-set standing hypotheses yield full asymptotic stability; the final variant derives the uniform semi-attractor premise from relative stability and attraction.

Exact declarations: `Ctrllib.reduction_asymptotic_stability_of_uniformSemiAttractor`, `Ctrllib.reduction_asymptotic_stability_of_asymStableRelativeTo`.
Proof section: [Final reduction](proof.md#final-reduction).

## Composition

- Uses `Ctrllib.uniformSemiAttractor_of_asymStableRelativeTo`; establishes `Ctrllib.reduction_asymptotic_stability_of_asymStableRelativeTo`. Relative asymptotic stability first produces uniform capture, which the final endpoint consumes.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
