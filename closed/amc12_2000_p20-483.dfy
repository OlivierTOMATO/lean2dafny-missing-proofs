// CLOSED — failing line amc12_2000_p20-483: theorem amc12_2000_p20, Dafny line 483 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₁₃
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// how it closes: pass2 — definitional helper function pass2_mulr(x,y) = x*y (NOT an axiom; a plain Dafny function so the fact `0 < t*t` survives as an atom — Z3 rewrites a bare `0 < t*t` fact into `t != 0` and then cannot use it), proved helper lemma pass2_sq_pos_of_neg(t): t<0 ==> 0 < pass2_mulr(t,t) via the library's MulPos on two syntactically distinct copies of -t, and a chain of one-factor-substitution asserts v*v == v*(2x-3) == 2(x*v)-3v, x*v == 2x^2-3x, v*v == 4x^2-12x+9, (2x-3)^2 == 4x^2-12x+9; body restructured (the original MulPos(-(t),-(t))+MulNeg steps dropped)
// Dafny: Dafny program verifier finished with 18 verified, 0 errors  (2.06 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2000_p20.dfy"
lemma {:induction false} vc_amc12_2000_p20_L483(x: real)
  requires 2.0 * x - 1.0 * 3.0 < 0.0
  ensures   0.0 < (2.0 * x - 1.0 * 3.0) * (2.0 * x - 1.0 * 3.0)
{
  var v := 2.0 * x - 1.0 * 3.0;  // [ADDED]
  pass2_sq_pos_of_neg(v);  // [ADDED]
  assert pass2_mulr(v, v) == v * v;  // [ADDED]
  assert v * v == v * (2.0 * x - 1.0 * 3.0);  // [ADDED]
  assert v * (2.0 * x - 1.0 * 3.0) == 2.0 * (x * v) - 3.0 * v;  // [ADDED]
  assert x * v == 2.0 * (x * x) - 3.0 * x;  // [ADDED]
  assert v * v == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert 0.0 < 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert (2.0 * x - 1.0 * 3.0) * (2.0 * x - 1.0 * 3.0) == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
}

// pass2 helper: a definitional wrapper for real multiplication (x * y), used only so that
// the fact "0 < t*t" survives as an atom (Z3 rewrites a bare "0 < t*t" into "t != 0")
function pass2_mulr(x: real, y: real): real { x * y }  // [ADDED DECLARATION]

// pass2 helper (proved): Lean's mul_pos_of_neg_of_neg instance t*t > 0 for t < 0, via the
// library's MulPos on two syntactically distinct copies of -t
lemma pass2_sq_pos_of_neg(t: real)  // [ADDED DECLARATION]
  requires t < 0.0
  ensures 0.0 < pass2_mulr(t, t)
{
  var p := pass2_mulr(-t, 1.0);
  var q := pass2_mulr(1.0, -t);
  assert p == -t;
  assert q == -t;
  MulPos(p, q);
  assert 0.0 < p * q;
  assert p * q == (-t) * q;
  assert (-t) * q == (-t) * (-t);
  assert pass2_mulr(t, t) == t * t;
}
