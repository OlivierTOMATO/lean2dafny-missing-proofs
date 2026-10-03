// CLOSED LEMMA for failing line amc12a_2009_p15-743 (theorem amc12a_2009_p15, Dafny line 743, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2009_p15/L743.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 743 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 743 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |         assert (((((-(((47 as int) + 1))) as real) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == 49.0);  // hypothesis h_sum_n_plus_1' after `norm_cast` (Lean state) // 
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 5389-5403 h_sum_n_plus_1' after: ↑(Int.negSucc (47 : ℕ)) + ↑m * (Complex.I * Complex.I ^ (m * (4 : ℕ))).im * (4 : ℝ) +
    (Complex.I * Complex.I ^ (m * (4 : ℕ))).im =
  (49 : ℝ)
// inside Lean have h_solve_n_plus_1, Lean lines 112-117:
//   lean  |   have h_solve_n_plus_1 : n = 97 := by
//   lean  |     cases' h_form_n_plus_1 with m hm
//   lean  |     have h_sum_n_plus_1' := h_sum_n_plus_1 m
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
//   lean  |     -- Simplify the sum expression using the given properties and sums
//   lean  |     <;> ring_nf at * <;> norm_cast at * <;> linarith

// 1 path(s) merged (joined); 71 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L743(a_7_1_3__arg: Complex.complex, a_7_1_4__arg: Complex.complex, b_7_1_3__arg: Complex.complex, b_7_1_4__arg: Complex.complex, k_7_17__arg: nat, k_7_1_3__arg: nat, k_7_1_4__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_1_0: int, m_7_1_0_0: int, m_7_1_0_2: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_1_0: int, x_7_2: int, z_7_1_6__arg: Complex.complex, z_7_1_7__arg: Complex.complex, z_7_1_8__arg: Complex.complex, z_7_1_9__arg: Complex.complex, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
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
  requires forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
  requires (0 <= x_7_2) || (x_7_2 < 0)
  requires forall x_7_3: nat :: 4 * m_7_2_0 + 1 != 4 * x_7_3
  requires ((0 <= m_7_8) && (((4.0 * (m_7_8 as real) + 1.0 != 0.0) && (Complex.I().Complex?) && (0 <= 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (((4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0) && (Complex.I().Complex?) && (z_7_33__arg == Complex.I()) && (0 <= 4 * m_7_8 + 1) && (k_7_17__arg == 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (z_7_32__arg == Complex.pow(Complex.I(), 4 * m_7_8 + 1))) || (!(4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0)))) || ((4.0 * (m_7_8 as real) + 1.0 == 0.0) && (((4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0) && (Complex.I().Complex?) && (z_7_33__arg == Complex.I()) && (0 <= 4 * m_7_8 + 1) && (k_7_17__arg == 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (z_7_32__arg == Complex.pow(Complex.I(), 4 * m_7_8 + 1))) || (!(4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0)))))) || (m_7_8 < 0)
  requires forall m_7_9: nat :: (4.0 * (m_7_9 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_9 + 1)) == 0.0) && 0.0 - 2.0 * (m_7_9 as real) + (4.0 * (m_7_9 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_9 + 1)) == 2.0 * (m_7_9 as real) + 1.0
  requires Complex.pow(Complex.I(), 4 * m_7_2_0 + 1).Complex?
  requires 0.0 - 48.0 + (4.0 * (m_7_2_0 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_2_0 + 1)) == 48.0 + 1.0
  requires Int.pow(m_7_2_0, 1) == m_7_2_0
  requires 0 <= m_7_2_0 * 4
  requires Complex.pow(Complex.I(), m_7_2_0 * 4).Complex?
  requires Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4)).Complex?
  requires 0.0 - 48.0 + (m_7_2_0 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) == 49.0
  requires n == 1 + m_7_2_0 * 4
  requires ((0 <= m_7_1_0) && (((1.0 + (m_7_1_0 as real) * 4.0 != 0.0) && (Complex.I().Complex?) && (0 <= m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (((1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0) && (Complex.I().Complex?) && (a_7_1_3__arg == Complex.I()) && (z_7_1_7__arg == Complex.I()) && (0 <= m_7_1_0 * 4) && (k_7_1_3__arg == m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (b_7_1_3__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (z_7_1_6__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) && (a_7_1_4__arg == Complex.I()) && (z_7_1_9__arg == Complex.I()) && (k_7_1_4__arg == m_7_1_0 * 4) && (b_7_1_4__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (z_7_1_8__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)))) || (!(1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0)))) || ((1.0 + (m_7_1_0 as real) * 4.0 == 0.0) && (((1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0) && (Complex.I().Complex?) && (a_7_1_3__arg == Complex.I()) && (z_7_1_7__arg == Complex.I()) && (0 <= m_7_1_0 * 4) && (k_7_1_3__arg == m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (b_7_1_3__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (z_7_1_6__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) && (a_7_1_4__arg == Complex.I()) && (z_7_1_9__arg == Complex.I()) && (k_7_1_4__arg == m_7_1_0 * 4) && (b_7_1_4__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (z_7_1_8__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)))) || (!(1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0)))))) || (m_7_1_0 < 0)
  requires forall m_7_1_1: nat :: (1.0 + (m_7_1_1 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 0.0) && 0.0 - (m_7_1_1 as real) * 2.0 + (m_7_1_1 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 1.0 + (m_7_1_1 as real) * 2.0
  requires (0 <= x_7_1_0) || (x_7_1_0 < 0)
  requires forall x_7_1_1: nat :: 1 + m_7_2_0 * 4 != 4 * x_7_1_1
  requires ((m_7_2_0 as real) * 2.0 == 48.0) || ((m_7_2_0 as real) * 2.0 != 48.0)
  requires (m_7_2_0 as real) * 2.0 == 48.0
  requires 1.0 + (m_7_2_0 as real) * 2.0 == 49.0
  requires ((0 <= m_7_1_0_0) && (Complex.I().Complex?) && (0 <= 4 * m_7_1_0_0 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1).Complex?) && (((((4 * m_7_1_0_0 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1)) + ((4 * m_7_1_0_0 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1)) + ((4 * m_7_1_0_0 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1)) + ((4 * m_7_1_0_0 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1)) == 2.0) && (Complex.I().Complex?) && (0 <= 4 * m_7_1_0_0 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1).Complex?)) || (((4 * m_7_1_0_0 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1)) + ((4 * m_7_1_0_0 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1)) + ((4 * m_7_1_0_0 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1)) + ((4 * m_7_1_0_0 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1)) != 2.0))) || (m_7_1_0_0 < 0)
  requires forall m_7_1_0_1: nat :: ((4 * m_7_1_0_1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1)) + ((4 * m_7_1_0_1 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1 + 1)) + ((4 * m_7_1_0_1 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 2 + 1)) + ((4 * m_7_1_0_1 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 3 + 1)) == 2.0 && ((4 * m_7_1_0_1 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1)) + ((4 * m_7_1_0_1 + 1 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1 + 1)) + ((4 * m_7_1_0_1 + 2 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 2 + 1)) + ((4 * m_7_1_0_1 + 3 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 3 + 1)) == ((0 - (1 + 1)) as real)
  requires ((0 <= m_7_1_0_2) && (0 <= 1) && (0 <= 4 * m_7_1_0_2) && (((Real.sum(IccN(1, 4 * m_7_1_0_2), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_2) as real)) && (0 <= 1) && (0 <= 4 * m_7_1_0_2)) || (Real.sum(IccN(1, 4 * m_7_1_0_2), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != ((2 * m_7_1_0_2) as real)))) || (m_7_1_0_2 < 0)
  requires forall m_7_1_0_3: nat :: Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_3) as real) && Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == ((0 - 2 * m_7_1_0_3) as real)
  ensures  ((0 - (47 + 1)) as real) + (m_7_2_0 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) == 49.0
{ }

// side checks at the same line (not the reported failure): 2 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L743_side1(a_7_1_3__arg: Complex.complex, a_7_1_4__arg: Complex.complex, b_7_1_3__arg: Complex.complex, b_7_1_4__arg: Complex.complex, k_7_17__arg: nat, k_7_1_3__arg: nat, k_7_1_4__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_1_0: int, m_7_1_0_0: int, m_7_1_0_2: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_1_0: int, x_7_2: int, z_7_1_6__arg: Complex.complex, z_7_1_7__arg: Complex.complex, z_7_1_8__arg: Complex.complex, z_7_1_9__arg: Complex.complex, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
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
  requires forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
  requires (0 <= x_7_2) || (x_7_2 < 0)
  requires forall x_7_3: nat :: 4 * m_7_2_0 + 1 != 4 * x_7_3
  requires ((0 <= m_7_8) && (((4.0 * (m_7_8 as real) + 1.0 != 0.0) && (Complex.I().Complex?) && (0 <= 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (((4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0) && (Complex.I().Complex?) && (z_7_33__arg == Complex.I()) && (0 <= 4 * m_7_8 + 1) && (k_7_17__arg == 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (z_7_32__arg == Complex.pow(Complex.I(), 4 * m_7_8 + 1))) || (!(4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0)))) || ((4.0 * (m_7_8 as real) + 1.0 == 0.0) && (((4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0) && (Complex.I().Complex?) && (z_7_33__arg == Complex.I()) && (0 <= 4 * m_7_8 + 1) && (k_7_17__arg == 4 * m_7_8 + 1) && (Complex.pow(Complex.I(), 4 * m_7_8 + 1).Complex?) && (z_7_32__arg == Complex.pow(Complex.I(), 4 * m_7_8 + 1))) || (!(4.0 * (m_7_8 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_8 + 1)) == 0.0)))))) || (m_7_8 < 0)
  requires forall m_7_9: nat :: (4.0 * (m_7_9 as real) + 1.0 == 0.0 || Complex.Re(Complex.pow(Complex.I(), 4 * m_7_9 + 1)) == 0.0) && 0.0 - 2.0 * (m_7_9 as real) + (4.0 * (m_7_9 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_9 + 1)) == 2.0 * (m_7_9 as real) + 1.0
  requires Complex.pow(Complex.I(), 4 * m_7_2_0 + 1).Complex?
  requires 0.0 - 48.0 + (4.0 * (m_7_2_0 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_2_0 + 1)) == 48.0 + 1.0
  requires Int.pow(m_7_2_0, 1) == m_7_2_0
  requires 0 <= m_7_2_0 * 4
  requires Complex.pow(Complex.I(), m_7_2_0 * 4).Complex?
  requires Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4)).Complex?
  requires 0.0 - 48.0 + (m_7_2_0 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_2_0 * 4))) == 49.0
  requires n == 1 + m_7_2_0 * 4
  requires ((0 <= m_7_1_0) && (((1.0 + (m_7_1_0 as real) * 4.0 != 0.0) && (Complex.I().Complex?) && (0 <= m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (((1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0) && (Complex.I().Complex?) && (a_7_1_3__arg == Complex.I()) && (z_7_1_7__arg == Complex.I()) && (0 <= m_7_1_0 * 4) && (k_7_1_3__arg == m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (b_7_1_3__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (z_7_1_6__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) && (a_7_1_4__arg == Complex.I()) && (z_7_1_9__arg == Complex.I()) && (k_7_1_4__arg == m_7_1_0 * 4) && (b_7_1_4__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (z_7_1_8__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)))) || (!(1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0)))) || ((1.0 + (m_7_1_0 as real) * 4.0 == 0.0) && (((1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0) && (Complex.I().Complex?) && (a_7_1_3__arg == Complex.I()) && (z_7_1_7__arg == Complex.I()) && (0 <= m_7_1_0 * 4) && (k_7_1_3__arg == m_7_1_0 * 4) && (Complex.pow(Complex.I(), m_7_1_0 * 4).Complex?) && (b_7_1_3__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)).Complex?) && (z_7_1_6__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) && (a_7_1_4__arg == Complex.I()) && (z_7_1_9__arg == Complex.I()) && (k_7_1_4__arg == m_7_1_0 * 4) && (b_7_1_4__arg == Complex.pow(Complex.I(), m_7_1_0 * 4)) && (z_7_1_8__arg == Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4)))) || (!(1.0 + (m_7_1_0 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0 * 4))) == 0.0)))))) || (m_7_1_0 < 0)
  requires forall m_7_1_1: nat :: (1.0 + (m_7_1_1 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 0.0) && 0.0 - (m_7_1_1 as real) * 2.0 + (m_7_1_1 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 1.0 + (m_7_1_1 as real) * 2.0
  requires (0 <= x_7_1_0) || (x_7_1_0 < 0)
  requires forall x_7_1_1: nat :: 1 + m_7_2_0 * 4 != 4 * x_7_1_1
  requires ((m_7_2_0 as real) * 2.0 == 48.0) || ((m_7_2_0 as real) * 2.0 != 48.0)
  requires (m_7_2_0 as real) * 2.0 == 48.0
  requires 1.0 + (m_7_2_0 as real) * 2.0 == 49.0
  requires ((0 <= m_7_1_0_0) && (Complex.I().Complex?) && (0 <= 4 * m_7_1_0_0 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1).Complex?) && (((((4 * m_7_1_0_0 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1)) + ((4 * m_7_1_0_0 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1)) + ((4 * m_7_1_0_0 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1)) + ((4 * m_7_1_0_0 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1)) == 2.0) && (Complex.I().Complex?) && (0 <= 4 * m_7_1_0_0 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 1 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 2 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1).Complex?) && (0 <= 4 * m_7_1_0_0 + 3 + 1) && (Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1).Complex?)) || (((4 * m_7_1_0_0 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1)) + ((4 * m_7_1_0_0 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 1 + 1)) + ((4 * m_7_1_0_0 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 2 + 1)) + ((4 * m_7_1_0_0 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_0 + 3 + 1)) != 2.0))) || (m_7_1_0_0 < 0)
  requires forall m_7_1_0_1: nat :: ((4 * m_7_1_0_1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1)) + ((4 * m_7_1_0_1 + 1 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1 + 1)) + ((4 * m_7_1_0_1 + 2 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 2 + 1)) + ((4 * m_7_1_0_1 + 3 + 1) as real) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 3 + 1)) == 2.0 && ((4 * m_7_1_0_1 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1)) + ((4 * m_7_1_0_1 + 1 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 1 + 1)) + ((4 * m_7_1_0_1 + 2 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 2 + 1)) + ((4 * m_7_1_0_1 + 3 + 1) as real) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_1_0_1 + 3 + 1)) == ((0 - (1 + 1)) as real)
  requires ((0 <= m_7_1_0_2) && (0 <= 1) && (0 <= 4 * m_7_1_0_2) && (((Real.sum(IccN(1, 4 * m_7_1_0_2), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_2) as real)) && (0 <= 1) && (0 <= 4 * m_7_1_0_2)) || (Real.sum(IccN(1, 4 * m_7_1_0_2), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != ((2 * m_7_1_0_2) as real)))) || (m_7_1_0_2 < 0)
  requires forall m_7_1_0_3: nat :: Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_3) as real) && Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == ((0 - 2 * m_7_1_0_3) as real)
  ensures  0 <= m_7_2_0 * 4
{ }

