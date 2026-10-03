// CLOSED LEMMA for failing line amc12a_2019_p21-41 (theorem amc12a_2019_p21, Dafny line 41, ERR)
// closes with: simplest (simplest) — simplest-close
// added: state the step as a small lemma over only h₃ (z^8 = 1), with proved helpers OnePow_k (induction) and PowRed_k (z^(8q+r) = z^r via pow_add/pow_mul) and body: 12× ComplexSumIccSuccTop + ComplexSumEmpty, assert of the explicit 12-term sum, 12× PowRed_k, final linear assert
// Dafny: finished with 121 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_017/amc12a_2019_p21-41/S2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_017 ablation S2 for amc12a_2019_p21-41 (copy of the ORIGINAL line lemma; see ablate/shard_017.jsonl)
include "../../../../../wt_integ5/out/amc12a_2019_p21.dfy"

lemma OnePow_k(q: nat) ensures Complex.pow(Complex.of_real(1.0), q) == Complex.of_real(1.0)
{ if q > 0 { OnePow_k(q - 1); } }
lemma PowRed_k(z: Complex.complex, q: nat, r: nat)
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures Complex.pow(z, 8 * q + r) == Complex.pow(z, r)
{ ComplexPowAdd(z, 8 * q, r); ComplexPowMul(z, 8, q); OnePow_k(q); }

lemma {:induction false} vc_amc12a_2019_p21_L41_S2(z: Complex.complex)
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures  Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
  ComplexSumIccSuccTop(1, 0, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 1, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 2, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 3, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 4, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 5, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 6, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 7, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 8, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 9, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 10, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumIccSuccTop(1, 11, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  ComplexSumEmpty(((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  assert Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.of_real(0.0), Complex.pow(z, 1)), Complex.pow(z, 4)), Complex.pow(z, 9)), Complex.pow(z, 16)), Complex.pow(z, 25)), Complex.pow(z, 36)), Complex.pow(z, 49)), Complex.pow(z, 64)), Complex.pow(z, 81)), Complex.pow(z, 100)), Complex.pow(z, 121)), Complex.pow(z, 144));
  PowRed_k(z, 0, 1);
  PowRed_k(z, 0, 4);
  PowRed_k(z, 1, 1);
  PowRed_k(z, 2, 0);
  PowRed_k(z, 3, 1);
  PowRed_k(z, 4, 4);
  PowRed_k(z, 6, 1);
  PowRed_k(z, 8, 0);
  PowRed_k(z, 10, 1);
  PowRed_k(z, 12, 4);
  PowRed_k(z, 15, 1);
  PowRed_k(z, 18, 0);
  ComplexPowOne(z); ComplexPowZero(z);
  assert Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.add(Complex.of_real(0.0), Complex.pow(z, 1)), Complex.pow(z, 4)), Complex.pow(z, 9)), Complex.pow(z, 16)), Complex.pow(z, 25)), Complex.pow(z, 36)), Complex.pow(z, 49)), Complex.pow(z, 64)), Complex.pow(z, 81)), Complex.pow(z, 100)), Complex.pow(z, 121)), Complex.pow(z, 144)) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0));
}
