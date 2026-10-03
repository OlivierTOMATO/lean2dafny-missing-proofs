// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-60: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 60 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (NatDvd((f(Int.pow(2, m))), (f(Int.pow(2, (m + t)))))) && (NatDvd((f(Int.pow(2, (m + t)))), (f(Int.pow(2, (m + (t + 1)))))));
// Lean step: 
// hypotheses: 40 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 60 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L60(f: nat -> nat, m: nat, n: int, t: int, t_1_0: int, t_1_0_0: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= t
  requires 0 <= t_1_0
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
  requires forall k_1: nat :: f.requires(2 * k_1) && f.requires(k_1) && f.requires(k_1)
  requires forall k_1: nat :: f(2 * k_1) == f(k_1) * tsub(f(k_1), 2 * Int.pow(6, k_1))
  requires forall k_3: nat :: f.requires(k_3) && f.requires(2 * k_3)
  requires forall k_3: nat :: NatDvd(f(k_3), f(2 * k_3))
  requires t != 0
  requires 0 <= t - 1
  requires 0 <= t || t - 1 == t
  requires t - 1 < t
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires forall k_1: nat :: f.requires(2 * k_1) && f.requires(k_1) && f.requires(k_1)
  requires forall k_1: nat :: f(2 * k_1) == f(k_1) * tsub(f(k_1), 2 * Int.pow(6, k_1))
  requires forall k_3: nat :: f.requires(k_3) && f.requires(2 * k_3)
  requires forall k_3: nat :: NatDvd(f(k_3), f(2 * k_3))
  requires NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + (t - 1))))
  requires if f(Int.pow(2, m)) == 0 then f(Int.pow(2, m + (t - 1))) == 0 else f(Int.pow(2, m + (t - 1))) % f(Int.pow(2, m)) == 0
  requires t_1_0_0 == t - 1
  requires 0 <= m + t_1_0_0
  requires 0 <= Int.pow(2, m + t_1_0_0)
  requires 0 <= 2 * Int.pow(2, m + t_1_0_0)
  requires NatDvd(f(Int.pow(2, m + t_1_0_0)), f(2 * Int.pow(2, m + t_1_0_0)))
  requires 0 <= m + t_1_0_0 + 1
  requires 0 <= Int.pow(2, m + t_1_0_0 + 1)
  requires f(2 * Int.pow(2, m + t_1_0_0)) == f(Int.pow(2, m + t_1_0_0 + 1))
  requires NatDvd(f(Int.pow(2, m + t_1_0_0)), f(Int.pow(2, m + t_1_0_0 + 1)))
  requires m + t_1_0_0 + 1 == m + (t_1_0_0 + 1)
  requires 0 <= m + (t_1_0_0 + 1)
  requires 0 <= Int.pow(2, m + (t_1_0_0 + 1))
  requires NatDvd(f(Int.pow(2, m + t_1_0_0)), f(Int.pow(2, m + (t_1_0_0 + 1))))
  requires 0 <= Int.pow(2, m)
  requires NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))) ==> f.requires(Int.pow(2, m + t_1_0_0)) && f.requires(Int.pow(2, m + (t_1_0_0 + 1)))
  ensures   (((NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0)))) || (!NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))) || (f(Int.pow(2, m)) == 0 ==> f(Int.pow(2, m + t_1_0_0)) == 0)))
{ }

