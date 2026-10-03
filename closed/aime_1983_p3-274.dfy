// CLOSED — failing line aime_1983_p3-274: theorem aime_1983_p3, Dafny line 274 (ERR: assertion might not hold)
// failing Dafny line: assert (f((-(9.0) + Real.sqrt(61.0))) == ((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) + Real.sqrt(61.0)) * (
// Lean step: h₂₁
// hypotheses: 3 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S_instarg_sqrtnone — S_instarg + library sqrt with no ensures
// Dafny: finished with 3 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1983_p3-274/LIBRARY_CHANGES.diff

include "alt/aime_1983_p3-274/out/aime_1983_p3.dfy"
lemma {:induction false} vc_aime_1983_p3_L274(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  ensures   f(0.0 - 9.0 + Real.sqrt(61.0)) == (0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 30.0) - 2.0 * Real.sqrt((0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 45.0))
{
  var t := 0.0 - 9.0 + Real.sqrt(61.0);  // K1: Lean rw [h0] instance at t
  assert f(t) == t * t + (18.0 * t + 30.0) - 2.0 * Real.sqrt(t * t + (18.0 * t + 45.0));
  assert t * t + (18.0 * t + 45.0) == (0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 45.0);  // argument of sqrt, syntactic substitution (checked)
}

