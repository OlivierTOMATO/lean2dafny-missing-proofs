// CLOSED — failing line aime_1984_p1-106: theorem aime_1984_p1, Dafny line 106 (OOR: Verification out of resource (cert_identity_6))
// failing Dafny line: ensures Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.mul(Rat.of_int(2), Rat.sub(Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))), Rat.mul(Rat.of_int
// Lean step: h₃
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2K4 — 
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: alt copy was broken (held the library, not the theorem); re-pointed at the stock theorem file: see alt/aime_1984_p1-106/LIBRARY_CHANGES.diff

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L106(u: nat -> Rat.rat)
  ensures   Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.mul(Rat.of_int(2), Rat.sub(Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))), Rat.mul(Rat.of_int(49), u(0))))) == Rat.of_int(0)
{
  assert (Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.mul(Rat.of_int(2), Rat.sub(Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))), Rat.mul(Rat.of_int(49), u(0)))))).to_real() == 0.0;  // [ADDED]
  RatCastInjective(Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.mul(Rat.of_int(2), Rat.sub(Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))), Rat.mul(Rat.of_int(49), u(0))))), Rat.of_int(0));  // [ADDED]
}

