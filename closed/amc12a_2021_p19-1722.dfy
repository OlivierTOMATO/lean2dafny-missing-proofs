// CLOSED — failing line amc12a_2021_p19-1722: theorem amc12a_2021_p19, Dafny line 1722 (OOR: Verification out of resource (amc12a_2021_p19))
// failing Dafny line: assert (Real.cos((Real.pi() / 2.0)) == 0.0);
// Lean step: norm_num
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RealCosPiDivTwo();  // simp-set lemma
// Dafny: finished with 29 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1722(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires ((0.0 <= x_0_0_0_0) && (((x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))))) || ((Real.pi() < x_0_0_0_0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))))))) || ((x_0_0_0_0 < 0.0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))))
  requires 0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)) ==> x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires ((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0)
  requires x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires ((x_0_0_0_0 == 0.0) && (((0.0 <= 0.0) && (((0.0 <= Real.pi()) && (2.0 != 0.0)) || (Real.pi() < 0.0))) || (0.0 < 0.0)) && (0.0 <= 0.0) && (0.0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(0.0)) == Real.cos(Real.pi() / 2.0 * Real.sin(0.0))) && (((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)) && (0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || (x_0_0_0_0 != 0.0)
  requires 2.0 != 0.0
  requires x_0_0_0_0 == Real.pi() / 2.0
  requires 0.0 <= Real.pi() / 2.0
  requires Real.pi() / 2.0 <= Real.pi()
  ensures   Real.cos(Real.pi() / 2.0) == 0.0
{
  RealCosPiDivTwo();  // Mathlib Real.cos_pi_div_two (simp set)  // [ADDED]
}

