// CLOSED — failing line amc12a_2021_p19-599: theorem amc12a_2021_p19, Dafny line 599 (ERR: assertion might not hold)
// failing Dafny line: assert ((x in S) <==> ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))));
// Lean step: h₁
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — checked re-assert of hypothesis h0 (the ∀x. x∈S ↔ …) with explicit {:trigger x_1 in S}, then its instance at x_0_0_0_0 via a local copy `var x1 := x_0_0_0_0` (Dafny had not instantiated the ∀ at the goal term)
// Dafny: finished with 11 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L599(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi())) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0)) || (x_0_0_0_0 < 0.0)
  ensures   (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))

{
  assert forall x_1: real {:trigger x_1 in S} :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)));  // [ADDED]
  var x1 := x_0_0_0_0;  // [ADDED]
  assert (x1 in S) == (0.0 <= x1 && x1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x1)));  // [ADDED]
}
