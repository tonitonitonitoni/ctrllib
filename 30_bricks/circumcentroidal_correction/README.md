---
type: proof
kind: brick
brick_id: circumcentroidal_correction
result_kind: mixed
status: proved_in_full
owner: euclid
acceptance_owner: user
mathematical_acceptance: not_claimed
source_keys: [giordano2019coordinated, hornjohnson2013]
lean_package: ctrllib
lean_modules: [CircumcentroidalCorrection, CircumcentroidalRank]
lean_declarations: [Ctrllib.correctedJacobian, Ctrllib.correctedJacobian_mulVec, Ctrllib.correctedJacobian_gram, Ctrllib.det_fromBlocks_eq_det_correctedJacobian, Ctrllib.det_correctedJacobian, Ctrllib.euclideanSmallestGain_correctedJacobian_bounds, Ctrllib.circumcentroidalJacobian_gram, Ctrllib.det_circumcentroidalJacobian, Ctrllib.correctedJacobian_update_rank_le, Ctrllib.circumcentroidal_update_rank_le_three]
internal_bricks: []
application_interfaces: [J_nu_e, R_eb0, Jv_bar]
brick_level: composite
level_reason: >-
  Combines the corrected-map algebra with a separately reusable update-rank
  guarantee.  The rank module imports the correction module, and the
  six-by-three rank endpoint depends on the generic update-rank endpoint.
summary: >-
  A generic finite-matrix correction interface covering action, Gram,
  determinant, variational gain, and update-rank guarantees, with the
  circumcentroidal robot identification left as an application obligation.
keywords:
  - circumcentroidal
  - corrected_jacobian
  - matrix_update
  - determinant
  - gram_matrix
  - smallest_gain
  - update_rank
interface:
  inputs:
    - 'Conformable finite matrices $J,U,V$ over a commutative ring, defining $J_{\oplus}=J-UV$.'
    - "A vector x for the corrected-map action identities"
    - 'For determinant factorization, a square $J$ whose determinant is a unit; over a field this means $\det J\ne0$.'
    - "Euclidean norms, a nonempty column index, and an RCLike scalar structure for smallest-gain bounds"
    - 'For the gain bounds, define $\gamma(A)=\inf_{\|x\|_2=1}\|Ax\|_2$, using Euclidean vector norms and their induced operator norm.'
    - "Real finite matrices, with the six-by-three U specialization for the rank bounds"
    - "The application names J_nu_e, R_eb0, and Jv_bar when a robot correspondence is attempted"
  assumptions:
    - "Matrix dimensions and algebraic structures are conformable for each displayed identity"
    - "The determinant factorization requires det J to be a unit, equivalently det J != 0 over a field"
    - "Smallest-gain statements use the Euclidean unit-sphere infimum and a nonempty column index"
    - "Rank statements are over real matrices and bound rank(J - J_oplus), not rank(J_oplus)"
    - "Frame, reference-point, parameter, unit, joint-order, and robot-model correspondence are supplied externally"
  outputs:
    - id: corrected_map_action
      statement: >-
        The definition $J_{\oplus}=J-UV$ gives
        $J_{\oplus}x=Jx-U(Vx)$ for every vector $x$.
      declarations:
        - Ctrllib.correctedJacobian
        - Ctrllib.correctedJacobian_mulVec
      proof_section: "Corrected-map action and Gram identity"
    - id: generic_gram_expansion
      statement: >-
        The corrected Gram matrix satisfies
        $J_{\oplus}^\top J_{\oplus}=J^\top J-J^\top UV-V^\top U^\top J+V^\top U^\top UV$.
      declarations:
        - Ctrllib.correctedJacobian_gram
      proof_section: "Corrected-map action and Gram identity"
    - id: six_by_three_gram_expansion
      statement: >-
        The six-by-three circumcentroidal specialization satisfies its
        corresponding corrected Gram expansion with the fixed block sizes.
      declarations:
        - Ctrllib.circumcentroidalJacobian_gram
      proof_section: "Corrected-map action and Gram identity"
    - id: augmented_determinant_identity
      statement: >-
        For square J, the augmented block determinant det [[J,U],[V,I]]
        equals det(J_oplus).
      declarations:
        - Ctrllib.det_fromBlocks_eq_det_correctedJacobian
      proof_section: "Augmented determinant identity"
    - id: determinant_factorization
      statement: >-
        When $\det J$ is a unit (equivalently nonzero over a field),
        $\det(J_{\oplus})=\det(J)\det(I-VJ^{-1}U)$,
        including the six-by-six circumcentroidal specialization.
      declarations:
        - Ctrllib.det_correctedJacobian
        - Ctrllib.det_circumcentroidalJacobian
      proof_section: "Determinant factorization"
    - id: smallest_gain_bounds
      statement: >-
        The Euclidean smallest gain satisfies
        $\max\{0,\gamma(J)-\|UV\|\}\le\gamma(J_{\oplus})\le\gamma(J)+\|UV\|$.
      declarations:
        - Ctrllib.euclideanSmallestGain_correctedJacobian_bounds
      proof_section: "Smallest-gain bounds"
    - id: generic_update_rank_bound
      statement: >-
        For real finite matrices, the update rank $\operatorname{rank}(J-J_{\oplus})$ is at most
        the cardinality of the inner index type.
      declarations:
        - Ctrllib.correctedJacobian_update_rank_le
      proof_section: "Update-rank bounds"
    - id: six_by_three_update_rank_bound
      statement: >-
        For the six-by-three circumcentroidal correction, the update rank is
        at most three; this is not a rank bound on J_oplus itself.
      declarations:
        - Ctrllib.circumcentroidal_update_rank_le_three
      proof_section: "Update-rank bounds"
  composition:
    - uses:
        - Ctrllib.correctedJacobian
      establishes: Ctrllib.correctedJacobian_update_rank_le
      explanation: >-
        The rank proof rewrites the update as U V through the correctedJacobian
        definition and applies the image/rank bound for multiplication.
    - uses:
        - Ctrllib.correctedJacobian_update_rank_le
        - Ctrllib.correctedJacobian
      establishes: Ctrllib.circumcentroidal_update_rank_le_three
      explanation: >-
        The six-by-three endpoint specializes the generic update-rank bound to
        an inner index of cardinality three and uses the same corrected map.
