// CLOSED — failing line amc12a_2021_p19-1063: theorem amc12a_2021_p19, Dafny line 1063 (OOR: Verification out of resource (amc12a_2021_p19))
// failing Dafny line: SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));
// Lean step: h₅₈
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope; pass2 keeps 16 of the 20 (dropped: see "how it closes")
// how it closes: pass2 — SqNonneg(1.0 - Real.cos(x)) (Lean: sq_nonneg, the certificate piece of the failing line); dropped 4 of the 20 hypotheses: the nonlinear case-split ones (the `(0<=c*c)||(c*c<0)` and `… && … == 0.0) || !(…)` certificate disjunctions), which alone drove Z3 out of resource even with an empty goal
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1063(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires ((0.0 <= x_0_0_0_0) && (((x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0)) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  requires 1.0 - Real.cos(x_0_0_0_0) == Real.sin(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) == 1.0 - Real.cos(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) * Real.sin(x_0_0_0_0) + Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) >= 0.0
  requires 0.0 <= Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)
  ensures   0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0))


{
SqNonneg(1.0 - Real.cos(x_0_0_0_0));  // Lean: sq_nonneg (the certificate piece the failing line applies)  // [ADDED]
}
