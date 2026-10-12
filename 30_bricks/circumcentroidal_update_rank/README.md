---
type: proof
kind: brick
brick_id: circumcentroidal_update_rank
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated, hornjohnson2013]
lean_package: ctrllib
lean_modules: [CircumcentroidalRank]
lean_declarations:
  - Ctrllib.correctedJacobian_update_rank_le
  - Ctrllib.circumcentroidal_update_rank_le_three
internal_bricks: []
application_interfaces: [circumcentroidal_update]
brick_level: atomic
level_reason: One focused rank-factorization boundary.
summary: The circumcentroidal corrected-Jacobian update has rank at most the three-dimensional update factor width.
keywords: [circumcentroidal_update, rank, factorization]
interface:
  inputs:
    - The corrected Jacobian and update factors with the finite dimensions in CircumcentroidalRank.
  assumptions:
    - Rank and matrix dimensions are exactly those in the canonical declarations.
    - This bounds the update term only and adds no full-rank or physical premise.
  outputs:
    - id: update_rank
      statement: The corrected Jacobian update rank is bounded by the update factor width.
      declarations: [Ctrllib.correctedJacobian_update_rank_le]
      proof_section: "Update rank"
    - id: six_by_three_rank
      statement: The circumcentroidal update has rank at most three.
      declarations: [Ctrllib.circumcentroidal_update_rank_le_three]
      proof_section: "Six-dimensional specialization"
  composition: []
---
# Circumcentroidal update rank

This atomic Brick records the rank of the update term only. Read the complete [conventional derivation](proof.md).

## Notation

The corrected Jacobian, baseline, and update factors use the exact finite-dimensional types in the canonical declaration.

## Statement

The update factors through a three-dimensional block, so its rank is at most three.

## Hypotheses

Only the factor dimensions and matrix-rank algebra are used. Full rank of the corrected map is not assumed or proved.

## Proof

The complete conventional derivation is in [proof.md](proof.md).

## What the result establishes and does not

It establishes the named update-rank inequalities. It does not establish rank improvement, singularity margin, or physical Jacobian correspondence.

## Sources

Giordano 2019 and Horn–Johnson provide contextual application and matrix-rank references; the endpoint proof is an in-house derivation.

## Evidence summary

- Lean module: CircumcentroidalRank in ctrllib.
- Declaration: the two exact rank declarations listed in the frontmatter.
- Acceptance: mathematical and scientific acceptance is not claimed.
- Axiom profile: the declaration snapshot records no sorryAx for these endpoints.
- Encodes: rank of the correction update is at most its factor width.

No fresh build is claimed.

## Limitations

The result concerns the update term rather than the corrected Jacobian. Physical frames, units, numerical values, and seven-DOF behavior remain external.

## Discrepancies and open items

Coverage is classified in correspondence/source_to_lean.md; source-model and physical correspondence remain open.
