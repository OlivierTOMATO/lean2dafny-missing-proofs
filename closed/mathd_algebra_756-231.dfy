// CLOSED — failing line mathd_algebra_756-231: theorem mathd_algebra_756, Dafny line 231 (ERR: assertion might not hold)
// failing Dafny line: assert ((a * Real.log(2.0)) == Real.log(32.0));
// Lean step: rw [Real.log_rpow (by norm_num : (2 : ℝ) > 0)] at h₄
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — RealLogRpow(2.0, a);
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_756.dfy"
lemma {:induction false} vc_mathd_algebra_756_L231(a: real, b: real)
  requires Real.rpow(2.0, a) == 32.0
  requires Real.rpow(a, b) == 125.0
  requires a > 0.0
  requires Real.log(Real.rpow(2.0, a)) == Real.log(32.0)
  requires 2.0 > 0.0
  ensures   a * Real.log(2.0) == Real.log(32.0)
{
  RealLogRpow(2.0, a);  // [ADDED]
}

