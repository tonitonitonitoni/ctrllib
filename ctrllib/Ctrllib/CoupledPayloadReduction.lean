import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.Tactic

/-!
# Contact cancellation for a shared-payload reduction

A supplied tangent parameterization maps independent rates to rover-arm and
payload rates. Compatibility of the contact velocities cancels internal
wrenches in the projected force balance. This is a finite-dimensional algebraic
interface, not a construction of the tangent parameterization or a source
identification for a particular dynamics implementation.
-/

open Matrix
namespace Ctrllib

variable {r p c k : Type*}
variable [Fintype r] [Fintype p] [Fintype c] [Fintype k]

omit [Fintype k] in
/-- Compatible contact-velocity maps induce the same projected contact effort. -/
theorem compatible_contact_effort_cancel
    (J : Matrix c r ℝ) (H : Matrix c p ℝ)
    (E : Matrix r k ℝ) (F : Matrix p k ℝ)
    (hcompat : J * E = H * F) (Q : c → ℝ) :
    Eᵀ *ᵥ (Jᵀ *ᵥ Q) = Fᵀ *ᵥ (Hᵀ *ᵥ Q) := by
  rw [mulVec_mulVec, mulVec_mulVec, ← transpose_mul, ← transpose_mul, hcompat]

omit [Fintype k] in
/-- Projected rover-arm and payload demands sum to the projected actuator
input when the contact reaction signs and tangent compatibility agree. -/
theorem coupled_payload_projected_balance
    (J : Matrix c r ℝ) (H : Matrix c p ℝ)
    (E : Matrix r k ℝ) (F : Matrix p k ℝ)
    (hcompat : J * E = H * F)
    (dR u : r → ℝ) (dP : p → ℝ) (Q : c → ℝ)
    (hR : dR = u - Jᵀ *ᵥ Q) (hP : dP = Hᵀ *ᵥ Q) :
    Eᵀ *ᵥ dR + Fᵀ *ᵥ dP = Eᵀ *ᵥ u := by
  rw [hR, hP, mulVec_sub, compatible_contact_effort_cancel J H E F hcompat]
  exact sub_add_cancel _ _

/-- Under the separate-body interpretation, the reduction retains each
supplied inertia term once and both moving-parameterization terms. Source
identification and physical inertia properties are not established here. -/
theorem coupled_payload_reduced_inertia_balance
    (J : Matrix c r ℝ) (H : Matrix c p ℝ)
    (E E₁ : Matrix r k ℝ) (F F₁ : Matrix p k ℝ)
    (MR : Matrix r r ℝ) (MP : Matrix p p ℝ)
    (hcompat : J * E = H * F)
    (w a : k → ℝ) (cR u : r → ℝ) (cP : p → ℝ) (Q : c → ℝ)
    (hR : MR *ᵥ (E *ᵥ a + E₁ *ᵥ w) + cR = u - Jᵀ *ᵥ Q)
    (hP : MP *ᵥ (F *ᵥ a + F₁ *ᵥ w) + cP = Hᵀ *ᵥ Q) :
    (Eᵀ * MR * E + Fᵀ * MP * F) *ᵥ a +
      Eᵀ *ᵥ (MR *ᵥ (E₁ *ᵥ w) + cR) +
      Fᵀ *ᵥ (MP *ᵥ (F₁ *ᵥ w) + cP) = Eᵀ *ᵥ u := by
  have hb := coupled_payload_projected_balance J H E F hcompat _ u _ Q hR hP
  simp only [mulVec_add, add_mulVec, mulVec_mulVec] at hb ⊢
  convert hb using 1
  simp only [Matrix.mul_assoc]
  abel

end Ctrllib

#print axioms Ctrllib.compatible_contact_effort_cancel
#print axioms Ctrllib.coupled_payload_projected_balance
#print axioms Ctrllib.coupled_payload_reduced_inertia_balance
