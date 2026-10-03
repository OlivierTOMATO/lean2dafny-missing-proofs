// NOT CLOSED — failing line algebra_absapbon1pabsapbleqsumabsaon1pabsa-312: theorem algebra_absapbon1pabsapbleqsumabsaon1pabsa, Dafny line 312 (ERR: assertion might not hold)
// failing Dafny line: assert ((0.0 <= abs((a + b))) ==> ((abs((a + b)) <= (abs(a) + abs(b))) ==> (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))))));
// Lean step: h₁₈
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K3=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_absapbon1pabsapbleqsumabsaon1pabsa.dfy"
lemma {:induction false} vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312(a: real, b: real)
  requires abs(a + b) <= abs(a) + abs(b)
  requires forall x_1_1: real, y_1_1: real :: 0.0 <= x_1_1 && x_1_1 <= y_1_1 ==> Real.div(x_1_1, 1.0 + x_1_1) <= Real.div(y_1_1, 1.0 + y_1_1)
  requires 0.0 <= abs(a + b)
  requires 0.0 <= abs(a) + abs(b)
  requires 0.0 <= 1.0 + abs(a + b)
  requires 0.0 <= 1.0 + (abs(a) + abs(b))
  requires 0.0 < 1.0 + abs(a + b)
  requires 0.0 < 1.0 + (abs(a) + abs(b))
  ensures   Real.div(abs(a + b), 1.0 + abs(a + b)) <= Real.div(abs(a) + abs(b), 1.0 + (abs(a) + abs(b)))
{ }

