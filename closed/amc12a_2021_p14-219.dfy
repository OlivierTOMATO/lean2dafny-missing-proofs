// CLOSED — failing line amc12a_2021_p14-219: theorem amc12a_2021_p14, Dafny line 219 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0) by {
// Lean step: norm_num [Finset.sum_Icc_succ_top]
// hypotheses: 6 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — the base file was cut at `requires IccN(1, 1) == {1}` (the `{` was taken as the body start, losing the ensures); dropped that truncated requires and restored the ensures verbatim from the failing line `Real.sum(IccN(1, 20), k => k as real) == 210.0`; body: FinsetIccSelfNat(1); FinsetSumSingletonNat(1, f) [NEW axiom = Mathlib Finset.sum_singleton, Lean-checked]; the 19 FinsetSumIccSuccTopNat peels each followed by a checked running-total assert (1, 3, 6, …, 210), one lambda spelling throughout
// Dafny: finished with 136 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: the closed/ base had no ensures (header truncated at `{1}`); the ensures here is the failing line's statement, unchanged

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L219()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)))
  requires Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0))) == Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real))) * Real.logb(5.0, 3.0)
  ensures   Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0

{
  FinsetIccSelfNat(1);  // cite: Finset.Icc_self
  FinsetSumSingletonNat(1, ((k: nat) => (k as real)));  // cite: Finset.sum_singleton (applied inside norm_num, exec 921)  // [ADDED]
  assert Real.sum(IccN(1, 1), ((k: nat) => (k as real))) == 1.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 1, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 2), ((k: nat) => (k as real))) == 3.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 2, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 3), ((k: nat) => (k as real))) == 6.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 3, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 4), ((k: nat) => (k as real))) == 10.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 4, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 5), ((k: nat) => (k as real))) == 15.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 5, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 6), ((k: nat) => (k as real))) == 21.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 6, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 7), ((k: nat) => (k as real))) == 28.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 7, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 8), ((k: nat) => (k as real))) == 36.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 8, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 9), ((k: nat) => (k as real))) == 45.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 9, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 10), ((k: nat) => (k as real))) == 55.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 10, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 11), ((k: nat) => (k as real))) == 66.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 11, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 12), ((k: nat) => (k as real))) == 78.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 12, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 13), ((k: nat) => (k as real))) == 91.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 13, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 14), ((k: nat) => (k as real))) == 105.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 14, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 15), ((k: nat) => (k as real))) == 120.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 15, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 16), ((k: nat) => (k as real))) == 136.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 16, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 17), ((k: nat) => (k as real))) == 153.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 17, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 18), ((k: nat) => (k as real))) == 171.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 18, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 19), ((k: nat) => (k as real))) == 190.0;  // [ADDED]
  FinsetSumIccSuccTopNat(1, 19, ((k: nat) => (k as real)));  // cite: Finset.sum_Icc_succ_top  // [ADDED]
  assert Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0;  // [ADDED]

}

// Lean: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x ∈ {a}, f x = f a   (α = ℕ, β = ℝ)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)  // [ADDED DECLARATION]
  ensures Real.sum({a}, f) == f(a)
