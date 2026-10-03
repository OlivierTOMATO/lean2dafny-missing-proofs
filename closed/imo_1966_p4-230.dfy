// CLOSED — failing line imo_1966_p4-230: theorem imo_1966_p4, Dafny line 230 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * 
// Lean step: field_simp [hcos, hsin, hcos', hsin']
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L230(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires m_1_0 + 1 > 0
  requires 0 <= m_1_0 + 1
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.pow(2.0, m_1_0 + 1) * x == 2.0 * (Real.pow(2.0, m_1_0) * x)
  requires Real.tan(Real.pow(2.0, m_1_0) * x) == Real.div(Real.sin(Real.pow(2.0, m_1_0) * x), Real.cos(Real.pow(2.0, m_1_0) * x))
  requires Real.tan(2.0 * (Real.pow(2.0, m_1_0) * x)) == Real.div(Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)), Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)))
  requires Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)
  requires Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x) - 1.0
  requires Real.cos(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.sin(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.cos(Real.pow(2.0, m_1_0 + 1) * x) != 0.0
  requires Real.sin(Real.pow(2.0, m_1_0 + 1) * x) != 0.0
  ensures   Real.div(1.0, Real.cos(Real.pow(2.0, m_1_0) * x)) * (Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0) * x)) * (1.0 / 2.0)) == Real.div(Real.cos(Real.pow(2.0, m_1_0) * x), Real.sin(Real.pow(2.0, m_1_0) * x)) - Real.div(2.0 * (Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)) - 1.0, 2.0 * (Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)))
{ }

