// NOT CLOSED — failing line amc12b_2021_p18-101: theorem amc12b_2021_p18, Dafny line 101 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₂
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p18.dfy"
lemma {:induction false} vc_amc12b_2021_p18_L101(z: Complex.complex)
  requires 6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z)) < 0.0
  ensures   0.0 < (6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z))) * (6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z)))
{
  MulPos(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), -((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); MulNeg(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) == -((-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) == -(((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))));
}

