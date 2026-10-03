// CLOSED LEMMA for failing line amc12a_2021_p14-482 (theorem amc12a_2021_p14, Dafny line 482, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2021_p14/L482.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 482 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 482 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |   assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by { // @tac 6871-7019 // @tac 7024-7172 // @tac 7177-7198
//   statement kind: have / step assertion
//   @tac 6871-7019 | Lean: have h₅₁ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
//        before-goal ⊢ logb (5 : ℝ) (3 : ℝ) * logb (3 : ℝ) (5 : ℝ) = (1 : ℝ)
//   @tac 7024-7172 | Lean: have h₅₂ : Real.logb 3 5 = Real.log 5 / Real.log 3 := by
//        before-goal ⊢ logb (5 : ℝ) (3 : ℝ) * logb (3 : ℝ) (5 : ℝ) = (1 : ℝ)
//   @tac 7177-7198 | Lean: rw [h₅₁, h₅₂]
//        before-goal ⊢ logb (5 : ℝ) (3 : ℝ) * logb (3 : ℝ) (5 : ℝ) = (1 : ℝ)
//        before-goal ⊢ Real.log (3 : ℝ) / Real.log (5 : ℝ) * (Real.log (5 : ℝ) / Real.log (3 : ℝ)) = (1 : ℝ)
// Lean have h₅, Lean lines 180-197:
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

// 1 path(s) merged (paths); 10 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2021_p14_L482()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  requires Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))
  requires Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))
  requires Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0)) == 1.0
  ensures  Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
{ }

