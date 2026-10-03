// CLOSED — failing line amc12a_2021_p18-105: theorem amc12a_2021_p18, Dafny line 105 (ERR: assertion might not hold)
// failing Dafny line: assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1)));
// Lean step: norm_num
// hypotheses: 7 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RatMulOfIntOfInt(1, 1)  [library counterpart of norm_num's isNat_mul/isRat_mul (Mathlib Int.cast_mul / div_mul_cancel)]
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p18.dfy"
lemma {:induction false} vc_amc12a_2021_p18_L105(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires Rat.mul(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1)) + f(Rat.of_int(1))
  ensures   f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1))
{
  RatMulOfIntOfInt(1, 1);
}

