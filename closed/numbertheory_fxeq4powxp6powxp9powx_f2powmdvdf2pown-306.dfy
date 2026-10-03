// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-306: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 306 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: if ((f((2 * (k + 1))) == ((Int.pow(4, (2 * (k + 1))) + Int.pow(6, (2 * (k + 1)))) + Int.pow(9, (2 * (k + 1)))))) && ((f((k + 1)) == ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))))
// Lean step: h_main
// hypotheses: 32 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — library copy without Int.pow's recursive postcondition
// Dafny: finished with 41 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-306/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-306/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L306(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_0_2_3_2_1_0_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
  requires forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 <= m0 && 0 <= n0 && (forall x_2: nat :: f(x_2) == Int.pow(4, x_2) + Int.pow(6, x_2) + Int.pow(9, x_2)) && 0 < m0 && 0 < n0 && m0 <= n0 && ((0 <= m0 && m0 < m) || (m0 == m && 0 <= n0 && n0 < n)) ==> f.requires(Int.pow(2, m0)) && f.requires(Int.pow(2, n0)) && NatDvd(f(Int.pow(2, m0)), f(Int.pow(2, n0))))
  requires 0 <= k_0_0
  requires 0 <= 2 * k_0_0
  requires f(2 * k_0_0) == Int.pow(4, 2 * k_0_0) + Int.pow(6, 2 * k_0_0) + Int.pow(9, 2 * k_0_0)
  requires f(k_0_0) == Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)
  requires Int.pow(4, 2 * k_0_0) == Int.pow(4, k_0_0) * Int.pow(4, k_0_0)
  requires Int.pow(6, 2 * k_0_0) == Int.pow(6, k_0_0) * Int.pow(6, k_0_0)
  requires Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  requires 0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  requires 0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0))
  requires Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) == tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  requires k_0_0 != 0
  requires 0 <= k_0_0 - 1
  requires k_0_2_3_2_1_0_0 == k_0_0 - 1
  requires 0 <= 2 * (k_0_2_3_2_1_0_0 + 1)
  requires f(2 * (k_0_2_3_2_1_0_0 + 1)) == Int.pow(4, 2 * (k_0_2_3_2_1_0_0 + 1)) + Int.pow(6, 2 * (k_0_2_3_2_1_0_0 + 1)) + Int.pow(9, 2 * (k_0_2_3_2_1_0_0 + 1))
  requires 0 <= k_0_2_3_2_1_0_0 + 1
  requires f(k_0_2_3_2_1_0_0 + 1) == Int.pow(4, k_0_2_3_2_1_0_0 + 1) + Int.pow(6, k_0_2_3_2_1_0_0 + 1) + Int.pow(9, k_0_2_3_2_1_0_0 + 1)
  requires Int.pow(4, 2 * (k_0_2_3_2_1_0_0 + 1)) == Int.pow(4, k_0_2_3_2_1_0_0 + 1) * Int.pow(4, k_0_2_3_2_1_0_0 + 1)
  requires Int.pow(6, 2 * (k_0_2_3_2_1_0_0 + 1)) == Int.pow(6, k_0_2_3_2_1_0_0 + 1) * Int.pow(6, k_0_2_3_2_1_0_0 + 1)
  requires Int.pow(9, 2 * (k_0_2_3_2_1_0_0 + 1)) == Int.pow(9, k_0_2_3_2_1_0_0 + 1) * Int.pow(9, k_0_2_3_2_1_0_0 + 1)
  ensures   0 <= (Int.pow(4, k_0_2_3_2_1_0_0 + 1) + Int.pow(6, k_0_2_3_2_1_0_0 + 1) + Int.pow(9, k_0_2_3_2_1_0_0 + 1)) * (Int.pow(4, k_0_2_3_2_1_0_0 + 1) + Int.pow(6, k_0_2_3_2_1_0_0 + 1) + Int.pow(9, k_0_2_3_2_1_0_0 + 1))
{ }

