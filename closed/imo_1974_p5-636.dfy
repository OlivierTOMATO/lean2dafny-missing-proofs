// CLOSED — failing line imo_1974_p5-636: theorem imo_1974_p5, Dafny line 636 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: lower_bound
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// how it closes: pass2 — bind both factors to local vars x,y; MulPos(x,y); assert 0<x*y; assert x*y == goal product (Z3 then matches the postcondition)
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L636(a: real, b: real, c: real, d: real)
  requires 0.0 < a * b
  requires 0.0 < c * d
  ensures   0.0 < a * b * (c * d)
{
  var x := (a * b);  // [ADDED]
  var y := (c * d);  // [ADDED]
  MulPos(x, y);  // [ADDED]
  assert 0.0 < x * y;  // [ADDED]
  assert x * y == a * b * (c * d);  // [ADDED]
}
