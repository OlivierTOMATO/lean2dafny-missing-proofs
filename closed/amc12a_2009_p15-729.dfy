// NOT CLOSED — failing line amc12a_2009_p15-729: theorem amc12a_2009_p15, Dafny line 729 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as 
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
// hypotheses: 47 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 60 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L729(k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_8: int, n: int)
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
  requires (2.0 * (m_7_2_0 as real) == 48.0) || (2.0 * (m_7_2_0 as real) != 48.0)
  requires 2.0 * (m_7_2_0 as real) == 48.0
  requires 2.0 * (m_7_2_0 as real) + 1.0 == 49.0
  requires ((0 <= k_7_2) && (Complex.I().Complex?) && (0 <= k_7_2 % 4) && (Complex.pow(Complex.I(), k_7_2 % 4).Complex?) && (Complex.pow(Complex.I(), k_7_2).Complex?) && (((Complex.Re(Complex.pow(Complex.I(), k_7_2 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_7_2))) && (Complex.I().Complex?) && (0 <= k_7_2 % 4) && (Complex.pow(Complex.I(), k_7_2 % 4).Complex?) && (Complex.pow(Complex.I(), k_7_2).Complex?)) || (Complex.Re(Complex.pow(Complex.I(), k_7_2 % 4)) != Complex.Re(Complex.pow(Complex.I(), k_7_2))))) || (k_7_2 < 0)
  requires forall k_7_3: nat :: Complex.Re(Complex.pow(Complex.I(), k_7_3 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_7_3)) && Complex.Im(Complex.pow(Complex.I(), k_7_3 % 4)) == Complex.Im(Complex.pow(Complex.I(), k_7_3))
  requires ((0 <= m_7_4) && (Complex.I().Complex?) && (0 <= 4 * m_7_4 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 1).Complex?) && (0 <= 4 * m_7_4 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 1 + 1).Complex?) && (0 <= 4 * m_7_4 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 2 + 1).Complex?) && (0 <= 4 * m_7_4 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 3 + 1).Complex?) && ((((4.0 * (m_7_4 as real) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 1)) + (4.0 * (m_7_4 as real) + 1.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 1 + 1)) + (4.0 * (m_7_4 as real) + 2.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 2 + 1)) + (4.0 * (m_7_4 as real) + 3.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 3 + 1)) == 2.0) && (Complex.I().Complex?) && (0 <= 4 * m_7_4 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 1).Complex?) && (0 <= 4 * m_7_4 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 1 + 1).Complex?) && (0 <= 4 * m_7_4 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 2 + 1).Complex?) && (0 <= 4 * m_7_4 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_4 + 3 + 1).Complex?)) || ((4.0 * (m_7_4 as real) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 1)) + (4.0 * (m_7_4 as real) + 1.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 1 + 1)) + (4.0 * (m_7_4 as real) + 2.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 2 + 1)) + (4.0 * (m_7_4 as real) + 3.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_4 + 3 + 1)) != 2.0))) || (m_7_4 < 0)
  requires forall m_7_5: nat :: (4.0 * (m_7_5 as real) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) + (4.0 * (m_7_5 as real) + 1.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) + (4.0 * (m_7_5 as real) + 2.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) + (4.0 * (m_7_5 as real) + 3.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 2.0 && (4.0 * (m_7_5 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) + (4.0 * (m_7_5 as real) + 1.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) + (4.0 * (m_7_5 as real) + 2.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) + (4.0 * (m_7_5 as real) + 3.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 0.0 - 2.0
  requires ((0 <= m_7_6) && (0 <= 1) && (0 <= 4 * m_7_6) && (((Real.sum(IccN(1, 4 * m_7_6), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_6 as real)) && (0 <= 1) && (0 <= 4 * m_7_6)) || (Real.sum(IccN(1, 4 * m_7_6), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != 2.0 * (m_7_6 as real)))) || (m_7_6 < 0)
  ensures   forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
{ }

