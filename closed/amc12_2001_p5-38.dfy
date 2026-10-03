// CLOSED LEMMA for failing line amc12_2001_p5-38 (theorem amc12_2001_p5, Dafny line 38, OOR)
// closes with: K3 (locality) — single
// added: dropped the 2 requires mentioning Int.pow/factorial; kept 0 <= x (Lean simp used no hypotheses)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_009/amc12_2001_p5-38/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_009 ablation K3 for amc12_2001_p5 line 38; base = /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12_2001_p5/L38.dfy (main lemma only)
include "../../../../../wt_integ5/out/amc12_2001_p5.dfy"

lemma {:induction false} k_L38_K3(x_1_0_0_0_0: int)
  requires 0 <= 5000
  requires 0 <= 10000
  requires 0 <= x_1_0_0_0_0
  ensures  !Even(x_1_0_0_0_0) == (x_1_0_0_0_0 % 2 == 1)
{
}
