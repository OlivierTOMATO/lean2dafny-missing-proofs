// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-129 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 129, OOR)
// closes with: K1 (instance) — single
// added: IntModEqZero(k_1_0_2_0 * Int.pow(2, n + 4), Int.pow(2, n + 4)); assert k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0; — Lean's ∃-witness k of ⟨k, by ring⟩ instantiating the dvd⇔mod bridge (library :171)
// Dafny: finished with 52 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_045/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-129/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_045 ablation K1 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 L129 (original line lemma, main VC only)
// K1: Lean's ∃-witness k (⟨k, by ring⟩) instantiating dvd⇔mod bridge (IntModEqZero, Mathlib Int.emod_emod_of_dvd-style iff; library :171)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L129(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0
  requires Int.pow(2, n + 4) != 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0
{
  IntModEqZero(k_1_0_2_0 * Int.pow(2, n + 4), Int.pow(2, n + 4));
  assert k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0;
}
