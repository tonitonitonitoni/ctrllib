# Source-to-Lean correspondence

Coverage classification: covered declarations are machine checked under their
displayed premises; partial and paper-only rows remain explicitly outside the
formal module.

| Conventional content | Canonical declaration(s) | Evidence class |
|---|---|---|
| `J_oplus = J - UV` definition | `Ctrllib.correctedJacobian` | machine checked |
| transpose, action, kernel, and sign identities | `correctedJacobian_transpose`, `correctedJacobian_mulVec`, `correctedJacobian_eq_on_correction_kernel`, `correctedJacobian_kernel_of_common_kernel`, `correctedJacobian_neg_neg` | machine checked |
| Gram expansion | `correctedJacobian_gram`, `circumcentroidalJacobian_gram` | machine checked |
| augmented determinant identity | `det_fromBlocks_eq_det_correctedJacobian` | machine checked |
| determinant factorization | `det_correctedJacobian`, `det_circumcentroidalJacobian` | machine checked when the determinant is a unit; equivalent to nonzero over a field |
| smallest-gain perturbation bound | `abs_euclideanSmallestGain_correctedJacobian_sub_le`, `euclideanSmallestGain_correctedJacobian_bounds`, `abs_euclideanSmallestGain_circumcentroidalJacobian_sub_le` | machine checked under variational interface |
| real update rank at most inner dimension; six-by-three update rank at most three | `correctedJacobian_update_rank_le`, `circumcentroidal_update_rank_le_three` in `CircumcentroidalRank` | machine checked; bounds the update, not the corrected map |
| Rayleigh Gram-spectrum identification | no dedicated declaration in the recorded module | conventional/paper-only |
| scaling, physical frame correspondence, and unit interpretation | no dedicated declaration | application/conventional-only |

The Lean module is generic over matrix index types and algebraic structures for
several results. The six-joint declarations fix the physical block sizes. The
module proves encoded implications under hypotheses; it does not identify
those variables with a live robot model.

This table also identifies supporting declarations outside the Brick's public
manifest. In particular, the transpose, kernel and sign identities support
the conventional derivation; they are not separately exported by this
Brick's current interface or statement appendix.
