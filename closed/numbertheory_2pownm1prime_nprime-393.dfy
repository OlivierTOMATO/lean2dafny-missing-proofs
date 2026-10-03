// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-393 (theorem numbertheory_2pownm1prime_nprime, Dafny line 393, OOR)
// closes with: K3 (locality) — single
// added: only h₂ : n ≥ 2 kept
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-393/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 393 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 393 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |               assert (Int.pow(2, n) >= (2 * 2)) by {
//   statement kind: have / step assertion
// Lean have h₁₃₅, Lean lines 99-99:
//   lean  |         have h₁₃₅ : 2 ^ n ≥ 2 ^ 2 := Nat.pow_le_pow_of_le_right (by decide) h₂

// 1 path(s) merged (joined); 30 shared facts; 1 distinct path conditions
// AUGMENTATION K3: locality: only n >= 2 (Lean term uses h only)

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L393(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires n >= 2
  ensures  Int.pow(2, n) >= 2 * 2
{

}
