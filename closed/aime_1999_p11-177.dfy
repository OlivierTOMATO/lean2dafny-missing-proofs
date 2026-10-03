// NOT CLOSED — failing line aime_1999_p11-177: theorem aime_1999_p11, Dafny line 177 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h_m_val
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 5); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L177(m: Rat.rat)
  requires m.to_real() * 2.0 - 175.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures   0.0 < (m.to_real() * 2.0 - 175.0) * (3.0 - Real.pi())
{
  MulPos(-((((m).to_real() * 2.0) - 175.0)), -((3.0 - Real.pi()))); MulNeg(-((((m).to_real() * 2.0) - 175.0)), (3.0 - Real.pi())); assert (-((((m).to_real() * 2.0) - 175.0))) * (-((3.0 - Real.pi()))) == -((-((((m).to_real() * 2.0) - 175.0))) * ((3.0 - Real.pi()))); assert (-((((m).to_real() * 2.0) - 175.0))) * ((3.0 - Real.pi())) == -(((((m).to_real() * 2.0) - 175.0)) * ((3.0 - Real.pi())));
}

