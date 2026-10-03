// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-450: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 450 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert (f(Int.pow(2, (m + t))) == f(Int.pow(2, n)));
// Lean step: rw [ht]
// hypotheses: 5 facts Z3 had at the line; this variant also drops 23 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3K2pow — 
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-450/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-450/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L450(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: nat, n: nat, t_3_2: int, t_3_3: int, t_3_5: int, t_3_5_0: int, t_3_6: int)
  requires 0 <= m
  requires 0 <= n
  requires forall x_1: nat :: f.requires(x_1)
  requires 0 <= t_3_5_0
  requires n == m + t_3_5_0
  ensures   f(Int.pow(2, m + t_3_5_0)) == f(Int.pow(2, n))
{

}

