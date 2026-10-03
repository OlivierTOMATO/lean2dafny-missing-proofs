// CLOSED LEMMA for failing line amc12b_2020_p21-698 (theorem amc12b_2020_p21, Dafny line 698, ERR)
// closes with: K3 (locality) — single
// added: only h9 and ℕ-nonnegativity of k,n
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_023/amc12b_2020_p21-698/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/amc12b_2020_p21.dfy"
// K3: norm_cast at h9 uses only h9 (and the N-typing of n, k)
lemma {:induction false} k3_698(k_0_0_0_0_0_0_0_0_5_0: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5_0
  requires 0 <= n_0_0_0_0
  requires (n_0_0_0_0 as real) < ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)
  ensures  n_0_0_0_0 < (k_0_0_0_0_0_0_0_0_5_0 + 16) * (k_0_0_0_0_0_0_0_0_5_0 + 16)
{ }
