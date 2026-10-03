// CLOSED — failing line amc12a_2021_p18-225: theorem amc12a_2021_p18, Dafny line 225 (OOR: Verification out of resource (amc12a_2021_p18))
// failing Dafny line: assert (f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.of_int(25)));
// Lean step: norm_num
// hypotheses: 15 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RatMulDivOfIntCancel(25, 11)  [library counterpart of norm_num's isNat_mul/isRat_mul (Mathlib Int.cast_mul / div_mul_cancel)]
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p18.dfy"
lemma {:induction false} vc_amc12a_2021_p18_L225(f: Rat.rat -> real)
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
  ensures   f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.of_int(25))
{
  RatMulDivOfIntCancel(25, 11);
}

