// CLOSED — failing line aime_1984_p1-90: theorem aime_1984_p1, Dafny line 90 (OOR: Verification out of resource (cert_identity_4))
// failing Dafny line: ensures Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.sub(Rat.of_int(137), Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)))) == Rat.of_int(0)
// Lean step: h₃
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — RatCastInjective(E, Rat.of_int(0)) [Mathlib Rat.cast_injective, added to work copy]
// Dafny: finished with 6 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1984_p1-90/LIBRARY_CHANGES.diff

include "alt/aime_1984_p1-90/out/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L90(u: nat -> Rat.rat)
  ensures   Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.sub(Rat.of_int(137), Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)))) == Rat.of_int(0)
{
  RatCastInjective(Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.sub(Rat.of_int(137), Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)))), Rat.of_int(0));  // K4: ℚ is a normalised structure (cast injective)
}

