// NOT CLOSED — failing line amc12a_2019_p21-29: theorem amc12a_2019_p21, Dafny line 29 (ERR: assertion might not hold)
// failing Dafny line: assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.
// Lean step: h₂
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2=failed; this file is the honest base attempt
// Dafny: finished with 39 verified, 3 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2019_p21.dfy"
lemma {:induction false} vc_amc12a_2019_p21_L29(z: Complex.complex)
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.I().Complex?
  requires Complex.add(Complex.of_real(1.0), Complex.I()).Complex?
  requires Complex.of_real(Real.sqrt(2.0)).Complex?
  requires Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))).Complex?
  requires 0 <= 1
  requires 0 <= 12
  requires Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))).Complex?
  requires Complex.of_real(6.0).Complex?
  requires Complex.mul(Complex.of_real(6.0), z).Complex?
  requires Complex.of_real(3.0).Complex?
  requires 0 <= 4
  requires Complex.pow(z, 4).Complex?
  requires Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))).Complex?
  ensures   Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
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

