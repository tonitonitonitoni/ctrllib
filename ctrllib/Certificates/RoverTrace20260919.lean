import Ctrllib.RoverTraceCertificate

/-! Exact instances for a recorded piecewise-linear disc trajectory.
Generated from binary64 JSON values, represented as exact rationals.
The path/frame/body interpretation is an explicit reconstruction contract.
This file does not prove the parser, logger, floating-point controller,
communication latency or physical motion equivalent to that contract.
-/

namespace Ctrllib.RoverTrace20260919

noncomputable def segment_000_x0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_dx : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_000_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_t0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_000_t1 : ℝ := (3602879701896397 / 36028797018963968 : ℝ)
theorem segment_000 :
    ∀ t ∈ Set.Icc segment_000_t0 segment_000_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_000_x0 + ((t - segment_000_t0) / (segment_000_t1 - segment_000_t0)) * segment_000_dx)
        (segment_000_y0 + ((t - segment_000_t0) / (segment_000_t1 - segment_000_t0)) * segment_000_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_000_t0 < segment_000_t1 := by
    norm_num [segment_000_t0, segment_000_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_000_x0, segment_000_y0, segment_000_dx, segment_000_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_000_x0, segment_000_y0, segment_000_dx, segment_000_dy])
    _ hs

noncomputable def segment_001_x0 : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_001_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_001_dx : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_001_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_001_t0 : ℝ := (3602879701896397 / 36028797018963968 : ℝ)
noncomputable def segment_001_t1 : ℝ := (3602879701896397 / 18014398509481984 : ℝ)
theorem segment_001 :
    ∀ t ∈ Set.Icc segment_001_t0 segment_001_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_001_x0 + ((t - segment_001_t0) / (segment_001_t1 - segment_001_t0)) * segment_001_dx)
        (segment_001_y0 + ((t - segment_001_t0) / (segment_001_t1 - segment_001_t0)) * segment_001_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_001_t0 < segment_001_t1 := by
    norm_num [segment_001_t0, segment_001_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_001_x0, segment_001_y0, segment_001_dx, segment_001_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_001_x0, segment_001_y0, segment_001_dx, segment_001_dy])
    _ hs

noncomputable def segment_002_x0 : ℝ := (3602879701896397 / 36028797018963968 : ℝ)
noncomputable def segment_002_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_002_dx : ℝ := (1801439850948199 / 36028797018963968 : ℝ)
noncomputable def segment_002_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_002_t0 : ℝ := (3602879701896397 / 18014398509481984 : ℝ)
noncomputable def segment_002_t1 : ℝ := (1351079888211149 / 4503599627370496 : ℝ)
theorem segment_002 :
    ∀ t ∈ Set.Icc segment_002_t0 segment_002_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_002_x0 + ((t - segment_002_t0) / (segment_002_t1 - segment_002_t0)) * segment_002_dx)
        (segment_002_y0 + ((t - segment_002_t0) / (segment_002_t1 - segment_002_t0)) * segment_002_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_002_t0 < segment_002_t1 := by
    norm_num [segment_002_t0, segment_002_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_002_x0, segment_002_y0, segment_002_dx, segment_002_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_002_x0, segment_002_y0, segment_002_dx, segment_002_dy])
    _ hs

noncomputable def segment_003_x0 : ℝ := (1351079888211149 / 9007199254740992 : ℝ)
noncomputable def segment_003_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_003_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_003_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_003_t0 : ℝ := (1351079888211149 / 4503599627370496 : ℝ)
noncomputable def segment_003_t1 : ℝ := (3602879701896397 / 9007199254740992 : ℝ)
theorem segment_003 :
    ∀ t ∈ Set.Icc segment_003_t0 segment_003_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_003_x0 + ((t - segment_003_t0) / (segment_003_t1 - segment_003_t0)) * segment_003_dx)
        (segment_003_y0 + ((t - segment_003_t0) / (segment_003_t1 - segment_003_t0)) * segment_003_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_003_t0 < segment_003_t1 := by
    norm_num [segment_003_t0, segment_003_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_003_x0, segment_003_y0, segment_003_dx, segment_003_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_003_x0, segment_003_y0, segment_003_dx, segment_003_dy])
    _ hs

noncomputable def segment_004_x0 : ℝ := (3602879701896397 / 18014398509481984 : ℝ)
noncomputable def segment_004_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_004_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_004_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_004_t0 : ℝ := (3602879701896397 / 9007199254740992 : ℝ)
noncomputable def segment_004_t1 : ℝ := (1 / 2 : ℝ)
theorem segment_004 :
    ∀ t ∈ Set.Icc segment_004_t0 segment_004_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_004_x0 + ((t - segment_004_t0) / (segment_004_t1 - segment_004_t0)) * segment_004_dx)
        (segment_004_y0 + ((t - segment_004_t0) / (segment_004_t1 - segment_004_t0)) * segment_004_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_004_t0 < segment_004_t1 := by
    norm_num [segment_004_t0, segment_004_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_004_x0, segment_004_y0, segment_004_dx, segment_004_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_004_x0, segment_004_y0, segment_004_dx, segment_004_dy])
    _ hs

noncomputable def segment_005_x0 : ℝ := (1 / 4 : ℝ)
noncomputable def segment_005_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_005_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_005_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_005_t0 : ℝ := (1 / 2 : ℝ)
noncomputable def segment_005_t1 : ℝ := (1351079888211149 / 2251799813685248 : ℝ)
theorem segment_005 :
    ∀ t ∈ Set.Icc segment_005_t0 segment_005_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_005_x0 + ((t - segment_005_t0) / (segment_005_t1 - segment_005_t0)) * segment_005_dx)
        (segment_005_y0 + ((t - segment_005_t0) / (segment_005_t1 - segment_005_t0)) * segment_005_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_005_t0 < segment_005_t1 := by
    norm_num [segment_005_t0, segment_005_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_005_x0, segment_005_y0, segment_005_dx, segment_005_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_005_x0, segment_005_y0, segment_005_dx, segment_005_dy])
    _ hs

noncomputable def segment_006_x0 : ℝ := (5404319552844595 / 18014398509481984 : ℝ)
noncomputable def segment_006_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_006_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_006_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_006_t0 : ℝ := (1351079888211149 / 2251799813685248 : ℝ)
noncomputable def segment_006_t1 : ℝ := (6305039478318695 / 9007199254740992 : ℝ)
theorem segment_006 :
    ∀ t ∈ Set.Icc segment_006_t0 segment_006_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_006_x0 + ((t - segment_006_t0) / (segment_006_t1 - segment_006_t0)) * segment_006_dx)
        (segment_006_y0 + ((t - segment_006_t0) / (segment_006_t1 - segment_006_t0)) * segment_006_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_006_t0 < segment_006_t1 := by
    norm_num [segment_006_t0, segment_006_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_006_x0, segment_006_y0, segment_006_dx, segment_006_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_006_x0, segment_006_y0, segment_006_dx, segment_006_dy])
    _ hs

noncomputable def segment_007_x0 : ℝ := (3152519739159347 / 9007199254740992 : ℝ)
noncomputable def segment_007_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_007_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_007_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_007_t0 : ℝ := (6305039478318695 / 9007199254740992 : ℝ)
noncomputable def segment_007_t1 : ℝ := (3602879701896397 / 4503599627370496 : ℝ)
theorem segment_007 :
    ∀ t ∈ Set.Icc segment_007_t0 segment_007_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_007_x0 + ((t - segment_007_t0) / (segment_007_t1 - segment_007_t0)) * segment_007_dx)
        (segment_007_y0 + ((t - segment_007_t0) / (segment_007_t1 - segment_007_t0)) * segment_007_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_007_t0 < segment_007_t1 := by
    norm_num [segment_007_t0, segment_007_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_007_x0, segment_007_y0, segment_007_dx, segment_007_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_007_x0, segment_007_y0, segment_007_dx, segment_007_dy])
    _ hs

