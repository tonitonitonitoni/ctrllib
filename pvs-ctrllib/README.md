# PVS-Ctrllib

PVS-Ctrllib is the PVS companion to the control, estimation and risk library
in [`../ctrllib`](../ctrllib). It contains selected mathematical contracts
reproved in PVS, with conventional derivations and an explicit map to the
corresponding Lean statements. It is an initial library, not a conversion of
all Ctrllib or Mathlib and not a cross-prover proof-certificate translator.

The shared subject is the mathematical contract: definitions, domains,
assumptions, guarantees and interfaces. Lean and PVS retain their own logic,
real-number foundations, proof machinery and implementation trust. NASA's
NASALib is an upstream PVS library; this
package is a separate project and is not presented as a NASA contribution.

## Read and replay

The current core contains **17 named claims and one generated denominator
TCC**, all complete in the fresh replay:

| Theory | Checked formulas | Relationship to Lean |
| --- | --- | --- |
| `assume_guarantee` | 2 | Sequential satisfaction and separate output existence, with explicit wiring |
| `two_rover_safety` | 4 | Real-line clearance and scalar timing arithmetic; narrower than the trajectory theorem |
| `metric_clearance` | 2 | Abstract-distance clearance under the required symmetry/triangle instances |
| `pose_clearance` | 4 | Scalar pose/body budget composition, monotonicity and clock-error decomposition; geometric inputs remain premises |
| `young_cross` | 6 including the TCC | Scalar Young inequality and supporting algebra, promoted from the earlier pilot |

- [Conventional derivations](proof.md)
- [Pose, body and clock budget derivations](pose-clearance-proof.md)
- [Library and correspondence inventory](library.json)
- [Replay evidence](evidence/replay.summary)
- [Replay script](scripts/replay.sh)

The checked baseline uses PVS 8.1 built with SBCL 2.6.8 on the Mac. The runtime
is installed separately in the workspace's sibling `PVS` checkout. Set
`PVS_ROOT` to select another compatible installation. The package's scripts
use external-oracle disabling and retain per-formula proof-chain evidence.
Prelude logic and arithmetic and the PVS implementation remain trusted.

```sh
PVS_ROOT=/absolute/path/to/PVS ./scripts/replay.sh
```

The default replays the saved `.prf` files in fresh temporary contexts. Set
`INSTALL_SCRIPTS=1` to exercise embedded ProofLite scripts before replaying.
`PVS_EVIDENCE_DIR` selects where the raw per-theory summaries are saved; its
default is `evidence/replay/` in this package. The script checks exact theorem
names and matching formula, attempt, success and complete-status counts.

A complete replay must establish all listed formulas and generated TCCs with
complete dependency chains. A successful process exit, an old saved status,
or a theorem whose imported chain is incomplete is insufficient by itself.
The receipt records the actually tested scope. NASALib-dependent weighted
Young results remain in the earlier bounded pilot; they are not silently
included in this package's prelude-only replay count.

## Correspondence and growth

`library.json` distinguishes matching contract reproofs, specializations and
narrower arithmetic support. A proved PVS statement is not evidence that an
unreviewed Lean/PVS representation map preserves its meaning. The conventional
proof and mapping must retain all side conditions, including dimensions,
empty types, norm conventions, positivity and time domains.

The initial priorities are compositional contracts and clearance/timing
interfaces. Next candidates are Euclidean geometry and the rover motion/cover
interfaces, followed by selected forcing and storage inequalities. The
existing weighted NASALib pilot can supply a separate imported tier when its
pinned dependency replay is integrated. General ODE, observer and population
risk results need individual feasibility reviews; they are not promised as
automatic ports.

The package records both proved implications and application obligations. A
component's proof does not establish reference feasibility, physical model fidelity,
controller execution, probability assumptions or whole-robot safety unless
those premises are separately supplied.
