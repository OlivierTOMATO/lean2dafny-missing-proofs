// CLOSED — failing line mathd_algebra_362-217: theorem mathd_algebra_362, Dafny line 217 (ERR: a precondition for this call could not be proved)
// failing Dafny line: MulPos(-(b), (b * b)); MulNeg((b * b), b); assert (-(b)) * ((b * b)) == -(((b * b)) * (b));
// Lean step: b_eq
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — replaced the cert-piece body by `assert 0.0 < -(b);` (goal 0.0 < 0.0 - b is linear from b < 0.0). Observed: the original MulPos(-(b), b*b) call is reported as failing its second precondition `0.0 < b*b` even with `assert 0.0 < b * b;` passing on the line immediately before (runs t1, t2); cause not diagnosed
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_362.dfy"
lemma {:induction false} vc_mathd_algebra_362_L217(b: real)
  requires b < 0.0
  requires 0.0 < b * b
  ensures   (0.0 < 0.0 - b)
{
  assert 0.0 < -(b);  // [ADDED]
}


