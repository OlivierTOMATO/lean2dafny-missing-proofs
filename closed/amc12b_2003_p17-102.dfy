// CLOSED — failing line amc12b_2003_p17-102: theorem amc12b_2003_p17, Dafny line 102 (ERR: assertion might not hold)
// failing Dafny line: assert (((2.0 * Real.log(x)) + Real.log(y)) == 1.0);
// Lean step: field_simp [Real.log_mul, Real.log_pow, hx, hy, hxy] at h₁ h₂ ⊢
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope — pass2 dropped 8 unused hypotheses (strong-induction forall, h1, hxy, (0 as real)==0, log_mul(x,y), the rewritten h1, x != 0, y != 0)
// how it closes: pass2 — {:fuel Real.pow, 0, 1} on the lemma (keeps Real.pow(x,2) folded; solver guidance only), local p := Real.pow(x, 2); PowPos(x, 2); RealLogPow(2, x); RealLogMul(p, y) with bridging asserts log(p) == 2 log x, log(p*y) == 1, log(p*y) == log p + log y
// Dafny: finished with 11 verified, 0 errors in 1.5 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2003_p17.dfy"
lemma {:induction false} {:fuel Real.pow, 0, 1} vc_amc12b_2003_p17_L102(x: real, y: real)
  requires 0.0 < x
  requires 0.0 < y
  requires Real.log(Real.pow(x, 2) * y) == 1.0
  ensures   2.0 * Real.log(x) + Real.log(y) == 1.0
{
  var p := Real.pow(x, 2);  // [ADDED]
  PowPos(x, 2);  // [ADDED]
  RealLogPow(2, x);  // [ADDED]
  assert Real.log(p) == 2.0 * Real.log(x);  // [ADDED]
  assert Real.log(p * y) == 1.0;  // [ADDED]
  RealLogMul(p, y);  // [ADDED]
  assert Real.log(p * y) == Real.log(p) + Real.log(y);  // [ADDED]
}
