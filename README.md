# Lean and ProofBricks

This export contains Lean 4 formal sources for stability, control, estimation,
risk, geometry, and clearance interfaces, together with selected readable
ProofBrick records and an independent PVS companion.

It is a history-free export of the published snapshot `c784bed`.

The formal statements keep their assumptions explicit. They do not by
themselves establish a physical implementation, experimental result, or
cross-prover equivalence. The public bibliography records the scholarly
sources used for context and attribution.

## Included scope

- `ctrllib/` — the Lean project and its formal library.
- `30_bricks/` — selected public-facing proof records and correspondence.
- `pvs-ctrllib/` — selected PVS contracts, proofs, replay evidence, and
  statement correspondences.
- `bibliography.bib` — public scholarly references retained by the included
  records.

Private-source records, internal workflow/provenance material, generated
catalogues tied to that material, and the KdR author-allocation package are
intentionally omitted from this export. The corresponding formal modules are
also omitted; the complete original snapshot remains unchanged elsewhere.

## Building

From `ctrllib/`, use an already-installed compatible Lean/Lake toolchain:

```sh
lake build
```

The PVS companion can be replayed with an existing PVS installation by running
`pvs-ctrllib/scripts/replay.sh` with `PVS_ROOT` set as needed.

No overall software license is asserted by this export. Review the individual
source files and third-party dependencies before redistribution or reuse.
