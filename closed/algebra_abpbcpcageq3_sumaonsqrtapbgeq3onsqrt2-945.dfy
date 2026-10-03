// CLOSED LEMMA for failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-945 (theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 945, ERR)
// closes with: K2 (computation) — single
// added: assert (N/D)*(N/D) == (N*N)/(D*D) over Real.div (field_simp's before/after goals), checked
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_006/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-945/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// AUGMENTATION K2 of algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-945 (shard_006 kind ablation)
// Line lemma for failing line 945 of algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"

// ========================================================================================
// FAILING LINE 945 (ERR) in algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2: assertion might not hold
//   dafny |         assert ((x + y) <= (Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))) * Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `field_simp` (Lean state) // @tac 1515-1536
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1515-1536 | Lean: field_simp [h₅.ne']
//        before-goal ⊢ x + y ≤ ((x + y + (2 : ℝ)) / ((2 : ℝ) * √(2 : ℝ))) ^ (2 : ℕ)
// inside Lean have h₈₁, Lean lines 28-34:
//   lean  |       have h₈₁ : Real.sqrt (x + y) ≤ (x + y + 2) / (2 * Real.sqrt 2) := by
//   lean  |         rw [Real.sqrt_le_left (by positivity)]
//   lean  |         field_simp [h₅.ne']
//   lean  |         rw [le_div_iff (by positivity)]
//   lean  |         nlinarith [Real.sq_sqrt (show 0 ≤ 2 by norm_num), sq_nonneg (x + y - 2),
//   lean  |           sq_nonneg (Real.sqrt 2 * Real.sqrt (x + y) - 2),
//   lean  |           Real.sq_sqrt (show 0 ≤ x + y by positivity), sq_nonneg (x + y - 2)]

// 2 path(s) merged (paths); 14 shared facts; 2 distinct path conditions
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L945_K2(a: real, b: real, c: real, x_1_0: real, y_1_0: real)
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
  requires x_1_0 + y_1_0 <= Real.div((x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0), 2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0)))
  ensures  x_1_0 + y_1_0 <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0)) * Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))
{
  assert Real.div((x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0))) * Real.div((x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0))) == Real.div((x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)));  // field_simp before/after goals: (N/D)^2 = N^2/D^2 (checked)
}
