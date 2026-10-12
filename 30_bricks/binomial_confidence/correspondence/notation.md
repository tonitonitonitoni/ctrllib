# Notation correspondence — Exact Binomial lower-tail confidence

`B_{n,p}(r)` denotes the finite lower-tail polynomial. Strictness in the confidence set follows the exact definition.

Coverage notes: type and dimension are fixed by the exact signatures; frame and unit meanings are application inputs; sign conventions follow the module definitions; Lean names and binders are retained in the statement appendix. Unsupported or abstract application notation is intentionally retained as an explicit boundary.

The Bernoulli extension uses a Prop-valued indicator `ind : Fin n → Ω → Prop`; its success count is the natural number `Set.ncard {i | ind i ω}`. The endpoint extension uses the strict real-power expression `Real.rpow δ (1 / (n : ℝ))`, with `n > 0`, `0 < δ`, and `δ < 1` as stated in the authored proof.
