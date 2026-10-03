// CLOSED — failing line amc12a_2009_p15-732: theorem amc12a_2009_p15, Dafny line 732 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert ((-(48.0) + (((4.0 * (m as real)) + 1.0) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1))))) == (48.0 + 1.0));
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
// hypotheses: 3 of 53 facts kept (0<=m, 2m==48, periodicity forall k: I^(k%4)==I^k); nothing assumed beyond the facts in scope
// how it closes: pass2 — assert (4m+1)%4==1, instance of the periodicity hypothesis at 4m+1, ComplexPowOne -> I^(4m+1)==I, Im==1.0
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 2.9 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L732(k_7_17__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_2: int, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires 0 <= m_7_2_0
  requires 2.0 * (m_7_2_0 as real) == 48.0
  ensures   0.0 - 48.0 + (4.0 * (m_7_2_0 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_2_0 + 1)) == 48.0 + 1.0
{
  assert (4 * m_7_2_0 + 1) % 4 == 1;  // [ADDED]
  assert Complex.pow(Complex.I(), (4 * m_7_2_0 + 1) % 4) == Complex.pow(Complex.I(), 4 * m_7_2_0 + 1);  // [ADDED]
  ComplexPowOne(Complex.I());  // [ADDED]
  assert Complex.pow(Complex.I(), 4 * m_7_2_0 + 1) == Complex.I();  // [ADDED]
  assert Complex.Im(Complex.pow(Complex.I(), 4 * m_7_2_0 + 1)) == 1.0;  // [ADDED]
}


