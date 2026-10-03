// NOT CLOSED — failing line imo_1974_p5-636: theorem imo_1974_p5, Dafny line 636 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: lower_bound
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 2 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L636(a: real, b: real, c: real, d: real)
  requires 0.0 < a * b
  requires 0.0 < c * d
  ensures   0.0 < a * b * (c * d)
{
  MulPos((a * b), (c * d));
}

