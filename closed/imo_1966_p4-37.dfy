// CLOSED — failing line imo_1966_p4-37: theorem imo_1966_p4, Dafny line 37 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: induction_helper_1(n - 1, x);
// Lean step: 
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2upow — library Real.pow uninterpreted (no body, no ensures); weaker library, sound
// Dafny: finished with 21 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1966_p4-37/LIBRARY_CHANGES.diff

include "alt/imo_1966_p4-37/out/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L37(n: int, n_1_0: int, n_1_0_1_0: int, x: real)
  requires 0 <= n
  requires 0 <= n_1_0
  requires 0 <= n_1_0_1_0
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))
  requires forall n0: int :: (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: true)) && ((forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) ==> Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) ==> (forall m_6: nat :: 0 < m_6 ==> (forall k: int :: true) && (Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> (forall k: int :: true)))) && (0 <= n0 && (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) && Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) && (forall m_6: nat :: 0 < m_6 ==> Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> Real.sum(IccN(1, m_6 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6 + 1) * x))) && 0 <= n0 && n0 < n ==> (0 < n0 ==> (forall k: int :: true)) && (0 < n0 ==> Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x))))
  requires n != 0
  requires 0 <= n - 1
  ensures  (0 <= n || n - 1 == n) && ((0 <= n || n - 1 == n) ==> (n - 1 < n)) && (((0 <= n || n - 1 == n) && (n - 1 < n)) ==> (forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1))))) && (((0 <= n || n - 1 == n) && (n - 1 < n)) ==> (Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)))) && (((0 <= n || n - 1 == n) && (n - 1 < n)) ==> (forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))))
{ }