noncomputable def segment_008_x0 : ℝ := (7205759403792793 / 18014398509481984 : ℝ)
noncomputable def segment_008_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_008_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_008_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_008_t0 : ℝ := (3602879701896397 / 4503599627370496 : ℝ)
noncomputable def segment_008_t1 : ℝ := (8106479329266893 / 9007199254740992 : ℝ)
theorem segment_008 :
    ∀ t ∈ Set.Icc segment_008_t0 segment_008_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_008_x0 + ((t - segment_008_t0) / (segment_008_t1 - segment_008_t0)) * segment_008_dx)
        (segment_008_y0 + ((t - segment_008_t0) / (segment_008_t1 - segment_008_t0)) * segment_008_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_008_t0 < segment_008_t1 := by
    norm_num [segment_008_t0, segment_008_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_008_x0, segment_008_y0, segment_008_dx, segment_008_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_008_x0, segment_008_y0, segment_008_dx, segment_008_dy])
    _ hs

noncomputable def segment_009_x0 : ℝ := (2026619832316723 / 4503599627370496 : ℝ)
noncomputable def segment_009_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_009_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_009_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_009_t0 : ℝ := (8106479329266893 / 9007199254740992 : ℝ)
noncomputable def segment_009_t1 : ℝ := (1 / 1 : ℝ)
theorem segment_009 :
    ∀ t ∈ Set.Icc segment_009_t0 segment_009_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_009_x0 + ((t - segment_009_t0) / (segment_009_t1 - segment_009_t0)) * segment_009_dx)
        (segment_009_y0 + ((t - segment_009_t0) / (segment_009_t1 - segment_009_t0)) * segment_009_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_009_t0 < segment_009_t1 := by
    norm_num [segment_009_t0, segment_009_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_009_x0, segment_009_y0, segment_009_dx, segment_009_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_009_x0, segment_009_y0, segment_009_dx, segment_009_dy])
    _ hs

noncomputable def segment_010_x0 : ℝ := (9007199254740991 / 18014398509481984 : ℝ)
noncomputable def segment_010_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_010_dx : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_010_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_010_t0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_010_t1 : ℝ := (2476979795053773 / 2251799813685248 : ℝ)
theorem segment_010 :
    ∀ t ∈ Set.Icc segment_010_t0 segment_010_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_010_x0 + ((t - segment_010_t0) / (segment_010_t1 - segment_010_t0)) * segment_010_dx)
        (segment_010_y0 + ((t - segment_010_t0) / (segment_010_t1 - segment_010_t0)) * segment_010_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_010_t0 < segment_010_t1 := by
    norm_num [segment_010_t0, segment_010_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 900719925474099 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_010_x0, segment_010_y0, segment_010_dx, segment_010_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_010_x0, segment_010_y0, segment_010_dx, segment_010_dy])
    _ hs

noncomputable def segment_011_x0 : ℝ := (4953959590107545 / 9007199254740992 : ℝ)
noncomputable def segment_011_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_011_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_011_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_011_t0 : ℝ := (2476979795053773 / 2251799813685248 : ℝ)
noncomputable def segment_011_t1 : ℝ := (1351079888211149 / 1125899906842624 : ℝ)
theorem segment_011 :
    ∀ t ∈ Set.Icc segment_011_t0 segment_011_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_011_x0 + ((t - segment_011_t0) / (segment_011_t1 - segment_011_t0)) * segment_011_dx)
        (segment_011_y0 + ((t - segment_011_t0) / (segment_011_t1 - segment_011_t0)) * segment_011_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_011_t0 < segment_011_t1 := by
    norm_num [segment_011_t0, segment_011_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_011_x0, segment_011_y0, segment_011_dx, segment_011_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_011_x0, segment_011_y0, segment_011_dx, segment_011_dy])
    _ hs

noncomputable def segment_012_x0 : ℝ := (5404319552844595 / 9007199254740992 : ℝ)
noncomputable def segment_012_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_012_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_012_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_012_t0 : ℝ := (1351079888211149 / 1125899906842624 : ℝ)
noncomputable def segment_012_t1 : ℝ := (5854679515581645 / 4503599627370496 : ℝ)
theorem segment_012 :
    ∀ t ∈ Set.Icc segment_012_t0 segment_012_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_012_x0 + ((t - segment_012_t0) / (segment_012_t1 - segment_012_t0)) * segment_012_dx)
        (segment_012_y0 + ((t - segment_012_t0) / (segment_012_t1 - segment_012_t0)) * segment_012_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_012_t0 < segment_012_t1 := by
    norm_num [segment_012_t0, segment_012_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_012_x0, segment_012_y0, segment_012_dx, segment_012_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_012_x0, segment_012_y0, segment_012_dx, segment_012_dy])
    _ hs

noncomputable def segment_013_x0 : ℝ := (5854679515581645 / 9007199254740992 : ℝ)
noncomputable def segment_013_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_013_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_013_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_013_t0 : ℝ := (5854679515581645 / 4503599627370496 : ℝ)
noncomputable def segment_013_t1 : ℝ := (6305039478318695 / 4503599627370496 : ℝ)
theorem segment_013 :
    ∀ t ∈ Set.Icc segment_013_t0 segment_013_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_013_x0 + ((t - segment_013_t0) / (segment_013_t1 - segment_013_t0)) * segment_013_dx)
        (segment_013_y0 + ((t - segment_013_t0) / (segment_013_t1 - segment_013_t0)) * segment_013_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_013_t0 < segment_013_t1 := by
    norm_num [segment_013_t0, segment_013_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_013_x0, segment_013_y0, segment_013_dx, segment_013_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_013_x0, segment_013_y0, segment_013_dx, segment_013_dy])
    _ hs

noncomputable def segment_014_x0 : ℝ := (6305039478318695 / 9007199254740992 : ℝ)
noncomputable def segment_014_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_014_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_014_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_014_t0 : ℝ := (6305039478318695 / 4503599627370496 : ℝ)
noncomputable def segment_014_t1 : ℝ := (3 / 2 : ℝ)
theorem segment_014 :
    ∀ t ∈ Set.Icc segment_014_t0 segment_014_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_014_x0 + ((t - segment_014_t0) / (segment_014_t1 - segment_014_t0)) * segment_014_dx)
        (segment_014_y0 + ((t - segment_014_t0) / (segment_014_t1 - segment_014_t0)) * segment_014_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_014_t0 < segment_014_t1 := by
    norm_num [segment_014_t0, segment_014_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_014_x0, segment_014_y0, segment_014_dx, segment_014_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_014_x0, segment_014_y0, segment_014_dx, segment_014_dy])
    _ hs

noncomputable def segment_015_x0 : ℝ := (6755399441055745 / 9007199254740992 : ℝ)
noncomputable def segment_015_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_015_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_015_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_015_t0 : ℝ := (3 / 2 : ℝ)
noncomputable def segment_015_t1 : ℝ := (3602879701896397 / 2251799813685248 : ℝ)
theorem segment_015 :
    ∀ t ∈ Set.Icc segment_015_t0 segment_015_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_015_x0 + ((t - segment_015_t0) / (segment_015_t1 - segment_015_t0)) * segment_015_dx)
        (segment_015_y0 + ((t - segment_015_t0) / (segment_015_t1 - segment_015_t0)) * segment_015_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_015_t0 < segment_015_t1 := by
    norm_num [segment_015_t0, segment_015_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_015_x0, segment_015_y0, segment_015_dx, segment_015_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_015_x0, segment_015_y0, segment_015_dx, segment_015_dy])
    _ hs

