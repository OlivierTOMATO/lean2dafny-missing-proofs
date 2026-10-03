// CLOSED — failing line algebra_sum1onsqrt2to1onsqrt10000lt198-213: theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 213 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.sum(IccN(2, (n + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) + (2.0 * (Real.sqrt((((n as real) + 1.0) + 1.0)) - Real.sqrt(((n as real) + 1.0))))
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.cast_add, Nat.cast_one, Nat.cast_zero, Nat.cast_succ]
// hypotheses: 30 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — body replaced by the single library call FinsetSumIccSuccTopNat(2, n_1_0_1_0_1_0_0 + 1, f) (Mathlib Finset.sum_Icc_succ_top, the instance Lean's simp_all recorded at exec 686); peels f(n+2) off the sum hypothesis, the rest is linear
// Dafny: Dafny program verifier finished with 16 verified, 0 errors  (2.23 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L213(k_1_0_1_0_1_0_0: int, n: int, n_1_0_1_0: int, n_1_0_1_0_0: int, n_1_0_1_0_1_0: int, n_1_0_1_0_1_0_0: int)
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
  ensures   Real.sum(IccN(2, n_1_0_1_0_1_0_0 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) + 2.0 * (Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0 + 1.0) - Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0)) == 2.0 * (Real.sqrt((n_1_0_1_0_1_0_0 as real) + 1.0 + 1.0) - 1.0)
{
  FinsetSumIccSuccTopNat(2, n_1_0_1_0_1_0_0 + 1, ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))));  // [ADDED]
}
