// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-59: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 59 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(
// Lean step: have h₄ : n ≥ 0 := by linarith
// hypotheses: 1 of the 23 facts Z3 had at the line kept (0 <= k_1_0_2_0, plus n: nat); the other facts dropped (none added); the goal is a standalone fact about n, k_1_0_2_0 and powers of 2
// how it closes: pass2 — dropped all hypotheses but 0<=k; body replaced: NatPowSucc/NatPowAdd rewrite 2^(n+3),2^(n+4),2^(2n+4),2^(2n+5),2^(2n+6) as multiples of a=2^(n+2), then proved helper SqExpand(a,k) (the ring identity)
// Dafny: finished with 47 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Int.pow: recursive ensures removed): see alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-59/LIBRARY_CHANGES.diff

include "alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-59/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L59(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2_0
  ensures   (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
{
  // pass2: rewrite every power as a multiple of a = 2^(n+2) (pow_succ / pow_add), then a proved polynomial identity
  NatPowSucc(2, n + 2);  // [ADDED]
  assert Int.pow(2, n + 3) == Int.pow(2, n + 2) * 2;  // [ADDED]
  NatPowSucc(2, n + 3);  // [ADDED]
  assert Int.pow(2, n + 4) == Int.pow(2, n + 2) * 2 * 2;  // [ADDED]
  NatPowAdd(2, n + 2, n + 2);  // [ADDED]
  assert Int.pow(2, 2 * n + 4) == Int.pow(2, n + 2) * Int.pow(2, n + 2);  // [ADDED]
  NatPowSucc(2, 2 * n + 4);  // [ADDED]
  assert Int.pow(2, 2 * n + 5) == Int.pow(2, n + 2) * Int.pow(2, n + 2) * 2;  // [ADDED]
  NatPowSucc(2, 2 * n + 5);  // [ADDED]
  assert Int.pow(2, 2 * n + 6) == Int.pow(2, n + 2) * Int.pow(2, n + 2) * 2 * 2;  // [ADDED]
  SqExpand(Int.pow(2, n + 2), k_1_0_2_0);  // [ADDED]
}

// pass2 helper (proved, no axiom): the ring identity behind Lean's `ring_nf` in h₃, in a = 2^(n+2)
lemma SqExpand(a: int, k: int)  // [ADDED DECLARATION]
  ensures (1 + a + k * (a * 2)) * (1 + a + k * (a * 2)) == 1 + a * 2 + (a * a + k * (a * 2 * 2) + k * k * (a * a * 2 * 2) + 2 * k * (a * a * 2))
{
  var s := 1 + a + k * (a * 2);
  assert s * s == s * 1 + s * a + s * (k * (a * 2));
  assert s * a == a + a * a + k * (a * 2) * a;
  assert s * (k * (a * 2)) == k * (a * 2) + a * (k * (a * 2)) + (k * (a * 2)) * (k * (a * 2));
  assert k * (a * 2) * a == 2 * k * (a * a);
  assert a * (k * (a * 2)) == 2 * k * (a * a);
  assert (k * (a * 2)) * (k * (a * 2)) == k * k * (a * a * 2 * 2);
}

