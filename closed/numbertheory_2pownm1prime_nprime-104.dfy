// CLOSED LEMMA for failing line numbertheory_2pownm1prime_nprime-104 (theorem numbertheory_2pownm1prime_nprime, Dafny line 104, OOR)
// closes with: K1 (instance) — single
// added: witness of the cited existential named (var w :| …) + assert NatDvd(w, n)
// Dafny: finished with 10 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_044/numbertheory_2pownm1prime_nprime-104/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 104 of numbertheory_2pownm1prime_nprime (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/numbertheory_2pownm1prime_nprime.dfy"

// ========================================================================================
// FAILING LINE 104 (OOR) in numbertheory_2pownm1prime_nprime: Verification out of resource (numbertheory_2pownm1prime_nprime)
//   dafny |             assert (exists m: nat :: (NatDvd(m, n) && ((2 <= m) && (m < n)))) by {
//   statement kind: have / step assertion
// Lean have h₅₄, Lean lines 30-30:
//   lean  |         have h₅₄ := Nat.exists_dvd_of_not_prime2 (by omega : n ≥ 2) h₅₁

// 8 path(s) merged (paths); 11 shared facts; 8 distinct path conditions
// AUGMENTATION K1: instance: name the witness of the cited existential and state NatDvd at it (checked assert)

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L104(k_1_0_0_2_2_3: int, m_1_0_0_1_2_0: nat, m_1_0_0_1_2_5: int, m_1_0_0_5: int, n: nat)
  requires 0 <= n
  requires 0 <= m_1_0_0_1_2_5
  requires 0 <= m_1_0_0_5
  requires 0 <= k_1_0_0_2_2_3
  requires 0 < n
  requires prime(tsub(Int.pow(2, n), 1))
  requires forall n0: nat :: 0 < n0 && prime(tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> prime(n0)
  requires n >= 2
  requires !prime(n)
  requires 2 <= n
  requires exists m: nat :: 2 <= m && m < n && n % m == 0
  requires ((0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (2 <= m_1_0_0_1_2_0)) || ((0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (m_1_0_0_1_2_0 < 2)) || ((0 <= m_1_0_0_1_2_0) && (!NatDvd(m_1_0_0_1_2_0, n))) || (m_1_0_0_1_2_0 < 0) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (2 <= m_1_0_0_1_2_0)) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (m_1_0_0_1_2_0 < 2)) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (!NatDvd(m_1_0_0_1_2_0, n))) || ((n < 2) && (m_1_0_0_1_2_0 < 0))
  ensures  exists m_1_0_0_1_2_1: nat :: NatDvd(m_1_0_0_1_2_1, n) && 2 <= m_1_0_0_1_2_1 && m_1_0_0_1_2_1 < n
{
  var w: nat :| 2 <= w && w < n && n % w == 0;  // obtain the witness of h54 (Lean: obtain ⟨m, hm₁, hm₂⟩ := h₅₄)
  assert NatDvd(w, n);
}
