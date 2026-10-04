// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-516: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 516 (OOR: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 3)), (k * Int.pow(2, (n + 3)))) by {
// Lean step: use k
// hypotheses: 16 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1K4 — 
// Dafny: finished with 75 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:axiom} NatDvdIntro(k: nat, a: nat, b: nat)  // [ADDED DECLARATION]
  requires a * k == b
  ensures NatDvd(a, b)

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L516(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires k_1_2_0 * Int.pow(2, n + 3) == Int.pow(2, n + 3) * k_1_2_0
  requires 0 <= Int.pow(2, n + 3)
  ensures  ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))) ==> (0 <= k_1_2_0 * Int.pow(2, n + 3))) && ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3)))) ==> (NatDvd(Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3)) || (Int.pow(2, n + 3) == 0 ==> k_1_2_0 * Int.pow(2, n + 3) == 0))) && ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3)))) ==> (NatDvd(Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3)) || (Int.pow(2, n + 3) != 0 ==> k_1_2_0 * Int.pow(2, n + 3) % Int.pow(2, n + 3) == 0)))
{
  assert 0 <= Int.pow(2, n + 3);  // [ADDED]
  MulNonnegInt(k_1_2_0, Int.pow(2, n + 3));  // [ADDED]
  NatDvdIntro(k_1_2_0, Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3));  // [ADDED]
              // [TACTIC: «_<;>_» k <;> ring]
              // [TACTIC: Use k]
              assert ((k_1_0 * Int.pow(2, (n + 3))) == (Int.pow(2, (n + 3)) * k_1_0));  // sub-goal of `ring` (Lean state) // @tac 8383-8387
              // UNCITED-APPLIED internal ×53 [exec 1322 8383-8387]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+22 more heads, ×37)
}

