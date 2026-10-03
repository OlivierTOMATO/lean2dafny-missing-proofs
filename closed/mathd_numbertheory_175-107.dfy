// CLOSED LEMMA for failing line mathd_numbertheory_175-107 (theorem mathd_numbertheory_175, Dafny line 107, OOR)
// closes with: K3 (locality) — single
// added: no requires (norm_num used no hypothesis)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_039/mathd_numbertheory_175-107/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_175.dfy"

lemma {:induction false} vc_mathd_numbertheory_175_L107_K3()
  ensures  2 * 2 % 10 == 4
{
}
