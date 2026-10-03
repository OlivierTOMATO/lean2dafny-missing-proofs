// CLOSED LEMMA for failing line imo_1964_p1_1-27 (theorem imo_1964_p1_1, Dafny line 27, OOR)
// closes with: K2 (computation) — single
// added: MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy kinds/work/shard_025/libpow
// Dafny: finished with 20 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/imo_1964_p1_1-27/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/libpow/out/imo_1964_p1_1.dfy"

lemma {:induction false} K2pow_L27(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires IntDvd(7, tsub(Int.pow(2, n), 1))
  requires IntDvd(7, Int.pow(2, n) - 1)
  requires 0 <= 2
  requires Int.pow(2, n) == Int.pow(2, n)
  requires 0 <= 7
  requires (exists k: int :: tsub(Int.pow(2, n), 1) == 7 * k) == (exists k_1: nat :: tsub(Int.pow(2, n), 1) == 7 * k_1)
  ensures  Int.pow(2, n) % 7 == 1
{

}
