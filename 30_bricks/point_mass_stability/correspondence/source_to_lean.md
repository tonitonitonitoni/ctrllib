# Source-to-Lean map

Coverage: the specialized mathematical statements below are covered by named
formal declarations; physical-source correspondence remains open.

| Conventional step | Exact declaration |
| --- | --- |
| Energy positive away from zero | `Ctrllib.pointMassEnergy_pos` |
| Explicit flow solves the specified field | `Ctrllib.pointMass_isSolutionTo` |
| Stability from nonincreasing positive energy | `Ctrllib.pointMass_lyapStable` |
| Global convergence by LaSalle | `Ctrllib.pointMass_tendsto_zero` |
| Stability and global convergence conjunction | `Ctrllib.pointMass_globally_asymptotically_stable` |
| Local asymptotic-stability predicate | `Ctrllib.pointMass_asympStable` |

The derivative is semidefinite. The stability proof uses `lyapunov_stable`,
and convergence comes from the independent LaSalle argument. It does not
claim that a strictly negative energy derivative was proved.

Khalil Theorem 4.1 supplies the stability pattern; Theorem 4.4 and Corollary
4.2 supply the invariance and global-convergence pattern. Theorem 4.2 is the
strict-derivative global theorem and cannot replace that source route.
