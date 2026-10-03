// CLOSED — failing line imo_1964_p1_2-107: theorem imo_1964_p1_2, Dafny line 107 (OOR: Verification out of resource (imo_1964_p1_2))
// failing Dafny line: assert !(((Int.pow(2, n) + 1) % 7) == 0);
// Lean step: simp [h, Nat.add_mod, Nat.mul_mod]
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy of library + translation
// Dafny: finished with 55 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1964_p1_2-107/LIBRARY_CHANGES.diff

include "alt/imo_1964_p1_2-107/out/imo_1964_p1_2.dfy"
lemma {:induction false} vc_imo_1964_p1_2_L107(n: nat)
  requires 0 <= n
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> !NatDvd(7, Int.pow(2, n0) + 1)
  requires 0 < 7
  requires 0 <= 7
  requires 0 <= Int.pow(2, n) + 1
  requires 0 < 7
  requires ((Int.pow(2, n) + 1) % 7 == 0) == (exists q: nat :: Int.pow(2, n) + 1 == 7 * q)
  requires 7 != 0
  requires Int.pow(2, n) % 7 == 1 || Int.pow(2, n) % 7 == 2 || Int.pow(2, n) % 7 == 4
  requires Int.pow(2, n) % 7 == 4
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)
  requires ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 != 2)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 == 2) && ((Int.pow(2, n) + 1) % 7 != 0)) || ((Int.pow(2, n) % 7 == 1) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 == 2)) || ((Int.pow(2, n) % 7 == 1) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 != 2))
  ensures   (Int.pow(2, n) + 1) % 7 != 0
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_imo_1964_p1_2_L107_side1(n: nat)
  requires 0 <= n
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> !NatDvd(7, Int.pow(2, n0) + 1)
  requires 0 < 7
  requires 0 <= 7
  requires 0 <= Int.pow(2, n) + 1
  requires 0 < 7
  requires ((Int.pow(2, n) + 1) % 7 == 0) == (exists q: nat :: Int.pow(2, n) + 1 == 7 * q)
  requires 7 != 0
  requires Int.pow(2, n) % 7 == 1 || Int.pow(2, n) % 7 == 2 || Int.pow(2, n) % 7 == 4
  requires Int.pow(2, n) % 7 == 4
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)
  requires ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 != 2)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 == 2) && ((Int.pow(2, n) + 1) % 7 != 0)) || ((Int.pow(2, n) % 7 == 1) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 == 2)) || ((Int.pow(2, n) % 7 == 1) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 != 2))
  ensures  7 != 0
{ }
