# Notation map

| Symbol | Lean name | Type/convention |
| --- | --- | --- |
| $z=(v,e)$ | `MatrixImpedanceState n` | Product of two Euclidean spaces; velocity first |
| $M,D,K$ | Matrix parameters, hypotheses `hM,hD,hK` | Constant real SPD matrices |
| $A$ | `matrixImpedanceCLM M D K` | Continuous linear block operator |
| $\Phi$ | `matrixImpedanceFlow M D K` | Real-time global flow |
| $V$ | `matrixImpedanceEnergy M K` | Sum of two quadratic forms |

Dimension is the cardinality of `n`, finite and nonempty for stability/convergence. The product uses the maximum norm; `blockLyap_norm_coercive` bridges the quadratic sum to that norm. Units, wrench signs and physical frames are application data.
