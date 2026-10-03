// NOT CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-40: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 40 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₂
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 3); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 3 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L40(a: real, b: real, c: real)
  requires 0.0 < a
  requires a + b + c - 3.0 < 0.0
  ensures   a * (a + b + c - 3.0) < 0.0
{
  MulPos(a, -((((a + b) + c) - 3.0))); MulNeg(a, (((a + b) + c) - 3.0)); assert (a) * (-((((a + b) + c) - 3.0))) == -((a) * ((((a + b) + c) - 3.0)));
}

