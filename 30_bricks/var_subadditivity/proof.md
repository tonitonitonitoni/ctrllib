# Conventional proof: Finite VaR subadditivity counterexample

This document is the authored conventional-derivation authority for `var_subadditivity`.

## Scope and provenance

This Generated Brick is a finite counterexample encoded directly in `VaRSubadditivity`. It is an exact discrete calculation and makes no claim to represent a general portfolio theorem.

## Definitions and notation

A `FinLaw` is a finite loss law with total mass. `cumMass` is its cumulative mass, `reachesLevel` records whether a confidence level has been reached, and `VaR` is the least support loss whose cumulative mass reaches that level. The component `bond` has loss 0 except for loss 100 with probability $1/25$. `indepSumLaw` is the finite independent-sum law used by the module.

## Statement of result

At confidence $19/20$, each component VaR is 0, while the independent sum VaR is 100. Thus the inequality $\operatorname{VaR}(X+Y)\le\operatorname{VaR}(X)+\operatorname{VaR}(Y)$ fails for this law.

## Assumptions

All probabilities and support values are those explicitly defined by the finite law. The confidence level and finite support are fixed by the declaration bodies. No continuous distribution or portfolio model is assumed.

## Component VaR

Each component has mass $24/25$ at zero, which exceeds $19/20$. Therefore the cumulative mass at loss zero already reaches the confidence level, and the least qualifying support loss is zero. This is the first endpoint.

## Sum counterexample

For two independent components, the probability that both losses are zero is $(24/25)^2=576/625$, which is below $19/20$. The sum law has masses $576/625$, $48/625$, and $1/625$ at $0$, $100$, and $200$, respectively. Its cumulative mass at $100$ is $624/625>19/20$, so $100$ is the first support value reaching the confidence level. Since the component sum of VaRs is $0+0$, the subadditivity inequality would demand $100\le0$, a contradiction. The final theorem packages this contradiction as failure of VaR subadditivity.

## Formal correspondence

The finite support, cumulative mass, threshold predicate, component law, and sum law are definitions. The named endpoints are exact finite computations in the capture. No `native_decide` or external probabilistic bridge is part of the result.

## What the result establishes and does not

It establishes one exact finite counterexample. It does not establish that VaR is always non-subadditive, characterize coherent risk measures, or connect this law to a sampled physical system.

## Limitations and discrepancies

The result is tied to the concrete support and confidence level in the module. Any generalization requires a separate theorem.

## Evidence record

The current extract contains the named finite declarations with the ordinary axiom labels `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` is present. Acceptance is not claimed.
