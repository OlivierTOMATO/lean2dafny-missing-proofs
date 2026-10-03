// CLOSED LEMMA for failing line amc12a_2021_p14-168 (theorem amc12a_2021_p14, Dafny line 168, OOR)
// closes with: K2 (computation) — single
// added: libpow variant: Real.pow and Int.pow opaque, recursive ensures removed, explicit PowZero/PowSucc lemmas (work/shard_018/libpow)
// Dafny: finished with 52 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-168/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: K2pow
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2021_p14/L168.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/libpow/out/amc12a_2021_p14.dfy"

lemma {:induction false} vc_amc12a_2021_p14_L168(x_1_0_2: nat, x_1_0_3: int)
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires forall x_1_0_1: nat :: x_1_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, x_1_0_1), Real.pow(3.0, Int.pow(x_1_0_1, 2))) == (x_1_0_1 as real) * Real.logb(5.0, 3.0)
  requires forall x_1_0_4: int :: 0 <= x_1_0_4 ==> x_1_0_4 in IccN(1, 20) ==> (forall v_0_5_k: int :: true) && ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))).requires(x_1_0_4) && ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)).requires(x_1_0_4)
  requires forall x_1_0_4: int :: 0 <= x_1_0_4 ==> x_1_0_4 in IccN(1, 20) ==> (forall v_0_9_k: int :: true) && ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))).requires(x_1_0_4) && ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)).requires(x_1_0_4)
  requires ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (x_1_0_2 in IccN(1, 20)) && (0 <= 2) && (0 <= Int.pow(x_1_0_2, 2)) && (0 <= x_1_0_3) && (x_1_0_3 in IccN(1, 20))) || ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (x_1_0_2 in IccN(1, 20)) && (0 <= 2) && (0 <= Int.pow(x_1_0_2, 2)) && (0 <= x_1_0_3) && (!(x_1_0_3 in IccN(1, 20)))) || ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (x_1_0_2 in IccN(1, 20)) && (0 <= 2) && (0 <= Int.pow(x_1_0_2, 2)) && (x_1_0_3 < 0)) || ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (!(x_1_0_2 in IccN(1, 20))) && (0 <= x_1_0_3) && (x_1_0_3 in IccN(1, 20))) || ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (!(x_1_0_2 in IccN(1, 20))) && (0 <= x_1_0_3) && (!(x_1_0_3 in IccN(1, 20)))) || ((0 <= x_1_0_2) && (0 <= 1) && (0 <= 20) && (!(x_1_0_2 in IccN(1, 20))) && (x_1_0_3 < 0)) || ((x_1_0_2 < 0) && (0 <= x_1_0_3) && (0 <= 1) && (0 <= 20) && (x_1_0_3 in IccN(1, 20))) || ((x_1_0_2 < 0) && (0 <= x_1_0_3) && (0 <= 1) && (0 <= 20) && (!(x_1_0_3 in IccN(1, 20)))) || ((x_1_0_2 < 0) && (x_1_0_3 < 0))
  ensures  forall x_1_0_4: nat :: x_1_0_4 in IccN(1, 20) ==> ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))(x_1_0_4) == ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0))(x_1_0_4)
{

}
