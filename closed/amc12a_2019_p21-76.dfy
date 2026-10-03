// NOT CLOSED — failing line amc12a_2019_p21-76: theorem amc12a_2019_p21, Dafny line 76 (ERR: assertion might not hold)
// failing Dafny line: assert (Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Comp
// Lean step: h₄
// hypotheses: 24 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K5=oor, K3=failed, S3=oor, S2=oor, S=oor, P25=oor; this file is the honest base attempt
// Dafny: finished with 29 verified, 4 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2019_p21.dfy"
lemma {:induction false} vc_amc12a_2019_p21_L76(z: Complex.complex)
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))).Complex?
  requires Complex.of_real(6.0).Complex?
  requires Complex.mul(Complex.of_real(6.0), z).Complex?
  requires Complex.of_real(3.0).Complex?
  requires 0 <= 4
  requires Complex.pow(z, 4).Complex?
  requires Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))).Complex?
  requires 0 <= 7
  requires Complex.pow(z, 7).Complex?
  requires Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.I().Complex?
  requires Complex.add(Complex.of_real(1.0), Complex.I()).Complex?
  requires Complex.of_real(Real.sqrt(2.0)).Complex?
  requires Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))).Complex?
  requires Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))).Complex?
  requires Complex.of_real(36.0).Complex?
  ensures   Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) == Complex.of_real(36.0)
{
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