noncomputable def segment_016_x0 : ℝ := (7205759403792795 / 9007199254740992 : ℝ)
noncomputable def segment_016_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_016_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_016_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_016_t0 : ℝ := (3602879701896397 / 2251799813685248 : ℝ)
noncomputable def segment_016_t1 : ℝ := (1914029841632461 / 1125899906842624 : ℝ)
theorem segment_016 :
    ∀ t ∈ Set.Icc segment_016_t0 segment_016_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_016_x0 + ((t - segment_016_t0) / (segment_016_t1 - segment_016_t0)) * segment_016_dx)
        (segment_016_y0 + ((t - segment_016_t0) / (segment_016_t1 - segment_016_t0)) * segment_016_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_016_t0 < segment_016_t1 := by
    norm_num [segment_016_t0, segment_016_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_016_x0, segment_016_y0, segment_016_dx, segment_016_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_016_x0, segment_016_y0, segment_016_dx, segment_016_dy])
    _ hs

noncomputable def segment_017_x0 : ℝ := (7656119366529845 / 9007199254740992 : ℝ)
noncomputable def segment_017_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_017_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_017_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_017_t0 : ℝ := (1914029841632461 / 1125899906842624 : ℝ)
noncomputable def segment_017_t1 : ℝ := (8106479329266893 / 4503599627370496 : ℝ)
theorem segment_017 :
    ∀ t ∈ Set.Icc segment_017_t0 segment_017_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_017_x0 + ((t - segment_017_t0) / (segment_017_t1 - segment_017_t0)) * segment_017_dx)
        (segment_017_y0 + ((t - segment_017_t0) / (segment_017_t1 - segment_017_t0)) * segment_017_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_017_t0 < segment_017_t1 := by
    norm_num [segment_017_t0, segment_017_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_017_x0, segment_017_y0, segment_017_dx, segment_017_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_017_x0, segment_017_y0, segment_017_dx, segment_017_dy])
    _ hs

noncomputable def segment_018_x0 : ℝ := (8106479329266895 / 9007199254740992 : ℝ)
noncomputable def segment_018_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_018_dx : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_018_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_018_t0 : ℝ := (8106479329266893 / 4503599627370496 : ℝ)
noncomputable def segment_018_t1 : ℝ := (8556839292003943 / 4503599627370496 : ℝ)
theorem segment_018 :
    ∀ t ∈ Set.Icc segment_018_t0 segment_018_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_018_x0 + ((t - segment_018_t0) / (segment_018_t1 - segment_018_t0)) * segment_018_dx)
        (segment_018_y0 + ((t - segment_018_t0) / (segment_018_t1 - segment_018_t0)) * segment_018_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_018_t0 < segment_018_t1 := by
    norm_num [segment_018_t0, segment_018_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_018_x0, segment_018_y0, segment_018_dx, segment_018_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_018_x0, segment_018_y0, segment_018_dx, segment_018_dy])
    _ hs

noncomputable def segment_019_x0 : ℝ := (8556839292003945 / 9007199254740992 : ℝ)
noncomputable def segment_019_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_019_dx : ℝ := (450359962737047 / 9007199254740992 : ℝ)
noncomputable def segment_019_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_019_t0 : ℝ := (8556839292003943 / 4503599627370496 : ℝ)
noncomputable def segment_019_t1 : ℝ := (2 / 1 : ℝ)
theorem segment_019 :
    ∀ t ∈ Set.Icc segment_019_t0 segment_019_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_019_x0 + ((t - segment_019_t0) / (segment_019_t1 - segment_019_t0)) * segment_019_dx)
        (segment_019_y0 + ((t - segment_019_t0) / (segment_019_t1 - segment_019_t0)) * segment_019_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_019_t0 < segment_019_t1 := by
    norm_num [segment_019_t0, segment_019_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_019_x0, segment_019_y0, segment_019_dx, segment_019_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_019_x0, segment_019_y0, segment_019_dx, segment_019_dy])
    _ hs

noncomputable def segment_020_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_020_y0 : ℝ := (0 / 1 : ℝ)
noncomputable def segment_020_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_020_dy : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_020_t0 : ℝ := (2 / 1 : ℝ)
noncomputable def segment_020_t1 : ℝ := (4728779608739021 / 2251799813685248 : ℝ)
theorem segment_020 :
    ∀ t ∈ Set.Icc segment_020_t0 segment_020_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_020_x0 + ((t - segment_020_t0) / (segment_020_t1 - segment_020_t0)) * segment_020_dx)
        (segment_020_y0 + ((t - segment_020_t0) / (segment_020_t1 - segment_020_t0)) * segment_020_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_020_t0 < segment_020_t1 := by
    norm_num [segment_020_t0, segment_020_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_020_x0, segment_020_y0, segment_020_dx, segment_020_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_020_x0, segment_020_y0, segment_020_dx, segment_020_dy])
    _ hs

noncomputable def segment_021_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_021_y0 : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_021_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_021_dy : ℝ := (3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_021_t0 : ℝ := (4728779608739021 / 2251799813685248 : ℝ)
noncomputable def segment_021_t1 : ℝ := (2476979795053773 / 1125899906842624 : ℝ)
theorem segment_021 :
    ∀ t ∈ Set.Icc segment_021_t0 segment_021_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_021_x0 + ((t - segment_021_t0) / (segment_021_t1 - segment_021_t0)) * segment_021_dx)
        (segment_021_y0 + ((t - segment_021_t0) / (segment_021_t1 - segment_021_t0)) * segment_021_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_021_t0 < segment_021_t1 := by
    norm_num [segment_021_t0, segment_021_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_021_x0, segment_021_y0, segment_021_dx, segment_021_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_021_x0, segment_021_y0, segment_021_dx, segment_021_dy])
    _ hs

noncomputable def segment_022_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_022_y0 : ℝ := (3602879701896397 / 36028797018963968 : ℝ)
noncomputable def segment_022_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_022_dy : ℝ := (1801439850948199 / 36028797018963968 : ℝ)
noncomputable def segment_022_t0 : ℝ := (2476979795053773 / 1125899906842624 : ℝ)
noncomputable def segment_022_t1 : ℝ := (5179139571476071 / 2251799813685248 : ℝ)
theorem segment_022 :
    ∀ t ∈ Set.Icc segment_022_t0 segment_022_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_022_x0 + ((t - segment_022_t0) / (segment_022_t1 - segment_022_t0)) * segment_022_dx)
        (segment_022_y0 + ((t - segment_022_t0) / (segment_022_t1 - segment_022_t0)) * segment_022_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_022_t0 < segment_022_t1 := by
    norm_num [segment_022_t0, segment_022_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_022_x0, segment_022_y0, segment_022_dx, segment_022_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_022_x0, segment_022_y0, segment_022_dx, segment_022_dy])
    _ hs

noncomputable def segment_023_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_023_y0 : ℝ := (1351079888211149 / 9007199254740992 : ℝ)
noncomputable def segment_023_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_023_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_023_t0 : ℝ := (5179139571476071 / 2251799813685248 : ℝ)
noncomputable def segment_023_t1 : ℝ := (1351079888211149 / 562949953421312 : ℝ)
theorem segment_023 :
    ∀ t ∈ Set.Icc segment_023_t0 segment_023_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_023_x0 + ((t - segment_023_t0) / (segment_023_t1 - segment_023_t0)) * segment_023_dx)
        (segment_023_y0 + ((t - segment_023_t0) / (segment_023_t1 - segment_023_t0)) * segment_023_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_023_t0 < segment_023_t1 := by
    norm_num [segment_023_t0, segment_023_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_023_x0, segment_023_y0, segment_023_dx, segment_023_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_023_x0, segment_023_y0, segment_023_dx, segment_023_dy])
    _ hs

