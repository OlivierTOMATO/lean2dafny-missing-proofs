// CLOSED — failing line amc12a_2021_p14-484: theorem amc12a_2021_p14, Dafny line 484 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0)));
// Lean step: rw [Real.logb]
// hypotheses: 7 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — RealLogbUnfold(5.0, 3.0)  (rw [Real.logb] = Real.logb.eq_1 at (5,3), exec 2182)
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L484()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  ensures   Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))
{
  RealLogbUnfold(5.0, 3.0);  // rw [Real.logb]: Real.logb.eq_1 (5, 3) (exec 2182)  // [ADDED]
}

