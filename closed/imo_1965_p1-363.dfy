// NOT CLOSED — failing line imo_1965_p1-363: theorem imo_1965_p1, Dafny line 363 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₅
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1965_p1.dfy"
lemma {:induction false} vc_imo_1965_p1_L363(x: real)
  requires Real.sqrt(2.0 - 2.0 * abs(Real.cos(2.0 * x))) - 2.0 * Real.cos(x) < 0.0
  ensures   0.0 < (Real.sqrt(2.0 - 2.0 * abs(Real.cos(2.0 * x))) - 2.0 * Real.cos(x)) * (Real.sqrt(2.0 - 2.0 * abs(Real.cos(2.0 * x))) - 2.0 * Real.cos(x))
{
  MulPos(-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))), -((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))); MulNeg(-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))), (Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))); assert (-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))) * (-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))) == -((-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))) * ((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))); assert (-((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x))))) * ((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))) == -(((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))) * ((Real.sqrt((2.0 - (2.0 * abs(Real.cos((2.0 * x)))))) - (2.0 * Real.cos(x)))));
}

