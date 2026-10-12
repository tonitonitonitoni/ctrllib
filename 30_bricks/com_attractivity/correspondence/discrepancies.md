# Discrepancy report

No discrepancy-free acceptance claim is made. The following boundaries and
open items must remain visible.

1. **Flow interface.** `com_attractive` assumes a realizing `Flow` and an
   `IsSolutionTo` witness. The abstract Brick does not prove that every
   operator tuple has such a flow.
2. **Precompactness interface.** Forward precompactness is an explicit premise
   for the selected orbit. It is not inferred from a physical model here.
3. **Abstract versus concrete.** `ComLaSalleMatrix` discharges concrete SPD
   operator identities, while `PointMassComFlow` supplies an explicit ideal
   point-mass flow and the separate endpoint `pointMass_tendsto_zero`. Neither
   concrete specialization is part of this abstract Brick’s identity.
4. **Physical correspondence.** The controller substitution and the mapping
   from a spacecraft/manipulator model to the CoM field remain application
   correspondence work.
5. **Stability strength.** The conclusion is attractivity of a selected
   trajectory under the stated premises. The generic `KhalilStability`
   declarations define and prove separate Lyapunov-stability results.
   `PointMassStability` now combines stability with convergence for the
   specified ideal point-mass flow, in its separate Brick.
   The attractivity conclusion must not be paraphrased as unconditional global
   asymptotic stability of the implemented robot.
6. **Source generality.** The cited LaSalle source is conventionally presented
   in a finite-dimensional setting, whereas this formal presentation uses a
   general inner-product-space interface. The applicability boundary requires
   explicit review.
7. **Prose repairs.** The current [conventional proof](../proof.md) defines
   the omega-limit set and develops the compactness argument explicitly.
   It treats the flow as supplied. Historical candidate wording is retained
   as history and does not replace this current account.
8. **Scope exclusion.** Seven-DOF, null-space, tracking, and simulation claims
   are outside this packet.

9. **Historical names.** `com_gas` and `com_gas_matrix` are deprecated aliases
   with the same convergence signatures as `com_attractive` and
   `com_attractive_matrix`; the old names do not encode Lyapunov or asymptotic
   stability.
