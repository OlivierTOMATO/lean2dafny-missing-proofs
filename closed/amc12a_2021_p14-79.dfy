// CLOSED LEMMA for failing line amc12a_2021_p14-79 (theorem amc12a_2021_p14, Dafny line 79, ERR)
// closes with: K1 (instance) — single
// added: RealLogbUnfold(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2)));  (Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args; library RealLogbUnfold = Mathlib Real.log_div_log)
// Dafny: finished with 10 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-79/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: K1
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12a_2021_p14/L79.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

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
  ensures  Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
{
  RealLogbUnfold(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2)));  // Lean rw [Real.logb] = Real.logb.eq_1 at Lean's recorded args
}
