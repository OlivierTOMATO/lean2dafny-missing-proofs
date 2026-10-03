// CLOSED LEMMA for failing line amc12a_2021_p18-160 (theorem amc12a_2021_p18, Dafny line 160, ERR)
// closes with: K5 (automation lemma) — single
// added: RatMulOfIntOfInt(5, 5)  [library counterpart of norm_num's isNat_mul/isRat_mul (Mathlib Int.cast_mul / div_mul_cancel)]
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p18-160/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 160 of amc12a_2021_p18 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p18.dfy"

// ========================================================================================
// FAILING LINE 160 (ERR) in amc12a_2021_p18: assertion might not hold
//   dafny |     assert (f(Rat.of_int(25)) == f(Rat.mul(Rat.of_int(5), Rat.of_int(5)))); // @tac 1590-1598
//   statement kind: have / step assertion
//   @tac 1590-1598 | Lean: norm_num
//        before-goal ⊢ f (25 : ℚ) = f ((5 : ℚ) * (5 : ℚ))
// Lean have h₄₁, Lean lines 34-34:
//   lean  |     have h₄₁ : f (25 : ℚ) = f (5 * 5 : ℚ) := by norm_num

// 1 path(s) merged (paths); 10 shared facts; 1 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p18_L160_K5(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires f(Rat.of_int(1)) == 0.0
  requires Rat.of_int(5).Rational?
  requires f(Rat.of_int(5)) == 5.0
  requires Rat.of_int(25).Rational?
  requires Rat.mul(Rat.of_int(5), Rat.of_int(5)).Rational?
  ensures  f(Rat.of_int(25)) == f(Rat.mul(Rat.of_int(5), Rat.of_int(5)))
{
  RatMulOfIntOfInt(5, 5);
}

