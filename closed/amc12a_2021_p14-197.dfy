// CLOSED LEMMA for failing line amc12a_2021_p14-197 (theorem amc12a_2021_p14, Dafny line 197, ERR)
// closes with: K1+K3 (instance, locality) — multi
// added: lemma s018_Step197() ensures Real.sum(IccN(1, 20), (v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real)) == Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), (v_1_22_k: nat) => (v_1_22_k as real)) { FinsetMulSumPointwise(IccN(1, 20), (v_1_22_k: nat) => (v_1_22_k as real), (v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real), Real.logb(5.0, 3.0)); }  + call
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-197/P_K1K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: P_K1K3
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12a_2021_p14/L197.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

lemma {:induction false} vc_amc12a_2021_p14_L197()
  ensures  Real.sum(IccN(1, 20), ((v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real))) == Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real)))
{
  FinsetMulSumPointwise(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real)), ((v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real)), Real.logb(5.0, 3.0));
}
