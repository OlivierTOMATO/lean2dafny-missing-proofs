// NOT CLOSED — failing line imo_1966_p4-174: theorem imo_1966_p4, Dafny line 174 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) + Real.div(1.0
// Lean step: rw [Finset.sum_Icc_succ_top]
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K2pow=oor, K3=oor, K2upow=failed; this file is the honest base attempt
// Dafny: finished with 17 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L174(m_1_0: nat, n: int, x: real)
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
  requires 1 <= m_1_0 + 1
  requires ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(m_1_0 + 1)
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m_1_0 + 1)
  requires 0 <= m_1_0 + 1
  ensures   Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
{
      // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top ] rw [ Finset.sum_Icc_succ_top ] <;> simp [ hm ] simp [ hm ] simp [ hm ]]
      // [TACTIC: choice [ Finset.sum_Icc_succ_top ] rw [ Finset.sum_Icc_succ_top ]]
      assert ((1) <= (m_1_0) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
      FinsetSumIccSuccTopNat(1, m_1_0, ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * …, ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) + (1 : ℝ)…, fun (_a : ℝ) => _a = ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : …): no library counterpart (not stated) [exec 280 1867-1895]
      // (`rw` closed `∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ))` itself, e.g. by its trailing rfl)
      assert (1 <= (m_1_0 + 1));  // sub-goal of `simp` (Lean state) // @tac 1906-1915
      // UNCITED-APPLIED internal ×2 [exec 309 1906-1915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1
}

