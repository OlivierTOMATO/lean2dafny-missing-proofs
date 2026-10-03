// CLOSED — failing line amc12b_2020_p13-197: theorem amc12b_2020_p13, Dafny line 197 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((Real.log(2.0) + Real.log(3.0)), Real.log(2.0)) == (1.0 + Real.div(Real.log(3.0), Real.log(2.0)))) by {
// Lean step: field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
// hypotheses: 4 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 5); nothing assumed beyond the facts in scope
// how it closes: K5 — AddDivPrime(Real.log(3.0), 1.0, Real.log(2.0)); with exact Mathlib add_div' (b + a / c = (b * c + a) / c, c ≠ 0) added to the work copy as {:axiom}
// Dafny: finished with 8 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p13.dfy"
lemma {:axiom} AddDivPrime(a: real, b: real, c: real)
  requires c != 0.0
  ensures b + Real.div(a, c) == Real.div(b * c + a, c)

lemma {:induction false} vc_amc12b_2020_p13_L197()
  requires Real.log(6.0) == Real.log(2.0) + Real.log(3.0)
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  requires Real.log(2.0) != 0.0
  ensures   Real.div(Real.log(2.0) + Real.log(3.0), Real.log(2.0)) == 1.0 + Real.div(Real.log(3.0), Real.log(2.0))
{
  AddDivPrime(Real.log(3.0), 1.0, Real.log(2.0));  // K5: add_div' (internal cite of field_simp exec)
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1190-1198
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 1220-1228
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: «Field_simp[_]At___» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // `field_simp` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        assert (0.0 < (2.0)) && ((2.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(2.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
        // UNCITED-APPLIED internal ×22 [exec 222 1140-1248]: applications made inside the tactic's own automation, not stated — add_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, one_mul ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1 (+5 more heads, ×5) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.log_ne_zero_of_pos_of_ne_one [Lean recorded ×1])
}

