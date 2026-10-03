// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-284 (theorem numbertheory_2pownm1prime_nprime, Dafny line 284, OOR)
// closes with: K3 (locality) — single
// added: only NatDvd(m,n) and the destructuring branch disjunction kept
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-284/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 284 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 284 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |             assert exists k: nat :: (n) == (m) * k by {  // the ∃ of `m ∣ n` (Dvd.dvd unfolded)
//   statement kind: have / step assertion
// inside Lean have h₁₁, Lean lines 71-79:
//   lean  |     have h₁₁ : 2 ^ m - 1 ∣ 2 ^ n - 1 := by
//   lean  |       have h₁₁₁ : m ∣ n := h₆
//   lean  |       obtain ⟨k, hk⟩ := h₁₁₁
//   lean  |       rw [hk]
//   lean  |       have h₁₁₂ : 2 ^ m - 1 ∣ 2 ^ (m * k) - 1 := by
//   lean  |         have h₁₁₃ : 2 ^ m - 1 ∣ 2 ^ (m * k) - 1 := by
//   lean  |           simpa [pow_mul] using nat_sub_dvd_pow_sub_pow _ 1 k
//   lean  |         exact h₁₁₃
//   lean  |       simpa [pow_mul, mul_comm] using h₁₁₂

// 1 path(s) merged (joined); 23 shared facts; 1 distinct path conditions
// AUGMENTATION K3: locality: only h₁₁₁ and the destructuring branch fact

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L284(k_1_0_0_2_2_0: int, k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires NatDvd(m_1_0_0_5_0, n)
  requires ((m_1_0_0_5_0 == 0) && (n == m_1_0_0_5_0 * 0) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0))) || ((m_1_0_0_5_0 != 0) && (n == m_1_0_0_5_0 * (n / m_1_0_0_5_0)) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0)))
  ensures  exists k_1_0_0_2_2_1: nat :: n == m_1_0_0_5_0 * k_1_0_0_2_2_1
{

}
