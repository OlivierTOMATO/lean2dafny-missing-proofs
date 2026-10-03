// CLOSED — failing line mathd_algebra_756-438: theorem mathd_algebra_756, Dafny line 438 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.rpow(3.0, 5.0) == 243.0);
// Lean step: norm_num [Real.rpow_def_of_pos, Real.rpow_def_of_nonneg, Real.log_pow]
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RealRpowNatCast(3.0, 5);
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_756.dfy"
lemma {:induction false} vc_mathd_algebra_756_L438(a: real, b: real)
  requires Real.rpow(2.0, a) == 32.0
  requires Real.rpow(a, b) == 125.0
  requires a > 0.0
  requires a == 5.0
  requires b == 3.0
  ensures   Real.rpow(3.0, 5.0) == 243.0
{
  RealRpowNatCast(3.0, 5);
}

