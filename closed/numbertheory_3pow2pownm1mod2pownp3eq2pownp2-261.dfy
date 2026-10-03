// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-261: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 261 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4)))) by {
// Lean step: exact ⟨k, by ring⟩
// hypotheses: 31 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — IntMulNonneg(k, 2^(n+4)) (mul_nonneg) — the ensures is only the nat-cast nonneg side-goal; the OOR `if..%..` asserts removed (all hyps kept)
// Dafny: finished with 70 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L261(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires 0 <= Int.pow(2, n + 4)
  requires NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0
  requires if Int.pow(2, n + 4) == 0 then k_1_0_2_0 * Int.pow(2, n + 4) == 0 else k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) == 0)) || ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) != 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) == 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) != 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) == 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) != 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) == 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) != 0))
  ensures   0 <= k_1_0_2_0 * Int.pow(2, n + 4)
{
  IntMulNonneg(k_1_0_2_0, Int.pow(2, n + 4));  // mul_nonneg: the goal is only the ℕ-cast well-formedness 0 <= k * 2^(n+4)  // [ADDED]
}
