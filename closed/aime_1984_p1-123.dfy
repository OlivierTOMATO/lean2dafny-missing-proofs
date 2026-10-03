// CLOSED — failing line aime_1984_p1-123: theorem aime_1984_p1, Dafny line 123 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: { }
// Lean step: h₄
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4b — RatCastNeg(Rat.mul(of_int 1, of_int 2357)); RatCastInjective(E, of_int 0) [Rat.cast_neg + Rat.cast_injective, work copy]
// Dafny: finished with 6 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:axiom} RatCastNeg(q: Rat.rat)
  ensures Rat.neg(q).to_real() == -q.to_real()

lemma {:induction false} vc_aime_1984_p1_L123(u: nat -> Rat.rat)
  ensures   Rat.add(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))), Rat.sub(Rat.of_int(93), Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)))) == Rat.of_int(0)
{
  RatCastNeg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)));
  RatCastInjective(Rat.add(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))), Rat.sub(Rat.of_int(93), Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)))), Rat.of_int(0));
}

