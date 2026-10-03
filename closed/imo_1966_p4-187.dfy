// CLOSED — failing line imo_1966_p4-187: theorem imo_1966_p4, Dafny line 187 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert (((Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x)))) + Real.div(1.0, Real.sin((Real.pow(2.0, (m + 1)) * x)))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan
// Lean step: have h₃ : 1 / Real.sin (2 ^ (m + 1) * x) = 1 / Real.tan (2 ^ m * x) - 1 / Real.tan (2 ^ (m + 1) * x) := by
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 dropped 2 hypotheses (the nested forall k/m x != m*pi/2^k fact and the auto-induction forall n0 fact)
// how it closes: pass2 — opaque-pow library variant; dropped the two quantified hypotheses; body empty (goal is linear in hyps h3 and the rewritten sum identity); unused proved helpers RealSinCongr/RealTanCongr in file
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s); library: opaque-pow variant alt/imo_1966_p4-187/ (copy of closed/alt/imo_1966_p4-190)

include "alt/imo_1966_p4-187/out/imo_1966_p4.dfy"
// ---- pass2 helpers (proved; no axioms) ----
lemma RealSinCongr(a: real, b: real) requires a == b ensures Real.sin(a) == Real.sin(b) { }  // [ADDED DECLARATION]
lemma RealTanCongr(a: real, b: real) requires a == b ensures Real.tan(a) == Real.tan(b) { }  // [ADDED DECLARATION]
// ---- end helpers ----
lemma {:induction false} vc_imo_1966_p4_L187(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires 0 < n
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires m_1_0 + 1 > 0
  requires 0 <= m_1_0 + 1
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + (Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  ensures   Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
{

}
