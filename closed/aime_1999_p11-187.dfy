// CLOSED — failing line aime_1999_p11-187: theorem aime_1999_p11, Dafny line 187 (OOR; pass2)
// failing Dafny line: ensures (0.0 < ((175.0 - ((m).to_real() * 2.0)) * (3.0 - Real.pi())))
// Lean step: h_m_val
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 5); nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helpers MulPosOfNegOfNeg_p11(a,b) (a<0, b<0 ==> 0<a*b, via library MulPos(-a,-b)) and SignProd187(x) stating the goal at the opaque real x; body = SignProd187(m.to_real()) (same remark as -177: the direct call with compound arguments is OOR).
// Dafny: Dafny program verifier finished with 10 verified, 0 errors  (5.5 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
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

lemma SignProd187(x: real)  // [ADDED DECLARATION]
  requires 175.0 - x * 2.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures 0.0 < (175.0 - x * 2.0) * (3.0 - Real.pi())
{
  MulPosOfNegOfNeg_p11(175.0 - x * 2.0, 3.0 - Real.pi());
}
lemma {:induction false} vc_aime_1999_p11_L187(m: Rat.rat)
  requires 175.0 - m.to_real() * 2.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures   0.0 < (175.0 - m.to_real() * 2.0) * (3.0 - Real.pi())
{
  SignProd187(m.to_real());  // [ADDED]
}
