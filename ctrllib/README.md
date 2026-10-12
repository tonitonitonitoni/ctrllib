# Ctrllib

This Lean 4 project contains formal sources for stability, control,
estimation, risk, geometry, and clearance interfaces. The theorem statements
keep their mathematical premises explicit; an interface theorem is not by
itself a claim about a physical implementation or experiment.

The public export omits private-source records and the KdR author-allocation
package. The remaining modules are retained as a coherent Lean library.

## Building

Use an already-installed toolchain matching `lean-toolchain`:

```sh
lake build
```

No overall software license is asserted here. Review individual source files
and third-party dependencies before redistribution or reuse.
