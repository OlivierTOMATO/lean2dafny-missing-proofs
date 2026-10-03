// CLOSED — failing line amc12b_2003_p17-101: theorem amc12b_2003_p17, Dafny line 101 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.log(x) + (3.0 * Real.log(y))) == 1.0);
// Lean step: field_simp [Real.log_mul, Real.log_pow, hx, hy, hxy] at h₁ h₂ ⊢
// hypotheses: 10 facts Z3 had at the line; nothing assumed beyond the facts in scope — pass2 dropped 7 unused hypotheses (strong-induction forall, h2, hxy, (0 as real)==0, log_mul(x,y), x != 0, y != 0; the last two made Z3's nonlinear matching fail)
// how it closes: pass2 — {:fuel Real.pow, 0, 1} on the lemma (keeps Real.pow(y,3) folded so Z3 matches the product x*pow(y,3) between hypothesis and lemma instance; solver guidance only), local p := Real.pow(y, 3); PowPos(y, 3); RealLogPow(3, y); RealLogMul(x, p) with bridging asserts log(p) == 3 log y, log(x*p) == 1, log(x*p) == log x + log p
// Dafny: finished with 11 verified, 0 errors in 1.5 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2003_p17.dfy"
lemma {:induction false} {:fuel Real.pow, 0, 1} vc_amc12b_2003_p17_L101(x: real, y: real)
  requires 0.0 < x
  requires 0.0 < y
  requires Real.log(x * Real.pow(y, 3)) == 1.0
  ensures   Real.log(x) + 3.0 * Real.log(y) == 1.0
{
  var p := Real.pow(y, 3);  // [ADDED]
  PowPos(y, 3);  // [ADDED]
  RealLogPow(3, y);  // [ADDED]
  assert Real.log(p) == 3.0 * Real.log(y);  // [ADDED]
  assert Real.log(x * p) == 1.0;  // [ADDED]
  RealLogMul(x, p);  // [ADDED]
  assert Real.log(x * p) == Real.log(x) + Real.log(p);  // [ADDED]
}
