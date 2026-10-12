import Ctrllib.PVSListVectors
import Ctrllib.TrackingStrictBoundWeighted

/-!
# A coordinate interface for the NASALib weighted-form pilot

The list operations model the inspected NASALib recursive definitions; they are
not defined by transport from Matrix. The source-to-model correspondence remains
a reviewed boundary, not a translation certificate between PVS and Lean.
Conventional derivation: the accompanying proof record's
`20_context/20_proof_machine/10_overview/pvs_lean_pilot_2026-09-19/coordinate_interface/proof.md`.
Source locators and the remaining symmetry-predicate boundary are in its README.
-/

namespace Ctrllib.PVSCoordinates

open Matrix

/-- Row-major enumeration, with both dimensions explicit in the input type. -/
def matrixEncode {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) : List (List ℝ) :=
  List.ofFn (fun i => List.ofFn (A i))

/-- Every row has the declared width; no ragged lists enter the interface. -/
def MatrixShape (m n : ℕ) (A : List (List ℝ)) : Prop :=
  A.length = m ∧ ∀ row ∈ A, row.length = n

theorem matrixEncode_shape {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) :
    MatrixShape m n (matrixEncode A) := by
  simp [MatrixShape, matrixEncode]

def matrixDecode {m n : ℕ} (A : List (List ℝ)) (h : MatrixShape m n A) :
    Matrix (Fin m) (Fin n) ℝ := fun i =>
  decode (A.get ⟨i.val, by have := h.1; omega⟩)
    (h.2 _ (List.get_mem ..))

theorem matrixDecode_encode {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) :
    matrixDecode (matrixEncode A) (matrixEncode_shape A) = A := by
  ext i j
  simp [matrixDecode, matrixEncode, decode]

theorem matrixEncode_decode {m n : ℕ} (A : List (List ℝ)) (h : MatrixShape m n A) :
    matrixEncode (matrixDecode A h) = A := by
  apply List.ext_get
  · simp [matrixEncode, h.1]
  · intro i hi hi'
    simp only [matrixEncode, List.get_eq_getElem, List.getElem_ofFn]
    exact encode_decode _ _

/-- NASALib `matrix_vector_multiplication.mult` stops for an empty vector. -/
def listMulVec : List (List ℝ) → List ℝ → List ℝ
  | [], _ => []
  | _ :: _, [] => []
  | row :: rows, v@(_ :: _) => listDot row v :: listMulVec rows v

def listForm (A : List (List ℝ)) (u v : List ℝ) : ℝ :=
  listDot u (listMulVec A v)

theorem listMulVec_eq_map (A : List (List ℝ)) (v : List ℝ) (hv : v ≠ []) :
    listMulVec A v = A.map (fun row => listDot row v) := by
  induction A with
  | nil => rfl
  | cons row rows ih =>
    cases v with
    | nil => exact (hv rfl).elim
    | cons a v => simp only [listMulVec, List.map_cons, ih]

/-- The positive inner dimension is essential for the list-valued result. -/
theorem listMulVec_encode {m n : ℕ} (hn : 0 < n)
    (A : Matrix (Fin m) (Fin n) ℝ) (v : Fin n → ℝ) :
    listMulVec (matrixEncode A) (List.ofFn v) = List.ofFn (A *ᵥ v) := by
  have hv : List.ofFn v ≠ [] := by
    intro h
    have := congrArg List.length h
    simp only [List.length_ofFn, List.length_nil] at this
    omega
  rw [listMulVec_eq_map _ _ hv]
  simp only [matrixEncode, List.map_ofFn, Function.comp_def, listDot_ofFn]
  rfl

theorem listForm_encode {n : ℕ} (hn : 0 < n)
    (A : Matrix (Fin n) (Fin n) ℝ) (u v : Fin n → ℝ) :
    listForm (matrixEncode A) (List.ofFn u) (List.ofFn v) = u ⬝ᵥ A *ᵥ v := by
  rw [listForm, listMulVec_encode hn, listDot_ofFn]
  rfl

theorem listSub_ofFn {n : ℕ} (u v : Fin n → ℝ) :
    listAdd (List.ofFn u) (listScale (-1) (List.ofFn v)) = List.ofFn (u - v) := by
  rw [listScale_ofFn, listAdd_ofFn]
  congr 1
  funext i
  simp [sub_eq_add_neg]

/-- Semidefiniteness quantified over every list of the declared length. -/
def listNonnegative (n : ℕ) (A : List (List ℝ)) : Prop :=
  ∀ v : List ℝ, v.length = n → 0 ≤ listForm A v v

theorem listNonnegative_encode_iff {n : ℕ} (hn : 0 < n)
    (A : Matrix (Fin n) (Fin n) ℝ) :
    listNonnegative n (matrixEncode A) ↔ ∀ v, 0 ≤ v ⬝ᵥ A *ᵥ v := by
  constructor
  · intro h v
    simpa only [listForm_encode hn] using h (List.ofFn v) (List.length_ofFn ..)
  · intro h v hv
    rw [← encode_decode v hv, listForm_encode hn]
    exact h _

