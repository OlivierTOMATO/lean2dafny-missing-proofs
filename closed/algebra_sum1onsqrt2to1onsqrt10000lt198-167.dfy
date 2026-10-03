// CLOSED — failing line algebra_sum1onsqrt2to1onsqrt10000lt198-167: theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 167 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(IccN(2, 2), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0)))) by {
// Lean step: norm_num [Finset.sum_Icc_succ_top]
// hypotheses: 7 facts Z3 had at the line (the base file's 8th, `IccN(2, 2) == {2}`, was truncated by the generator and is DROPPED here, not reconstructed; the base file had NO ensures either — the ensures below is taken verbatim from the `failing Dafny line` above); nothing assumed beyond the facts in scope
// how it closes: pass2 — restored the missing ensures verbatim from the failing line (the base file was a parse error: truncated hypothesis, no ensures); dropped the truncated hypothesis; added assert IccN(2,2) == {2} (from the existing FinsetIccSelfNat(2) cite), new exact-Mathlib axiom FinsetSumSingletonNat (Finset.sum_singleton at alpha = nat, beta = real), then assert sum == f(2) and (2 as real) - 1.0 == 1.0
// Dafny: Dafny program verifier finished with 14 verified, 0 errors  (2.11 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167(n: int, n_1_0_1_0: int, n_1_0_1_0_1_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n == 1
  requires 0 <= 2
  ensures   Real.sum(IccN(2, 2), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0))
{
      FinsetIccSelfNat(2);
      assert IccN(2, 2) == {2};  // [ADDED]
      NatCastOne();
      FinsetSumSingletonNat(2, ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))));  // [ADDED]
      assert Real.sum(IccN(2, 2), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt((2 as real)) - Real.sqrt((2 as real) - 1.0));  // [ADDED]
      assert (2 as real) - 1.0 == 1.0;  // [ADDED]
}

// Lean: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x in {a}, f x = f a   (α = ℕ, β = ℝ)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)  // [ADDED DECLARATION]
  ensures Real.sum({a}, f) == f(a)
