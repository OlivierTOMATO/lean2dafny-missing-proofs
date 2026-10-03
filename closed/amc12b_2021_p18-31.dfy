// NOT CLOSED — failing line amc12b_2021_p18-31: theorem amc12b_2021_p18, Dafny line 31 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₁
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p18.dfy"
lemma {:induction false} vc_amc12b_2021_p18_L31(z: Complex.complex)
  requires Complex.Re(z) + 1.0 < 0.0
  ensures   0.0 < (Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)
{
  MulPos(-((Complex.Re(z) + 1.0)), -((Complex.Re(z) + 1.0))); MulNeg(-((Complex.Re(z) + 1.0)), (Complex.Re(z) + 1.0)); assert (-((Complex.Re(z) + 1.0))) * (-((Complex.Re(z) + 1.0))) == -((-((Complex.Re(z) + 1.0))) * ((Complex.Re(z) + 1.0))); assert (-((Complex.Re(z) + 1.0))) * ((Complex.Re(z) + 1.0)) == -(((Complex.Re(z) + 1.0)) * ((Complex.Re(z) + 1.0)));
}