noncomputable def segment_024_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_024_y0 : ℝ := (3602879701896397 / 18014398509481984 : ℝ)
noncomputable def segment_024_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_024_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_024_t0 : ℝ := (1351079888211149 / 562949953421312 : ℝ)
noncomputable def segment_024_t1 : ℝ := (5 / 2 : ℝ)
theorem segment_024 :
    ∀ t ∈ Set.Icc segment_024_t0 segment_024_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_024_x0 + ((t - segment_024_t0) / (segment_024_t1 - segment_024_t0)) * segment_024_dx)
        (segment_024_y0 + ((t - segment_024_t0) / (segment_024_t1 - segment_024_t0)) * segment_024_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_024_t0 < segment_024_t1 := by
    norm_num [segment_024_t0, segment_024_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_024_x0, segment_024_y0, segment_024_dx, segment_024_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_024_x0, segment_024_y0, segment_024_dx, segment_024_dy])
    _ hs

noncomputable def segment_025_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_025_y0 : ℝ := (1 / 4 : ℝ)
noncomputable def segment_025_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_025_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_025_t0 : ℝ := (5 / 2 : ℝ)
noncomputable def segment_025_t1 : ℝ := (5854679515581645 / 2251799813685248 : ℝ)
theorem segment_025 :
    ∀ t ∈ Set.Icc segment_025_t0 segment_025_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_025_x0 + ((t - segment_025_t0) / (segment_025_t1 - segment_025_t0)) * segment_025_dx)
        (segment_025_y0 + ((t - segment_025_t0) / (segment_025_t1 - segment_025_t0)) * segment_025_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_025_t0 < segment_025_t1 := by
    norm_num [segment_025_t0, segment_025_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_025_x0, segment_025_y0, segment_025_dx, segment_025_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_025_x0, segment_025_y0, segment_025_dx, segment_025_dy])
    _ hs

noncomputable def segment_026_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_026_y0 : ℝ := (5404319552844595 / 18014398509481984 : ℝ)
noncomputable def segment_026_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_026_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_026_t0 : ℝ := (5854679515581645 / 2251799813685248 : ℝ)
noncomputable def segment_026_t1 : ℝ := (3039929748475085 / 1125899906842624 : ℝ)
theorem segment_026 :
    ∀ t ∈ Set.Icc segment_026_t0 segment_026_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_026_x0 + ((t - segment_026_t0) / (segment_026_t1 - segment_026_t0)) * segment_026_dx)
        (segment_026_y0 + ((t - segment_026_t0) / (segment_026_t1 - segment_026_t0)) * segment_026_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_026_t0 < segment_026_t1 := by
    norm_num [segment_026_t0, segment_026_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_026_x0, segment_026_y0, segment_026_dx, segment_026_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_026_x0, segment_026_y0, segment_026_dx, segment_026_dy])
    _ hs

noncomputable def segment_027_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_027_y0 : ℝ := (3152519739159347 / 9007199254740992 : ℝ)
noncomputable def segment_027_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_027_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_027_t0 : ℝ := (3039929748475085 / 1125899906842624 : ℝ)
noncomputable def segment_027_t1 : ℝ := (6305039478318695 / 2251799813685248 : ℝ)
theorem segment_027 :
    ∀ t ∈ Set.Icc segment_027_t0 segment_027_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_027_x0 + ((t - segment_027_t0) / (segment_027_t1 - segment_027_t0)) * segment_027_dx)
        (segment_027_y0 + ((t - segment_027_t0) / (segment_027_t1 - segment_027_t0)) * segment_027_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_027_t0 < segment_027_t1 := by
    norm_num [segment_027_t0, segment_027_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_027_x0, segment_027_y0, segment_027_dx, segment_027_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_027_x0, segment_027_y0, segment_027_dx, segment_027_dy])
    _ hs

noncomputable def segment_028_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_028_y0 : ℝ := (7205759403792793 / 18014398509481984 : ℝ)
noncomputable def segment_028_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_028_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_028_t0 : ℝ := (6305039478318695 / 2251799813685248 : ℝ)
noncomputable def segment_028_t1 : ℝ := (1632554864921805 / 562949953421312 : ℝ)
theorem segment_028 :
    ∀ t ∈ Set.Icc segment_028_t0 segment_028_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_028_x0 + ((t - segment_028_t0) / (segment_028_t1 - segment_028_t0)) * segment_028_dx)
        (segment_028_y0 + ((t - segment_028_t0) / (segment_028_t1 - segment_028_t0)) * segment_028_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_028_t0 < segment_028_t1 := by
    norm_num [segment_028_t0, segment_028_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_028_x0, segment_028_y0, segment_028_dx, segment_028_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_028_x0, segment_028_y0, segment_028_dx, segment_028_dy])
    _ hs

noncomputable def segment_029_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_029_y0 : ℝ := (2026619832316723 / 4503599627370496 : ℝ)
noncomputable def segment_029_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_029_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_029_t0 : ℝ := (1632554864921805 / 562949953421312 : ℝ)
noncomputable def segment_029_t1 : ℝ := (3 / 1 : ℝ)
theorem segment_029 :
    ∀ t ∈ Set.Icc segment_029_t0 segment_029_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_029_x0 + ((t - segment_029_t0) / (segment_029_t1 - segment_029_t0)) * segment_029_dx)
        (segment_029_y0 + ((t - segment_029_t0) / (segment_029_t1 - segment_029_t0)) * segment_029_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_029_t0 < segment_029_t1 := by
    norm_num [segment_029_t0, segment_029_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_029_x0, segment_029_y0, segment_029_dx, segment_029_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_029_x0, segment_029_y0, segment_029_dx, segment_029_dy])
    _ hs

noncomputable def segment_030_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_030_y0 : ℝ := (9007199254740991 / 18014398509481984 : ℝ)
noncomputable def segment_030_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_030_dy : ℝ := (900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_030_t0 : ℝ := (3 / 1 : ℝ)
noncomputable def segment_030_t1 : ℝ := (6980579422424269 / 2251799813685248 : ℝ)
theorem segment_030 :
    ∀ t ∈ Set.Icc segment_030_t0 segment_030_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_030_x0 + ((t - segment_030_t0) / (segment_030_t1 - segment_030_t0)) * segment_030_dx)
        (segment_030_y0 + ((t - segment_030_t0) / (segment_030_t1 - segment_030_t0)) * segment_030_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_030_t0 < segment_030_t1 := by
    norm_num [segment_030_t0, segment_030_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 900719925474099 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_030_x0, segment_030_y0, segment_030_dx, segment_030_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_030_x0, segment_030_y0, segment_030_dx, segment_030_dy])
    _ hs

noncomputable def segment_031_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_031_y0 : ℝ := (4953959590107545 / 9007199254740992 : ℝ)
noncomputable def segment_031_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_031_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_031_t0 : ℝ := (6980579422424269 / 2251799813685248 : ℝ)
noncomputable def segment_031_t1 : ℝ := (3602879701896397 / 1125899906842624 : ℝ)
theorem segment_031 :
    ∀ t ∈ Set.Icc segment_031_t0 segment_031_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_031_x0 + ((t - segment_031_t0) / (segment_031_t1 - segment_031_t0)) * segment_031_dx)
        (segment_031_y0 + ((t - segment_031_t0) / (segment_031_t1 - segment_031_t0)) * segment_031_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_031_t0 < segment_031_t1 := by
    norm_num [segment_031_t0, segment_031_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_031_x0, segment_031_y0, segment_031_dx, segment_031_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_031_x0, segment_031_y0, segment_031_dx, segment_031_dy])
    _ hs

noncomputable def segment_032_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_032_y0 : ℝ := (5404319552844595 / 9007199254740992 : ℝ)
noncomputable def segment_032_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_032_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_032_t0 : ℝ := (3602879701896397 / 1125899906842624 : ℝ)
noncomputable def segment_032_t1 : ℝ := (7430939385161319 / 2251799813685248 : ℝ)
theorem segment_032 :
    ∀ t ∈ Set.Icc segment_032_t0 segment_032_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_032_x0 + ((t - segment_032_t0) / (segment_032_t1 - segment_032_t0)) * segment_032_dx)
        (segment_032_y0 + ((t - segment_032_t0) / (segment_032_t1 - segment_032_t0)) * segment_032_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_032_t0 < segment_032_t1 := by
    norm_num [segment_032_t0, segment_032_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_032_x0, segment_032_y0, segment_032_dx, segment_032_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_032_x0, segment_032_y0, segment_032_dx, segment_032_dy])
    _ hs