/-- Bounded entry symmetry, with the intended square dimension stated explicitly. -/
def listSymmetric (n : ℕ) (A : List (List ℝ)) (h : MatrixShape n n A) : Prop :=
  ∀ i j, matrixDecode A h i j = matrixDecode A h j i

theorem listSymmetric_encode_iff {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) :
    listSymmetric n (matrixEncode A) (matrixEncode_shape A) ↔ Aᵀ = A := by
  simp only [listSymmetric, matrixDecode_encode]
  constructor
  · intro h
    ext i j
    exact h j i
  · intro h i j
    exact (congrFun (congrFun h j) i)

/-- The two premises of the existing weighted theorem survive the representation change. -/
theorem list_weighted_young {n : ℕ} (hn : 0 < n)
    (A : List (List ℝ)) (hshape : MatrixShape n n A)
    (hsym : listSymmetric n A hshape) (hpos : listNonnegative n A)
    (u v : List ℝ) (hu : u.length = n) (hv : v.length = n)
    {lam : ℝ} (hlam : 0 < lam) :
    listForm A u v ≤ lam / 2 * listForm A u u +
      1 / (2 * lam) * listForm A v v := by
  let M := matrixDecode A hshape
  have hA : matrixEncode M = A := matrixEncode_decode A hshape
  have hM : Mᵀ = M := by
    ext i j
    exact hsym j i
  have hMpos : ∀ z, 0 ≤ z ⬝ᵥ M *ᵥ z :=
    (listNonnegative_encode_iff hn M).mp (by simpa only [hA] using hpos)
  have h := Ctrllib.weighted_young_cross hM hMpos hlam (decode u hu) (decode v hv)
  simpa only [← listForm_encode hn, hA, encode_decode] using h

theorem list_weighted_residual {n : ℕ} (hn : 0 < n)
    (A : List (List ℝ)) (hshape : MatrixShape n n A)
    (hsym : listSymmetric n A hshape) (hpos : listNonnegative n A)
    (x r : List ℝ) (hx : x.length = n) (hr : r.length = n)
    {rho : ℝ} (hrho : 0 < rho)
    (hbound : listForm A r r ≤ rho ^ 2 * listForm A x x) :
    listForm A x r ≤ rho * listForm A x x := by
  have hy := list_weighted_young hn A hshape hsym hpos x r hx hr hrho
  have hstep := mul_le_mul_of_nonneg_left hbound
    (show (0 : ℝ) ≤ 1 / (2 * rho) by positivity)
  have heq : 1 / (2 * rho) * (rho ^ 2 * listForm A x x) =
      rho / 2 * listForm A x x := by field_simp
  linarith

/-- An explicit enumeration connects any finite index type with ordered coordinates. -/
theorem form_reindex {ι : Type*} [Fintype ι] {n : ℕ} (e : Fin n ≃ ι)
    (A : Matrix ι ι ℝ) (u v : ι → ℝ) :
    (fun i => u (e i)) ⬝ᵥ (fun i j => A (e i) (e j)) *ᵥ (fun i => v (e i)) =
      u ⬝ᵥ A *ᵥ v := by
  change (∑ i, u (e i) * (∑ j, A (e i) (e j) * v (e j))) =
    ∑ i, u i * (∑ j, A i j * v j)
  have hs (i : ι) : (∑ j, A i (e j) * v (e j)) = ∑ j, A i j * v j :=
    e.sum_comp (fun j => A i j * v j)
  simp_rw [hs]
  exact e.sum_comp (fun i => u i * ∑ j, A i j * v j)

theorem listForm_encode_reindex {ι : Type*} [Fintype ι] {n : ℕ}
    (hn : 0 < n) (e : Fin n ≃ ι) (A : Matrix ι ι ℝ) (u v : ι → ℝ) :
    listForm (matrixEncode (fun i j => A (e i) (e j)))
      (List.ofFn (fun i => u (e i))) (List.ofFn (fun i => v (e i))) =
        u ⬝ᵥ A *ᵥ v := by
  exact (listForm_encode hn (fun i j => A (e i) (e j))
    (fun i => u (e i)) (fun i => v (e i))).trans (form_reindex e A u v)

/-- A checked counterexample to extending vector-output preservation to n=0. -/
theorem zero_columns_counterexample :
    listMulVec (matrixEncode (0 : Matrix (Fin 1) (Fin 0) ℝ))
        (List.ofFn (0 : Fin 0 → ℝ)) ≠
      List.ofFn ((0 : Matrix (Fin 1) (Fin 0) ℝ) *ᵥ (0 : Fin 0 → ℝ)) := by
  simp [matrixEncode, List.ofFn_succ, listMulVec]

#print axioms matrixDecode_encode
#print axioms matrixEncode_shape
#print axioms matrixEncode_decode
#print axioms listMulVec_eq_map
#print axioms listMulVec_encode
#print axioms listForm_encode
#print axioms listSub_ofFn
#print axioms listNonnegative_encode_iff
#print axioms listSymmetric_encode_iff
#print axioms list_weighted_young
#print axioms list_weighted_residual
#print axioms form_reindex
#print axioms listForm_encode_reindex
#print axioms zero_columns_counterexample

end Ctrllib.PVSCoordinates
