# Public export scope

This is a history-free, reviewable export of the published snapshot
`c784bed671d8f30f9b98da228a6594d56cac62ca`. It is not a replacement for the
original repository and does not change that repository.

## Retained

- Lean sources and the selected public-facing Brick records that build without
  the private-source KdR package.
- The independent PVS contracts, replay evidence, and statement
  correspondences included in `pvs-ctrllib/`.
- Six public topic-navigation pages under `40_sets/*/README.md`.
- Public scholarly citations, including the retained KdR 2022 and 2023 papers.

## Omitted for confidentiality or internal-workflow hygiene

- The KdR author-allocation Brick, its private-source correspondence and
  provenance, and the corresponding KdR-specific formal modules.
- Internal agent instructions and skill links (`.agents/`, `AGENTS.md`),
  system/tooling trees (`10_system/`, `20_tools/`), and all Brick provenance
  directories.
- Set-level historical records, correspondence, generated snapshots, and
  provenance; the six safe set READMEs are retained as navigation only.
- Internal/generated catalogues (`INDEX.md`, `LIBRARY.md`, and
  `MIGRATION_PLAN.md`).
- The weighted quadratic allocation Brick, because its formal dependency is the
  omitted grouped-allocation/KdR source-context package rather than because of
  a separate secret finding.

The export does not assert an overall software license. Review individual
source files and third-party dependencies before redistribution.
