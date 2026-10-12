# PVS–Ctrllib bounded core

This package contains a small PVS counterpart to selected relational and
metric interfaces in `ctrllib`.

`contracts/assume_guarantee.pvs` mirrors the Lean declarations in
`Ctrllib.AssumeGuarantee`: relational satisfaction is partial correctness,
`enabled?` is a separate output-existence obligation, and sequential
composition carries a wire from the upstream output type to the downstream
input type. `satisfies_sequential` proves guarantee preservation under the
downstream compatibility clause. `enabled_sequential` separately proves
existence of a connected output; it does not identify this with satisfaction.

`arithmetic/two_rover_safety.pvs` contains scalar forms of two reusable
triangle-inequality interfaces. `clearance_transfer` says that nominal
separation `delta` and pointwise errors `ep`, `eq` imply actual separation at
least `delta - ep - eq`. `timing_transfer` transfers a delivery error through a
nonnegative scalar Lipschitz constant and timing error. `current_clearance`
combines motion-age budgets into the scalar margin
`delta - ep - eq - (Lp + Lq) * h`; the metric premises needed to obtain the
two pointwise error bounds remain outside this scalar PVS theory. The separate
`arithmetic/metric_clearance.pvs` theory takes an explicit distance function
and explicit symmetry/triangle instances as theorem premises; it proves the
delivered-clearance and motion-budget forms without asserting a metric-space
instantiation. Neither arithmetic theory models trajectories, controller
execution, or physical rover geometry.

`algebra/young_cross.pvs` is a promoted copy of the selected scalar Young
inequality pilot. It contains six proved formulas including its arithmetic
lemmas and generated TCCs; the historical pilot remains the source receipt.
The original package core contains 14 formulas: 2 contract formulas, 4
scalar safety formulas, 2 generic metric formulas, and 6 Young formulas.
The [pose and clock extension](pose-clearance-proof.md) adds four scalar
budget results; the current fresh package replay therefore contains 18
formulas. The extension does not formalize the Lean rigid-body geometry.

The PVS contract core is parameterized by abstract types, while the arithmetic
theory uses `real`. This is a statement-level correspondence to the Lean
interfaces; it is not a translation certificate between PVS and Lean.

## Conventional derivations

For the contract results, let R⊆T×U and S⊆V×W be relations, and let w:U→V
be the wiring function. Satisfaction of the first contract means that
A₁(x) and R(x,y) imply G₁(x,y); it does not assert existence of y. The
sequential assumption is A₁(x) together with the statement that every y
satisfying G₁(x,y) also satisfies A₂(w(y)).

To prove sequential satisfaction, take an admitted x and an existing connected
output z. By the definition of connection, there is y with R(x,y) and
S(w(y),z). First-component satisfaction gives G₁(x,y), compatibility gives
A₂(w(y)), and second-component satisfaction gives G₂(w(y),z). This same y
witnesses the sequential guarantee.

For the separate enabled result, first-component enabledness supplies y with
R(x,y). Its satisfaction and compatibility give A₂(w(y)). Second-component
enabledness then supplies z with S(w(y),z). Together these witnesses establish
an existing connected output. Both enabledness hypotheses and the first
component's satisfaction are used; second-component satisfaction is not needed
for this existence-only conclusion.

For delivered clearance, apply the triangle inequality twice:
`d(p0,q0) ≤ d(p0,p) + d(p,q0)` and
`d(p,q0) ≤ d(p,q) + d(q,q0)`. Symmetry changes the available error premises
into `d(p0,p) ≤ ep` and `d(q,q0) ≤ eq`. Therefore
`delta ≤ d(p,q) + ep + eq`, and rearranging gives
`delta - ep - eq ≤ d(p,q)`. Replacing the two error bounds by
`ep + Lp*h` and `eq + Lq*h`, then distributing subtraction, gives the
motion-budget result
`delta - ep - eq - (Lp + Lq)*h ≤ d(p,q)`. The PVS metric theory keeps
symmetry and both triangle instances as explicit premises, so it makes no
unstated claim about a particular geometric space.

The formal PVS `timing_transfer` theorem is the scalar arithmetic step:
from |timing|≤h and L≥0, multiplication preserves the inequality, and adding
ε gives ε+L|timing|≤ε+Lh. Nonnegativity of h and ε is retained in its signature.

For context, the broader signal argument already formalized in Lean uses the
delivery premise `dist(y,f(τ)) ≤ ε` and the
Lipschitz premise is `dist(f(t),f(τ)) ≤ L*dist(t,τ)`. The triangle inequality
gives `dist(y,f(t)) ≤ ε + L*dist(t,τ)`, and the age bound
`dist(t,τ) ≤ h`, together with `L ≥ 0`, gives `ε + L*h`. The paired rover
margin is obtained by applying this argument independently to each signal and
then adding the two nonnegative error budgets. This broader signal/metric
argument is not asserted as a proved PVS declaration in the current package.

For Young's inequality, nonnegativity of the square gives
`0 ≤ C/(2λ) (λs - t)^2` when `C ≥ 0` and `λ > 0`. Expanding the square and
using `λ ≠ 0` yields
`C/(2λ) (λs - t)^2 = Cλs²/2 - Cst + Ct²/(2λ)`. Moving `Cst` to the
other side proves
`Cst ≤ Cλs²/2 + Ct²/(2λ)`. The generated denominator TCC follows from λ>0,
hence λ≠0 and 2λ≠0. The coefficient's nonnegativity is proved separately from
C≥0 and 2λ>0. The TCC is included in the replay receipt.
