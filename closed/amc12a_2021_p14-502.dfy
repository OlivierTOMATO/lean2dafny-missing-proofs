// CLOSED — failing line amc12a_2021_p14-502: theorem amc12a_2021_p14, Dafny line 502 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert ((Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0))) == 1.0) by {
// Lean step: have h₅₃ : Real.log 3 ≠ 0 := Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num)
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); this variant also drops 9 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3 — kept only h₅₃ (log3≠0), h₅₄ (log5≠0); dropped 9
// Dafny: finished with 15 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L502()
  ensures   Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0)) == 1.0
{
 
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

