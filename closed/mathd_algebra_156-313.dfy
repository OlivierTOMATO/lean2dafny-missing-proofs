// CLOSED LEMMA for failing line mathd_algebra_156-313 (theorem mathd_algebra_156, Dafny line 313, ERR)
// closes with: K1 (instance) — single
// added: EqZeroOrEqZeroOfMulEqZero(y * y - 2.0, y * y - 3.0);
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_156-313/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_156-313, augmentation K1
// Line lemma for failing line 313 of mathd_algebra_156 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_156.dfy"

// ========================================================================================
// FAILING LINE 313 (ERR) in mathd_algebra_156: assertion might not hold
//   dafny |     assert ((((y * y) - 2.0) == 0.0) || (((y * y) - 3.0) == 0.0)); // @tac 1822-1869
//   statement kind: have / step assertion
//   @tac 1822-1869 | Lean: apply eq_zero_or_eq_zero_of_mul_eq_zero h₈₂
//        before-goal ⊢ y ^ (2 : ℕ) - (2 : ℝ) = (0 : ℝ) ∨ y ^ (2 : ℕ) - (3 : ℝ) = (0 : ℝ)
// Lean have h₈₃, Lean lines 50-51:
//   lean  |     have h₈₃ : y ^ 2 - 2 = 0 ∨ y ^ 2 - 3 = 0 := by
//   lean  |       apply eq_zero_or_eq_zero_of_mul_eq_zero h₈₂

// 4 path(s) merged (paths); 9 shared facts; 4 distinct path conditions
lemma {:induction false} vc_mathd_algebra_156_L313(f: real -> real, g: real -> real, x: real, y: real)
  requires forall t_1: real :: f(t_1) == t_1 * t_1 * t_1 * t_1
  requires forall t_3: real :: g(t_3) == 5.0 * (t_3 * t_3) - 6.0
  requires f(x) == g(x)
  requires f(y) == g(y)
  requires x * x < y * y
  requires x * x * x * x - 5.0 * (x * x) + 6.0 == 0.0
  requires y * y * y * y - 5.0 * (y * y) + 6.0 == 0.0
  requires x * x == 2.0 || x * x == 3.0
  requires (y * y - 2.0) * (y * y - 3.0) == 0.0
  requires ((x * x != 2.0) && (y * y - 2.0 != 0.0)) || ((x * x != 2.0) && (y * y - 2.0 == 0.0)) || ((x * x == 2.0) && (y * y - 2.0 != 0.0)) || ((x * x == 2.0) && (y * y - 2.0 == 0.0))
  ensures  y * y - 2.0 == 0.0 || y * y - 3.0 == 0.0
{
  EqZeroOrEqZeroOfMulEqZero(y * y - 2.0, y * y - 3.0);
}

