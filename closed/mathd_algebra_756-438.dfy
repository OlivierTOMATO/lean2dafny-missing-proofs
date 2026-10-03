// CLOSED LEMMA for failing line mathd_algebra_756-438 (theorem mathd_algebra_756, Dafny line 438, ERR)
// closes with: K5 (automation lemma) — single
// added: RealRpowNatCast(3.0, 5);
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_756-438/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_756-438, augmentation K5
// Line lemma for failing line 438 of mathd_algebra_756 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_756.dfy"

// ========================================================================================
// FAILING LINE 438 (ERR) in mathd_algebra_756: assertion might not hold
//   dafny |       assert (Real.rpow(3.0, 5.0) == 243.0); // @tac 2907-3051 // @tac 2907-3026 // @tac 2907-3001 // @tac 2907-2977
//   statement kind: have / step assertion
//   @tac 2907-3051 | Lean: norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
//        before-goal ⊢ (3 : ℝ) ^ (5 : ℝ) = (243 : ℝ)
//   @tac 2907-3026 | Lean: norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
//        before-goal ⊢ (3 : ℝ) ^ (5 : ℝ) = (243 : ℝ)
//   @tac 2907-3001 | Lean: norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
//        before-goal ⊢ (3 : ℝ) ^ (5 : ℝ) = (243 : ℝ)
//   @tac 2907-2977 | Lean: norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
//        before-goal ⊢ (3 : ℝ) ^ (5 : ℝ) = (243 : ℝ)
// Lean have h₅₁, Lean lines 79-86:
//   lean  |     have h₅₁ : (3 : ℝ) ^ (5 : ℝ) = 243 := by
//   lean  |       norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
//   lean  |       <;>
//   lean  |       ring_nf
//   lean  |       <;>
//   lean  |       norm_num
//   lean  |       <;>
//   lean  |       linarith

// 1 path(s) merged (paths); 5 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_algebra_756_L438(a: real, b: real)
  requires Real.rpow(2.0, a) == 32.0
  requires Real.rpow(a, b) == 125.0
  requires a > 0.0
  requires a == 5.0
  requires b == 3.0
  ensures  Real.rpow(3.0, 5.0) == 243.0
{
  RealRpowNatCast(3.0, 5);
}

