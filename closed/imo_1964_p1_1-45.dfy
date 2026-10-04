// NOT CLOSED — failing line imo_1964_p1_1-45: theorem imo_1964_p1_1, Dafny line 45 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((((2 * 2 * 2) % 7) == (1 % 7)) && (forall m: nat :: ((m < 3) ==> ((0 < m) ==> ((Int.pow(2, m) % 7) != (1 % 7))))));
// Lean step: decide
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 36 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L45(m_1_0_0: nat, n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  ensures  ((((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (3 <= m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (m_1_0_0 < 0)) || (2 * 2 * 2 % 7 != 1 % 7)) ==> (2 * 2 * 2 % 7 == 1 % 7)) && ((((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (3 <= m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (m_1_0_0 < 0)) || (2 * 2 * 2 % 7 != 1 % 7)) ==> (forall m_1_0_1: nat :: m_1_0_1 < 3 ==> 0 < m_1_0_1 ==> Int.pow(2, m_1_0_1) % 7 != 1 % 7))
{ }

