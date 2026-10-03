// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-442: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 442 (ERR: assertion might not hold)
// failing Dafny line: assert exists t: nat :: (n == (m + t));
// Lean step: h_final
// hypotheses: 19 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K3=failed; this file is the honest base attempt
// Dafny: finished with 21 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L442(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_2: int, t_3_3: int, t_3_5: int)
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
  requires forall t_2_3: nat :: true ==> f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_3))
  requires forall t_2_3: nat :: true ==> NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_3)))
  requires exists t_3_1: nat :: n == m + t_3_1
  requires ((0 <= t_3_2) && (0 <= t_3_3)) || ((0 <= t_3_2) && (t_3_3 < 0)) || ((t_3_2 < 0) && (0 <= t_3_3)) || ((t_3_2 < 0) && (t_3_3 < 0))
  ensures   exists t_3_4: nat :: n == m + t_3_4
{ }

