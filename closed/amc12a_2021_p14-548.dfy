// CLOSED — failing line amc12a_2021_p14-548: theorem amc12a_2021_p14, Dafny line 548 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (((210.0 * Real.logb(5.0, 3.0)) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) by {
// Lean step: rw [show (∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 100 * Real.logb 3 5 by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — the hypothesis S100 == 100*logb 3 5 (h4) is not in the requires (removed as the block's own assert), so it is re-derived by a PROVED helper b6_sum100 from h3 (∀k∈Icc 1 100, logb(9^k,25^k)=logb 3 5): FinsetSumApply (Finset.sum_congr) to the constant summand, a proved helper b6_cardIccN(n) (|IccN(1,n)|==n by induction), FinsetSumConst (Finset.sum_const); main body: b6_sum100(); assert 210*a*(100*b) == 21000*(a*b) with a*b==1 (h5). Library: the opaque-pow variant (alt/amc12a_2021_p14-168 copy) — with the standard library the recursive Real.pow/Int.pow ensures in h1/h3 send Z3 out of resource
// Dafny: finished with 44 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Real.pow/Int.pow): see alt/amc12a_2021_p14-548/LIBRARY_CHANGES.diff

include "alt/amc12a_2021_p14-548/out/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L548()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
  ensures   210.0 * Real.logb(5.0, 3.0) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 21000.0

{
  b6_sum100(0);  // [ADDED]
  var a := Real.logb(5.0, 3.0);  // [ADDED]
  var b := Real.logb(3.0, 5.0);  // [ADDED]
  assert 210.0 * a * (100.0 * b) == 21000.0 * (a * b);  // [ADDED]
}

lemma {:induction false} b6_sum100(dummy: int)  // [ADDED DECLARATION]
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  ensures Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
{
  assert forall x :: x in IccN(1, 100) ==> (((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))(x) == (((k: nat) => Real.logb(3.0, 5.0)))(x);
  FinsetSumApply(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))), ((k: nat) => Real.logb(3.0, 5.0)));  // cite: Finset.sum_congr
  b6_cardIccN(100);
  FinsetSumConst(IccN(1, 100), Real.logb(3.0, 5.0));  // cite: Finset.sum_const
}

lemma b6_cardIccN(n: nat)  // [ADDED DECLARATION]
  ensures |IccN(1, n)| == n
{
  if n == 0 {
    assert IccN(1, 0) == {};
  } else {
    b6_cardIccN(n - 1);
    assert IccN(1, n) == IccN(1, n - 1) + {n};
    assert n !in IccN(1, n - 1);
  }
}
