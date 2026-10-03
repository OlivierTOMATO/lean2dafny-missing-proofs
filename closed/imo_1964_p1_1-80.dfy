// NOT CLOSED — failing line imo_1964_p1_1-80: theorem imo_1964_p1_1, Dafny line 80 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow(2, ((n % 3) + (3 * (n / 3)))) % 7) == (1 % 7));
// Lean step: rw [← Nat.mod_add_div n 3] at h₃
// hypotheses: 13 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 22 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L80(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  requires orderOf(2, 7) == 3
  requires Int.pow(2, n) % 7 == 1 % 7
  requires 0 < 3
  requires 0 <= 3
  requires 0 < 3
  requires (n % 3 == 0) == (exists q: nat :: n == 3 * q)
  requires 1 == 1
  requires 0 <= n % 3 + 3 * (n / 3)
  ensures   Int.pow(2, n % 3 + 3 * (n / 3)) % 7 == 1 % 7
{ }

