// CLOSED LEMMA for failing line mathd_numbertheory_175-79 (theorem mathd_numbertheory_175, Dafny line 79, OOR)
// closes with: K2 (computation) — single
// added: kinds/work/shard_039/_lib_nopowpost (MathPrelude Int.pow without `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)`; only change)
// Dafny: finished with 18 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_039/mathd_numbertheory_175-79/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../_lib_nopowpost/library_new.dfy"

lemma {:induction false} vc_mathd_numbertheory_175_L79_K2pow()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  requires Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
  requires 10 != 0
  requires Int.pow(2 * 2 * 2 * 2, 502) % 10 == 6
  requires 2 * 2 % 10 == 4
  ensures  Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10 == 4
{
}
