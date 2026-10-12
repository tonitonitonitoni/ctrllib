---
type: proof
kind: brick
brick_id: block_lyapunov_coercivity
result_kind: new_result
status: given_assumptions
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys:
- khalil2002nonlinear
lean_package: ctrllib
lean_modules:
- BlockLyapunov
- BlockPrecompact
lean_declarations:
- Ctrllib.blockLyap
- Ctrllib.blockLyap_sandwich
- Ctrllib.blockLyap_coercive
- Ctrllib.blockLyap_nonneg
- Ctrllib.blockLyap_eq_zero_iff
- Ctrllib.blockLyap_norm_coercive
- Ctrllib.forwardPrecompact_blockLyap
internal_bricks:
- lasalle_flow_engine
application_interfaces:
- finite_block_state
- positive_definite_blocks
brick_level: composite
level_reason: The pair first builds a block quadratic Lyapunov function and then derives norm coercivity and forward precompactness from it.
summary: Positive-definite block matrices yield a nonnegative quadratic energy with explicit sandwich and zero-set properties; bounded energy gives a forward-precompact block trajectory.
keywords:
- block_lyapunov
- coercivity
- precompactness
- quadratic_form
interface:
  inputs:
  - Two finite real vector blocks v and x, with square matrices M and K of the matching dimensions.
  - For precompactness, a supplied flow on the product of the two Euclidean spaces and an initial state.
  assumptions:
  - The sandwich requires symmetric matrices and supplied eigenvalue bounds; it does not require positive definiteness.
  - Coercivity, nonnegativity, and the zero criterion require positive-definite M and K and nonempty finite index types.
  - Precompactness requires the supplied forward inequality V(phi(t,y0)) <= V(y0) for every t >= 0.
  - The product uses the maximum of its block norms; its square is at most the sum of squared block norms.
  outputs:
  - id: quadratic_energy
    statement: The block Lyapunov function is nonnegative, coercive, and zero exactly at the origin.
    declarations:
    - Ctrllib.blockLyap_sandwich
    - Ctrllib.blockLyap_coercive
    - Ctrllib.blockLyap_nonneg
    - Ctrllib.blockLyap_eq_zero_iff
    proof_section: Block quadratic energy
  - id: norm_coercivity
    statement: The half-weighted block energy is bounded below by a positive constant times the squared product norm.
    declarations:
    - Ctrllib.blockLyap_norm_coercive
    proof_section: Norm coercivity and precompactness
  - id: forward_precompact
    statement: The supplied block-state flow is forward precompact when its energy never exceeds the initial energy.
    declarations:
    - Ctrllib.forwardPrecompact_blockLyap
    proof_section: Norm coercivity and precompactness
  composition:
  - uses:
    - Ctrllib.blockLyap_norm_coercive
    establishes: Ctrllib.forwardPrecompact_blockLyap
    explanation: The concrete coercivity endpoint supplies the coercivity premise consumed by the precompactness endpoint.
---

# Block Lyapunov coercivity


## Notation

The state has two vector blocks. Its energy is one half of each matrix quadratic form, summed; the formal product norm is the maximum of the two Euclidean block norms.

## Statement

The Brick packages the quadratic sandwich, coercivity, zero-set, and
precompactness consequences of the block energy.

## Hypotheses

The sandwich uses symmetry and eigenvalue bounds. Positive-definite matrices supply coercivity, and the precompactness endpoint consumes a supplied forward nonincrease bound.

## Proof

See [proof.md](proof.md).

## What the result establishes and does not

It establishes coercive analytic bounds and compactness of sublevel
trajectories. It does not establish a Lyapunov decrease inequality.

## Sources

The organization follows the project block Lyapunov readers and standard
finite-dimensional quadratic-form arguments. The exact results are project
derivations in the named Lean modules.

## Evidence summary

Lean module: ctrllib/Ctrllib/BlockLyapunov.lean and BlockPrecompact.lean.
Declaration: the manifest selects the energy, sandwich, coercivity, zero-set,
and precompactness endpoints. Acceptance: mathematical acceptance is not
claimed; status is given_assumptions. Axiom: current Xylem capture reports
the standard profile. Encodes: block quadratic energy and its compactness
consequences.

## Limitations

The argument is finite-dimensional and requires the stated positive-definite
matrix hypotheses. It does not include system dynamics.

## Discrepancies and open items

No discrepancy was found in the inspected statements and bodies. Applications
must map their block coordinates and matrix bounds explicitly.
