// CLOSED LEMMA for failing line mathd_numbertheory_175-71 (theorem mathd_numbertheory_175, Dafny line 71, OOR)
// closes with: K5 (automation lemma) — single
// added: NatMulMod(Int.pow(2 * 2 * 2 * 2, 502), 2 * 2, 10);  (Nat.mul_mod, simp hint lemma)
// Dafny: finished with 16 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_039/mathd_numbertheory_175-71/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_175.dfy"

lemma {:induction false} vc_mathd_numbertheory_175_L71_K5()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  ensures  Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
{
  NatMulMod(Int.pow(2 * 2 * 2 * 2, 502), 2 * 2, 10);
}
