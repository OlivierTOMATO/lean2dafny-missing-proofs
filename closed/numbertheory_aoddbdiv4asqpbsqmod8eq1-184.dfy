// CLOSED LEMMA for failing line numbertheory_aoddbdiv4asqpbsqmod8eq1-184 (theorem numbertheory_aoddbdiv4asqpbsqmod8eq1, Dafny line 184, OOR)
// closes with: K2 (computation) — single
// added: assert 4 * k * (4 * k) == k * k * 16;  // Lean ring_nf normal form (before (4k)^2, after k^2*16)
// Dafny: finished with 14 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_050/numbertheory_aoddbdiv4asqpbsqmod8eq1-184/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_050 ablation K2 of line_lemmas/OOR/numbertheory_aoddbdiv4asqpbsqmod8eq1/L184.dfy
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_aoddbdiv4asqpbsqmod8eq1.dfy"


lemma {:induction false} vc_numbertheory_aoddbdiv4asqpbsqmod8eq1_L184_K2(a: int, b: nat, k_1_1_1_2: int, k_1_1_1_3: int, k_1_1_1_3_0: int, k_1_1_1_4: int)
  requires 0 <= b
  requires 0 <= k_1_1_1_3
  requires Odd(a)
  requires a % 2 != 0
  requires NatDvd(4, b)
  requires if 4 == 0 then b == 0 else b % 4 == 0
  requires 8 != 0
  requires a * a % 8 == 1
  requires 0 <= 4
  requires exists k_1_1_1_1: nat :: b == 4 * k_1_1_1_1
  requires (0 <= 0 && b == 4 * 0) || (0 <= 0 && b == 4 * 0) || (exists as_k1_1_1_0_1_1_1_0: nat :: b == 4 * as_k1_1_1_0_1_1_1_0)
  requires 0 <= k_1_1_1_3_0
  requires b == 4 * k_1_1_1_3_0
  requires b == k_1_1_1_3_0 * 4
  requires 0 <= 8
  requires 0 <= k_1_1_1_3_0 * k_1_1_1_3_0 * 16
  requires NatDvd(8, k_1_1_1_3_0 * k_1_1_1_3_0 * 16)
  requires 0 <= 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0)
  ensures  ((((0 <= k_1_1_1_2) && (0 <= k_1_1_1_4)) || ((0 <= k_1_1_1_2) && (k_1_1_1_4 < 0)) || ((k_1_1_1_2 < 0) && (0 <= k_1_1_1_4)) || ((k_1_1_1_2 < 0) && (k_1_1_1_4 < 0))) ==> (NatDvd(8, 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0)) || (8 == 0 ==> 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0) == 0)))
        && ((((0 <= k_1_1_1_2) && (0 <= k_1_1_1_4)) || ((0 <= k_1_1_1_2) && (k_1_1_1_4 < 0)) || ((k_1_1_1_2 < 0) && (0 <= k_1_1_1_4)) || ((k_1_1_1_2 < 0) && (k_1_1_1_4 < 0))) ==> (NatDvd(8, 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0)) || (8 != 0 ==> 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0) % 8 == 0)))
{
  assert 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0) == k_1_1_1_3_0 * k_1_1_1_3_0 * 16;  // Lean ring_nf at *: (4*k)^2 = k^2*16
}
