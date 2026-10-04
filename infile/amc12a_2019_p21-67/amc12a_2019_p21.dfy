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
  vc_amc12a_2019_p21_L67(z);  /* [IN-FILE CHECK] the closed lemma for line 67 */
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



// ===== closed lemma for line 67 (from closed/amc12a_2019_p21-67.dfy) =====

lemma {:axiom} CSumEmpty_k<T>(f: T -> Complex.complex)  // [ADDED DECLARATION]
  ensures Complex.sum({}, f) == Complex.of_real(0.0)
lemma {:axiom} CSumInsert_k<T>(s: set<T>, a: T, f: T -> Complex.complex)  // [ADDED DECLARATION]
  requires a !in s
  ensures Complex.sum(s + {a}, f) == Complex.add(f(a), Complex.sum(s, f))
lemma OnePow_k(q: nat) ensures Complex.pow(Complex.of_real(1.0), q) == Complex.of_real(1.0)  // [ADDED DECLARATION]
{ if q > 0 { OnePow_k(q - 1); } }
lemma PowRed_k(z: Complex.complex, q: nat, r: nat)  // [ADDED DECLARATION]
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures Complex.pow(z, 8 * q + r) == Complex.pow(z, r)
{ ComplexPowAdd(z, 8 * q, r); ComplexPowMul(z, 8, q); OnePow_k(q); }
lemma L67lin_k(S: Complex.complex, p7: Complex.complex, p4: Complex.complex)  // [ADDED DECLARATION]
  requires S == Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.of_real(0.0)))))))))))))
  ensures S == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), p7), Complex.mul(Complex.of_real(3.0), p4)), Complex.of_real(3.0))
{ }
lemma InvVals_k(z: Complex.complex)  // [ADDED DECLARATION]
  requires z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0)
  requires Complex.pow(z, 4) == Complex.of_real(-1.0)
  requires Complex.pow(z, 7) == Complex.Complex(Real.sqrt(2.0) / 2.0, -(Real.sqrt(2.0) / 2.0))
  ensures Complex.div(Complex.of_real(1.0), z) == Complex.pow(z, 7)
  ensures Complex.div(Complex.of_real(1.0), Complex.pow(z, 4)) == Complex.pow(z, 4)
  ensures Complex.div(Complex.of_real(1.0), Complex.of_real(1.0)) == Complex.of_real(1.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;
  assert Complex.normSq(z) == 1.0;
  assert Complex.normSq(Complex.of_real(-1.0)) == 1.0;
  assert Complex.normSq(Complex.of_real(1.0)) == 1.0;
}

lemma {:induction false} vc_amc12a_2019_p21_L67(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))).Complex?
  requires Complex.of_real(6.0).Complex?
  requires Complex.mul(Complex.of_real(6.0), z).Complex?
  requires Complex.of_real(3.0).Complex?
  requires 0 <= 4
  requires Complex.pow(z, 4).Complex?
  requires Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))).Complex?
  requires 0 <= 7
  requires Complex.pow(z, 7).Complex?
  requires Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  ensures   Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;  // [ADDED]
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;  // [ADDED]
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);  // [ADDED]
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }  // [ADDED]
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }  // [ADDED]
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }  // [ADDED]
  var si0: set<int> := {};  // [ADDED]
  assert Icc(1, 12) == {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};  // [ADDED]
  CSumEmpty_k<int>(((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k))));  // [ADDED]
  var si1: set<int> := {1};  // [ADDED]
  CSumInsert_k<int>(si0, 1, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si0 + {1} == si1;  // [ADDED]
  var si2: set<int> := {1, 2};  // [ADDED]
  CSumInsert_k<int>(si1, 2, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si1 + {2} == si2;  // [ADDED]
  var si3: set<int> := {1, 2, 3};  // [ADDED]
  CSumInsert_k<int>(si2, 3, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si2 + {3} == si3;  // [ADDED]
  var si4: set<int> := {1, 2, 3, 4};  // [ADDED]
  CSumInsert_k<int>(si3, 4, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si3 + {4} == si4;  // [ADDED]
  var si5: set<int> := {1, 2, 3, 4, 5};  // [ADDED]
  CSumInsert_k<int>(si4, 5, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si4 + {5} == si5;  // [ADDED]
  var si6: set<int> := {1, 2, 3, 4, 5, 6};  // [ADDED]
  CSumInsert_k<int>(si5, 6, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si5 + {6} == si6;  // [ADDED]
  var si7: set<int> := {1, 2, 3, 4, 5, 6, 7};  // [ADDED]
  CSumInsert_k<int>(si6, 7, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si6 + {7} == si7;  // [ADDED]
  var si8: set<int> := {1, 2, 3, 4, 5, 6, 7, 8};  // [ADDED]
  CSumInsert_k<int>(si7, 8, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si7 + {8} == si8;  // [ADDED]
  var si9: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9};  // [ADDED]
  CSumInsert_k<int>(si8, 9, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si8 + {9} == si9;  // [ADDED]
  var si10: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};  // [ADDED]
  CSumInsert_k<int>(si9, 10, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si9 + {10} == si10;  // [ADDED]
  var si11: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};  // [ADDED]
  CSumInsert_k<int>(si10, 11, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si10 + {11} == si11;  // [ADDED]
  var si12: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};  // [ADDED]
  CSumInsert_k<int>(si11, 12, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si11 + {12} == si12;  // [ADDED]
  assert Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 144)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 121)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 100)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 81)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 64)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 49)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 36)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 25)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 16)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 9)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 4)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 1)), Complex.of_real(0.0)))))))))))));  // [ADDED]
  PowRed_k(z, 0, 1);  // [ADDED]
  PowRed_k(z, 0, 4);  // [ADDED]
  PowRed_k(z, 1, 1);  // [ADDED]
  PowRed_k(z, 2, 0);  // [ADDED]
  PowRed_k(z, 3, 1);  // [ADDED]
  PowRed_k(z, 4, 4);  // [ADDED]
  PowRed_k(z, 6, 1);  // [ADDED]
  PowRed_k(z, 8, 0);  // [ADDED]
  PowRed_k(z, 10, 1);  // [ADDED]
  PowRed_k(z, 12, 4);  // [ADDED]
  PowRed_k(z, 15, 1);  // [ADDED]
  PowRed_k(z, 18, 0);  // [ADDED]
  ComplexPowOne(z); ComplexPowZero(z);  // [ADDED]
  ComplexPowAdd(z, 4, 3); ComplexPowThree(z);  // [ADDED]
  assert Complex.pow(z, 7) == Complex.Complex(Real.sqrt(2.0) / 2.0, -(Real.sqrt(2.0) / 2.0));  // [ADDED]
  InvVals_k(z);  // [ADDED]
  assert Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.of_real(0.0)))))))))))));  // [ADDED]
  L67lin_k(Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))), Complex.pow(z, 7), Complex.pow(z, 4));  // [ADDED]
}

