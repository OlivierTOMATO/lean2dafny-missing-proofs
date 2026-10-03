// CLOSED — failing line amc12a_2021_p14-79: theorem amc12a_2021_p14, Dafny line 79 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k, 2))), Real.log(Real.pow(5.0, k))));
// Lean step: rw [Real.logb]
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — RealLogbUnfold(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2)));  (Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args; library RealLogbUnfold = Mathlib Real.log_div_log)
// Dafny: finished with 10 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L79(k_0_0: nat)
  requires 0 <= k_0_0
  requires 0 <= 1
  requires 0 <= 20
  requires k_0_0 in IccN(1, 20)
  requires 1 <= k_0_0
  requires k_0_0 <= 20
  requires k_0_0 >= 1
  requires 0 <= 2
  requires 0 <= Int.pow(k_0_0, 2)
  ensures   Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
{
  RealLogbUnfold(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2)));  // Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args  // [ADDED]
}

