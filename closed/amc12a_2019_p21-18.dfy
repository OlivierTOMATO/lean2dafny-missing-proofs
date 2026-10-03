// CLOSED LEMMA for failing line amc12a_2019_p21-18 (theorem amc12a_2019_p21, Dafny line 18, ERR)
// closes with: simplest (simplest) — variant
// added: 6 checked asserts: √2·√2=2; normSq(↑√2)=2; z == Complex(√2/2, √2/2); z^2 == I by {ComplexPowTwo(z);}; z^4 == -1 by {ComplexPowMul(z,2,2); ComplexPowTwo(z^2); ComplexIMulI();}; z^8 == 1 by {ComplexPowMul(z,4,2); ComplexPowTwo(z^4);}
// Dafny: finished with 20 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_017/amc12a_2019_p21-18/P25.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_017 ablation P25 for amc12a_2019_p21-18 (copy of the ORIGINAL line lemma; see ablate/shard_017.jsonl)
include "../../../../../wt_integ5/out/amc12a_2019_p21.dfy"


lemma {:induction false} vc_amc12a_2019_p21_L18_P25(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  ensures  Complex.pow(z, 8) == Complex.of_real(1.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }
}
