// CLOSED — failing line amc12a_2009_p2-20: theorem amc12a_2009_p2, Dafny line 20 (ERR: assertion might not hold)
// failing Dafny line: assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2)));
// Lean step: norm_num [step1]
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — RatCastInjective(lhs, rhs) [Mathlib Rat.cast_injective as {:axiom} lemma in the work copy] on the two sides
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p2.dfy"
lemma {:induction false} vc_amc12a_2009_p2_L20()
  requires 1 + 1 == 2
  requires Rat.of_int(1).Rational?
  requires Rat.add(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))).Rational?
  requires Rat.of_int(3).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(3), Rat.of_int(2)).Rational?
  ensures   Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))
{
  // K4: ℚ is a normalised structure / cast ℚ→ℝ injective (Rat.cast_injective)
  RatCastInjective(Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))), Rat.div(Rat.of_int(3), Rat.of_int(2)));  // [ADDED]
}

// Mathlib: Rat.cast_injective (ℚ → ℝ cast is injective), exact statement over the library's to_real cast
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b
