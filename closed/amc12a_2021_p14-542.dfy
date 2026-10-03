// CLOSED — failing line amc12a_2021_p14-542: theorem amc12a_2021_p14, Dafny line 542 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert ((Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000
// Lean step: rw [show (∑ k in Finset.Icc 1 20, Real.logb (5 ^ k) (3 ^ k ^ 2)) = 210 * Real.logb 5 3 by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — the hypothesis S20 == 210*logb 5 3 (h2) is not in the requires (removed as the block's own assert), so it is re-derived by PROVED helpers: b6_sum20 from h1 via FinsetMulSumPointwise (Finset.mul_sum + sum_congr; b = logb 5 3, f = k ↦ k) and b6_sumId20 (= the line-219 proof: FinsetIccSelfNat, FinsetSumSingletonNat [NEW axiom = Mathlib Finset.sum_singleton, Lean-checked], 19 FinsetSumIccSuccTopNat peels with running-total asserts); main body: b6_sum20(); assert 210*a*(100*b) == 21000*(a*b) with a*b==1 (h5). Library: the opaque-pow variant (alt/amc12a_2021_p14-168 copy) — with the standard library the recursive Real.pow/Int.pow ensures in h1 send Z3 out of resource
// Dafny: finished with 158 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Real.pow/Int.pow): see alt/amc12a_2021_p14-542/LIBRARY_CHANGES.diff

include "alt/amc12a_2021_p14-542/out/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L542()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  requires Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
  ensures   Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 21000.0

{
  b6_sum20(0);  // [ADDED]
  var a := Real.logb(5.0, 3.0);  // [ADDED]
  var b := Real.logb(3.0, 5.0);  // [ADDED]
  assert 210.0 * a * (100.0 * b) == 21000.0 * (a * b);  // [ADDED]
}

lemma {:induction false} b6_sum20(dummy: int)  // [ADDED DECLARATION]
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  ensures Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
{
  assert forall k :: k in IccN(1, 20) ==> (((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))))(k) == Real.logb(5.0, 3.0) * (((k: nat) => (k as real)))(k);
  FinsetMulSumPointwise(IccN(1, 20), ((k: nat) => (k as real)), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))), Real.logb(5.0, 3.0));  // cite: Finset.mul_sum + Finset.sum_congr
  b6_sumId20(0);
}

lemma {:induction false} b6_sumId20(dummy: int)  // [ADDED DECLARATION]
  ensures Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0
{
  FinsetIccSelfNat(1);  // cite: Finset.Icc_self
  FinsetSumSingletonNat(1, ((k: nat) => (k as real)));  // cite: Finset.sum_singleton (applied inside norm_num, exec 921)
  assert Real.sum(IccN(1, 1), ((k: nat) => (k as real))) == 1.0;
  FinsetSumIccSuccTopNat(1, 1, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 2), ((k: nat) => (k as real))) == 3.0;
  FinsetSumIccSuccTopNat(1, 2, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 3), ((k: nat) => (k as real))) == 6.0;
  FinsetSumIccSuccTopNat(1, 3, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 4), ((k: nat) => (k as real))) == 10.0;
  FinsetSumIccSuccTopNat(1, 4, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 5), ((k: nat) => (k as real))) == 15.0;
  FinsetSumIccSuccTopNat(1, 5, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 6), ((k: nat) => (k as real))) == 21.0;
  FinsetSumIccSuccTopNat(1, 6, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 7), ((k: nat) => (k as real))) == 28.0;
  FinsetSumIccSuccTopNat(1, 7, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 8), ((k: nat) => (k as real))) == 36.0;
  FinsetSumIccSuccTopNat(1, 8, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 9), ((k: nat) => (k as real))) == 45.0;
  FinsetSumIccSuccTopNat(1, 9, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 10), ((k: nat) => (k as real))) == 55.0;
  FinsetSumIccSuccTopNat(1, 10, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 11), ((k: nat) => (k as real))) == 66.0;
  FinsetSumIccSuccTopNat(1, 11, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 12), ((k: nat) => (k as real))) == 78.0;
  FinsetSumIccSuccTopNat(1, 12, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 13), ((k: nat) => (k as real))) == 91.0;
  FinsetSumIccSuccTopNat(1, 13, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 14), ((k: nat) => (k as real))) == 105.0;
  FinsetSumIccSuccTopNat(1, 14, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 15), ((k: nat) => (k as real))) == 120.0;
  FinsetSumIccSuccTopNat(1, 15, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 16), ((k: nat) => (k as real))) == 136.0;
  FinsetSumIccSuccTopNat(1, 16, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 17), ((k: nat) => (k as real))) == 153.0;
  FinsetSumIccSuccTopNat(1, 17, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 18), ((k: nat) => (k as real))) == 171.0;
  FinsetSumIccSuccTopNat(1, 18, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 19), ((k: nat) => (k as real))) == 190.0;
  FinsetSumIccSuccTopNat(1, 19, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top
  assert Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0;
}

// Lean: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x ∈ {a}, f x = f a   (α = ℕ, β = ℝ)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)  // [ADDED DECLARATION]
  ensures Real.sum({a}, f) == f(a)
