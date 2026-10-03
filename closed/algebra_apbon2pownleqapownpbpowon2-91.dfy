// NOT CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-91: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 91 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₅
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 8); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L91(a: real, b: real, k: nat, n: int)
  requires b - a <= 0.0
  requires Real.pow(b, k) - Real.pow(a, k) <= 0.0
  ensures   0.0 <= (b - a) * (Real.pow(b, k) - Real.pow(a, k))
{
  MulNonneg(-((b - a)), -((Real.pow(b, k) - Real.pow(a, k)))); MulNeg(-((b - a)), (Real.pow(b, k) - Real.pow(a, k))); assert (-((b - a))) * (-((Real.pow(b, k) - Real.pow(a, k)))) == -((-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k)))); assert (-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k))) == -(((b - a)) * ((Real.pow(b, k) - Real.pow(a, k))));
}

