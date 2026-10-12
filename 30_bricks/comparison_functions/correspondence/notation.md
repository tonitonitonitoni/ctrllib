# Notation correspondence

`Ici 0` is the nonnegative real ray. Lean uses total functions `ℝ → ℝ` and
restricts their properties to that ray. `IsClassKInfinity` extends
`IsClassK`; `classKInv` is `Function.invFunOn` restricted to the ray. No
physical dimensions or coordinate frames are present.
Dimension: scalar one-dimensional ray. Type: functions from the real line to the real line. Frame: no state frame is present. Sign: nonnegative ray and strict positivity away from zero. Unit: abstract scalar with no physical unit. Lean: IsClassK, IsClassKInfinity, and IsClassKL encode these conventions.
