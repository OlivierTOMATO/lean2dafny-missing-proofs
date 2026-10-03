// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-380 (theorem numbertheory_2pownm1prime_nprime, Dafny line 380, OOR)
// closes with: K3 (locality) — single
// added: only h₁₃₅ : m ≥ 2 kept
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-380/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 380 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 380 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |                 assert (Int.pow(2, m) >= (2 * 2)) by {
//   statement kind: have / step assertion
// Lean have h₁₃₆, Lean lines 97-97:
//   lean  |           have h₁₃₆ : 2 ^ m ≥ 2 ^ 2 := Nat.pow_le_pow_of_le_right (by decide) h₁₃₅

// 1 path(s) merged (joined); 29 shared facts; 1 distinct path conditions
// AUGMENTATION K3: locality: only m_1_0_0_5_0 >= 2 (Lean term uses h only)

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L380(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires m_1_0_0_5_0 >= 2
  ensures  Int.pow(2, m_1_0_0_5_0) >= 2 * 2
{

}
