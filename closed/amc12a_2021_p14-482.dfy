// NOT CLOSED — failing line amc12a_2021_p14-482: theorem amc12a_2021_p14, Dafny line 482 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by {
// Lean step: have h₅₁ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 3); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 26 verified, 1 error, 3 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L482()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  ensures   Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
{
    // have h₅₁ : Real.logb ( 5 , 3 ) == Real.log ( 3 ) / Real.log ( 5 )  [type from Lean state]
    assert (Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))); // @tac 6938-7019 // @tac 6938-7004 // @tac 6938-6983 // @tac 6938-6952
    // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log (3 : ℝ) / Real.log (5 : ℝ)): no library counterpart (not stated) [exec 2182 6938-6952]
    // UNCITED-APPLIED Real.logb.eq_1((5 : ℝ), (3 : ℝ)): no library counterpart (not stated) [exec 2182 6938-6952]
      // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ Real.logb ]]
      // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
      // `rw` closed the goal; the rest of the chain did not run
    // have h₅₂ : Real.logb ( 3 , 5 ) == Real.log ( 5 ) / Real.log ( 3 )  [type from Lean state]
    assert (Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))); // @tac 7091-7172 // @tac 7091-7157 // @tac 7091-7136 // @tac 7091-7105
    // UNCITED-APPLIED congrArg(logb (3 : ℝ) (5 : ℝ), Real.log (5 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => _a = Real.log (5 : ℝ) / Real.log (3 : ℝ)): no library counterpart (not stated) [exec 2256 7091-7105]
    // UNCITED-APPLIED Real.logb.eq_1((3 : ℝ), (5 : ℝ)): no library counterpart (not stated) [exec 2256 7091-7105]
      // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ Real.logb ]]
      // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
      // `rw` closed the goal; the rest of the chain did not run
    // [TACTIC: rwSeq [ h₅₁ , h₅₂ ]]
    // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => _a * logb (3 : ℝ) (5 : ℝ) = (1 : ℝ)): no library counterpart (not stated) [exec 2299 7177-7198]
    // UNCITED-APPLIED congrArg(logb (3 : ℝ) (5 : ℝ), Real.log (5 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => Real.log (3 : ℝ) / Real.log (5 : ℝ) * _a = (1 : ℝ)): no library counterpart (not stated) [exec 2299 7177-7198]
    assert ((Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0))) == 1.0) by {  // sub-goal before `have` (Lean state) // @tac 7203-7299 // @tac 7304-7400 // @tac 7405-7498 // @tac 7405-7485 // @tac 7405-7447 // @tac 7405-7434
      // have h₅₃ : Real.log ( 3 ) != 0  [type from Lean state]
      assert (Real.log(3.0) != 0.0) by {
        assert (0.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 7276-7284
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2341 7276-7284]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (3.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 7290-7298
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2346 7290-7298]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_ne_zero_of_pos_of_ne_one ( ( by norm_num norm_num ) , ( by norm_num norm_num ) )]
        assert (0.0 < (3.0)) && ((3.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(3.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
      }
      // have h₅₄ : Real.log ( 5 ) != 0  [type from Lean state]
      assert (Real.log(5.0) != 0.0) by {
        assert (0.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 7377-7385
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2363 7377-7385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (5.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 7391-7399
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2368 7391-7399]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_ne_zero_of_pos_of_ne_one ( ( by norm_num norm_num ) , ( by norm_num norm_num ) )]
        assert (0.0 < (5.0)) && ((5.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(5.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
      }
      // [TACTIC: «_<;>_» [ h₅₃ , h₅₄ ] field_simp [ h₅₃ , h₅₄ ] <;> ring <;> field_simp [ h₅₃ , h₅₄ ] field_simp [ h₅₃ , h₅₄ ] <;> ring]
      // [TACTIC: «Field_simp[_]At___» [ h₅₃ , h₅₄ ]]
      // `field_simp` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED internal ×14 [exec 2386 7405-7434]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, div_self ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    }
}

