// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2019_p21.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// GAP: no Lean harvest for this theorem (the harvest directory has no record file for this theorem; the repository goal-state cache (an older harvest without per-execution applications) is used): the applications Lean made at its tactic executions are not recorded, so none is stated or marked from a record (a constant lemma the syntax names is stated with that caveat on its line)

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2019_p21(z: Complex.complex)
  requires (z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))))
  ensures (Complex.mul(Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))), Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k)))))) == Complex.of_real(36.0))
{
  // GAP: tactic states unavailable: the goal-state harvest has no file for this theorem (the repository cache used instead records haves only); no tactic step's goal or hypothesis change is stated (`@tac` / `@tac-hyp`), only the haves
  // have h₁ : z ^ 8 == 1  [type from Lean state]
  assert z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)));  /* [IN-FILE CHECK] requires 1 of vc_amc12a_2019_p21_L18 */
  assert 0 <= 8;  /* [IN-FILE CHECK] requires 2 of vc_amc12a_2019_p21_L18 */
  assert Complex.pow(z, 8).Complex?;  /* [IN-FILE CHECK] requires 3 of vc_amc12a_2019_p21_L18 */
  assert Complex.of_real(1.0).Complex?;  /* [IN-FILE CHECK] requires 4 of vc_amc12a_2019_p21_L18 */
  vc_amc12a_2019_p21_L18(z);  /* [IN-FILE CHECK] the closed lemma for line 18 */
  assert (Complex.pow(z, 8) == Complex.of_real(1.0));
    // [TACTIC: rwSeq [ h₀ ]]
    // [TACTIC: «_<;>_» [ pow_two , pow_succ , Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] field_simp [ pow_two , pow_succ , Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] simp [ Complex.ext_iff , Complex.I_mul_I , mul_comm , mul_assoc , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num]
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.I_mul_I: named here; a constant without arguments; no Lean harvest for this theorem, so whether Lean's proof here uses it is not recorded: not cited
    // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED pow_two: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
  // have h₂ : ∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), z ^ k ^ (2 : ℕ) = (6 : ℂ) * z + (3 : ℂ) * z ^ (4 : ℕ) + (3 : ℂ)  [type from Lean state]
  assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) by {
    // have h₂ : z == ( 1 + Complex.I ) / Real.sqrt ( 2 )  [type from Lean state]
    assert (z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))) by {
      // [TACTIC: exact h₀]
      assert (z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))));
    }
    // have h₃ : z ^ 8 == 1  [type from Lean state]
    assert (Complex.pow(z, 8) == Complex.of_real(1.0)) by {
      // [TACTIC: exact h₁]
      assert (Complex.pow(z, 8) == Complex.of_real(1.0));
    }
    // have h₄ : ∑ k ∈ Finset.Icc (1 : ℕ) (12 : ℕ), z ^ k ^ (2 : ℕ) = (6 : ℂ) * z + (3 : ℂ) * z ^ (4 : ℕ) + (3 : ℂ)  [type from Lean state]
    assert (Complex.sum(IccN(1, 12), ((k: nat) => Complex.pow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) by {
      // have h₅ : z ^ 2 == z ^ 2  [type from Lean state]
      assert (Complex.pow(z, 2) == Complex.pow(z, 2));
        // [TACTIC: exact rfl]
      // have h₆ : z ^ 4 == z ^ 4  [type from Lean state]
      assert (Complex.pow(z, 4) == Complex.pow(z, 4));
        // [TACTIC: exact rfl]
      // have h₇ : z ^ 6 == z ^ 6  [type from Lean state]
      assert (Complex.pow(z, 6) == Complex.pow(z, 6));
        // [TACTIC: exact rfl]
      // have h₈ : z ^ 8 == z ^ 8  [type from Lean state]
      assert (Complex.pow(z, 8) == Complex.pow(z, 8));
        // [TACTIC: exact rfl]
      // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Finset.sum_range_succ , Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] simp_all [ Finset.sum_Icc_succ_top , Finset.sum_range_succ , Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] simp_all [ Finset.sum_Icc_succ_top , Finset.sum_range_succ , Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> simp_all [ Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , pow_succ , mul_add , mul_comm , mul_left_comm ] <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num]
      // UNCITED Finset.sum_Icc_succ_top: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Finset.sum_range_succ: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED mul_add: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    }
    // [TACTIC: exact h₄]
    assert (Complex.sum(IccN(1, 12), ((k: nat) => Complex.pow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)));
  }
  // have h₃ : ∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), (1 : ℂ) / z ^ k ^ (2 : ℕ) = (6 : ℂ) * z ^ (7 : ℕ) + (3 : ℂ) * z ^ (4 : ℕ) +  [type from Lean state]
  assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k))))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)));
    // [TACTIC: «_<;>_» [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> ring <;> norm_num norm_num <;> simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> ring <;> norm_num norm_num <;> simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] simp_all [ Complex.ext_iff , Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] field_simp [ Complex.normSq , Complex.I_sq , pow_succ , mul_assoc , mul_comm , mul_left_comm ] <;> ring <;> norm_num norm_num]
    // UNCITED Complex.I_sq: named here; a constant without arguments; no Lean harvest for this theorem, so whether Lean's proof here uses it is not recorded: not cited
    // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
  // have h₄ : ( 6 * z + 3 * z ^ 4 + 3 ) * ( 6 * z ^ 7 + 3 * z ^ 4 + 3 ) == 36  [type from Lean state]
  assert (Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) == Complex.of_real(36.0)) by {
    // have h₄ : z == ( 1 + Complex.I ) / Real.sqrt ( 2 )  [type from Lean state]
    assert (z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))) by {
      // [TACTIC: exact h₀]
      assert (z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))));
    }
    // have h₅ : z ^ 8 == 1  [type from Lean state]
    assert (Complex.pow(z, 8) == Complex.of_real(1.0)) by {
      // [TACTIC: exact h₁]
      assert (Complex.pow(z, 8) == Complex.of_real(1.0));
    }
    // have h₆ : ∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), z ^ k ^ (2 : ℕ) = (6 : ℂ) * z + (3 : ℂ) * z ^ (4 : ℕ) + (3 : ℂ)  [type from Lean state]
    assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) by {
      // [TACTIC: exact h₂]
      assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)));
    }
    // have h₇ : ∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), (1 : ℂ) / z ^ k ^ (2 : ℕ) = (6 : ℂ) * z ^ (7 : ℕ) + (3 : ℂ) * z ^ (4 : ℕ) +  [type from Lean state]
    assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k))))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) by {
      // [TACTIC: exact h₃]
      assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k))))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)));
    }
    // [TACTIC: substVars]
    // [TACTIC: «_<;>_» [ Complex.ext_iff , pow_succ , Finset.sum_range_succ , Complex.I_sq , mul_comm , mul_assoc , mul_left_comm ] at h₅ h₆ h₇ ⊢ <;> ring_nf at h₅ h₆ h₇ ⊢ <;> simp_all [ Complex.ext_iff , pow_succ , Finset.sum_range_succ , Complex.I_sq , mul_comm , mul_assoc , mul_left_comm ] simp_all [ Complex.ext_iff , pow_succ , Finset.sum_range_succ , Complex.I_sq , mul_comm , mul_assoc , mul_left_comm ] simp_all [ Complex.ext_iff , pow_succ , Finset.sum_range_succ , Complex.I_sq , mul_comm , mul_assoc , mul_left_comm ] <;> nlinarith [ sq_nonneg ( z.re - z.im ) , sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re + z.im - 1 ) , sq_nonneg ( z.re - z.im - 1 ) , sq_nonneg ( z.re + z.im - 2 ) , sq_nonneg ( z.re - z.im - 2 ) ] nlinarith [ sq_nonneg ( z.re - z.im ) , sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re + z.im - 1 ) , sq_nonneg ( z.re - z.im - 1 ) , sq_nonneg ( z.re + z.im - 2 ) , sq_nonneg ( z.re - z.im - 2 ) ]]
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Finset.sum_range_succ: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.I_sq: named here; a constant without arguments; no Lean harvest for this theorem, so whether Lean's proof here uses it is not recorded: not cited
    // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED sq_nonneg: no Lean instance recorded (arguments unknown), not guessed
  }
  // have h₅ : (∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), z ^ k ^ (2 : ℕ)) * ∑ k ∈ Finset.Icc (1 : ℤ) (12 : ℤ), (1 : ℂ) / z ^ k ^ (2  [type from Lean state]
  assert (Complex.mul(Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))), Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k)))))) == Complex.of_real(36.0));
    // [TACTIC: «_<;>_» [ h₂ , h₃ ] rw [ h₂ , h₃ ] <;> simp_all simp_all simp_all <;> linarith linarith <;> ring <;> norm_num norm_num <;> linarith linarith]
  // [TACTIC: «_<;>_» [ h₅ ] rw [ h₅ ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ] simp_all [ Complex.ext_iff , Finset.sum_apply , mul_comm ]]
  // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
  // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
}



// ===== closed lemma for line 18 (from closed/amc12a_2019_p21-18.dfy) =====

lemma {:induction false} vc_amc12a_2019_p21_L18(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  ensures   Complex.pow(z, 8) == Complex.of_real(1.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;  // [ADDED]
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;  // [ADDED]
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);  // [ADDED]
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }  // [ADDED]
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }  // [ADDED]
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }  // [ADDED]
}

