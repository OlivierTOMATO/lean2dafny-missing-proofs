// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-261 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 261, OOR)
// closes with: K2 (computation) — variant
// added: library copy (work/shard_047/_powlib) with only the recursive `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` of Int.pow removed
// Dafny: finished with 67 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-261/L261_K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 261 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/_powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 261 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |                 assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4)))) by { // @tac 4978-5000
//   statement kind: have / step assertion
//   @tac 4978-5000 | Lean: exact ⟨k, by ring⟩
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣ k * (2 : ℕ) ^ (n + (4 : ℕ))
// Lean have h₈, Lean lines 91-92:
//   lean  |             have h₈ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := by
//   lean  |               exact ⟨k, by ring⟩

// 8 path(s) merged (paths); 30 shared facts; 8 distinct path conditions
// ABLATION VARIANT K2pow: K2-pow: library without Int.pow recursive ensures
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L261(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires 0 <= Int.pow(2, n + 4)
  requires NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0
  requires if Int.pow(2, n + 4) == 0 then k_1_0_2_0 * Int.pow(2, n + 4) == 0 else k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) == 0)) || ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) != 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) == 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) != 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) == 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, n + 4) != 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) == 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, n + 4) != 0))
  ensures  0 <= k_1_0_2_0 * Int.pow(2, n + 4)
{ }
