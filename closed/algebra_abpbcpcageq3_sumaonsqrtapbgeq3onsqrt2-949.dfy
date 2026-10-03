// CLOSED LEMMA for failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-949 (theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 949, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2/L949.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 949 of algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"

// ========================================================================================
// FAILING LINE 949 (ERR) in algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2: assertion might not hold
//   dafny |           assert ((x + y) <= Real.div((((x + y) + 2.0) * ((x + y) + 2.0)), ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 1545-1576
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1545-1576 | Lean: rw [le_div_iff (by positivity)]
//        before-goal ⊢ x + y ≤ (x + y + (2 : ℝ)) ^ (2 : ℕ) / ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ)
//        before-goal ⊢ (x + y) * ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ) ≤ (x + y + (2 : ℝ)) ^ (2 : ℕ)
// inside Lean have h₈₁, Lean lines 28-34:
//   lean  |       have h₈₁ : Real.sqrt (x + y) ≤ (x + y + 2) / (2 * Real.sqrt 2) := by
//   lean  |         rw [Real.sqrt_le_left (by positivity)]
//   lean  |         field_simp [h₅.ne']
//   lean  |         rw [le_div_iff (by positivity)]
//   lean  |         nlinarith [Real.sq_sqrt (show 0 ≤ 2 by norm_num), sq_nonneg (x + y - 2),
//   lean  |           sq_nonneg (Real.sqrt 2 * Real.sqrt (x + y) - 2),
//   lean  |           Real.sq_sqrt (show 0 ≤ x + y by positivity), sq_nonneg (x + y - 2)]

// 2 path(s) merged (paths); 16 shared facts; 2 distinct path conditions
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L949(a: real, b: real, c: real, x_1_0: real, y_1_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires 0.0 < x_1_0
  requires 0.0 < y_1_0
  requires 0.0 < x_1_0 + y_1_0
  requires 0.0 < Real.sqrt(2.0)
  requires 0.0 < Real.sqrt(2.0) * (x_1_0 + y_1_0)
  requires 0.0 < Real.sqrt(2.0) * 2.0
  requires 0.0 <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))
  requires (Real.sqrt(x_1_0 + y_1_0) <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))) == (x_1_0 + y_1_0 <= Real.pow(Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0)), 2))
  requires 0.0 < 2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0))
  requires (x_1_0 + y_1_0 <= (x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0) / (2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0)))) == ((x_1_0 + y_1_0) * (2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0))) <= (x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0))
  requires (x_1_0 + y_1_0) * (2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0))) <= (x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0)
  ensures  x_1_0 + y_1_0 <= Real.div((x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0), 2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0)))
{ }

