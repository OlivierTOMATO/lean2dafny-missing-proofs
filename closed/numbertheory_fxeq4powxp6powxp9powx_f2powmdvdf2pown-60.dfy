// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-60: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 60 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (NatDvd((f(Int.pow(2, m))), (f(Int.pow(2, (m + t)))))) && (NatDvd((f(Int.pow(2, (m + t)))), (f(Int.pow(2, (m + (t + 1)))))));
// Lean step: 
// hypotheses: 9 facts Z3 had at the line; this variant also drops 31 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3+K2pow — pair
// Dafny: finished with 35 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-60/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-60/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L60(f: nat -> nat, m: nat, n: int, t: int, t_1_0: int, t_1_0_0: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= t
  requires 0 <= t_1_0
  requires t != 0
  requires 0 <= t - 1
  requires NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + (t - 1))))
  requires t_1_0_0 == t - 1
  requires NatDvd(f(Int.pow(2, m + t_1_0_0)), f(Int.pow(2, m + (t_1_0_0 + 1))))
  ensures  (((NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0)))) || (!NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))) || (f(Int.pow(2, m)) == 0 ==> f(Int.pow(2, m + t_1_0_0)) == 0))) && (((NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0)))) || (!NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_1_0_0))) || (f(Int.pow(2, m)) != 0 ==> f(Int.pow(2, m + t_1_0_0)) % f(Int.pow(2, m)) == 0)))
{

}

