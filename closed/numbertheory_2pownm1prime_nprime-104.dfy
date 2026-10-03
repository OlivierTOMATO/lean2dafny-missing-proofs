// CLOSED — failing line numbertheory_2pownm1prime_nprime-104: theorem numbertheory_2pownm1prime_nprime, Dafny line 104 (OOR: Verification out of resource (numbertheory_2pownm1prime_nprime))
// failing Dafny line: assert (exists m: nat :: (NatDvd(m, n) && ((2 <= m) && (m < n)))) by {
// Lean step: h₅₄
// hypotheses: 11 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: K1 — witness of the cited existential named (var w :| …) + assert NatDvd(w, n)
// Dafny: finished with 15 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_2pownm1prime_nprime.dfy"
lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L104(k_1_0_0_2_2_3: int, m_1_0_0_1_2_0: nat, m_1_0_0_1_2_5: int, m_1_0_0_5: int, n: nat)
  requires 0 <= n
  requires 0 <= m_1_0_0_1_2_5
  requires 0 <= m_1_0_0_5
  requires 0 <= k_1_0_0_2_2_3
  requires 0 < n
  requires prime(tsub(Int.pow(2, n), 1))
  requires forall n0: nat :: 0 < n0 && prime(tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> prime(n0)
  requires !prime(n)
  requires 2 <= n
  requires exists m: nat :: 2 <= m && m < n && n % m == 0
  requires ((0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (2 <= m_1_0_0_1_2_0)) || ((0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (m_1_0_0_1_2_0 < 2)) || ((0 <= m_1_0_0_1_2_0) && (!NatDvd(m_1_0_0_1_2_0, n))) || (m_1_0_0_1_2_0 < 0) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (2 <= m_1_0_0_1_2_0)) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (NatDvd(m_1_0_0_1_2_0, n)) && (m_1_0_0_1_2_0 < 2)) || ((n < 2) && (0 <= m_1_0_0_1_2_0) && (!NatDvd(m_1_0_0_1_2_0, n))) || ((n < 2) && (m_1_0_0_1_2_0 < 0))
  ensures   exists m_1_0_0_1_2_1: nat :: NatDvd(m_1_0_0_1_2_1, n) && 2 <= m_1_0_0_1_2_1 && m_1_0_0_1_2_1 < n
{
  var w: nat :| 2 <= w && w < n && n % w == 0;  // obtain the witness of h54 (Lean: obtain ⟨m, hm₁, hm₂⟩ := h₅₄)
  assert NatDvd(w, n);
              assert 2 <= (n) && !prime(n);  // precondition of ExistsDvdOfNotPrime2 (Lean: Nat.exists_dvd_of_not_prime2)
              ExistsDvdOfNotPrime2(n);  // cite: Nat.exists_dvd_of_not_prime2 (proof term)
              assert (n >= 2) by {  // sub-goal of `by` (Lean state) // @tac 1174-1179
                // [TACTIC: omega]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×29 [exec 212 1174-1179]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Eq.trans ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2 (+11 more heads, ×12)
              }
              // [TACTIC: exact Nat.exists_dvd_of_not_prime2 ( by omega omega , h₅₁ )]
}

