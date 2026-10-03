// CLOSED LEMMA for failing line algebra_sum1onsqrt2to1onsqrt10000lt198-167 (theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 167, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetSumSingletonNatK8(2, summand) — norm_num internal Finset.sum_singleton, exact Mathlib at ℕ added to work copy
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_sum1onsqrt2to1onsqrt10000lt198-167/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate shard_008 K5] algebra_sum1onsqrt2to1onsqrt10000lt198-167: K5: norm_num's internal Finset.sum_singleton application, exact Mathlib statement at ℕ
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"

// Mathlib: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x ∈ {a}, f x = f a  (α = ℕ; added to the work copy)
lemma {:axiom} FinsetSumSingletonNatK8(a: nat, f: nat -> real)
  ensures Real.sum({a}, f) == f(a)

lemma {:induction false} K8_K5_algebra_sum1onsqrt2to1onsqrt10000lt198_167(n: int, n_1_0_1_0: int, n_1_0_1_0_1_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n == 1
  requires 0 <= 2
  requires IccN(2, 2) == {2}
  requires (1 as real) == 1.0
  ensures  Real.sum(IccN(2, 2), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0))
{
  FinsetSumSingletonNatK8(2, ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))));  // K5: Finset.sum_singleton, applied inside norm_num (exec 628, internal)
}
