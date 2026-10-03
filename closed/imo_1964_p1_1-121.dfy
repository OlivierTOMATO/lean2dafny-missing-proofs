// NOT CLOSED — failing line imo_1964_p1_1-121: theorem imo_1964_p1_1, Dafny line 121 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((n % 3) == 0);
// Lean step: simp [h, h₂, Nat.pow_mod, Nat.mul_mod, Nat.mod_mod] at h₃
// hypotheses: 36 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 87 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L121(n: nat)
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
  requires Int.pow(2, n % 3 + 3 * (n / 3)) % 7 == 1 % 7
  requires 0 <= n % 3
  requires Int.pow(2 % 7, n % 3) % 7 == 1
  requires n % 3 == 1
  requires n % 3 == 0 || n % 3 == 1 || n % 3 == 2
  requires 3 != 0
  requires 0 <= n / 3
  requires 7 >= 1
  requires Int.pow(8, n / 3) % 7 == Int.pow(8 % 7, n / 3) % 7
  requires 0 <= 2
  requires Int.pow(2, 1) == 2
  requires 0 <= 3 * (n / 3)
  requires Int.pow(2, n % 3 + 3 * (n / 3)) == Int.pow(2, n % 3) * Int.pow(2, 3 * (n / 3))
  requires Int.pow(2, 3 * (n / 3)) == Int.pow(Int.pow(2, 3), n / 3)
  requires Int.pow(1, n / 3) == 1
  requires 7 > 0
  requires 0 <= Int.pow(2, n % 3)
  requires 0 <= Int.pow(8, n / 3)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n % 3) * Int.pow(8, n / 3) % 7 == Int.pow(2, n % 3) % 7 * (Int.pow(8, n / 3) % 7) % 7
  requires Int.pow(2, n % 3) % 7 == Int.pow(2 % 7, n % 3) % 7
  requires ((n % 3 != 0) && (3 > 0) && (3 > 0) && (n % 3 + 3 * (n / 3) == n)) || ((n % 3 != 0) && (!(3 > 0))) || ((n % 3 == 0) && (3 > 0) && (3 > 0) && (n % 3 + 3 * (n / 3) == n)) || ((n % 3 == 0) && (!(3 > 0)))
  ensures   n % 3 == 0
{ }

