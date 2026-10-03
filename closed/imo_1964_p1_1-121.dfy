// CLOSED LEMMA for failing line imo_1964_p1_1-121 (theorem imo_1964_p1_1, Dafny line 121, OOR)
// closes with: K2 (computation) — single
// added: MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy kinds/work/shard_025/libpow
// Dafny: finished with 88 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/imo_1964_p1_1-121/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/libpow/out/imo_1964_p1_1.dfy"

lemma {:induction false} K2pow_L121(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  requires orderOf(2, 7) == 3
  requires Int.pow(2, n) % 7 == 1 % 7
  requires 0 < 3
  requires 0 <= 3
  requires 0 < 3
  requires (n % 3 == 0) == (exists q: nat :: n == 3 * q)
  requires 1 == 1
  requires 0 <= n % 3 + 3 * (n / 3)
  requires Int.pow(2, n % 3 + 3 * (n / 3)) % 7 == 1 % 7
  requires 0 <= n % 3
  requires Int.pow(2 % 7, n % 3) % 7 == 1
  requires n % 3 == 1
  requires n % 3 == 0 || n % 3 == 1 || n % 3 == 2
  requires 3 != 0
  requires 0 <= n / 3
  requires 7 >= 1
  requires Int.pow(8, n / 3) % 7 == Int.pow(8 % 7, n / 3) % 7
  requires 0 <= 2
  requires Int.pow(2, 1) == 2
  requires 0 <= 3 * (n / 3)
  requires Int.pow(2, n % 3 + 3 * (n / 3)) == Int.pow(2, n % 3) * Int.pow(2, 3 * (n / 3))
  requires Int.pow(2, 3 * (n / 3)) == Int.pow(Int.pow(2, 3), n / 3)
  requires Int.pow(1, n / 3) == 1
  requires 7 > 0
  requires 0 <= Int.pow(2, n % 3)
  requires 0 <= Int.pow(8, n / 3)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n % 3) * Int.pow(8, n / 3) % 7 == Int.pow(2, n % 3) % 7 * (Int.pow(8, n / 3) % 7) % 7
  requires Int.pow(2, n % 3) % 7 == Int.pow(2 % 7, n % 3) % 7
  requires ((n % 3 != 0) && (3 > 0) && (3 > 0) && (n % 3 + 3 * (n / 3) == n)) || ((n % 3 != 0) && (!(3 > 0))) || ((n % 3 == 0) && (3 > 0) && (3 > 0) && (n % 3 + 3 * (n / 3) == n)) || ((n % 3 == 0) && (!(3 > 0)))
  ensures  n % 3 == 0
{

}
