// CLOSED LEMMA for failing line amc12a_2021_p14-280 (theorem amc12a_2021_p14, Dafny line 280, ERR)
// closes with: K1 (instance) — single
// added: RealLogbUnfold(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0));  (Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args; library RealLogbUnfold = Mathlib Real.log_div_log)
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-280/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: K1
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12a_2021_p14/L280.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

lemma {:induction false} vc_amc12a_2021_p14_L280(k_2_0: nat)
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires 0 <= k_2_0
  requires 0 <= 100
  requires k_2_0 in IccN(1, 100)
  ensures  Real.logb(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0)) == Real.div(Real.log(Real.pow(25.0, k_2_0)), Real.log(Real.pow(9.0, k_2_0)))
{
  RealLogbUnfold(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0));  // Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args
}
