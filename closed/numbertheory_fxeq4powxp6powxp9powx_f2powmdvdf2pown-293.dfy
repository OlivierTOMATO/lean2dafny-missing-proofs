// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-293 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 293, OOR)
// closes with: K2 (computation) — simplest-close
// added: lemma MulSubStep(F: nat, s: nat) ensures tsub(F * F, 2 * (s * F)) == F * tsub(F, 2 * s) { NatMulSubLeftDistrib(F, F, 2 * s); assert F * (2 * s) == 2 * (s * F); }  + call MulSubStep(F, Int.pow(6, k)) with F = 4^k+6^k+9^k; together with the K2-pow library change
// Dafny: finished with 22 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_052/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-293/split+K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// main line lemma only (side checks dropped); header: see original line lemma file
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_052/_k2pow/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"

lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L293(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
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
  ensures  tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)))) == (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * Int.pow(6, k_0_0))
{
  MulSubStep((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), Int.pow(6, k_0_0));
}


lemma MulSubStep(F: nat, s: nat)
  ensures tsub(F * F, 2 * (s * F)) == F * tsub(F, 2 * s)
{
  NatMulSubLeftDistrib(F, F, 2 * s);  // Nat.mul_sub_left_distrib
  assert F * (2 * s) == 2 * (s * F);
}
