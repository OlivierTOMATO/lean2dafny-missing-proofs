// CLOSED LEMMA for failing line amc12a_2021_p14-502 (theorem amc12a_2021_p14, Dafny line 502, OOR)
// closes with: K2 (computation) — single
// added: library copy with the recursive `ensures` of Real.pow/Int.pow removed (bodies kept); only that change
// Dafny: finished with 13 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-502/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 502 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/_k2pow/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 502 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |     assert ((Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0))) == 1.0) by {  // sub-goal before `have` (Lean state) // @tac 7203-7299 // @tac 7304-7400 // @tac 7405-7498 // @tac 7405-7485 // @tac 7405-7447 // @tac 7405-7434
//   statement kind: sub-goal (Lean tactic state)
//   @tac 7203-7299 | Lean: have h₅₃ : Real.log 3 ≠ 0 := Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num)
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
//   @tac 7304-7400 | Lean: have h₅₄ : Real.log 5 ≠ 0 := Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num)
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
//   @tac 7405-7498 | Lean: field_simp [h₅₃, h₅₄]
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
//   @tac 7405-7485 | Lean: field_simp [h₅₃, h₅₄]
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
//   @tac 7405-7447 | Lean: field_simp [h₅₃, h₅₄]
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
//   @tac 7405-7434 | Lean: field_simp [h₅₃, h₅₄]
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
// inside Lean have h₅, Lean lines 180-197:
//   lean  |   have h₅ : Real.logb 5 3 * Real.logb 3 5 = 1 := by
//   lean  |     have h₅₁ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
//   lean  |       rw [Real.logb]
//   lean  |       <;> simp [Real.log_rpow]
//   lean  |       <;> field_simp
//   lean  |       <;> ring
//   lean  |     have h₅₂ : Real.logb 3 5 = Real.log 5 / Real.log 3 := by
//   lean  |       rw [Real.logb]
//   lean  |       <;> simp [Real.log_rpow]
//   lean  |       <;> field_simp
//   lean  |       <;> ring
//   lean  |     rw [h₅₁, h₅₂]
//   lean  |     have h₅₃ : Real.log 3 ≠ 0 := Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num)
//   lean  |     have h₅₄ : Real.log 5 ≠ 0 := Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num)
//   lean  |     field_simp [h₅₃, h₅₄]
//   lean  |     <;> ring
//   lean  |     <;> field_simp [h₅₃, h₅₄]
//   lean  |     <;> ring

// 1 path(s) merged (paths); 11 shared facts; 1 distinct path conditions
// AUGMENTATION K2pow
lemma {:induction false} vc_amc12a_2021_p14_L502()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  requires Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))
  requires Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))
  requires Real.log(3.0) != 0.0
  requires Real.log(5.0) != 0.0
  ensures  Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0)) == 1.0
{ }
