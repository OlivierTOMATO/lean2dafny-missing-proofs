// NOT CLOSED — failing line amc12a_2021_p19-1733: theorem amc12a_2021_p19, Dafny line 1733 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sin(((Real.pi() / 2.0) * 0.0)) == Real.cos(((Real.pi() / 2.0) * 1.0))) by {
// Lean step: norm_num [Real.sin_zero, Real.cos_zero]
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 4 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1733(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires 2.0 != 0.0
  ensures   (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi())) ==> (false /*VC_GAP*/))
{
                            // UNCITED Real.sin_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.cos_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := π / (2 : ℝ))
                            // UNCITED-APPLIED internal ×11 [exec 2287 11189-11228]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: Eq.trans ×3, congrArg ×3, of_eq_true ×1, congr ×1 (+2 more heads, ×2)
}

