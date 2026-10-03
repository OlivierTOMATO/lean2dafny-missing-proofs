// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-146: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 146 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by {
// Lean step: exact dvd_mul_of_dvd_right h₈ _
// hypotheses: 1 of the 35 facts Z3 had at the line kept (0 <= k_1_0_2_0, plus n: nat); the other facts dropped (none added); the goal is a standalone fact about n, k_1_0_2_0 and powers of 2
// how it closes: pass2 — dropped all hypotheses but 0<=k; body replaced: IntMulNonneg (mul_nonneg) on the product; pow nonneg from Int.pow's ensures
// Dafny: finished with 7 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L146(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2_0
  ensures   0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
{
  IntMulNonneg(k_1_0_2_0, k_1_0_2_0);  // [ADDED]
  IntMulNonneg(k_1_0_2_0 * k_1_0_2_0, Int.pow(2, 2 * n + 6));   // mul_nonneg  // [ADDED]
}
