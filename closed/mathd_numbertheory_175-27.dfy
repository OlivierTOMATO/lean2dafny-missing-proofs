// CLOSED LEMMA for failing line mathd_numbertheory_175-27 (theorem mathd_numbertheory_175, Dafny line 27, OOR)
// closes with: K2 (computation) — single
// added: kinds/work/shard_039/_lib_nopowpost (MathPrelude Int.pow without `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)`; only change)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_039/mathd_numbertheory_175-27/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../_lib_nopowpost/library_new.dfy"

lemma {:induction false} vc_mathd_numbertheory_175_L27_K2pow(n: int)
  requires 0 <= n
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(6, n - 1 + 1) % 10 == 6
  requires 1 <= n
  requires 0 <= n + 1
  ensures  Int.pow(6, n + 1) % 10 == 6
{
}
