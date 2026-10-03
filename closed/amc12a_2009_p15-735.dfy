// CLOSED — failing line amc12a_2009_p15-735: theorem amc12a_2009_p15, Dafny line 735 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (((-(48.0) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == 49.0)
// Lean step: ring_nf at *
// hypotheses: 4 of 58 facts kept (0<=m, 2m==48, periodicity forall k: I^(k%4)==I^k, 0<=m*4); nothing assumed beyond the facts in scope
// how it closes: pass2 — assert (m*4)%4==0, instance of the periodicity hypothesis at m*4, ComplexPowZero -> I^(m*4)==1, I*1==I, Im==1.0
// Dafny: finished with 17 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 3.0 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L735(k_7_17__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_2: int, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires 0 <= m_7_2_0
  requires 2.0 * (m_7_2_0 as real) == 48.0
  requires 0 <= m_7_2_0 * 4
  ensures   0.0 - 48.0 + (m_7_2_0 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) == 49.0
{
  assert (m_7_2_0 * 4) % 4 == 0;  // [ADDED]
  assert Complex.pow(Complex.I(), (m_7_2_0 * 4) % 4) == Complex.pow(Complex.I(), m_7_2_0 * 4);  // [ADDED]
  ComplexPowZero(Complex.I());  // [ADDED]
  assert Complex.pow(Complex.I(), m_7_2_0 * 4) == Complex.of_real(1.0);  // [ADDED]
  assert Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4)) == Complex.I();  // [ADDED]
  assert Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) == 1.0;  // [ADDED]
}


