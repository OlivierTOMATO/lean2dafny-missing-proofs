// CLOSED LEMMA for failing line algebra_9onxpypzleqsum2onxpy-471 (theorem algebra_9onxpypzleqsum2onxpy, Dafny line 471, ERR)
// closes with: K2 (computation) — single
// added: assert 2(x+y+z)(1/(x+y)+1/(y+z)+1/(z+x)) == Real.div(2(x+y+z)((y+z+(x+y))(z+x)+(x+y)(y+z)), (x+y)(y+z)(z+x)) — field_simp normal form (before-goal LHS == after-goal LHS), checked
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/algebra_9onxpypzleqsum2onxpy-471/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 471 of algebra_9onxpypzleqsum2onxpy (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/algebra_9onxpypzleqsum2onxpy.dfy"

// ========================================================================================
// FAILING LINE 471 (ERR) in algebra_9onxpypzleqsum2onxpy: assertion might not hold
//   dafny |   assert (((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= 9.0) by { // @tac 840-879 // @tac 884-923 // @tac 928-967 // @tac 972-1025 // @tac 1030-1083 // @tac 1088-1141 // @tac 1146-1196
//   statement kind: have / step assertion
//   @tac 840-879 | Lean: have h₉₁ : 0 < x + y := by linarith
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 884-923 | Lean: have h₉₂ : 0 < y + z := by linarith
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 928-967 | Lean: have h₉₃ : 0 < z + x := by linarith
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 972-1025 | Lean: have h₉₄ : 0 < (x + y) * (y + z) := by positivity
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 1030-1083 | Lean: have h₉₅ : 0 < (y + z) * (z + x) := by positivity
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 1088-1141 | Lean: have h₉₆ : 0 < (z + x) * (x + y) := by positivity
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
//   @tac 1146-1196 | Lean: field_simp [h₉₁.ne', h₉₂.ne', h₉₃.ne']
//        before-goal ⊢ (2 : ℝ) * (x + y + z) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)) ≥ (9 : ℝ)
// Lean have h₉, Lean lines 19-29:
//   lean  |   have h₉ : 2 * (x + y + z) * (1 / (x + y) + 1 / (y + z) + 1 / (z + x)) ≥ 9 := by
//   lean  |     have h₉₁ : 0 < x + y := by linarith
//   lean  |     have h₉₂ : 0 < y + z := by linarith
//   lean  |     have h₉₃ : 0 < z + x := by linarith
//   lean  |     have h₉₄ : 0 < (x + y) * (y + z) := by positivity
//   lean  |     have h₉₅ : 0 < (y + z) * (z + x) := by positivity
//   lean  |     have h₉₆ : 0 < (z + x) * (x + y) := by positivity
//   lean  |     field_simp [h₉₁.ne', h₉₂.ne', h₉₃.ne']
//   lean  |     rw [le_div_iff (by positivity)]
//   lean  |     nlinarith [sq_nonneg (x - y), sq_nonneg (y - z), sq_nonneg (z - x),
//   lean  |       sq_nonneg (x + y - y - z), sq_nonneg (y + z - z - x), sq_nonneg (z + x - x - y)]

// 8 path(s) merged (paths); 12 shared facts; 4 distinct path conditions
// [k_ablate K2] K2: field_simp rewrite as one checked equality

lemma {:induction false} vc_algebra_9onxpypzleqsum2onxpy_L471(x: real, y: real, z: real)
  requires 0.0 < x
  requires 0.0 < y
  requires 0.0 < z
  requires 0.0 < x + y
  requires 0.0 < y + z
  requires 0.0 < z + x
  requires 0.0 < x + y + z
  requires 0.0 < (x + y) * (y + z) * (z + x)
  requires 0.0 < (x + y) * (y + z)
  requires 0.0 < (y + z) * (z + x)
  requires 0.0 < (z + x) * (x + y)
  requires 9.0 <= Real.div(2.0 * (x + y + z) * ((y + z + (x + y)) * (z + x) + (x + y) * (y + z)), (x + y) * (y + z) * (z + x))
  ensures  2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) >= 9.0
{
  assert 2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) == Real.div(2.0 * (x + y + z) * ((y + z + (x + y)) * (z + x) + (x + y) * (y + z)), (x + y) * (y + z) * (z + x));  // K2: field_simp normal form (before-goal LHS == after-goal LHS), checked
}
