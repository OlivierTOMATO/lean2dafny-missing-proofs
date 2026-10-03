// CLOSED — failing line imo_1966_p4-174: theorem imo_1966_p4, Dafny line 174 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) + Real.div(1.0
// Lean step: rw [Finset.sum_Icc_succ_top]
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 dropped 2 hypotheses (the nested forall k/m x != m*pi/2^k fact and the auto-induction forall n0 fact)
// how it closes: pass2 — opaque-pow library variant; proved helpers BetaCore/BetaTermSucc (beta-reduction of the summand lambda at m+1, 2^(m+1) passed as a real parameter so the product inside the lambda and in the goal is one Z3 term) and L174Core (the line's claim as requires -> ensures); body: L174Core(m_1_0, x)
// Dafny: finished with 33 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s); library: opaque-pow variant alt/imo_1966_p4-174/ (copy of closed/alt/imo_1966_p4-190)

include "alt/imo_1966_p4-174/out/imo_1966_p4.dfy"
// ---- pass2 helpers (all proved; no axioms) ----
// beta-reduction of the summand lambda at m+1: pow(2,m+1) is passed as a real parameter p so the
// product p * x inside the lambda body and in the conclusion is one Z3 term (Z3 does not propagate
// equalities between nonlinear products into EUF)
lemma BetaCore(m: nat, x: real, p: real)  // [ADDED DECLARATION]
  requires p == Real.pow(2.0, m + 1)
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x))
{
  assert ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x)) by {
    assert ((k: nat) => Real.pow(2.0, k) * x)(m + 1) == p * x;
  }
}
lemma BetaTermSucc(m: nat, x: real)  // [ADDED DECLARATION]
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x))
{
  BetaCore(m, x, Real.pow(2.0, m + 1));
}
// the line's claim, as requires -> ensures (Lean: `rw [Finset.sum_Icc_succ_top]` closes by rfl = this beta step)
lemma L174Core(m: nat, x: real)  // [ADDED DECLARATION]
  requires Real.sum(IccN(1, m + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1)
  ensures Real.sum(IccN(1, m + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x))
{
  BetaTermSucc(m, x);
}
// ---- end helpers ----
lemma {:induction false} vc_imo_1966_p4_L174(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires 0 < n
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires m_1_0 + 1 > 0
  requires 1 <= m_1_0 + 1
  requires ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(m_1_0 + 1)
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m_1_0 + 1)
  requires 0 <= m_1_0 + 1
  ensures   Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
{
  L174Core(m_1_0, x);  // [ADDED]
}
