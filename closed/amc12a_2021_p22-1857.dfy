// CLOSED LEMMA for failing line amc12a_2021_p22-1857 (theorem amc12a_2021_p22, Dafny line 1857, OOR)
// closes with: K3 (locality) — single
// added: requires reduced to the two premises of Lean piece (0<=s, E==0) (sufficiency test)
// Dafny: finished with 27 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_021/amc12a_2021_p22-1857/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_021 ablation amc12a_2021_p22-1857 variant K3
// K3: only the two premises of Lean piece (0<=s, E==0); sufficiency test
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p22.dfy"

lemma {:induction false} vc_amc12a_2021_p22_L1857(a: real, b: real, c: real, f: real -> real)
  requires 0.0 <= (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0))
  requires 1.0 * (1.0 * Real.cos(2.0 * Real.pi() / 7.0) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0))) + (0.0 - (1.0 * Real.cos(2.0 * Real.pi() / 7.0) + 1.0 * Real.cos(4.0 * Real.pi() / 7.0) + 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * (1.0 * Real.cos(2.0 * Real.pi() / 7.0) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0))))) + 1.0 * b * (1.0 * Real.cos(2.0 * Real.pi() / 7.0)) + 1.0 * c == 0.0
  ensures  0.0 - (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(4.0 * Real.pi() / 7.0) - 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * (1.0 * Real.cos(2.0 * Real.pi() / 7.0) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0)) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0))) + (0.0 - (1.0 * Real.cos(2.0 * Real.pi() / 7.0) + 1.0 * Real.cos(4.0 * Real.pi() / 7.0) + 1.0 * Real.cos(6.0 * Real.pi() / 7.0)) * (1.0 * (1.0 * Real.cos(2.0 * Real.pi() / 7.0) * (1.0 * Real.cos(2.0 * Real.pi() / 7.0))))) + 1.0 * b * (1.0 * Real.cos(2.0 * Real.pi() / 7.0)) + 1.0 * c) == 0.0
{

}
