// CLOSED — failing line amc12a_2021_p14-197: theorem amc12a_2021_p14, Dafny line 197 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(IccN(1, 20), ((k: nat) => (Real.logb(5.0, 3.0) * (k as real)))) == (Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((k: nat) => (k as real))))) by {
// Lean step: rw [Finset.mul_sum]
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S_split — 
// Dafny: finished with 23 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma s018_Step197()
  ensures Real.sum(IccN(1, 20), ((v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real))) == Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real)))
{
  FinsetMulSumPointwise(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real)), ((v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real)), Real.logb(5.0, 3.0));  // Finset.mul_sum at Lean args
}

lemma {:induction false} vc_amc12a_2021_p14_L197()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)))
  ensures   Real.sum(IccN(1, 20), ((v_1_0_0_1_2_k: nat) => Real.logb(5.0, 3.0) * (v_1_0_0_1_2_k as real))) == Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real)))
{
  s018_Step197();
              // [TACTIC: «_<;>_» [ Finset.mul_sum ] rw [ Finset.mul_sum ] <;> simp [ mul_comm ] simp [ mul_comm ] simp [ mul_comm ]]
              // [TACTIC: rwSeq [ Finset.mul_sum ]]
              // UNCITED Finset.mul_sum: recorded instance not expressible here (sort/type/scope), not guessed
              // `rw` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ) * ∑ i ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑i, ∑ i ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb (5 : ℝ) (3 : ℝ) * ↑i, fun (_a : ℝ) => ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb (5 : ℝ) (3 : …): no library counterpart (not stated) [exec 833 3296-3315]
}

