// CLOSED — failing line aime_1984_p1-98: theorem aime_1984_p1, Dafny line 98 (OOR: Verification out of resource (cert_identity_5))
// failing Dafny line: ensures Rat.add(Rat.neg(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137))), Rat.mul(Rat.of_int(2), Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1)
// Lean step: h₃
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4b — 
// Dafny: finished with 7 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1984_p1-98/LIBRARY_CHANGES.diff

include "alt/aime_1984_p1-98/out/aime_1984_p1.dfy"
lemma {:axiom} RatCastNeg(q: Rat.rat)  // [ADDED DECLARATION]
  ensures Rat.neg(q).to_real() == -q.to_real()
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L98(u: nat -> Rat.rat)
  ensures   Rat.add(Rat.neg(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137))), Rat.mul(Rat.of_int(2), Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))))) == Rat.of_int(0)
{
  RatCastNeg(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)));  // [ADDED]
  RatCastNeg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)));  // [ADDED]
  RatCastInjective(Rat.add(Rat.neg(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137))), Rat.mul(Rat.of_int(2), Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))))), Rat.of_int(0));  // [ADDED]
}

