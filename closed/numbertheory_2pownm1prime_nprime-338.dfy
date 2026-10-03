// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-338 (theorem numbertheory_2pownm1prime_nprime, Dafny line 338, OOR)
// closes with: K3 (locality) — single
// added: no hypotheses at all
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-338/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 338 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 338 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |               assert (tsub((2 * 2), 1) == 3); // @tac 3240-3248
//   statement kind: have / step assertion
//   @tac 3240-3248 | Lean: norm_num
//        before-goal ⊢ (2 : ℕ) ^ (2 : ℕ) - (1 : ℕ) = (3 : ℕ)
// Lean have h₁₂₅, Lean lines 86-86:
//   lean  |         have h₁₂₅ : 2 ^ 2 - 1 = 3 := by norm_num

// 1 path(s) merged (joined); 29 shared facts; 1 distinct path conditions
// AUGMENTATION K3: locality: norm_num saw only the ground goal

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L338(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  ensures  tsub(2 * 2, 1) == 3
{

}
