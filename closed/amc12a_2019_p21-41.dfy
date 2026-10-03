// CLOSED — failing line amc12a_2019_p21-41: theorem amc12a_2019_p21, Dafny line 41 (ERR: assertion might not hold)
// failing Dafny line: assert (Complex.sum(IccN(1, 12), ((k: nat) => Complex.pow(z, (k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.
// Lean step: h₄
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 4); this variant also drops 23 hypotheses; nothing assumed beyond the facts in scope
// how it closes: S2 — 
// Dafny: finished with 142 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2019_p21.dfy"
lemma OnePow_k(q: nat) ensures Complex.pow(Complex.of_real(1.0), q) == Complex.of_real(1.0)  // [ADDED DECLARATION]
{ if q > 0 { OnePow_k(q - 1); } }
lemma PowRed_k(z: Complex.complex, q: nat, r: nat)  // [ADDED DECLARATION]
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures Complex.pow(z, 8 * q + r) == Complex.pow(z, r)
{ ComplexPowAdd(z, 8 * q, r); ComplexPowMul(z, 8, q); OnePow_k(q); }

lemma {:induction false} vc_amc12a_2019_p21_L41(z: Complex.complex)
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures   Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
  ComplexSumIccSuccTop(1, 0, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 1, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 2, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 3, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 4, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 5, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 6, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 7, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 8, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 9, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 10, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumIccSuccTop(1, 11, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  ComplexSumEmpty(((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));  // [ADDED]
  assert Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.of_real(0.0), Complex.pow(z, 1)), Complex.pow(z, 4)), Complex.pow(z, 9)), Complex.pow(z, 16)), Complex.pow(z, 25)), Complex.pow(z, 36)), Complex.pow(z, 49)), Complex.pow(z, 64)), Complex.pow(z, 81)), Complex.pow(z, 100)), Complex.pow(z, 121)), Complex.pow(z, 144));  // [ADDED]
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
  assert Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.of_real(0.0), Complex.pow(z, 1)), Complex.pow(z, 4)), Complex.pow(z, 9)), Complex.pow(z, 16)), Complex.pow(z, 25)), Complex.pow(z, 36)), Complex.pow(z, 49)), Complex.pow(z, 64)), Complex.pow(z, 81)), Complex.pow(z, 100)), Complex.pow(z, 121)), Complex.pow(z, 144)) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0));  // [ADDED]
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

