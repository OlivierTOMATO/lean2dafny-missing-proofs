// CLOSED — failing line amc12_2000_p20-493: theorem amc12_2000_p20, Dafny line 493 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₁₃
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// how it closes: pass2 — same as 483 mirrored: definitional helper function pass2_mulr(x,y) = x*y (not an axiom), proved helper lemma pass2_sq_pos_of_neg(t) applied to v = 3-2x < 0, plus the one-factor-substitution assert chain to 4x^2-12x+9; body restructured
// Dafny: Dafny program verifier finished with 18 verified, 0 errors  (2.19 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2000_p20.dfy"
lemma {:induction false} vc_amc12_2000_p20_L493(x: real)
  requires 1.0 * 3.0 - 2.0 * x < 0.0
  ensures   0.0 < (1.0 * 3.0 - 2.0 * x) * (1.0 * 3.0 - 2.0 * x)
{
  var v := 1.0 * 3.0 - 2.0 * x;  // [ADDED]
  pass2_sq_pos_of_neg(v);  // [ADDED]
  assert pass2_mulr(v, v) == v * v;  // [ADDED]
  assert v * v == v * (1.0 * 3.0 - 2.0 * x);  // [ADDED]
  assert v * (1.0 * 3.0 - 2.0 * x) == 3.0 * v - 2.0 * (x * v);  // [ADDED]
  assert x * v == 3.0 * x - 2.0 * (x * x);  // [ADDED]
  assert v * v == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert 0.0 < 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert (1.0 * 3.0 - 2.0 * x) * (1.0 * 3.0 - 2.0 * x) == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
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
