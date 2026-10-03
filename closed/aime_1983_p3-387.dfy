// NOT CLOSED — failing line aime_1983_p3-387: theorem aime_1983_p3, Dafny line 387 (ERR: assertion might not hold)
// failing Dafny line: assert (f((-(9.0) - Real.sqrt(61.0))) == ((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) - Real.sqrt(61.0)) * (
// Lean step: h₃₁
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K3=failed, S_instarg=failed, S_instarg_sqrtle0=failed, S_instarg_sqrtnone=failed, L_sqrtle0=failed, L_sqrtnone=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1983_p3.dfy"
lemma {:induction false} vc_aime_1983_p3_L387(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  ensures   f(0.0 - 9.0 - Real.sqrt(61.0)) == (0.0 - 9.0 - Real.sqrt(61.0)) * (0.0 - 9.0 - Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 - Real.sqrt(61.0)) + 30.0) - 2.0 * Real.sqrt((0.0 - 9.0 - Real.sqrt(61.0)) * (0.0 - 9.0 - Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 - Real.sqrt(61.0)) + 45.0))
{ }

