// CLOSED — failing line aime_1999_p11-177: theorem aime_1999_p11, Dafny line 177 (ERR; pass2)
// failing Dafny line: {
// Lean step: h_m_val
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 5); nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helpers MulPosOfNegOfNeg_p11(a,b) (a<0, b<0 ==> 0<a*b, via library MulPos(-a,-b)) and SignProd177(x) stating the goal at the opaque real x; body = SignProd177(m.to_real()). Calling the sign lemma directly with the compound arguments (m.to_real()*2-175, 3-pi) fails: Z3 does not identify the nonlinear product with the call-site product; passing x = m.to_real() keeps the product syntactically identical.
// Dafny: Dafny program verifier finished with 10 verified, 0 errors  (5.4 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
include "../dafny/aime_1999_p11.dfy"
// pass2 helper: mul_pos_of_neg_of_neg at the opaque real x = m.to_real() (Z3 only needs x, not m's num/denom)
lemma MulPosOfNegOfNeg_p11(a: real, b: real)  // [ADDED DECLARATION]
  requires a < 0.0
  requires b < 0.0
  ensures 0.0 < a * b
{
  MulPos(-a, -b);
  assert (-a) * (-b) == a * b;
}

lemma SignProd177(x: real)  // [ADDED DECLARATION]
  requires x * 2.0 - 175.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures 0.0 < (x * 2.0 - 175.0) * (3.0 - Real.pi())
{
  MulPosOfNegOfNeg_p11(x * 2.0 - 175.0, 3.0 - Real.pi());
}
lemma {:induction false} vc_aime_1999_p11_L177(m: Rat.rat)
  requires m.to_real() * 2.0 - 175.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures   0.0 < (m.to_real() * 2.0 - 175.0) * (3.0 - Real.pi())
{
  SignProd177(m.to_real());  // [ADDED]
}
