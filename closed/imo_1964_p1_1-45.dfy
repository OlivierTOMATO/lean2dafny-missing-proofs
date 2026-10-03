// CLOSED — failing line imo_1964_p1_1-45: theorem imo_1964_p1_1, Dafny line 45 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((((2 * 2 * 2) % 7) == (1 % 7)) && (forall m: nat :: ((m < 3) ==> ((0 < m) ==> ((Int.pow(2, m) % 7) != (1 % 7))))));
// Lean step: decide
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — dropped the Int.pow/NatDvd hypotheses; the consequent 2*2*2 % 7 == 1 % 7 is literal arithmetic, asserted directly
// Dafny: Dafny program verifier finished with 16 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.6s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L45(m_1_0_0: nat, n: nat)
  requires 0 <= n
  ensures   ((((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (3 <= m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (m_1_0_0 < 0)) || (2 * 2 * 2 % 7 != 1 % 7)) ==> (2 * 2 * 2 % 7 == 1 % 7))
{
  assert 2 * 2 * 2 % 7 == 1 % 7;  // [ADDED]
}

