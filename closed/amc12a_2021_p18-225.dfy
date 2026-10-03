// CLOSED LEMMA for failing line amc12a_2021_p18-225 (theorem amc12a_2021_p18, Dafny line 225, OOR)
// closes with: K5 (automation lemma) — single
// added: RatMulDivOfIntCancel(25, 11)  [library counterpart of norm_num's isNat_mul/isRat_mul (Mathlib Int.cast_mul / div_mul_cancel)]
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p18-225/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 225 of amc12a_2021_p18 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p18.dfy"

// ========================================================================================
// FAILING LINE 225 (OOR) in amc12a_2021_p18: Verification out of resource (amc12a_2021_p18)
//   dafny |     assert (f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.of_int(25))); // @tac 2344-2352
//   statement kind: have / step assertion
//   @tac 2344-2352 | Lean: norm_num
//        before-goal ⊢ f ((25 / 11 : ℚ) * (11 : ℚ)) = f (25 : ℚ)
// Lean have h₆₂, Lean lines 53-53:
//   lean  |     have h₆₂ : f ((25 / 11 : ℚ) * 11) = f (25 : ℚ) := by norm_num

// 1 path(s) merged (paths); 15 shared facts; 1 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p18_L225_K5(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires f(Rat.of_int(1)) == 0.0
  requires Rat.of_int(5).Rational?
  requires f(Rat.of_int(5)) == 5.0
  requires Rat.of_int(25).Rational?
  requires f(Rat.of_int(25)) == 10.0
  requires Rat.of_int(11).Rational?
  requires f(Rat.of_int(11)) == 11.0
  requires Rat.div(Rat.of_int(25), Rat.of_int(11)).Rational?
  requires Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)).Rational?
  requires f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.div(Rat.of_int(25), Rat.of_int(11))) + f(Rat.of_int(11))
  ensures  f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.of_int(25))
{
  RatMulDivOfIntCancel(25, 11);
}