---

# Circumcentroidal correction

Reader routes: [interface](interface.md) · [conventional proof](proof.md) · [references](correspondence/references.md) · [exact statement appendix](correspondence/statements.md).

This mixed Brick combines a Foundation component (the published correction
equations) with Generated algebraic consequences. The latter label makes no
the retained published portion.

## Notation

`J_oplus = J - U V`, with FFSM names `J = J_nu_e`, `U = R_eb0 = [R_eb; 0]`, and `V = Jv_bar`. The source writes `q` for arm joints; this Brick uses `theta` for the arm and reserves `q` for the full configuration. `oplus` denotes the circumcentroidal correction, not a pseudoinverse.

For the gain statements, $\gamma(A)=\inf_{\|x\|_2=1}\|Ax\|_2$ is the
Euclidean smallest gain. The column index is nonempty; matrix norms in these
bounds are induced Euclidean operator norms.

## Statement

For conformable finite-dimensional matrices, the corrected map satisfies the stated action identity, admits an augmented determinant identity and a Gram expansion, and obeys two-sided variational smallest-gain perturbation bounds. For real matrices the update $J-J_{\oplus}=UV$ has rank at most the inner dimension; the six-by-three correction therefore has update rank at most three. This is not a rank bound on $J_{\oplus}$ itself. The six-joint specialization fixes the corrected task block at six by six.

## Hypotheses

The generic statements require the displayed matrix dimensions and algebraic/norm structures. Determinant factorization requires the determinant of $J$ to be a unit; over a field, this is equivalent to $\det J\ne0$. Physical identification additionally requires frame, reference-point, parameter, unit, and joint-order correspondence; those assumptions are not discharged here.

## Proof

The conventional proof expands `J - U V`, derives the block determinant from an augmented matrix identity, expands the Gram matrix into four terms, and applies the variational unit-sphere gain inequality. For the rank bound, the image of $UV$ lies in the image of $U$, whose dimension is at most the number of its columns. See the Brick-canonical [long-form derivation](proof.md) and generated [exact binder capture](correspondence/statements.md).

## What the result establishes and does not

It establishes the generic algebraic implications encoded by the listed Lean declarations and the corresponding conventional derivations. It does not establish a robot-model identity, controller behavior, passivity, stability, singularity avoidance, performance comparison, or any seven-DOF theorem.

## Sources

GOA19: Giordano, Ott, and Albu-Schäffer, “Coordinated Control of Spacecraft's Attitude and End-Effector for Space Robots,” *IEEE Robotics and Automation Letters* 4, 2108–2115 (2019), doi:10.1109/LRA.2019.2899433; §II.C eq. (7), §III.A eqs. (11), (14), (16), and §III.B. Horn and Johnson, *Matrix Analysis*, 2nd ed. (2013), ISBN 978-0-521-54823-6, Theorem 4.2.2(c).

## Evidence summary

- Lean modules: `ctrllib/Ctrllib/CircumcentroidalCorrection.lean` and `ctrllib/Ctrllib/CircumcentroidalRank.lean`.
- Declarations: correction, determinant, Gram, and smallest-gain declarations listed in frontmatter.
- Acceptance: formal status `proved_in_full`; mathematical acceptance is `not_claimed`.
- Axiom: current module-specific audits report only `propext`, `Classical.choice`, and `Quot.sound`, as applicable, with no `sorryAx`.
- Encodes: generic matrix correction, determinant, Gram, and variational gain implications under explicit premises.

## Limitations

The six-joint specialization does not silently extend to seven joints. The least-gain interface is variational and is not by itself an SVD identity. No positive corrected singularity margin or robot ranking follows from the worst-case bound.

## Discrepancies and open items

