// NOT CLOSED — failing line aime_1984_p1-22: theorem aime_1984_p1, Dafny line 22 (OOR: Verification out of resource (cert_identity_2))
// failing Dafny line: ensures Rat.add(Rat.sub(u((n + 1)), Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1)))), Rat.sub(Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1))), u((n + 1)))) == Rat.of_int(0)
// Lean step: h₂
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 1); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2=oor, K4=failed, K2K4=failed, SC_b=failed; this file is the honest base attempt
// Dafny: finished with 3 verified, 2 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:induction false} vc_aime_1984_p1_L22(n: int, u: nat -> Rat.rat)
  ensures   Rat.add(Rat.sub(u(n + 1), Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1)))), Rat.sub(Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1))), u(n + 1))) == Rat.of_int(0)
{ }

