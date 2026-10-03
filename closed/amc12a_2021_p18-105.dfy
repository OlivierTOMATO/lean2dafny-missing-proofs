// CLOSED LEMMA for failing line amc12a_2021_p18-105 (theorem amc12a_2021_p18, Dafny line 105, ERR)
// closes with: K5 (automation lemma) — single
// added: RatMulOfIntOfInt(1, 1)  [library counterpart of norm_num's isNat_mul/isRat_mul (Mathlib Int.cast_mul / div_mul_cancel)]
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p18-105/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 105 of amc12a_2021_p18 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p18.dfy"

// ========================================================================================
// FAILING LINE 105 (ERR) in amc12a_2021_p18: assertion might not hold
//   dafny |     assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1))); // @tac 1056-1064
//   statement kind: have / step assertion
//   @tac 1056-1064 | Lean: norm_num
//        before-goal ⊢ f ((1 : ℚ) * (1 : ℚ)) = f (1 : ℚ)
// Lean have h₂₃, Lean lines 18-18:
//   lean  |     have h₂₃ : f (1 * 1 : ℚ) = f 1 := by norm_num

// 1 path(s) merged (paths); 7 shared facts; 1 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p18_L105_K5(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires Rat.mul(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1)) + f(Rat.of_int(1))
  ensures  f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1))
{
  RatMulOfIntOfInt(1, 1);
}

