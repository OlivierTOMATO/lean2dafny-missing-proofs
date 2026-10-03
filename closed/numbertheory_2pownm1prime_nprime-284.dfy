// CLOSED — failing line numbertheory_2pownm1prime_nprime-284: theorem numbertheory_2pownm1prime_nprime, Dafny line 284 (OOR: Verification out of resource (numbertheory_2pownm1prime_nprime))
// failing Dafny line: assert exists k: nat :: (n) == (m) * k by {
// Lean step: h₁₁
// hypotheses: 23 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — witness n / m_1_0_0_5_0 for the existential (base body used the unconstrained rename m_1_0_0_1_2_5 instead of the destructured m_1_0_0_5_0); asserts m_1_0_0_5_0 != 0 and n == m_1_0_0_5_0 * (n / m_1_0_0_5_0) from the branch hypothesis
// Dafny: Dafny program verifier finished with 15 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_2pownm1prime_nprime.dfy"
lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L284(k_1_0_0_2_2_0: int, k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
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
  requires ((m_1_0_0_5_0 == 0) && (n == m_1_0_0_5_0 * 0) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0))) || ((m_1_0_0_5_0 != 0) && (n == m_1_0_0_5_0 * (n / m_1_0_0_5_0)) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0)))
  ensures   exists k_1_0_0_2_2_1: nat :: n == m_1_0_0_5_0 * k_1_0_0_2_2_1
{
  // the base body named the witness m_1_0_0_1_2_5 (unconstrained); the destructured divisor is m_1_0_0_5_0 (>= 2, so the
  // second branch of the last hypothesis gives n == m_1_0_0_5_0 * (n / m_1_0_0_5_0))
  assert m_1_0_0_5_0 != 0;  // [ADDED]
  assert n == m_1_0_0_5_0 * (n / m_1_0_0_5_0);  // [ADDED]
  assert exists k_1_0_0_2_2_1: nat :: n == m_1_0_0_5_0 * k_1_0_0_2_2_1 by {  // [ADDED]
    var w: nat := n / m_1_0_0_5_0;  // [ADDED]
    assert n == m_1_0_0_5_0 * w;  // [ADDED]
  }
}