noncomputable def segment_033_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_033_y0 : ℝ := (5854679515581645 / 9007199254740992 : ℝ)
noncomputable def segment_033_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_033_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_033_t0 : ℝ := (7430939385161319 / 2251799813685248 : ℝ)
noncomputable def segment_033_t1 : ℝ := (1914029841632461 / 562949953421312 : ℝ)
theorem segment_033 :
    ∀ t ∈ Set.Icc segment_033_t0 segment_033_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_033_x0 + ((t - segment_033_t0) / (segment_033_t1 - segment_033_t0)) * segment_033_dx)
        (segment_033_y0 + ((t - segment_033_t0) / (segment_033_t1 - segment_033_t0)) * segment_033_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_033_t0 < segment_033_t1 := by
    norm_num [segment_033_t0, segment_033_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_033_x0, segment_033_y0, segment_033_dx, segment_033_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_033_x0, segment_033_y0, segment_033_dx, segment_033_dy])
    _ hs

noncomputable def segment_034_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_034_y0 : ℝ := (6305039478318695 / 9007199254740992 : ℝ)
noncomputable def segment_034_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_034_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_034_t0 : ℝ := (1914029841632461 / 562949953421312 : ℝ)
noncomputable def segment_034_t1 : ℝ := (7 / 2 : ℝ)
theorem segment_034 :
    ∀ t ∈ Set.Icc segment_034_t0 segment_034_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_034_x0 + ((t - segment_034_t0) / (segment_034_t1 - segment_034_t0)) * segment_034_dx)
        (segment_034_y0 + ((t - segment_034_t0) / (segment_034_t1 - segment_034_t0)) * segment_034_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_034_t0 < segment_034_t1 := by
    norm_num [segment_034_t0, segment_034_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_034_x0, segment_034_y0, segment_034_dx, segment_034_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_034_x0, segment_034_y0, segment_034_dx, segment_034_dy])
    _ hs

noncomputable def segment_035_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_035_y0 : ℝ := (6755399441055745 / 9007199254740992 : ℝ)
noncomputable def segment_035_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_035_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_035_t0 : ℝ := (7 / 2 : ℝ)
noncomputable def segment_035_t1 : ℝ := (8106479329266893 / 2251799813685248 : ℝ)
theorem segment_035 :
    ∀ t ∈ Set.Icc segment_035_t0 segment_035_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_035_x0 + ((t - segment_035_t0) / (segment_035_t1 - segment_035_t0)) * segment_035_dx)
        (segment_035_y0 + ((t - segment_035_t0) / (segment_035_t1 - segment_035_t0)) * segment_035_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_035_t0 < segment_035_t1 := by
    norm_num [segment_035_t0, segment_035_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_035_x0, segment_035_y0, segment_035_dx, segment_035_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_035_x0, segment_035_y0, segment_035_dx, segment_035_dy])
    _ hs

noncomputable def segment_036_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_036_y0 : ℝ := (7205759403792795 / 9007199254740992 : ℝ)
noncomputable def segment_036_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_036_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_036_t0 : ℝ := (8106479329266893 / 2251799813685248 : ℝ)
noncomputable def segment_036_t1 : ℝ := (4165829655317709 / 1125899906842624 : ℝ)
theorem segment_036 :
    ∀ t ∈ Set.Icc segment_036_t0 segment_036_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_036_x0 + ((t - segment_036_t0) / (segment_036_t1 - segment_036_t0)) * segment_036_dx)
        (segment_036_y0 + ((t - segment_036_t0) / (segment_036_t1 - segment_036_t0)) * segment_036_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_036_t0 < segment_036_t1 := by
    norm_num [segment_036_t0, segment_036_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_036_x0, segment_036_y0, segment_036_dx, segment_036_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_036_x0, segment_036_y0, segment_036_dx, segment_036_dy])
    _ hs

noncomputable def segment_037_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_037_y0 : ℝ := (7656119366529845 / 9007199254740992 : ℝ)
noncomputable def segment_037_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_037_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_037_t0 : ℝ := (4165829655317709 / 1125899906842624 : ℝ)
noncomputable def segment_037_t1 : ℝ := (8556839292003943 / 2251799813685248 : ℝ)
theorem segment_037 :
    ∀ t ∈ Set.Icc segment_037_t0 segment_037_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_037_x0 + ((t - segment_037_t0) / (segment_037_t1 - segment_037_t0)) * segment_037_dx)
        (segment_037_y0 + ((t - segment_037_t0) / (segment_037_t1 - segment_037_t0)) * segment_037_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_037_t0 < segment_037_t1 := by
    norm_num [segment_037_t0, segment_037_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_037_x0, segment_037_y0, segment_037_dx, segment_037_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_037_x0, segment_037_y0, segment_037_dx, segment_037_dy])
    _ hs

noncomputable def segment_038_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_038_y0 : ℝ := (8106479329266895 / 9007199254740992 : ℝ)
noncomputable def segment_038_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_038_dy : ℝ := (225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_038_t0 : ℝ := (8556839292003943 / 2251799813685248 : ℝ)
noncomputable def segment_038_t1 : ℝ := (2195504818343117 / 562949953421312 : ℝ)
theorem segment_038 :
    ∀ t ∈ Set.Icc segment_038_t0 segment_038_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_038_x0 + ((t - segment_038_t0) / (segment_038_t1 - segment_038_t0)) * segment_038_dx)
        (segment_038_y0 + ((t - segment_038_t0) / (segment_038_t1 - segment_038_t0)) * segment_038_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_038_t0 < segment_038_t1 := by
    norm_num [segment_038_t0, segment_038_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_038_x0, segment_038_y0, segment_038_dx, segment_038_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_038_x0, segment_038_y0, segment_038_dx, segment_038_dy])
    _ hs

noncomputable def segment_039_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_039_y0 : ℝ := (8556839292003945 / 9007199254740992 : ℝ)
noncomputable def segment_039_dx : ℝ := (0 / 1 : ℝ)
noncomputable def segment_039_dy : ℝ := (450359962737047 / 9007199254740992 : ℝ)
noncomputable def segment_039_t0 : ℝ := (2195504818343117 / 562949953421312 : ℝ)
noncomputable def segment_039_t1 : ℝ := (4 / 1 : ℝ)
theorem segment_039 :
    ∀ t ∈ Set.Icc segment_039_t0 segment_039_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_039_x0 + ((t - segment_039_t0) / (segment_039_t1 - segment_039_t0)) * segment_039_dx)
        (segment_039_y0 + ((t - segment_039_t0) / (segment_039_t1 - segment_039_t0)) * segment_039_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_039_t0 < segment_039_t1 := by
    norm_num [segment_039_t0, segment_039_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_039_x0, segment_039_y0, segment_039_dx, segment_039_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_039_x0, segment_039_y0, segment_039_dx, segment_039_dy])
    _ hs

noncomputable def segment_040_x0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_040_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_040_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_040_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_040_t0 : ℝ := (4 / 1 : ℝ)
noncomputable def segment_040_t1 : ℝ := (4616189618054759 / 1125899906842624 : ℝ)
theorem segment_040 :
    ∀ t ∈ Set.Icc segment_040_t0 segment_040_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_040_x0 + ((t - segment_040_t0) / (segment_040_t1 - segment_040_t0)) * segment_040_dx)
        (segment_040_y0 + ((t - segment_040_t0) / (segment_040_t1 - segment_040_t0)) * segment_040_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_040_t0 < segment_040_t1 := by
    norm_num [segment_040_t0, segment_040_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_040_x0, segment_040_y0, segment_040_dx, segment_040_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_040_x0, segment_040_y0, segment_040_dx, segment_040_dy])
    _ hs

