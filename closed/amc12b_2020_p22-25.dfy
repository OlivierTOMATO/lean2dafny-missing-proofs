// CLOSED — failing line amc12b_2020_p22-25: theorem amc12b_2020_p22, Dafny line 25 (ERR: a precondition for this call could not be proved)
// failing Dafny line: MulPos(Real.rpow(2.0, t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
// Lean step: h₃
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// how it closes: pass2 — RealRpowPosOfPos(2.0, t) (library lemma for Real.rpow_pos_of_pos) gives 0 < 2^t directly; the original MulPos call (whose precondition 0 < 2^t*2^t Z3 could not re-match) is dropped from the body
// Dafny: finished with 2 verified, 0 errors in 1.5 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p22.dfy"
lemma {:induction false} vc_amc12b_2020_p22_L25(t: real)
  requires 0.0 < Real.rpow(2.0, t) * Real.rpow(2.0, t)
  ensures   (0.0 < Real.rpow(2.0, t))
{
  RealRpowPosOfPos(2.0, t);  // [ADDED]
}
