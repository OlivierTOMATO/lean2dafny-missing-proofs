// CLOSED — failing line imo_1959_p1-61: theorem imo_1959_p1, Dafny line 61 (OOR: Verification out of resource (imo_1959_p1))
// failing Dafny line: assert (gcd(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by {
// Lean step: simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc]
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — NatGcdComm ×2; NatGcdMulRightAddRight(7n+1, 1, 2); NatGcdAddSelfRight(1, 7n); NatGcdOneLeft(7n) [exact Mathlib Nat.gcd_mul_right_add_right / gcd_add_self_right / gcd_one_left added; Lean's recorded args]
// Dafny: finished with 36 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1959_p1.dfy"
lemma {:axiom} NatGcdMulRightAddRight(m: nat, n: nat, k: nat)  // [ADDED DECLARATION]
  ensures gcd(m, k * m + n) == gcd(m, n)
lemma {:axiom} NatGcdAddSelfRight(m: nat, n: nat)  // [ADDED DECLARATION]
  ensures gcd(m, n + m) == gcd(m, n)
lemma {:axiom} NatGcdOneLeft(n: nat)  // [ADDED DECLARATION]
  ensures gcd(1, n) == 1

lemma {:induction false} vc_imo_1959_p1_L61(n: int)
  requires 0 <= n
  requires 0 < n
  requires forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1
  requires 0 <= 21 * n + 4
  requires 0 <= 14 * n + 3
  requires 0 <= 7 * n + 1
  requires gcd(21 * n + 4, 14 * n + 3) == gcd(14 * n + 3, 7 * n + 1)
  requires 14 * n + 3 == 2 * (7 * n + 1) + 1
  requires 0 <= 2 * (7 * n + 1) + 1
  requires gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 2 * (7 * n + 1) + 1)
  requires 0 <= 1
  requires gcd(7 * n + 1, 1) == gcd(1, 7 * n + 1)
  ensures   gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 1)
{
  NatGcdComm(2 * (7 * n + 1) + 1, 7 * n + 1);  // [ADDED]
  NatGcdMulRightAddRight(7 * n + 1, 1, 2);  // [ADDED]
  NatGcdComm(7 * n + 1, 1);  // [ADDED]
  NatGcdAddSelfRight(1, 7 * n);  // [ADDED]
  NatGcdOneLeft(7 * n);  // [ADDED]
          NatGcdComm(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1));  // cite: Nat.gcd_comm
          NatGcdComm(((7 * n) + 1), 1);  // cite: Nat.gcd_comm
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_assoc: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×12 [exec 280 1186-1249]: applications made inside the tactic's own automation, not stated — Nat.gcd_mul_right_add_right ×1, Nat.gcd_add_self_right ×1, Nat.gcd_one_left ×1; machinery/glue: Eq.trans ×5, of_eq_true ×1, congr ×1, congrArg ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×2])
}

