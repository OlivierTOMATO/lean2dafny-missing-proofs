// CLOSED — failing line amc12a_2009_p6-28: theorem amc12a_2009_p6, Dafny line 28 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.rpow(Real.rpow(2.0, m), (2.0 * n)) == Real.rpow(2.0, (m * (2.0 * n)))) by {
// Lean step: rw [← Real.rpow_mul] <;> ring_nf <;> norm_num <;> linarith
// hypotheses: 4 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p6.dfy"
lemma {:induction false} vc_amc12a_2009_p6_L28(m: real, n: real, p: real, q: real)
  requires p == Real.rpow(2.0, m)
  requires q == Real.rpow(3.0, n)
  requires Real.rpow(2.0, m) > 0.0
  requires Real.rpow(2.0, m * (2.0 * n)) == Real.rpow(Real.rpow(2.0, m), 2.0 * n)
  ensures   Real.rpow(Real.rpow(2.0, m), 2.0 * n) == Real.rpow(2.0, m * (2.0 * n))
{
        // [TACTIC: «_<;>_» [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
        // [TACTIC: choice [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ]]
        // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, (m * (2.0 * n))), Real.rpow(Real.rpow(2.0, m), (2.0 * n))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
        assert (0.0 <= (2.0));  // precondition of RealRpowMul (Lean: Real.rpow_mul)
        RealRpowMul(2.0, m, (2.0 * n));  // cite: Real.rpow_mul
        // UNCITED-APPLIED congrArg(((2 : ℝ) ^ m) ^ ((2 : ℝ) * n), (2 : ℝ) ^ (m * ((2 : ℝ) * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ (m * ((2 : ℝ) * n))): no library counterpart (not stated) [exec 103 761-783]
        // (`rw` closed `(2 : ℝ) ^ (m * ((2 : ℝ) * n)) = (2 : ℝ) ^ (m * ((2 : ℝ) * n))` itself, e.g. by its trailing rfl)
        assert (0.0 <= 2.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 788-795 // @tac 800-808
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 141 800-808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
}

