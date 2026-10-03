// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-390: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 390 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert (if ((f(k) as int)) == 0 then (((f(k) * tsub(f(k), (2 * Int.pow(6, k)))) as int)) == 0 else (((f(k) * tsub(f(k), (2 * Int.pow(6, k)))) as int)) % ((f(k) as int)) == 0);
// Lean step: h_div
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: SCsplit_helper — 
// Dafny: finished with 27 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma DvdMulSelf(a: nat, w: nat) requires a != 0 ensures (a * w) % a == 0 { NatDvdMulOfDvdRight(a, a, w); assert NatDvd(a, w * a); }  // step as its own lemma over atoms, via existing NatDvdMulOfDvdRight

lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L390(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_0: nat, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires 0 <= k_1_0
  requires 0 <= 2 * k_1_0
  requires 0 <= 2 * Int.pow(6, k_1_0)
  requires f(2 * k_1_0) == f(k_1_0) * tsub(f(k_1_0), 2 * Int.pow(6, k_1_0))
  requires f(k_1_0) * tsub(f(k_1_0), 2 * Int.pow(6, k_1_0)) == f(k_1_0) * tsub(f(k_1_0), 2 * Int.pow(6, k_1_0))
  requires f(k_1_0) != 0
  requires f(k_1_0) == 0 ==> f.requires(k_1_0) && f.requires(k_1_0)
  requires f(k_1_0) != 0 ==> f.requires(k_1_0) && f.requires(k_1_0) && f.requires(k_1_0)
  ensures   f(k_1_0) * tsub(f(k_1_0), 2 * Int.pow(6, k_1_0)) % f(k_1_0) == 0
{
  DvdMulSelf(f(k_1_0), tsub(f(k_1_0), 2 * Int.pow(6, k_1_0)));
}

