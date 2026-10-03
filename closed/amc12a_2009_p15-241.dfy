// CLOSED — failing line amc12a_2009_p15-241: theorem amc12a_2009_p15, Dafny line 241 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert ((Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == 48.0) && (Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
// hypotheses: 29 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 28 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L241(m_11: int, m_1_0: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: nat)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall k_0_1: int :: true
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires 0 <= m_1_0
  requires Complex.I().Complex?
  requires 0 <= 4 * m_1_0
  requires 0 <= 1
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 1))
  requires 0 <= 4 * m_1_0 + 1
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 1 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 1), Complex.pow(Complex.I(), 1))
  requires 0 <= 4 * m_1_0 + 2
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 2 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 2), Complex.pow(Complex.I(), 1))
  requires 0 <= 2
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 2) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 2))
  requires 0 <= 4 * m_1_0 + 3
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 3 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 3), Complex.pow(Complex.I(), 1))
  requires 0 <= 3
  requires Complex.pow(Complex.I(), 4 * m_1_0 + 3) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 3))
  requires 0 <= 4
  requires Complex.pow(Complex.I(), 4 * m_1_0) == Complex.pow(Complex.pow(Complex.I(), 4), m_1_0)
  requires Complex.pow(Complex.I(), 2) == Complex.mul(Complex.I(), Complex.I())
  requires Complex.pow(Complex.I(), 3) == Complex.mul(Complex.I(), Complex.mul(Complex.I(), Complex.I()))
  requires IccN(4 * m_1_0 + 1, 4 * m_1_0 + 1) == 
{ }

