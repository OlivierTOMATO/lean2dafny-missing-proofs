// CLOSED — failing line aime_1983_p3-507: theorem aime_1983_p3, Dafny line 507 (ERR: assertion might not hold)
// failing Dafny line: assert (f(x) == (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))));
// Lean step: h₆
// hypotheses: 6 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: L_sqrtle0 — 
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1983_p3-507/LIBRARY_CHANGES.diff

include "alt/aime_1983_p3-507/out/aime_1983_p3.dfy"
lemma {:induction false} vc_aime_1983_p3_L507(f: real -> real, h1_set: set<real>, x_2_0: real)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  requires f(0.0 - 9.0 - Real.sqrt(61.0)) == 0.0
  requires f(x_2_0) == 0.0
  ensures   f(x_2_0) == x_2_0 * x_2_0 + (18.0 * x_2_0 + 30.0) - 2.0 * Real.sqrt(x_2_0 * x_2_0 + (18.0 * x_2_0 + 45.0))
{ }

