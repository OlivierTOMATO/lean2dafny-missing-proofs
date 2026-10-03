// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-545 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 545, OOR)
// closes with: K5 (automation lemma) — single
// added: NatAddZero(NatMod(2^(n+2),P)); NatDvdRefl(P); NatModModOfDvd(2^(n+2),P,P) — Lean simp internals add_zero, Nat.mod_mod_of_dvd (exact Mathlib/core, Nat.mod_mod_of_dvd & Nat.dvd_refl added to work copy)
// Dafny: finished with 87 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_050/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-545/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_050 ablation K5 of line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L545.dfy
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// Lean (Mathlib): theorem Nat.mod_mod_of_dvd (a : ℕ) (h : c ∣ b) : a % b % c = a % c   [exact; added to this work copy]
lemma {:axiom} NatModModOfDvd(a: nat, b: nat, c: nat)
  requires NatDvd(c, b)
  ensures NatMod(NatMod(a, b), c) == NatMod(a, c)
// Lean (core): theorem Nat.dvd_refl (a : ℕ) : a ∣ a   [exact; added to this work copy]
lemma {:axiom} NatDvdRefl(a: nat)
  ensures NatDvd(a, a)

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L545_K5(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
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
  requires 0 <= k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == 0
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires 0 <= NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3))
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)), Int.pow(2, n + 3))
  requires 0 <= NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + 0
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + 0, Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
{
  NatAddZero(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)));  // Lean simp internal: add_zero
  NatDvdRefl(Int.pow(2, n + 3));
  NatModModOfDvd(Int.pow(2, n + 2), Int.pow(2, n + 3), Int.pow(2, n + 3));  // Lean simp internal: Nat.mod_mod_of_dvd (a:=2^(n+2), b:=c:=2^(n+3))
}
