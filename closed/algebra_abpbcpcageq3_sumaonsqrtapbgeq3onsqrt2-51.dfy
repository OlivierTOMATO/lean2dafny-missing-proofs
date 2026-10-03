// CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-51: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 51 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₂
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 3); nothing assumed beyond the facts in scope
// how it closes: pass2 — forall-statement with explicit trigger {:trigger Real.div(s, 1.0)} binding s == <compound>, applying the library lemma to the atomic s and instantiating back on the compound (Dafny lemma-call argument temporaries otherwise hide the product from Z3's nonlinear solver): s == a + b + c - 3.0, MulPos(b, -s); MulNeg(b, s)
// Dafny: finished with 7 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L51(a: real, b: real, c: real)
  requires 0.0 < b
  requires a + b + c - 3.0 < 0.0
  ensures   b * (a + b + c - 3.0) < 0.0
{
  forall s: real {:trigger Real.div(s, 1.0)} | s == a + b + c - 3.0  // [ADDED]
    ensures b * s < 0.0  // [ADDED]
  {
    MulPos(b, -s);  // [ADDED]
    MulNeg(b, s);  // [ADDED]
    assert b * (-s) == -(b * s);  // [ADDED]
  }
  assert Real.div(a + b + c - 3.0, 1.0) == a + b + c - 3.0;  // [ADDED]
  assert b * (a + b + c - 3.0) < 0.0;  // [ADDED]
}
