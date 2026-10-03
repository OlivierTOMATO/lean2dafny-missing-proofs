// CLOSED LEMMA for failing line amc12a_2019_p21-76 (theorem amc12a_2019_p21, Dafny line 76, ERR)
// closes with: simplest (simplest) — simplest-close
// added: lemma L76core_k(z) requires z^4 == -1, z^8 == 1 ensures goal { ComplexPowSucc(z,7); assert F1 == 6z; assert F2 == 6z^7; } (proved) + in the line: checked values z = (√2/2,√2/2), z^2 = I, z^4 = -1, z^8 = 1 (pow_two/pow_mul/I_mul_I) and the call L76core_k(z)
// Dafny: finished with 41 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_017/amc12a_2019_p21-76/S3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_017 ablation S3 for amc12a_2019_p21-76 (copy of the ORIGINAL line lemma; see ablate/shard_017.jsonl)
include "../../../../../wt_integ5/out/amc12a_2019_p21.dfy"

lemma L76core_k(z: Complex.complex)
  requires Complex.pow(z, 4) == Complex.of_real(-1.0)
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) == Complex.of_real(36.0)
{
  ComplexPowSucc(z, 7);
  assert Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)) == Complex.mul(Complex.of_real(6.0), z);
  assert Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)) == Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7));
}

lemma {:induction false} vc_amc12a_2019_p21_L76_S3(z: Complex.complex)
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
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
  requires Complex.I().Complex?
  requires Complex.add(Complex.of_real(1.0), Complex.I()).Complex?
  requires Complex.of_real(Real.sqrt(2.0)).Complex?
  requires Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))).Complex?
  requires Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))).Complex?
  requires Complex.of_real(36.0).Complex?
  ensures  Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)), Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))) == Complex.of_real(36.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }
  L76core_k(z);
}
