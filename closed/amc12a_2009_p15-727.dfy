// NOT CLOSED — failing line amc12a_2009_p15-727: theorem amc12a_2009_p15, Dafny line 727 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
// hypotheses: 39 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 14 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L727(m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_8: int, n: int, k_7_2: nat)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall k_0_1: int :: true
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires forall m_1_1: nat :: true ==> (forall v_40_k: int :: true)
  requires forall m_1_1: nat :: true ==> Complex.sum(IccN(4 * m_1_1 + 1, 4 * m_1_1 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires forall m_2_1: nat :: true ==> (forall v_33_k: int :: true)
  requires forall m_2_1: nat :: true ==> Complex.sum(IccN(1, 4 * m_2_1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.I()))
  requires (0 <= m_2) || (m_2 < 0)
  requires !(exists m_1: nat :: n == 4 * m_1)
  requires (0 <= m_5) || (m_5 < 0)
  requires !(exists m_4: nat :: n == 4 * m_4)
  requires (0 <= m_8) || (m_8 < 0)
  requires exists m_7: nat :: n == 4 * m_7 + 1
  requires forall m_6_5: nat :: true ==> (forall v_295_k: int :: true)
  requires forall m_6_5: nat :: true ==> Complex.sum(IccN(1, 4 * m_6_5 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_5 as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_5 as real))), Complex.of_real(1.0)), Complex.I()))
  requires (0 <= m_7_0) || (m_7_0 < 0)
  requires exists m_7_1: nat :: n == 4 * m_7_1 + 1
  requires (0 <= m_7_3) || (m_7_3 < 0)
  requires (0 <= 0 && n == 4 * 0 + 1) || (0 <= 0 && n == 4 * 0 + 1) || (exists as_m7_0_7_0: nat :: n == 4 * as_m7_0_7_0 + 1)
  requires 0 <= m_7_2_0
  requires n == 4 * m_7_2_0 + 1
  requires 0 <= 1
  requires 0 <= 4 * m_7_2_0 + 1
  requires Complex.sum(IccN(1, 4 * m_7_2_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.of_real((m_7_2_0 as real)).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.of_real(1.0)).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.of_real(1.0)), Complex.I()).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.of_real(1.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * m_7_2_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_7_2_0 as real))), Complex.of_real(1.0)), Complex.I()))
  ensures   (false /*VC_GAP*/)
{ }

