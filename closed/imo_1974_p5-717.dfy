// CLOSED — failing line imo_1974_p5-717: theorem imo_1974_p5, Dafny line 717 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: upper_bound
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// how it closes: pass2 — bind the MulPos arguments to local vars x,y, call MulPos(x,y), assert 0<x*y, then assert x*y == the goal product (Z3 did not match the compound-term instantiation directly)
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L717(a: real, b: real, c: real, d: real)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  requires 0.0 < a + c + d
  ensures   0.0 < (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)
{
  var x := ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d));  // [ADDED]
  var y := ((a + c) + d);  // [ADDED]
  MulPos(x, y);  // [ADDED]
  assert 0.0 < x * y;  // [ADDED]
  assert x * y == (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d);  // [ADDED]
}

