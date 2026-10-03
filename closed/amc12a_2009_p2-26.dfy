// CLOSED — failing line amc12a_2009_p2-26: theorem amc12a_2009_p2, Dafny line 26 (OOR: Verification out of resource (amc12a_2009_p2))
// failing Dafny line: assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))) == Rat.div(Rat.of_int(5), Rat.of_int(3)));
// Lean step: norm_num [step1, step2]
// hypotheses: 13 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — RatCastInjective(lhs, rhs) [Mathlib Rat.cast_injective as {:axiom} lemma in the work copy]
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p2.dfy"
lemma {:induction false} vc_amc12a_2009_p2_L26()
  requires 1 + 1 == 2
  requires Rat.of_int(1).Rational?
  requires Rat.add(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))).Rational?
  requires Rat.of_int(3).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(3), Rat.of_int(2)).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))
  requires Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))).Rational?
  requires Rat.of_int(5).Rational?
  requires Rat.div(Rat.of_int(5), Rat.of_int(3)).Rational?
  ensures   Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))) == Rat.div(Rat.of_int(5), Rat.of_int(3))
{
  // K4: cast ℚ→ℝ injective (Rat.cast_injective)
  RatCastInjective(Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))), Rat.div(Rat.of_int(5), Rat.of_int(3)));  // [ADDED]
}

// Mathlib: Rat.cast_injective (ℚ → ℝ cast is injective), exact statement over the library's to_real cast
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b
