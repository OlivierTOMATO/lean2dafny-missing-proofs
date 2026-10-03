// CLOSED — failing line mathd_numbertheory_618-114: theorem mathd_numbertheory_618, Dafny line 114 (OOR: Verification out of resource (mathd_numbertheory_618))
// failing Dafny line: assert (gcd(((p(n) + 0) + (2 * n)), (p(n) + 0)) == gcd((p(n) + 0), (2 * n))) by {
// Lean step: simp [Nat.gcd_add_mul_right_right, Nat.gcd_comm]
// hypotheses: 16 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: k5 — 
// Dafny: finished with 38 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:axiom} NatGcdSelfAddRight(m: nat, n: nat)
  ensures gcd(m, m + n) == gcd(m, n)

lemma {:induction false} vc_mathd_numbertheory_618_L114(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p.requires(x_1)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires p(n) + 0 == p(n)
  requires 0 <= p(n) + 0
  requires 0 <= p(n) + 0 + 2 * n
  requires gcd(p(n) + 0, p(n) + 0 + 2 * n) == gcd(p(n) + 0 + 2 * n, p(n) + 0)
  requires 0 <= p(n) + 2 * n
  requires gcd(p(n) + 2 * n, p(n)) == gcd(p(n), p(n) + 2 * n)
  requires 0 <= 2 * n
  ensures   gcd(p(n) + 0 + 2 * n, p(n) + 0) == gcd(p(n) + 0, 2 * n)
{
  NatGcdSelfAddRight(p(n), 2 * n);  // K5: simp applied Nat.gcd_self_add_right (m := p n, n := 2 * n) [exec 193 internal]
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          NatGcdComm((p(n) + (2 * n)), p(n));  // cite: Nat.gcd_comm
          // UNCITED-APPLIED internal ×12 [exec 193 1185-1233]: applications made inside the tactic's own automation, not stated — add_zero ×1, Nat.gcd_self_add_right ×1; machinery/glue: Eq.trans ×3, congrArg ×3, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×1])
}

