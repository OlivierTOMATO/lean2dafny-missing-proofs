// CLOSED LEMMA for failing line amc12_2001_p5-31 (theorem amc12_2001_p5, Dafny line 31, OOR)
// closes with: K3 (locality) — single
// added: dropped the 2 requires mentioning Int.pow/factorial (h_main facts, unused by Lean's congr/ext/simp proof of this step); kept the pointwise ∀ fact and path conditions
// Dafny: finished with 57 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_009/amc12_2001_p5-31/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_009 ablation K3 for amc12_2001_p5 line 31; base = /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12_2001_p5/L31.dfy (main lemma only)
include "../../../../../wt_integ5/out/amc12_2001_p5.dfy"

lemma {:induction false} k_L31_K3(x_1_0_0: int, x_1_0_2: int)
  requires 0 <= 5000
  requires 0 <= 10000
  requires forall x_1_0_0_0_1: nat :: true ==> !Even(x_1_0_0_0_1) == (x_1_0_0_0_1 % 2 == 1)
  requires ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (x_1_0_2 < 0)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (x_1_0_2 < 0)) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (x_1_0_2 < 0)) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((x_1_0_0 < 0) && (x_1_0_2 < 0))
  ensures  (set y_1: nat | y_1 in range(10000) && !Even(y_1)) == (set y_1_0_7: nat | y_1_0_7 in range(10000) && y_1_0_7 % 2 == 1)
{
}