noncomputable def segment_041_x0 : ℝ := (4278419646001971 / 4503599627370496 : ℝ)
noncomputable def segment_041_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_041_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_041_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_041_t0 : ℝ := (4616189618054759 / 1125899906842624 : ℝ)
noncomputable def segment_041_t1 : ℝ := (4728779608739021 / 1125899906842624 : ℝ)
theorem segment_041 :
    ∀ t ∈ Set.Icc segment_041_t0 segment_041_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_041_x0 + ((t - segment_041_t0) / (segment_041_t1 - segment_041_t0)) * segment_041_dx)
        (segment_041_y0 + ((t - segment_041_t0) / (segment_041_t1 - segment_041_t0)) * segment_041_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_041_t0 < segment_041_t1 := by
    norm_num [segment_041_t0, segment_041_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_041_x0, segment_041_y0, segment_041_dx, segment_041_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_041_x0, segment_041_y0, segment_041_dx, segment_041_dy])
    _ hs

noncomputable def segment_042_x0 : ℝ := (2026619832316723 / 2251799813685248 : ℝ)
noncomputable def segment_042_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_042_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_042_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_042_t0 : ℝ := (4728779608739021 / 1125899906842624 : ℝ)
noncomputable def segment_042_t1 : ℝ := (4841369599423283 / 1125899906842624 : ℝ)
theorem segment_042 :
    ∀ t ∈ Set.Icc segment_042_t0 segment_042_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_042_x0 + ((t - segment_042_t0) / (segment_042_t1 - segment_042_t0)) * segment_042_dx)
        (segment_042_y0 + ((t - segment_042_t0) / (segment_042_t1 - segment_042_t0)) * segment_042_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_042_t0 < segment_042_t1 := by
    norm_num [segment_042_t0, segment_042_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_042_x0, segment_042_y0, segment_042_dx, segment_042_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_042_x0, segment_042_y0, segment_042_dx, segment_042_dy])
    _ hs

noncomputable def segment_043_x0 : ℝ := (3828059683264921 / 4503599627370496 : ℝ)
noncomputable def segment_043_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_043_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_043_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_043_t0 : ℝ := (4841369599423283 / 1125899906842624 : ℝ)
noncomputable def segment_043_t1 : ℝ := (2476979795053773 / 562949953421312 : ℝ)
theorem segment_043 :
    ∀ t ∈ Set.Icc segment_043_t0 segment_043_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_043_x0 + ((t - segment_043_t0) / (segment_043_t1 - segment_043_t0)) * segment_043_dx)
        (segment_043_y0 + ((t - segment_043_t0) / (segment_043_t1 - segment_043_t0)) * segment_043_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_043_t0 < segment_043_t1 := by
    norm_num [segment_043_t0, segment_043_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_043_x0, segment_043_y0, segment_043_dx, segment_043_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_043_x0, segment_043_y0, segment_043_dx, segment_043_dy])
    _ hs

noncomputable def segment_044_x0 : ℝ := (900719925474099 / 1125899906842624 : ℝ)
noncomputable def segment_044_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_044_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_044_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_044_t0 : ℝ := (2476979795053773 / 562949953421312 : ℝ)
noncomputable def segment_044_t1 : ℝ := (9 / 2 : ℝ)
theorem segment_044 :
    ∀ t ∈ Set.Icc segment_044_t0 segment_044_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_044_x0 + ((t - segment_044_t0) / (segment_044_t1 - segment_044_t0)) * segment_044_dx)
        (segment_044_y0 + ((t - segment_044_t0) / (segment_044_t1 - segment_044_t0)) * segment_044_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_044_t0 < segment_044_t1 := by
    norm_num [segment_044_t0, segment_044_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_044_x0, segment_044_y0, segment_044_dx, segment_044_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_044_x0, segment_044_y0, segment_044_dx, segment_044_dy])
    _ hs

noncomputable def segment_045_x0 : ℝ := (3377699720527871 / 4503599627370496 : ℝ)
noncomputable def segment_045_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_045_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_045_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_045_t0 : ℝ := (9 / 2 : ℝ)
noncomputable def segment_045_t1 : ℝ := (5179139571476071 / 1125899906842624 : ℝ)
theorem segment_045 :
    ∀ t ∈ Set.Icc segment_045_t0 segment_045_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_045_x0 + ((t - segment_045_t0) / (segment_045_t1 - segment_045_t0)) * segment_045_dx)
        (segment_045_y0 + ((t - segment_045_t0) / (segment_045_t1 - segment_045_t0)) * segment_045_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_045_t0 < segment_045_t1 := by
    norm_num [segment_045_t0, segment_045_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_045_x0, segment_045_y0, segment_045_dx, segment_045_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_045_x0, segment_045_y0, segment_045_dx, segment_045_dy])
    _ hs

noncomputable def segment_046_x0 : ℝ := (1576259869579673 / 2251799813685248 : ℝ)
noncomputable def segment_046_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_046_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_046_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_046_t0 : ℝ := (5179139571476071 / 1125899906842624 : ℝ)
noncomputable def segment_046_t1 : ℝ := (5291729562160333 / 1125899906842624 : ℝ)
theorem segment_046 :
    ∀ t ∈ Set.Icc segment_046_t0 segment_046_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_046_x0 + ((t - segment_046_t0) / (segment_046_t1 - segment_046_t0)) * segment_046_dx)
        (segment_046_y0 + ((t - segment_046_t0) / (segment_046_t1 - segment_046_t0)) * segment_046_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_046_t0 < segment_046_t1 := by
    norm_num [segment_046_t0, segment_046_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_046_x0, segment_046_y0, segment_046_dx, segment_046_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_046_x0, segment_046_y0, segment_046_dx, segment_046_dy])
    _ hs

noncomputable def segment_047_x0 : ℝ := (2927339757790821 / 4503599627370496 : ℝ)
noncomputable def segment_047_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_047_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_047_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_047_t0 : ℝ := (5291729562160333 / 1125899906842624 : ℝ)
noncomputable def segment_047_t1 : ℝ := (1351079888211149 / 281474976710656 : ℝ)
theorem segment_047 :
    ∀ t ∈ Set.Icc segment_047_t0 segment_047_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_047_x0 + ((t - segment_047_t0) / (segment_047_t1 - segment_047_t0)) * segment_047_dx)
        (segment_047_y0 + ((t - segment_047_t0) / (segment_047_t1 - segment_047_t0)) * segment_047_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_047_t0 < segment_047_t1 := by
    norm_num [segment_047_t0, segment_047_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_047_x0, segment_047_y0, segment_047_dx, segment_047_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_047_x0, segment_047_y0, segment_047_dx, segment_047_dy])
    _ hs

