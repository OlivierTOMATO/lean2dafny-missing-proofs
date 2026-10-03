// NOT CLOSED — failing line imo_1966_p4-397: theorem imo_1966_p4, Dafny line 397 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) by {
// Lean step: apply apply_induction
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K3=failed; this file is the honest base attempt
// Dafny: finished with 10 verified, 1 error, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L397(n: nat, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires forall m_1_1: nat :: 0 < m_1_1 && Real.sum(IccN(1, m_1_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_1) * x)) ==> Real.sum(IccN(1, m_1_1 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_1 + 1) * x))
  requires forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n_2_1) * x))
  requires 0 <= 1
  ensures   Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
    // [TACTIC: «_<;>_» apply_induction apply apply_induction <;> simp_all simp_all simp_all]
    // [TACTIC: choice apply_induction apply apply_induction]
    assert ((0 < n) ==> (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))));  // instance of apply_induction (Lean state: `apply` leaves its premises as goals)
    assert (0 < n);  // sub-goal of `simp_all` (Lean state) // @tac 3646-3654
    // UNCITED-APPLIED internal ×2 [exec 778 3646-3654]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1
    // UNCITED-APPLIED instance of apply_induction: `∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / Real.tan x - (1 : ℝ) / Real.tan ((2 : ℝ) ^ n * x)` — Lean's proof of final_conclusion applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
}

