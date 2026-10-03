// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-516 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 516, OOR)
// closes with: K1+K4 (instance, types) — multi
// added: IntPowPos(2, n + 3); MulNonnegInt(k_1_2_0, Int.pow(2, n + 3)); NatDvdIffModEqZero(Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3));  — existing library lemmas, ran: closed (C.dfy)
// Dafny: finished with 72 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_050/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-516/K1K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_050 ablation K1K4 of line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L516.dfy
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// Lean (Mathlib): theorem Dvd.intro {a b : α} (k : α) (h : a * k = b) : a ∣ b   (α = ℕ) [exact; added to this work copy]
lemma {:axiom} NatDvdIntro(k: nat, a: nat, b: nat)
  requires a * k == b
  ensures NatDvd(a, b)

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L516_K1K4(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
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
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires k_1_2_0 * Int.pow(2, n + 3) == Int.pow(2, n + 3) * k_1_2_0
  requires 0 <= Int.pow(2, n + 3)
  ensures  ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))) ==> (0 <= k_1_2_0 * Int.pow(2, n + 3)))
        && ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3)))) ==> (NatDvd(Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3)) || (Int.pow(2, n + 3) == 0 ==> k_1_2_0 * Int.pow(2, n + 3) == 0)))
        && ((((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3) && (0 <= k_1_2_0 * Int.pow(2, n + 3))) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0) && (0 <= k_1_2_0 * Int.pow(2, n + 3)))) ==> (NatDvd(Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3)) || (Int.pow(2, n + 3) != 0 ==> k_1_2_0 * Int.pow(2, n + 3) % Int.pow(2, n + 3) == 0)))
{
  assert 0 <= Int.pow(2, n + 3);
  MulNonnegInt(k_1_2_0, Int.pow(2, n + 3));
  NatDvdIntro(k_1_2_0, Int.pow(2, n + 3), k_1_2_0 * Int.pow(2, n + 3));
}
