// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-314 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 314, OOR)
// closes with: K2 (computation) — single
// added: library Int.pow without recursive ensures (work/shard_048/powlib)
// Dafny: finished with 82 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_048/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-314/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// ABLATION shard_048: K2-pow (library Int.pow without recursive ensures)
// Line lemma for failing line 314 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_048/powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 314 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |                       assert NatDvd(Int.pow(2, ((2 * n) + 5)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {  // sub-goal of `by` (Lean state) // @tac 5940-5966
//   statement kind: sub-goal (Lean tactic state)
//   @tac 5940-5966 | Lean: exact ⟨2 * k, by ring⟩
//        before-goal ⊢ (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ)) ∣ (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
// inside Lean have h₁₄, Lean lines 106-110:
//   lean  |                 have h₁₄ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                   calc
//   lean  |                     2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₁₃
//   lean  |                     _ ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                       exact ⟨2 * k, by ring⟩

// 8 path(s) merged (paths); 36 shared facts; 8 distinct path conditions
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L314(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 5))
  requires 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == Int.pow(2, 2 * n + 5) * (2 * k_1_0_2_0)
  requires if Int.pow(2, 2 * n + 5) == 0 then 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, 2 * n + 5) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, 2 * n + 5) == 0)) || ((0 <= k_1_0_0) && (0 <= k_1_0_3) && (Int.pow(2, 2 * n + 5) != 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, 2 * n + 5) == 0)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0) && (Int.pow(2, 2 * n + 5) != 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, 2 * n + 5) == 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3) && (Int.pow(2, 2 * n + 5) != 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, 2 * n + 5) == 0)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0) && (Int.pow(2, 2 * n + 5) != 0))
  ensures  0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
{ }

