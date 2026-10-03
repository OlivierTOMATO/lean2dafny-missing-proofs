// CLOSED — failing line amc12b_2021_p18-41: theorem amc12b_2021_p18, Dafny line 41 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₁
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// how it closes: pass2 — forall-statement over a real variable d (d != 0.0 ==> 0.0 < Real.pow(d, 2) && Real.pow(d, 2) == d * d, proved by library SqPosOfNeZero(d) at the variable) + assert 0.0 < Real.pow(Complex.Re(z) + 1.0, 2): E-matching on Real.pow instantiates d := the goal's factor textually, so the square in the ensures is obtained syntactically (a direct SqPosOfNeZero/MulPos call with the compound factor binds a fresh variable and Z3's nonlinear core cannot equate the two products)
// Dafny: finished with 12 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.7 s)

include "../dafny/amc12b_2021_p18.dfy"
lemma {:induction false} vc_amc12b_2021_p18_L41(z: Complex.complex)
  requires 0.0 < Complex.Re(z) + 1.0
  ensures   0.0 < (Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)
{
  MulPos((Complex.Re(z) + 1.0), (Complex.Re(z) + 1.0));
  // pass2: square positivity obtained syntactically via E-matching on Real.pow (see header)
  forall d: real | d != 0.0 ensures 0.0 < Real.pow(d, 2) && Real.pow(d, 2) == d * d  // [ADDED]
  { SqPosOfNeZero(d); assert Real.pow(d, 1) == d; }  // [ADDED]
  assert 0.0 < Real.pow(Complex.Re(z) + 1.0, 2);  // [ADDED]
}
