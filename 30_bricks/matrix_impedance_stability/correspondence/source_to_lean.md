# Source-to-Lean correspondence

Coverage classification: covered derived statements are machine checked under the displayed premises; physical application remains outside the formal result.

| Conventional claim | Declaration | Coverage |
| --- | --- | --- |
| Global exponential solution of a bounded linear field | `linearOperatorFlow_hasDerivAt`, `linearOperatorFlow_isSolutionTo` | General real Banach space |
| Concrete matrix task equation realized | `matrixImpedance_isSolutionTo` | Finite Euclidean block operator |
| Nonincreasing energy | `matrixImpedanceEnergy_antitone` | Constant SPD matrices |
| Lyapunov stability | `matrixImpedance_lyapStable` | Nonempty finite dimension |
| Every initial state converges | `matrixImpedance_tendsto_zero` | Flow and forward precompactness discharged |
| Stability plus global convergence | `matrixImpedance_globally_asymptotically_stable` | Explicit conjunction |

All names have namespace `Ctrllib`. This is a derived specialization of the stability/invariance machinery, not a theorem that the supplied physical rover implements the field. Choosing `Fin 6` selects six task coordinates but does not establish their global rotational or power-pairing validity.
