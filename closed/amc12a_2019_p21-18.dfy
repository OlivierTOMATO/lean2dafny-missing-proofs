// CLOSED — failing line amc12a_2019_p21-18: theorem amc12a_2019_p21, Dafny line 18 (ERR: assertion might not hold)
// failing Dafny line: assert (Complex.pow(z, 8) == Complex.of_real(1.0));
// Lean step: h₁
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: P25 — 
// Dafny: finished with 20 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2019_p21.dfy"
lemma {:induction false} vc_amc12a_2019_p21_L18(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  ensures   Complex.pow(z, 8) == Complex.of_real(1.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }
}

