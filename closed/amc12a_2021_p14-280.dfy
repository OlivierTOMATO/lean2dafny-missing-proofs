// CLOSED — failing line amc12a_2021_p14-280: theorem amc12a_2021_p14, Dafny line 280 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)) == Real.div(Real.log(Real.pow(25.0, k)), Real.log(Real.pow(9.0, k))));
// Lean step: rw [Real.logb]
// hypotheses: 7 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — RealLogbUnfold(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0));  (Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args; library RealLogbUnfold = Mathlib Real.log_div_log)
// Dafny: finished with 11 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L280(k_2_0: nat)
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires 0 <= k_2_0
  requires 0 <= 100
  requires k_2_0 in IccN(1, 100)
  ensures   Real.logb(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0)) == Real.div(Real.log(Real.pow(25.0, k_2_0)), Real.log(Real.pow(9.0, k_2_0)))
{
  RealLogbUnfold(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0));  // Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args  // [ADDED]
}

