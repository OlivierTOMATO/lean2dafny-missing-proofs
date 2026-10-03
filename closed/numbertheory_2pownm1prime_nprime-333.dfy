// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-333 (theorem numbertheory_2pownm1prime_nprime, Dafny line 333, OOR)
// closes with: K3 (locality) — single
// added: only h₁₂₃ : Int.pow(2,m) >= 2*2 kept (omega's before-state facts)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-333/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 333 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 333 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |               assert (tsub(Int.pow(2, m), 1) >= tsub((2 * 2), 1)); // @tac 3188-3193
//   statement kind: have / step assertion
//   @tac 3188-3193 | Lean: omega
//        before-goal ⊢ (2 : ℕ) ^ m - (1 : ℕ) ≥ (2 : ℕ) ^ (2 : ℕ) - (1 : ℕ)
// Lean have h₁₂₄, Lean lines 84-85:
//   lean  |         have h₁₂₄ : 2 ^ m - 1 ≥ 2 ^ 2 - 1 := by
//   lean  |           omega

// 1 path(s) merged (joined); 27 shared facts; 1 distinct path conditions
// AUGMENTATION K3: locality: omega used h₁₂₃ : 2^m ≥ 2^2 only

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L333(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires Int.pow(2, m_1_0_0_5_0) >= 2 * 2
  ensures  0 <= 2 * 2
{

}
