// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-287 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 287, OOR)
// closes with: K2 (computation) — variant
// added: library copy (work/shard_047/_powlib) with only the recursive `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` of Int.pow removed
// Dafny: finished with 61 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-287/L287_K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 287 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/_powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 287 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |                     NatDvdMulOfDvdRight(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)), (k * k));  // cite: dvd_mul_of_dvd_right
//   statement kind: cite (library lemma call)
// inside Lean have h₁₁, Lean lines 97-98:
//   lean  |               have h₁₁ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |                 exact dvd_mul_of_dvd_right h₁₀ _

// 4 path(s) merged (paths); 32 shared facts; 4 distinct path conditions
// ABLATION VARIANT K2pow: K2-pow
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L287(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 6))
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= k_1_0_2_0 * k_1_0_2_0
{ }
