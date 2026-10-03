// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-483 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 483, OOR)
// closes with: K2 (computation) — single
// added: library copy with MathPrelude Int.pow recursive ensures `if k == 0 then p == 1 else p == b * pow(b, k - 1)` removed (only change; kinds/work/shard_050/powlib)
// Dafny: finished with 39 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_050/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-483/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_050 ablation K2pow of line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L483.dfy
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_050/powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"


lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L483_K2pow(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 - 1 + (0 - (Int.pow(3, Int.pow(2, n)) - (1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)))) + (Int.pow(3, Int.pow(2, n)) + 1 - (1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3))) == 0
  requires 0 - 1 + (Int.pow(3, Int.pow(2, n)) - (1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3))) + (1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3) + 1 - Int.pow(3, Int.pow(2, n))) == 0
  requires 0 <= 3
  requires Int.pow(3, Int.pow(2, n)) == Int.pow(3, Int.pow(2, n))
  requires 0 <= 2
  requires Int.pow(2, n + 2) == Int.pow(2, n + 2)
  requires Int.pow(2, n + 3) == Int.pow(2, n + 3)
  requires 0 <= 1 + Int.pow(2, n + 2)
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= k_1_2_0 * Int.pow(2, n + 3)
{

}
