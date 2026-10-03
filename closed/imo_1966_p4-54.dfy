// CLOSED — failing line imo_1966_p4-54: theorem imo_1966_p4, Dafny line 54 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (Real.sum(IccN(1, (0 + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (0 + 1)) * x)))));
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.one_ne_zero, Nat.succ_pos, base_case]
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L54(n: int, n_1_0: int, n_1_0_0: int, n_1_0_1_0: int, x: real)
  requires 0 <= n
  requires 0 <= n_1_0
  requires 0 <= n_1_0_1_0
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))
  requires forall n0: int :: (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: true)) && ((forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) ==> Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) ==> (forall m_6: nat :: 0 < m_6 ==> (forall k: int :: true) && (Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> (forall k: int :: true)))) && (0 <= n0 && (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) && Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) && (forall m_6: nat :: 0 < m_6 ==> Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> Real.sum(IccN(1, m_6 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6 + 1) * x))) && 0 <= n0 && n0 < n ==> (0 < n0 ==> (forall k: int :: true)) && (0 < n0 ==> Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x))))
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))
  requires 0 < n - 1 ==> Real.sum(IccN(1, n - 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n - 1) * x))
  requires n_1_0_0 == n - 1
  requires 0 < n_1_0_0 + 1
  requires n_1_0_0 == 0
  requires 0 <= 1
  requires 0 < 0 ==> Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))
  requires 0 < 0 + 1
  requires IccN(1, 1) == 
{ }

