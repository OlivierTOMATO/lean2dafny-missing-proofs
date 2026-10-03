// CLOSED LEMMA for failing line mathd_algebra_342-130 (theorem mathd_algebra_342, Dafny line 130, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetSumRangeSucc(0, F); FinsetSumRangeZero(F);
// Dafny: finished with 21 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_342-130/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_342-130, augmentation K5
// Line lemma for failing line 130 of mathd_algebra_342 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_342.dfy"

// ========================================================================================
// FAILING LINE 130 (ERR) in mathd_algebra_342: assertion might not hold
//   dafny |     assert (Real.sum(range(5), ((k: nat) => (a + ((k as real) * d)))) == ((5.0 * a) + (10.0 * d))) by { // @tac 605-816 // @tac 605-797 // @tac 605-778 // @tac 605-760
//   statement kind: have / step assertion
//   @tac 605-816 | Lean: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
//        before-goal ⊢ ∑ k ∈ Finset.range (5 : ℕ), (a + ↑k * d) = (5 : ℝ) * a + (10 : ℝ) * d
//   @tac 605-797 | Lean: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
//        before-goal ⊢ ∑ k ∈ Finset.range (5 : ℕ), (a + ↑k * d) = (5 : ℝ) * a + (10 : ℝ) * d
//   @tac 605-778 | Lean: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
//        before-goal ⊢ ∑ k ∈ Finset.range (5 : ℕ), (a + ↑k * d) = (5 : ℝ) * a + (10 : ℝ) * d
//   @tac 605-760 | Lean: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
//        before-goal ⊢ ∑ k ∈ Finset.range (5 : ℕ), (a + ↑k * d) = (5 : ℝ) * a + (10 : ℝ) * d
// Lean have h₂₁, Lean lines 12-17:
//   lean  |     have h₂₁ : (∑ k in Finset.range 5, (a + k * d : ℝ)) = 5 * a + 10 * d := by
//   lean  |       norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
//   lean  |         Finset.sum_range_succ, Finset.sum_range_succ]
//   lean  |       <;> ring_nf
//   lean  |       <;> norm_num
//   lean  |       <;> linarith

// 1 path(s) merged (paths); 18 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_algebra_342_L130(a: real, d: real)
  requires Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 70.0
  requires Real.sum(range(10), ((k: nat) => a + (k as real) * d)) == 210.0
  requires 0 <= 4
  requires ((k: nat) => a + (k as real) * d).requires(4)
  requires Real.sum(range(4 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(4), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(4)
  requires 0 <= 3
  requires ((k: nat) => a + (k as real) * d).requires(3)
  requires Real.sum(range(3 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(3), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(3)
  requires 0 <= 2
  requires ((k: nat) => a + (k as real) * d).requires(2)
  requires Real.sum(range(2 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(2), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(2)
  requires 0 <= 1
  requires ((k: nat) => a + (k as real) * d).requires(1)
  requires Real.sum(range(1 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(1), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(1)
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  requires a + (a + d) + (a + 2.0 * d) + (a + 3.0 * d) + (a + 4.0 * d) == 5.0 * a + 10.0 * d
  requires 0 <= 5
  ensures  Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 5.0 * a + 10.0 * d
{
  FinsetSumRangeSucc(0, ((k: nat) => a + (k as real) * d));
  FinsetSumRangeZero(((k: nat) => a + (k as real) * d));
}

