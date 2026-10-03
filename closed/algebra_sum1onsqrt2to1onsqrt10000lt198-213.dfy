// CLOSED LEMMA for failing line algebra_sum1onsqrt2to1onsqrt10000lt198-213 (theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 213, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetSumIccSuccTopNat(2, m+1, summand) — recorded Finset.sum_Icc_succ_top instance (exec 686)
// Dafny: finished with 16 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_sum1onsqrt2to1onsqrt10000lt198-213/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate shard_008 K5] algebra_sum1onsqrt2to1onsqrt10000lt198-213: K5: simp_all's Finset.sum_Icc_succ_top instance (recorded, exec 686) as a lemma call
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"


lemma {:induction false} K8_K5_algebra_sum1onsqrt2to1onsqrt10000lt198_213(k_1_0_1_0_1_0_0: int, n: int, n_1_0_1_0: int, n_1_0_1_0_0: int, n_1_0_1_0_1_0: int, n_1_0_1_0_1_0_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n != 1
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n - 1 >= 1
  requires Real.sum(IccN(2, n - 1 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n - 1 + 1) as real)) - Real.sqrt(1.0))
  requires 2 <= n
  requires n != 0
  requires n_1_0_1_0_0 == n - 1
  requires 2 <= n_1_0_1_0_0 + 1
  requires 0 <= 2
  requires Real.sum(IccN(2, n_1_0_1_0_0 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n_1_0_1_0_0 + 1) as real)) - Real.sqrt(1.0))
  requires n_1_0_1_0_0 != 0
  requires 0 <= n_1_0_1_0_0 - 1
  requires n_1_0_1_0_1_0_0 == n_1_0_1_0_0 - 1
  requires 2 <= n_1_0_1_0_1_0_0 + 1 + 1
  requires Real.sum(IccN(2, n_1_0_1_0_1_0_0 + 1 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n_1_0_1_0_1_0_0 + 1 + 1) as real)) - Real.sqrt(1.0))
  requires 0 <= n_1_0_1_0_1_0_0 + 1
  requires ((n_1_0_1_0_1_0_0 + 1 + 1) as real) == ((n_1_0_1_0_1_0_0 + 1) as real) + 1.0
  requires ((n_1_0_1_0_1_0_0 + 1) as real) == (n_1_0_1_0_1_0_0 as real) + 1.0
  requires 0 <= n_1_0_1_0_1_0_0 + 2
  requires ((n_1_0_1_0_1_0_0 + 2 + 1) as real) == ((n_1_0_1_0_1_0_0 + 2) as real) + 1.0
  requires forall k_1_0_1_0_1_0_1: nat :: 2 <= k_1_0_1_0_1_0_1 ==> k_1_0_1_0_1_0_1 <= 10000 ==> Real.div(1.0, Real.sqrt((k_1_0_1_0_1_0_1 as real))) < 2.0 * (Real.sqrt((k_1_0_1_0_1_0_1 as real)) - Real.sqrt((k_1_0_1_0_1_0_1 as real) - 1.0))
  requires ((0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0))
  ensures  Real.sum(IccN(2, n_1_0_1_0_1_0_0 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) + 2.0 * (Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0 + 1.0) - Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0)) == 2.0 * (Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0 + 1.0) - 1.0)
{
  FinsetSumIccSuccTopNat(2, n_1_0_1_0_1_0_0 + 1, ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))));  // K5: Finset.sum_Icc_succ_top instance recorded at exec 686 (simp_all)
}
