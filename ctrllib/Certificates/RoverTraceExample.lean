import Ctrllib.RoverTraceCertificate

/-! A hand-authored instance matching `rover_trace_to_lean.py`.

The reconstructed segment runs from `(-1,1)` to `(1,1)` over `[0,1]`.
The obstacle is the origin, both body radii are `1/10`, and the requested
clearance is `1/20`.  Its exact closest-point parameter is `1/2`, with squared
centre separation `1`, so the clearance premise is discharged by `norm_num`.
-/

namespace Ctrllib.RoverTraceExample

noncomputable def segment_000_x0 : ℝ := (-1 / 1 : ℝ)
noncomputable def segment_000_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_000_dx : ℝ := (2 / 1 : ℝ)
noncomputable def segment_000_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_t0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_t1 : ℝ := (1 / 1 : ℝ)

theorem segment_000 :
    ∀ t ∈ Set.Icc segment_000_t0 segment_000_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_000_x0 + ((t - segment_000_t0) / (segment_000_t1 - segment_000_t0)) * segment_000_dx)
        (segment_000_y0 + ((t - segment_000_t0) / (segment_000_t1 - segment_000_t0)) * segment_000_dy) + z)
        '' planarDisc (1 / 10 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (0 / 1 : ℝ) (0 / 1 : ℝ) + z)
        '' planarDisc (1 / 10 : ℝ),
      (1 / 20 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_000_t0 < segment_000_t1 := by
    norm_num [segment_000_t0, segment_000_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 2 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_000_x0, segment_000_y0, segment_000_dx, segment_000_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_000_x0, segment_000_y0, segment_000_dx, segment_000_dy])
    _ hs

end Ctrllib.RoverTraceExample

#print axioms Ctrllib.RoverTraceExample.segment_000
