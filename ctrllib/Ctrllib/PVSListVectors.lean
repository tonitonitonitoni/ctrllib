import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.List.OfFn
import Mathlib.Basic.Real.Basic

/-!
# PVS/NASALib list-vector adapter

The list operations model `matrices.pvs:171–194` in the inspected NASALib
revision recorded by the pilot. `List.ofFn` encodes a function on `Fin n`.
The theorems check the representation interface inside Lean; correspondence
with the PVS source and real-number foundations remains a reviewed boundary.
Conventional derivation: the accompanying proof record's
`20_context/20_proof_machine/10_overview/pvs_lean_pilot_2026-09-19/coordinate_interface/proof.md`.
-/

namespace Ctrllib.PVSCoordinates

def listAdd : List ℝ → List ℝ → List ℝ
  | [], ys => ys
  | xs, [] => xs
  | x :: xs, y :: ys => (x + y) :: listAdd xs ys

def listScale (r : ℝ) : List ℝ → List ℝ := List.map (fun x => r * x)

def listDot : List ℝ → List ℝ → ℝ
  | [], _ => 0
  | _, [] => 0
  | x :: xs, y :: ys => x * y + listDot xs ys

theorem listAdd_ofFn {n : ℕ} (f g : Fin n → ℝ) :
    listAdd (List.ofFn f) (List.ofFn g) = List.ofFn (fun i => f i + g i) := by
  induction n with
  | zero => simp [listAdd]
  | succ n ih =>
    simp [listAdd, List.ofFn_succ, ih]

theorem listScale_ofFn {n : ℕ} (r : ℝ) (f : Fin n → ℝ) :
    listScale r (List.ofFn f) = List.ofFn (fun i => r * f i) := by
  simp [listScale, Function.comp_def]

theorem listDot_ofFn {n : ℕ} (f g : Fin n → ℝ) :
    listDot (List.ofFn f) (List.ofFn g) = ∑ i, f i * g i := by
  induction n with
  | zero => simp [listDot]
  | succ n ih =>
    simp [listDot, List.ofFn_succ, ih, Fin.sum_univ_succ]

def decode {n : ℕ} (xs : List ℝ) (h : xs.length = n) : Fin n → ℝ :=
  fun i => xs.get ⟨i.1, h ▸ i.2⟩

theorem decode_encode {n : ℕ} (f : Fin n → ℝ) :
    decode (List.ofFn f) (by simp) = f := by
  funext i
  simp [decode]

theorem encode_decode {n : ℕ} (xs : List ℝ) (h : xs.length = n) :
    List.ofFn (decode xs h) = xs := by
  subst n
  apply List.ext_get
  · simp
  · intro i hi _
    simp [decode]

#print axioms Ctrllib.PVSCoordinates.listAdd_ofFn
#print axioms Ctrllib.PVSCoordinates.listScale_ofFn
#print axioms Ctrllib.PVSCoordinates.listDot_ofFn
#print axioms Ctrllib.PVSCoordinates.decode_encode
#print axioms Ctrllib.PVSCoordinates.encode_decode

end Ctrllib.PVSCoordinates
