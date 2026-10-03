// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-286 (theorem numbertheory_2pownm1prime_nprime, Dafny line 286, OOR)
// closes with: K1 (instance) — single
// added: NatDvdIffModEqZero(m,n); var q :| n == m*q; NatMulDivCancelLeft(m,q)  (Lean's obtain witness)
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-286/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 286 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 286 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |               else { assert (n) == (m) * ((n) / (m)); }
//   statement kind: other
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
// AUGMENTATION K1: instance: the witness k of m ∣ n (Lean obtain) named, then (m*k)/m = k

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L286(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires 0 <= n
  requires 0 <= m_1_0_0_1_2_5
  requires 0 <= m_1_0_0_5
  requires 0 <= k_1_0_0_2_2_3
  requires 0 < n
  requires prime(tsub(Int.pow(2, n), 1))
  requires forall n0: nat :: 0 < n0 && prime(tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> prime(n0)
  requires n >= 2
  requires !prime(n)
  requires ((0 <= m_1_0_0_2) && (((NatDvd(m_1_0_0_2, n)) && ((m_1_0_0_2 != 1) || (m_1_0_0_2 == 1))) || (!NatDvd(m_1_0_0_2, n)))) || (m_1_0_0_2 < 0)
  requires exists m_1_0_0_1: nat :: NatDvd(m_1_0_0_1, n) && m_1_0_0_1 != 1 && m_1_0_0_1 != n
  requires ((0 <= m_1_0_0_3) && (((NatDvd(m_1_0_0_3, n)) && ((m_1_0_0_3 != 1) || (m_1_0_0_3 == 1))) || (!NatDvd(m_1_0_0_3, n)))) || (m_1_0_0_3 < 0)
  requires exists m_1_0_0_4: nat :: NatDvd(m_1_0_0_4, n) && m_1_0_0_4 != 1 && m_1_0_0_4 != n
  requires ((0 <= m_1_0_0_6) && (((NatDvd(m_1_0_0_6, n)) && ((m_1_0_0_6 != 1) || (m_1_0_0_6 == 1))) || (!NatDvd(m_1_0_0_6, n)))) || (m_1_0_0_6 < 0)
  requires (0 <= 0 && NatDvd(0, n) && 0 != 1 && 0 != n) || (0 <= 0 && NatDvd(0, n) && 0 != 1 && 0 != n) || (exists as_m1_0_0_0_1_0_0_0: nat :: NatDvd(as_m1_0_0_0_1_0_0_0, n) && as_m1_0_0_0_1_0_0_0 != 1 && as_m1_0_0_0_1_0_0_0 != n)
  requires 0 <= m_1_0_0_5_0
  requires NatDvd(m_1_0_0_5_0, n)
  requires m_1_0_0_5_0 != 1
  requires m_1_0_0_5_0 != n
  requires ((NatDvd(m_1_0_0_5_0, n)) && (((NatDvd(m_1_0_0_5_0, n)) && (m_1_0_0_5_0 != 1)) || (!(NatDvd(m_1_0_0_5_0, n) && m_1_0_0_5_0 != 1)))) || ((!NatDvd(m_1_0_0_5_0, n)) && (((NatDvd(m_1_0_0_5_0, n)) && (m_1_0_0_5_0 != 1)) || (!(NatDvd(m_1_0_0_5_0, n) && m_1_0_0_5_0 != 1))))
  requires m_1_0_0_5_0 >= 2
  requires m_1_0_0_5_0 < n
  requires m_1_0_0_5_0 != 0
  ensures  n == m_1_0_0_5_0 * (n / m_1_0_0_5_0)
{
  NatDvdIffModEqZero(m_1_0_0_5_0, n);
  var q: nat :| n == m_1_0_0_5_0 * q;  // Lean obtain ⟨k, hk⟩ : n = m * k
  NatMulDivCancelLeft(m_1_0_0_5_0, q);
}