noncomputable def segment_048_x0 : ℝ := (337769972052787 / 562949953421312 : ℝ)
noncomputable def segment_048_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_048_dx : ℝ := (-225179981368525 / 4503599627370496 : ℝ)
noncomputable def segment_048_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_048_t0 : ℝ := (1351079888211149 / 281474976710656 : ℝ)
noncomputable def segment_048_t1 : ℝ := (2758454771764429 / 562949953421312 : ℝ)
theorem segment_048 :
    ∀ t ∈ Set.Icc segment_048_t0 segment_048_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_048_x0 + ((t - segment_048_t0) / (segment_048_t1 - segment_048_t0)) * segment_048_dx)
        (segment_048_y0 + ((t - segment_048_t0) / (segment_048_t1 - segment_048_t0)) * segment_048_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_048_t0 < segment_048_t1 := by
    norm_num [segment_048_t0, segment_048_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (1 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_048_x0, segment_048_y0, segment_048_dx, segment_048_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_048_x0, segment_048_y0, segment_048_dx, segment_048_dy])
    _ hs

noncomputable def segment_049_x0 : ℝ := (2476979795053771 / 4503599627370496 : ℝ)
noncomputable def segment_049_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_049_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_049_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_049_t0 : ℝ := (2758454771764429 / 562949953421312 : ℝ)
noncomputable def segment_049_t1 : ℝ := (5 / 1 : ℝ)
theorem segment_049 :
    ∀ t ∈ Set.Icc segment_049_t0 segment_049_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_049_x0 + ((t - segment_049_t0) / (segment_049_t1 - segment_049_t0)) * segment_049_dx)
        (segment_049_y0 + ((t - segment_049_t0) / (segment_049_t1 - segment_049_t0)) * segment_049_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_049_t0 < segment_049_t1 := by
    norm_num [segment_049_t0, segment_049_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (900719925474092 / 900719925474099 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_049_x0, segment_049_y0, segment_049_dx, segment_049_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_049_x0, segment_049_y0, segment_049_dx, segment_049_dy])
    _ hs

noncomputable def segment_050_x0 : ℝ := (9007199254740985 / 18014398509481984 : ℝ)
noncomputable def segment_050_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_050_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_050_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_050_t0 : ℝ := (5 / 1 : ℝ)
noncomputable def segment_050_t1 : ℝ := (5742089524897383 / 1125899906842624 : ℝ)
theorem segment_050 :
    ∀ t ∈ Set.Icc segment_050_t0 segment_050_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_050_x0 + ((t - segment_050_t0) / (segment_050_t1 - segment_050_t0)) * segment_050_dx)
        (segment_050_y0 + ((t - segment_050_t0) / (segment_050_t1 - segment_050_t0)) * segment_050_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_050_t0 < segment_050_t1 := by
    norm_num [segment_050_t0, segment_050_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_050_x0, segment_050_y0, segment_050_dx, segment_050_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_050_x0, segment_050_y0, segment_050_dx, segment_050_dy])
    _ hs

noncomputable def segment_051_x0 : ℝ := (4053239664633443 / 9007199254740992 : ℝ)
noncomputable def segment_051_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_051_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_051_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_051_t0 : ℝ := (5742089524897383 / 1125899906842624 : ℝ)
noncomputable def segment_051_t1 : ℝ := (5854679515581645 / 1125899906842624 : ℝ)
theorem segment_051 :
    ∀ t ∈ Set.Icc segment_051_t0 segment_051_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_051_x0 + ((t - segment_051_t0) / (segment_051_t1 - segment_051_t0)) * segment_051_dx)
        (segment_051_y0 + ((t - segment_051_t0) / (segment_051_t1 - segment_051_t0)) * segment_051_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_051_t0 < segment_051_t1 := by
    norm_num [segment_051_t0, segment_051_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_051_x0, segment_051_y0, segment_051_dx, segment_051_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_051_x0, segment_051_y0, segment_051_dx, segment_051_dy])
    _ hs

noncomputable def segment_052_x0 : ℝ := (7205759403792787 / 18014398509481984 : ℝ)
noncomputable def segment_052_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_052_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_052_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_052_t0 : ℝ := (5854679515581645 / 1125899906842624 : ℝ)
noncomputable def segment_052_t1 : ℝ := (1491817376566477 / 281474976710656 : ℝ)
theorem segment_052 :
    ∀ t ∈ Set.Icc segment_052_t0 segment_052_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_052_x0 + ((t - segment_052_t0) / (segment_052_t1 - segment_052_t0)) * segment_052_dx)
        (segment_052_y0 + ((t - segment_052_t0) / (segment_052_t1 - segment_052_t0)) * segment_052_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_052_t0 < segment_052_t1 := by
    norm_num [segment_052_t0, segment_052_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_052_x0, segment_052_y0, segment_052_dx, segment_052_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_052_x0, segment_052_y0, segment_052_dx, segment_052_dy])
    _ hs

noncomputable def segment_053_x0 : ℝ := (197032483697459 / 562949953421312 : ℝ)
noncomputable def segment_053_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_053_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_053_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_053_t0 : ℝ := (1491817376566477 / 281474976710656 : ℝ)
noncomputable def segment_053_t1 : ℝ := (3039929748475085 / 562949953421312 : ℝ)
theorem segment_053 :
    ∀ t ∈ Set.Icc segment_053_t0 segment_053_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_053_x0 + ((t - segment_053_t0) / (segment_053_t1 - segment_053_t0)) * segment_053_dx)
        (segment_053_y0 + ((t - segment_053_t0) / (segment_053_t1 - segment_053_t0)) * segment_053_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_053_t0 < segment_053_t1 := by
    norm_num [segment_053_t0, segment_053_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_053_x0, segment_053_y0, segment_053_dx, segment_053_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_053_x0, segment_053_y0, segment_053_dx, segment_053_dy])
    _ hs

noncomputable def segment_054_x0 : ℝ := (5404319552844589 / 18014398509481984 : ℝ)
noncomputable def segment_054_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_054_dx : ℝ := (-1801439850948199 / 36028797018963968 : ℝ)
noncomputable def segment_054_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_054_t0 : ℝ := (3039929748475085 / 562949953421312 : ℝ)
noncomputable def segment_054_t1 : ℝ := (11 / 2 : ℝ)
theorem segment_054 :
    ∀ t ∈ Set.Icc segment_054_t0 segment_054_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_054_x0 + ((t - segment_054_t0) / (segment_054_t1 - segment_054_t0)) * segment_054_dx)
        (segment_054_y0 + ((t - segment_054_t0) / (segment_054_t1 - segment_054_t0)) * segment_054_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_054_t0 < segment_054_t1 := by
    norm_num [segment_054_t0, segment_054_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_054_x0, segment_054_y0, segment_054_dx, segment_054_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_054_x0, segment_054_y0, segment_054_dx, segment_054_dy])
    _ hs

noncomputable def segment_055_x0 : ℝ := (9007199254740979 / 36028797018963968 : ℝ)
noncomputable def segment_055_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_055_dx : ℝ := (-1801439850948199 / 36028797018963968 : ℝ)
noncomputable def segment_055_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_055_t0 : ℝ := (11 / 2 : ℝ)
noncomputable def segment_055_t1 : ℝ := (6305039478318695 / 1125899906842624 : ℝ)
theorem segment_055 :
    ∀ t ∈ Set.Icc segment_055_t0 segment_055_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_055_x0 + ((t - segment_055_t0) / (segment_055_t1 - segment_055_t0)) * segment_055_dx)
        (segment_055_y0 + ((t - segment_055_t0) / (segment_055_t1 - segment_055_t0)) * segment_055_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_055_t0 < segment_055_t1 := by
    norm_num [segment_055_t0, segment_055_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_055_x0, segment_055_y0, segment_055_dx, segment_055_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_055_x0, segment_055_y0, segment_055_dx, segment_055_dy])
    _ hs

noncomputable def segment_056_x0 : ℝ := (1801439850948195 / 9007199254740992 : ℝ)
noncomputable def segment_056_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_056_dx : ℝ := (-900719925474099 / 18014398509481984 : ℝ)
noncomputable def segment_056_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_056_t0 : ℝ := (6305039478318695 / 1125899906842624 : ℝ)
noncomputable def segment_056_t1 : ℝ := (6417629469002957 / 1125899906842624 : ℝ)
theorem segment_056 :
    ∀ t ∈ Set.Icc segment_056_t0 segment_056_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_056_x0 + ((t - segment_056_t0) / (segment_056_t1 - segment_056_t0)) * segment_056_dx)
        (segment_056_y0 + ((t - segment_056_t0) / (segment_056_t1 - segment_056_t0)) * segment_056_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_056_t0 < segment_056_t1 := by
    norm_num [segment_056_t0, segment_056_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_056_x0, segment_056_y0, segment_056_dx, segment_056_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_056_x0, segment_056_y0, segment_056_dx, segment_056_dy])
    _ hs

