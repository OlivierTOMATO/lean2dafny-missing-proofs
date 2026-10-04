// NOT CLOSED — failing line mathd_algebra_362-217: theorem mathd_algebra_362, Dafny line 217 (ERR: a precondition for this call could not be proved)
// failing Dafny line: MulPos(-(b), (b * b)); MulNeg((b * b), b); assert (-(b)) * ((b * b)) == -(((b * b)) * (b));
// Lean step: b_eq
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_362.dfy"
lemma {:induction false} vc_mathd_algebra_362_L217(b: real)
  requires b < 0.0
  requires 0.0 < b * b
  ensures  (0.0 < 0.0 - b) && ((0.0 < 0.0 - b) ==> (0.0 < b * b))
{
  MulPos(-(b), (b * b)); MulNeg((b * b), b); assert (-(b)) * ((b * b)) == -(((b * b)) * (b));
}

