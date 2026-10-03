// CLOSED LEMMA for failing line imo_1964_p1_1-40 (theorem imo_1964_p1_1, Dafny line 40, OOR)
// closes with: K1+K2 (instance, computation) — multi
// added: assert Int.pow(2, 1) == 2; assert Int.pow(2, 2) == 4; assert Int.pow(2, 3) == 8; OrderOfEqIff(2, 7, 3);
// Dafny: finished with 28 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_025/imo_1964_p1_1-40/K1K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/imo_1964_p1_1.dfy"

lemma {:induction false} K1K2_L40(m_1_0_0: nat, n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  requires 2 * 2 * 2 % 7 == 1 % 7
  requires forall m_1_0_1: nat :: m_1_0_1 < 3 ==> 0 < m_1_0_1 ==> Int.pow(2, m_1_0_1) % 7 != 1 % 7
  requires 0 < 3
  requires ((0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((0 <= m_1_0_0) && (3 <= m_1_0_0)) || (m_1_0_0 < 0)
  ensures  orderOf(2, 7) == 3
{
  assert Int.pow(2, 1) == 2; assert Int.pow(2, 2) == 4; assert Int.pow(2, 3) == 8;
  OrderOfEqIff(2, 7, 3);
}
