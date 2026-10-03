// CLOSED LEMMA for failing line amc12a_2021_p14-492 (theorem amc12a_2021_p14, Dafny line 492, OOR)
// closes with: K1 (instance) — single
// added: RealLogbUnfold(3.0, 5.0)  (rw [Real.logb] = Real.logb.eq_1 at (3,5), exec 2256)
// Dafny: finished with 13 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-492/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 492 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 492 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |     assert (Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))); // @tac 7091-7172 // @tac 7091-7157 // @tac 7091-7136 // @tac 7091-7105
//   statement kind: have / step assertion
//   @tac 7091-7172 | Lean: rw [Real.logb]
//        before-goal ⊢ logb (3 : ℝ) (5 : ℝ) = Real.log (5 : ℝ) / Real.log (3 : ℝ)
//   @tac 7091-7157 | Lean: rw [Real.logb]
//        before-goal ⊢ logb (3 : ℝ) (5 : ℝ) = Real.log (5 : ℝ) / Real.log (3 : ℝ)
//   @tac 7091-7136 | Lean: rw [Real.logb]
//        before-goal ⊢ logb (3 : ℝ) (5 : ℝ) = Real.log (5 : ℝ) / Real.log (3 : ℝ)
//   @tac 7091-7105 | Lean: rw [Real.logb]
//        before-goal ⊢ logb (3 : ℝ) (5 : ℝ) = Real.log (5 : ℝ) / Real.log (3 : ℝ)
//        before-goal ⊢ Real.log (5 : ℝ) / Real.log (3 : ℝ) = Real.log (5 : ℝ) / Real.log (3 : ℝ)
// Lean have h₅₂, Lean lines 186-190:
//   lean  |     have h₅₂ : Real.logb 3 5 = Real.log 5 / Real.log 3 := by
//   lean  |       rw [Real.logb]
//   lean  |       <;> simp [Real.log_rpow]
//   lean  |       <;> field_simp
//   lean  |       <;> ring

// 1 path(s) merged (paths); 8 shared facts; 1 distinct path conditions
// AUGMENTATION K1
lemma {:induction false} vc_amc12a_2021_p14_L492()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  requires Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))
  ensures  Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))
{
  RealLogbUnfold(3.0, 5.0);  // rw [Real.logb]: Real.logb.eq_1 (3, 5) (exec 2256)
}
