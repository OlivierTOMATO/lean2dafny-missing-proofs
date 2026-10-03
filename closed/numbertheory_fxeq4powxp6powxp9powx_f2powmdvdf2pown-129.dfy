// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 129, OOR)
// closes with: K2 (computation) — single
// added: library Int.pow without the recursive ensures `if k == 0 then p == 1 else p == b * pow(b, k - 1)` (work/shard_051/_k2pow; body and sign ensures unchanged)
// Dafny: finished with 17 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_051/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_051 ablation variant K2pow of line lemma L129 (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129). 
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_051/_k2pow/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"

lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L129(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires 2 * k_0_0 == k_0_0 + k_0_0
  requires 0 <= k_0_0 + k_0_0
  requires Int.pow(9, k_0_0 + k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  ensures  Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
{

}
