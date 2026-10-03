// CLOSED LEMMA for failing line aime_1983_p3-856 (theorem aime_1983_p3, Dafny line 856, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetProdPair(0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0), {0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0)}); (existing library lemma = Mathlib Finset.prod_pair, applied by Lean's simp at exec 1414)
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_001/aime_1983_p3-856/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate K5] K5 Finset.prod_pair lemma call
// Line lemma for failing line 856 of aime_1983_p3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/aime_1983_p3.dfy"

// ========================================================================================
// FAILING LINE 856 (ERR) in aime_1983_p3: assertion might not hold
//   dafny |         assert (Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }, ((x: real) => x)) == ((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0)))) by { // @tac 5349-5667 // @tac 5349-5581 // @tac 5349-5560 // @tac 5349-5532
//   statement kind: have / step assertion
//   @tac 5349-5667 | Lean: simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
//        before-goal ⊢ ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ))
//   @tac 5349-5581 | Lean: simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
//        before-goal ⊢ ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ))
//   @tac 5349-5560 | Lean: simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
//        before-goal ⊢ ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ))
//   @tac 5349-5532 | Lean: simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
//        before-goal ⊢ ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ))
// Lean have h₆₂, Lean lines 112-119:
//   lean  |       have h₆₂ : ∏ x in ({ -9 + Real.sqrt 61, -9 - Real.sqrt 61 } : Finset ℝ), x = ((-9 + Real.sqrt 61) * (-9 - Real.sqrt 61)) := by
//   lean  |         simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
//   lean  |           intro h
//   lean  |           nlinarith [Real.sqrt_nonneg 61, Real.sq_sqrt (show 0 ≤ 61 by norm_num)])]
//   lean  |         <;>
//   lean  |         ring_nf <;>
//   lean  |         norm_num <;>
//   lean  |         nlinarith [Real.sqrt_nonneg 61, Real.sq_sqrt (show 0 ≤ 61 by norm_num)]

// 2 path(s) merged (paths); 14 shared facts; 2 distinct path conditions
lemma {:induction false} vc_aime_1983_p3_L856(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  requires f(0.0 - 9.0 - Real.sqrt(61.0)) == 0.0
  requires forall x_2_1: real :: f.requires(x_2_1)
  requires forall x_2_1: real :: f(x_2_1) == 0.0 ==> x_2_1 == 0.0 - 9.0 + Real.sqrt(61.0) || x_2_1 == 0.0 - 9.0 - Real.sqrt(61.0)
  requires h1_set == {0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0)}
  requires 0.0 - 9.0 + Real.sqrt(61.0) != 0.0 - 9.0 - Real.sqrt(61.0)
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires 0.0 - 244.0 * 1.0 + (0.0 - 4.0 * (Real.sqrt(61.0) * Real.sqrt(61.0) - 61.0)) + (0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0))) * (0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0))) == 0.0
  requires 0.0 <= 61.0
  requires Real.sqrt(61.0) * Real.sqrt(61.0) == 61.0
  requires ((0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0)) == 0.0) && ((0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0))) * (0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0))) == 0.0)) || (0.0 - 9.0 + Real.sqrt(61.0) - (0.0 - 9.0 - Real.sqrt(61.0)) != 0.0)
  ensures  Real.prod({0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0)}, ((x: real) => x)) == (0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 - Real.sqrt(61.0))
{
  FinsetProdPair(0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0), {0.0 - 9.0 + Real.sqrt(61.0), 0.0 - 9.0 - Real.sqrt(61.0)});  // K5: Finset.prod_pair, applied by Lean simp at exec 1414 (library lemma exists)
}

