// CLOSED LEMMA for failing line amc12a_2021_p22-1858 (theorem amc12a_2021_p22, Dafny line 1858, OOR)
// closes with: K3 (locality) — single
// added: requires reduced to the SqNonneg postcondition (sufficiency test)
// Dafny: finished with 9 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_021/amc12a_2021_p22-1858/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_021 ablation amc12a_2021_p22-1858 variant K3
// K3: only the SqNonneg fact (cited lemma postcondition)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p22.dfy"

lemma {:induction false} vc_amc12a_2021_p22_L1858(a: real, b: real, c: real, f: real -> real)
  requires 0.0 <= (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0))
  ensures  0.0 <= (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0))
{

}
