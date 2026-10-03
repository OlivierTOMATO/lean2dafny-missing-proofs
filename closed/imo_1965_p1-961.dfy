// CLOSED — failing line imo_1965_p1-961: theorem imo_1965_p1, Dafny line 961 (ERR: assertion might not hold)
// failing Dafny line: assert (((Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))) * (Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x)))))) == (2.0 - (2.0 * Real.co
// Lean step: nlinarith [Real.sq_sqrt (show 0 ≤ 1 + Real.sin (2 * x) by nlinarith [Real.sin_le_one (2 * x), Real.neg_one_le_sin (2 * x)]),
// hypotheses: 52 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 3); nothing assumed beyond the facts in scope
// how it closes: pass2 — kept only the 7 needed hypotheses (sqrt nonneg, cos 2x >= 0, cos^2+sin^2=1, sq_sqrt facts) and replaced the certificate body by proved helper SqrtDiffSq_b9 over abstract reals (a*b = cos 2x from (ab)^2 = 1-sin^2 = cos^2, both nonneg), then (a-b)^2 = a^2+b^2-2ab
// Dafny: Dafny program verifier finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 3.0s)

include "../dafny/imo_1965_p1.dfy"
lemma {:induction false} vc_imo_1965_p1_L961(x: real)
  requires 0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x))
  requires 0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x))
  requires 0.0 <= Real.cos(2.0 * x)
  requires Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2.0 * x) == 1.0
  requires Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin(2.0 * x)) == 1.0 - Real.sin(2.0 * x)
  requires Real.sqrt(1.0 + Real.sin(2.0 * x)) * Real.sqrt(1.0 + Real.sin(2.0 * x)) == 1.0 + Real.sin(2.0 * x)
  ensures   (Real.sqrt(1.0 - Real.sin(2.0 * x)) - Real.sqrt(1.0 + Real.sin(2.0 * x))) * (Real.sqrt(1.0 - Real.sin(2.0 * x)) - Real.sqrt(1.0 + Real.sin(2.0 * x))) == 2.0 - 2.0 * Real.cos(2.0 * x)
{
  SqrtDiffSq_b9(Real.sqrt(1.0 - Real.sin(2.0 * x)), Real.sqrt(1.0 + Real.sin(2.0 * x)), Real.sin(2.0 * x), Real.cos(2.0 * x));  // [ADDED]
}

// helper (proved): a = sqrt(1-s), b = sqrt(1+s) abstracted as reals with a*a = 1-s, b*b = 1+s,
// d >= 0 with d*d + s*s = 1  ==>  a*b = d and (a-b)^2 = 2 - 2d.
lemma SqrtDiffSq_b9(a: real, b: real, s: real, d: real)  // [ADDED DECLARATION]
  requires 0.0 <= a
  requires 0.0 <= b
  requires 0.0 <= d
  requires a * a == 1.0 - s
  requires b * b == 1.0 + s
  requires d * d + s * s == 1.0
  ensures a * b == d
  ensures (a - b) * (a - b) == 2.0 - 2.0 * d
{
  var p := a * b;
  assert p * p == (a * a) * (b * b);
  assert (a * a) * (b * b) == (1.0 - s) * (1.0 + s);
  assert (1.0 - s) * (1.0 + s) == 1.0 - s * s;
  assert p * p == d * d;
  MulNonneg(a, b);
  assert 0.0 <= p;
  assert (p - d) * (p + d) == p * p - d * d;
  assert (p - d) * (p + d) == 0.0;
  EqZeroOrEqZeroOfMulEqZero(p - d, p + d);
  if p + d == 0.0 {
    assert p == 0.0 && d == 0.0;
  } else {
    assert p - d == 0.0;
  }
  assert p == d;
  assert (a - b) * (a - b) == a * a - 2.0 * (a * b) + b * b;
}

