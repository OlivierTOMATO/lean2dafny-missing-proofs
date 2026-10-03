// CLOSED — failing line numbertheory_2pownm1prime_nprime-333: theorem numbertheory_2pownm1prime_nprime, Dafny line 333 (OOR: Verification out of resource (numbertheory_2pownm1prime_nprime))
// failing Dafny line: assert (tsub(Int.pow(2, m), 1) >= tsub((2 * 2), 1));
// Lean step: omega
// hypotheses: 27 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 11 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_2pownm1prime_nprime.dfy"
lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L333(k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
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
  requires 0 <= Int.pow(2, m_1_0_0_5_0)
  requires 0 <= 1
  requires 0 <= Int.pow(2, n)
  requires NatDvd(tsub(Int.pow(2, m_1_0_0_5_0), 1), tsub(Int.pow(2, n), 1))
  requires Int.pow(2, m_1_0_0_5_0) >= 2 * 2
  ensures   0 <= 2 * 2
{ }

