// NOT CLOSED — failing line amc12_2000_p20-483: theorem amc12_2000_p20, Dafny line 483 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₁₃
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2000_p20.dfy"
lemma {:induction false} vc_amc12_2000_p20_L483(x: real)
  requires 2.0 * x - 1.0 * 3.0 < 0.0
  ensures   0.0 < (2.0 * x - 1.0 * 3.0) * (2.0 * x - 1.0 * 3.0)
{
  MulPos(-(((2.0 * x) - (1.0 * 3.0))), -(((2.0 * x) - (1.0 * 3.0)))); MulNeg(-(((2.0 * x) - (1.0 * 3.0))), ((2.0 * x) - (1.0 * 3.0))); assert (-(((2.0 * x) - (1.0 * 3.0)))) * (-(((2.0 * x) - (1.0 * 3.0)))) == -((-(((2.0 * x) - (1.0 * 3.0)))) * (((2.0 * x) - (1.0 * 3.0)))); assert (-(((2.0 * x) - (1.0 * 3.0)))) * (((2.0 * x) - (1.0 * 3.0))) == -((((2.0 * x) - (1.0 * 3.0))) * (((2.0 * x) - (1.0 * 3.0))));
}

