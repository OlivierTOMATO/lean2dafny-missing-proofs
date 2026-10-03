// CLOSED — failing line algebra_sum1onsqrt2to1onsqrt10000lt198-212: theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 212 (ERR: assertion might not hold)
// failing Dafny line: assert (forall k: nat :: ((2 <= k) ==> ((k <= 10000) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))));
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.cast_add, Nat.cast_one, Nat.cast_zero, Nat.cast_succ]
// hypotheses: 28 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — forall k: nat | 2<=k<=10000 ensures <h₁ body> { assert 0<=k ==> k in IccN(2,10000) ==> <h₁ body>; }  — the instance of h₁ at k (checked)
// Dafny: finished with 15 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L212(k_1_0_1_0_1_0_0: int, n: int, n_1_0_1_0: int, n_1_0_1_0_0: int, n_1_0_1_0_1_0: int, n_1_0_1_0_1_0_0: int)
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
  requires ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0))
  ensures   forall k_1_0_1_0_1_0_1: nat :: 2 <= k_1_0_1_0_1_0_1 ==> k_1_0_1_0_1_0_1 <= 10000 ==> Real.div(1.0, Real.sqrt((k_1_0_1_0_1_0_1 as real))) < 2.0 * (Real.sqrt((k_1_0_1_0_1_0_1 as real)) - Real.sqrt((k_1_0_1_0_1_0_1 as real) - 1.0))
{
  forall k: nat | 2 <= k <= 10000
    ensures Real.div(1.0, Real.sqrt((k as real))) < 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))
  {
    // instance of h₁ at k (requires #4)
    assert 0 <= k ==> k in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k as real))) < 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0));
  }
}

