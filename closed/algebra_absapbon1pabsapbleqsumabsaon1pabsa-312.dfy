// CLOSED — failing line algebra_absapbon1pabsapbleqsumabsaon1pabsa-312: theorem algebra_absapbon1pabsapbleqsumabsaon1pabsa, Dafny line 312 (ERR: assertion might not hold)
// failing Dafny line: assert ((0.0 <= abs((a + b))) ==> ((abs((a + b)) <= (abs(a) + abs(b))) ==> (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))))));
// Lean step: h₁₈
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — the requires-quantifier h₂ has no trigger (Real.div(x, 1.0 + x) contains arithmetic) so Z3 never instantiates it; re-proved it as a forall statement with explicit trigger {Real.div(x, 1.0), Real.div(y, 1.0)} (body: DivLeDivIff(x, 1.0 + x, y, 1.0 + y) + cert_identity_6, the file's own proof) and instantiated it at x := abs(a + b), y := abs(a) + abs(b) by asserting Real.div(abs(a + b), 1.0) == abs(a + b) etc.
// Dafny: finished with 12 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

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
{
  forall x: real, y: real {:trigger Real.div(x, 1.0), Real.div(y, 1.0)} | 0.0 <= x && x <= y  // [ADDED]
    ensures Real.div(x, 1.0 + x) <= Real.div(y, 1.0 + y)  // [ADDED]
  {
    assert 0.0 < 1.0 + x;  // [ADDED]
    assert 0.0 < 1.0 + y;  // [ADDED]
    DivLeDivIff(x, 1.0 + x, y, 1.0 + y);  // [ADDED]
    assert x * (1.0 + y) <= y * (1.0 + x) by { cert_identity_6(a, b, x, y); }  // [ADDED]
  }
  assert Real.div(abs(a + b), 1.0) == abs(a + b);  // [ADDED]
  assert Real.div(abs(a) + abs(b), 1.0) == abs(a) + abs(b);  // [ADDED]
  assert 0.0 <= abs(a + b) && abs(a + b) <= abs(a) + abs(b);  // [ADDED]
  assert Real.div(abs(a + b), 1.0 + abs(a + b)) <= Real.div(abs(a) + abs(b), 1.0 + (abs(a) + abs(b)));  // [ADDED]
}
