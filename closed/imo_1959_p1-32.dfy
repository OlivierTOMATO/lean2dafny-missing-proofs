// CLOSED — failing line imo_1959_p1-32: theorem imo_1959_p1, Dafny line 32 (OOR: Verification out of resource (imo_1959_p1))
// failing Dafny line: assert (gcd(((14 * n) + 3), ((1 * ((14 * n) + 3)) + ((7 * n) + 1))) == gcd(((14 * n) + 3), ((7 * n) + 1))) by {
// Lean step: simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc, Nat.gcd_assoc]
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — assert 1*(14n+3) == 14n+3; NatGcdSelfAddRight(14n+3, 7n+1) [exact Mathlib Nat.gcd_self_add_right, added; Lean's recorded args]
// Dafny: finished with 21 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1959_p1.dfy"
lemma {:axiom} NatGcdSelfAddRight(m: nat, n: nat)  // [ADDED DECLARATION]
  ensures gcd(m, m + n) == gcd(m, n)

lemma {:induction false} vc_imo_1959_p1_L32(n: int)
  requires 0 <= n
  requires 0 < n
  requires forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1
  requires 21 * n + 4 == 1 * (14 * n + 3) + (7 * n + 1)
  requires 0 <= 1 * (14 * n + 3) + (7 * n + 1)
  requires 0 <= 14 * n + 3
  requires gcd(1 * (14 * n + 3) + (7 * n + 1), 14 * n + 3) == gcd(14 * n + 3, 1 * (14 * n + 3) + (7 * n + 1))
  requires 0 <= 7 * n + 1
  requires gcd(14 * n + 3, 7 * n + 1) == gcd(7 * n + 1, 14 * n + 3)
  ensures   gcd(14 * n + 3, 1 * (14 * n + 3) + (7 * n + 1)) == gcd(14 * n + 3, 7 * n + 1)
{
  assert 1 * (14 * n + 3) == 14 * n + 3;  // [ADDED]
  NatGcdSelfAddRight(14 * n + 3, 7 * n + 1);  // [ADDED]
          NatGcdComm(((14 * n) + 3), ((7 * n) + 1));  // cite: Nat.gcd_comm
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_assoc: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×10 [exec 137 680-758]: applications made inside the tactic's own automation, not stated — one_mul ×1, Nat.gcd_self_add_right ×1; machinery/glue: Eq.trans ×3, congrArg ×2, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×1])
}

