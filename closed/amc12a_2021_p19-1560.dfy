// CLOSED — failing line amc12a_2021_p19-1560: theorem amc12a_2021_p19, Dafny line 1560 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sin(x) == Real.sin(0.0));
// Lean step: norm_num [h₅₁₅₅]
// hypotheses: 19 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RealSinZero();  // Real.sin_zero, in norm_num simp set
// Dafny: finished with 33 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1560(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  requires 1.0 - Real.cos(x_0_0_0_0) == Real.sin(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) == 1.0 - Real.cos(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) * Real.sin(x_0_0_0_0) + Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) >= 0.0
  requires (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) == 1.0 - Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)
  requires Real.cos(x_0_0_0_0) == 0.0 || Real.cos(x_0_0_0_0) == 1.0
  requires Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) == 0.0
  requires Real.cos(x_0_0_0_0) == Real.cos(0.0)
  requires (Real.cos(x_0_0_0_0) != 0.0) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0))
  ensures   Real.sin(x_0_0_0_0) == Real.sin(0.0)
{
  RealSinZero();  // Mathlib Real.sin_zero (norm_num simp set)
}

