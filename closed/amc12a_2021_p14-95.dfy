// CLOSED LEMMA for failing line amc12a_2021_p14-95 (theorem amc12a_2021_p14, Dafny line 95, OOR)
// closes with: K2 (computation) — single
// added: libpow variant: Real.pow and Int.pow opaque, recursive ensures removed, explicit PowZero/PowSucc lemmas (work/shard_018/libpow)
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-95/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: K2pow
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2021_p14/L95.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/libpow/out/amc12a_2021_p14.dfy"

lemma {:induction false} vc_amc12a_2021_p14_L95(k_0_0: nat)
  requires 0 <= k_0_0
  requires 0 <= 1
  requires 0 <= 20
  requires k_0_0 in IccN(1, 20)
  requires 1 <= k_0_0
  requires k_0_0 <= 20
  requires k_0_0 >= 1
  requires 0 <= 2
  requires 0 <= Int.pow(k_0_0, 2)
  requires Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
  requires Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (Int.pow(k_0_0, 2) as real) * Real.log(3.0)
  requires ((k_0_0 * k_0_0) as real) * Real.log(3.0) == ((k_0_0 * k_0_0) as real) * Real.log(3.0)
  ensures  ((k_0_0 * k_0_0) as real) * Real.log(3.0) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
{

}
