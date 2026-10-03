// CLOSED LEMMA for failing line imo_1964_p1_1-45 (theorem imo_1964_p1_1, Dafny line 45, OOR)
// closes with: K2 (computation) — single
// added: MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy kinds/work/shard_025/libpow
// Dafny: finished with 38 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/imo_1964_p1_1-45/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/libpow/out/imo_1964_p1_1.dfy"

lemma {:induction false} K2pow_L45(m_1_0_0: nat, n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  ensures  ((((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (3 <= m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (m_1_0_0 < 0)) || (2 * 2 * 2 % 7 != 1 % 7)) ==> (2 * 2 * 2 % 7 == 1 % 7))
        && ((((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (0 <= m_1_0_0) && (3 <= m_1_0_0)) || ((2 * 2 * 2 % 7 == 1 % 7) && (m_1_0_0 < 0)) || (2 * 2 * 2 % 7 != 1 % 7)) ==> (forall m_1_0_1: nat :: m_1_0_1 < 3 ==> 0 < m_1_0_1 ==> Int.pow(2, m_1_0_1) % 7 != 1 % 7))
{

}
