// CLOSED LEMMA for failing line mathd_algebra_756-231 (theorem mathd_algebra_756, Dafny line 231, ERR)
// closes with: K1 (instance) — single
// added: RealLogRpow(2.0, a);
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_756-231/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_756-231, augmentation K1
// Line lemma for failing line 231 of mathd_algebra_756 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_756.dfy"

// ========================================================================================
// FAILING LINE 231 (ERR) in mathd_algebra_756: assertion might not hold
//   dafny |       assert ((a * Real.log(2.0)) == Real.log(32.0));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 972-1028
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 972-1028 h₄ after: a * Real.log (2 : ℝ) = Real.log (32 : ℝ)
// inside Lean have h₅, Lean lines 27-31:
//   lean  |     have h₅ : a * Real.log 2 = Real.log 32 := by
//   lean  |       rw [Real.log_rpow (by norm_num : (2 : ℝ) > 0)] at h₄
//   lean  |       <;> simp_all [Real.log_pow]
//   lean  |       <;> ring_nf at *
//   lean  |       <;> linarith

// 1 path(s) merged (paths); 5 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_algebra_756_L231(a: real, b: real)
  requires Real.rpow(2.0, a) == 32.0
  requires Real.rpow(a, b) == 125.0
  requires a > 0.0
  requires Real.log(Real.rpow(2.0, a)) == Real.log(32.0)
  requires 2.0 > 0.0
  ensures  a * Real.log(2.0) == Real.log(32.0)
{
  RealLogRpow(2.0, a);
}

