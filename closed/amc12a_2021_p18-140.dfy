// CLOSED — failing line amc12a_2021_p18-140: theorem amc12a_2021_p18, Dafny line 140 (ERR: assertion might not hold)
// failing Dafny line: assert prime(5);
// Lean step: decide
// hypotheses: 7 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — NatPrimeDefLt(5) [Mathlib Nat.prime_def_lt added to work copy]; Z3 then checks the 5 divisibility cases by computation (Lean: decide, of_decide_eq_true)
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p18.dfy"
lemma {:axiom} NatPrimeDefLt(p: nat)
  requires 2 <= p
  requires forall m: nat :: m < p ==> NatDvd(m, p) ==> m == 1
  ensures prime(p)

lemma {:induction false} vc_amc12a_2021_p18_L140(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires f(Rat.of_int(1)) == 0.0
  requires 0 <= 5
  ensures   prime(5)
{
  NatPrimeDefLt(5);
}

