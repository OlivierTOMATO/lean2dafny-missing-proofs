// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-408: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 408 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t))));
// Lean step: h_chain
// hypotheses: 24 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 37 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L408(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: nat, n: int, t_2_0: int, t_2_1: int, t_3_5: int)
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
  requires forall k_0_1: nat :: true ==> f.requires(2 * k_0_1) && f.requires(k_0_1) && f.requires(k_0_1)
  requires forall k_0_1: nat :: true ==> f(2 * k_0_1) == f(k_0_1) * tsub(f(k_0_1), 2 * Int.pow(6, k_0_1))
  requires forall k_1_1: nat :: true ==> f.requires(k_1_1) && f.requires(2 * k_1_1)
  requires forall k_1_1: nat :: true ==> NatDvd(f(k_1_1), f(2 * k_1_1))
  requires 0 <= t_2_0
  requires forall t_2_0_1: nat :: true ==> f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_0_1))
  requires forall t_2_0_1: nat :: true ==> NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_0_1)))
  requires 0 <= Int.pow(2, m)
  requires forall t_2_2: nat :: f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_2))
  requires forall t_2_2: nat :: f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_2))
  requires forall t_2_2: nat :: NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_2)))
  requires 0 <= m + t_2_0
  requires 0 <= Int.pow(2, m + t_2_0)
  ensures   ((((0 <= t_2_1) && (0 <= m + t_2_1) && (0 <= Int.pow(2, m + t_2_1))) || (t_2_1 < 0)) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_0))) || (f(Int.pow(2, m)) == 0 ==> f(Int.pow(2, m + t_2_0)) == 0)))
{ }