noncomputable def segment_057_x0 : ℝ := (2702159776422291 / 18014398509481984 : ℝ)
noncomputable def segment_057_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_057_dx : ℝ := (-3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_057_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_057_t0 : ℝ := (6417629469002957 / 1125899906842624 : ℝ)
noncomputable def segment_057_t1 : ℝ := (1632554864921805 / 281474976710656 : ℝ)
theorem segment_057 :
    ∀ t ∈ Set.Icc segment_057_t0 segment_057_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_057_x0 + ((t - segment_057_t0) / (segment_057_t1 - segment_057_t0)) * segment_057_dx)
        (segment_057_y0 + ((t - segment_057_t0) / (segment_057_t1 - segment_057_t0)) * segment_057_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_057_t0 < segment_057_t1 := by
    norm_num [segment_057_t0, segment_057_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_057_x0, segment_057_y0, segment_057_dx, segment_057_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_057_x0, segment_057_y0, segment_057_dx, segment_057_dy])
    _ hs

noncomputable def segment_058_x0 : ℝ := (7205759403792767 / 72057594037927936 : ℝ)
noncomputable def segment_058_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_058_dx : ℝ := (-3602879701896397 / 72057594037927936 : ℝ)
noncomputable def segment_058_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_058_t0 : ℝ := (1632554864921805 / 281474976710656 : ℝ)
noncomputable def segment_058_t1 : ℝ := (3321404725185741 / 562949953421312 : ℝ)
theorem segment_058 :
    ∀ t ∈ Set.Icc segment_058_t0 segment_058_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_058_x0 + ((t - segment_058_t0) / (segment_058_t1 - segment_058_t0)) * segment_058_dx)
        (segment_058_y0 + ((t - segment_058_t0) / (segment_058_t1 - segment_058_t0)) * segment_058_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_058_t0 < segment_058_t1 := by
    norm_num [segment_058_t0, segment_058_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_058_x0, segment_058_y0, segment_058_dx, segment_058_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_058_x0, segment_058_y0, segment_058_dx, segment_058_dy])
    _ hs

noncomputable def segment_059_x0 : ℝ := (1801439850948185 / 36028797018963968 : ℝ)
noncomputable def segment_059_y0 : ℝ := (1 / 1 : ℝ)
noncomputable def segment_059_dx : ℝ := (-1801439850948185 / 36028797018963968 : ℝ)
noncomputable def segment_059_dy : ℝ := (0 / 1 : ℝ)
noncomputable def segment_059_t0 : ℝ := (3321404725185741 / 562949953421312 : ℝ)
noncomputable def segment_059_t1 : ℝ := (6 / 1 : ℝ)
theorem segment_059 :
    ∀ t ∈ Set.Icc segment_059_t0 segment_059_t1,
      ∀ p ∈ (fun z ↦ tracePoint
        (segment_059_x0 + ((t - segment_059_t0) / (segment_059_t1 - segment_059_t0)) * segment_059_dx)
        (segment_059_y0 + ((t - segment_059_t0) / (segment_059_t1 - segment_059_t0)) * segment_059_dy) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      ∀ q ∈ (fun z ↦ tracePoint (1 / 2 : ℝ) (1 / 2 : ℝ) + z)
        '' planarDisc (3602879701896397 / 36028797018963968 : ℝ),
      (3602879701896397 / 72057594037927936 : ℝ) ≤ dist p q := by
  intro t ht
  have htime : segment_059_t0 < segment_059_t1 := by
    norm_num [segment_059_t0, segment_059_t1]
  have hs := normalized_time_mem_unit_interval htime ht
  apply planar_segment_disc_trace_certificate
    (α := (0 / 1 : ℝ))
    (by norm_num) (by norm_num)
    (by norm_num [segment_059_x0, segment_059_y0, segment_059_dx, segment_059_dy])
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num [segment_059_x0, segment_059_y0, segment_059_dx, segment_059_dy])
    _ hs

end Ctrllib.RoverTrace20260919

#print axioms Ctrllib.RoverTrace20260919.segment_000
#print axioms Ctrllib.RoverTrace20260919.segment_001
#print axioms Ctrllib.RoverTrace20260919.segment_002
#print axioms Ctrllib.RoverTrace20260919.segment_003
#print axioms Ctrllib.RoverTrace20260919.segment_004
#print axioms Ctrllib.RoverTrace20260919.segment_005
#print axioms Ctrllib.RoverTrace20260919.segment_006
#print axioms Ctrllib.RoverTrace20260919.segment_007
#print axioms Ctrllib.RoverTrace20260919.segment_008
#print axioms Ctrllib.RoverTrace20260919.segment_009
#print axioms Ctrllib.RoverTrace20260919.segment_010
#print axioms Ctrllib.RoverTrace20260919.segment_011
#print axioms Ctrllib.RoverTrace20260919.segment_012
#print axioms Ctrllib.RoverTrace20260919.segment_013
#print axioms Ctrllib.RoverTrace20260919.segment_014
#print axioms Ctrllib.RoverTrace20260919.segment_015
#print axioms Ctrllib.RoverTrace20260919.segment_016
#print axioms Ctrllib.RoverTrace20260919.segment_017
#print axioms Ctrllib.RoverTrace20260919.segment_018
#print axioms Ctrllib.RoverTrace20260919.segment_019
#print axioms Ctrllib.RoverTrace20260919.segment_020
#print axioms Ctrllib.RoverTrace20260919.segment_021
#print axioms Ctrllib.RoverTrace20260919.segment_022
#print axioms Ctrllib.RoverTrace20260919.segment_023
#print axioms Ctrllib.RoverTrace20260919.segment_024
#print axioms Ctrllib.RoverTrace20260919.segment_025
#print axioms Ctrllib.RoverTrace20260919.segment_026
#print axioms Ctrllib.RoverTrace20260919.segment_027
#print axioms Ctrllib.RoverTrace20260919.segment_028
#print axioms Ctrllib.RoverTrace20260919.segment_029
#print axioms Ctrllib.RoverTrace20260919.segment_030
#print axioms Ctrllib.RoverTrace20260919.segment_031
#print axioms Ctrllib.RoverTrace20260919.segment_032
#print axioms Ctrllib.RoverTrace20260919.segment_033
#print axioms Ctrllib.RoverTrace20260919.segment_034
#print axioms Ctrllib.RoverTrace20260919.segment_035
#print axioms Ctrllib.RoverTrace20260919.segment_036
#print axioms Ctrllib.RoverTrace20260919.segment_037
#print axioms Ctrllib.RoverTrace20260919.segment_038
#print axioms Ctrllib.RoverTrace20260919.segment_039
#print axioms Ctrllib.RoverTrace20260919.segment_040
#print axioms Ctrllib.RoverTrace20260919.segment_041
#print axioms Ctrllib.RoverTrace20260919.segment_042
#print axioms Ctrllib.RoverTrace20260919.segment_043
#print axioms Ctrllib.RoverTrace20260919.segment_044
#print axioms Ctrllib.RoverTrace20260919.segment_045
#print axioms Ctrllib.RoverTrace20260919.segment_046
#print axioms Ctrllib.RoverTrace20260919.segment_047
#print axioms Ctrllib.RoverTrace20260919.segment_048
#print axioms Ctrllib.RoverTrace20260919.segment_049
#print axioms Ctrllib.RoverTrace20260919.segment_050
#print axioms Ctrllib.RoverTrace20260919.segment_051
#print axioms Ctrllib.RoverTrace20260919.segment_052
#print axioms Ctrllib.RoverTrace20260919.segment_053
#print axioms Ctrllib.RoverTrace20260919.segment_054
#print axioms Ctrllib.RoverTrace20260919.segment_055
#print axioms Ctrllib.RoverTrace20260919.segment_056
#print axioms Ctrllib.RoverTrace20260919.segment_057
#print axioms Ctrllib.RoverTrace20260919.segment_058
#print axioms Ctrllib.RoverTrace20260919.segment_059
