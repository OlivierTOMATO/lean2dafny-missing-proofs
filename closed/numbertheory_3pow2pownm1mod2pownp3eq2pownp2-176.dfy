// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-176: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 176 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {
// Lean step: calc
// hypotheses: 1 of the 34 facts Z3 had at the line kept (0 <= k_1_0_2_0, plus n: nat); the other facts dropped (none added); the goal is a standalone fact about n, k_1_0_2_0 and powers of 2
// how it closes: pass2 — dropped all hypotheses but 0<=k; body replaced: NatPowDvdPow(2,n+4,2n+5) + NatDvdMulOfDvdRight(.., 2k)
// Dafny: finished with 32 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Int.pow: recursive ensures removed): see alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-176/LIBRARY_CHANGES.diff

include "alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-176/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L176(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2_0
  ensures   ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)))
{
  // pass2: only the 2k * 2^(2n+5) piece is needed; through library lemmas only
  assert 0 < Int.pow(2, n + 4);                                   // Int.pow ensures: b > 0 ==> p > 0  // [ADDED]
  NatPowDvdPow(2, n + 4, 2 * n + 5);  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 5));  // [ADDED]
  NatDvdMulOfDvdRight(Int.pow(2, n + 4), Int.pow(2, 2 * n + 5), 2 * k_1_0_2_0);  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // [ADDED]
}
