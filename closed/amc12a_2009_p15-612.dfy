// CLOSED LEMMA for failing line amc12a_2009_p15-612 (theorem amc12a_2009_p15, Dafny line 612, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2009_p15/L612.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 612 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 612 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |       assert (Complex.sum(IccN(1, (4 * 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I())));  // instance 
//   statement kind: instance of a hypothesis
// inside Lean have h₆, Lean lines 57-57:
//   lean  |     have h₆ := h_grouped_blocks 0

// 8 path(s) merged (paths); 50 shared facts; 8 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L612(m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_6_0: int, m_7_2: int, m_8: int, n: int)
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
  requires !(exists m_1: nat :: n == 4 * m_1)
  requires !(exists m_4: nat :: n == 4 * m_4)
  requires exists m_7: nat :: n == 4 * m_7 + 1
  requires 0 <= m_6_0
  requires 0 <= 4 * m_6_0 + 1
  requires 0 <= 4 * m_6_0 + 4
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 1
  requires 0 <= 4 * m_6_0
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real((m_6_0 as real)).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()))
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(0.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
  requires 0 <= 4 * 1
  requires Complex.sum(IccN(1, 4 * 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I())).Complex?
  requires ((0 <= m_2) && (0 <= m_5) && (0 <= m_8)) || ((0 <= m_2) && (0 <= m_5) && (m_8 < 0)) || ((0 <= m_2) && (m_5 < 0) && (0 <= m_8)) || ((0 <= m_2) && (m_5 < 0) && (m_8 < 0)) || ((m_2 < 0) && (0 <= m_5) && (0 <= m_8)) || ((m_2 < 0) && (0 <= m_5) && (m_8 < 0)) || ((m_2 < 0) && (m_5 < 0) && (0 <= m_8)) || ((m_2 < 0) && (m_5 < 0) && (m_8 < 0))
  ensures  Complex.sum(IccN(1, 4 * 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()))
{ }

// side checks at the same line (not the reported failure): 2 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L612_side1(m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_6_0: int, m_7_2: int, m_8: int, n: int)
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
  requires !(exists m_1: nat :: n == 4 * m_1)
  requires !(exists m_4: nat :: n == 4 * m_4)
  requires exists m_7: nat :: n == 4 * m_7 + 1
  requires 0 <= m_6_0
  requires 0 <= 4 * m_6_0 + 1
  requires 0 <= 4 * m_6_0 + 4
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 1
  requires 0 <= 4 * m_6_0
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real((m_6_0 as real)).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()))
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(0.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
  requires ((0 <= m_2) && (0 <= m_5) && (0 <= m_8)) || ((0 <= m_2) && (0 <= m_5) && (m_8 < 0)) || ((0 <= m_2) && (m_5 < 0) && (0 <= m_8)) || ((0 <= m_2) && (m_5 < 0) && (m_8 < 0)) || ((m_2 < 0) && (0 <= m_5) && (0 <= m_8)) || ((m_2 < 0) && (0 <= m_5) && (m_8 < 0)) || ((m_2 < 0) && (m_5 < 0) && (0 <= m_8)) || ((m_2 < 0) && (m_5 < 0) && (m_8 < 0))
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L612_side2(m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_6_0: int, m_7_2: int, m_8: int, n: int)
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
  requires !(exists m_1: nat :: n == 4 * m_1)
  requires !(exists m_4: nat :: n == 4 * m_4)
  requires exists m_7: nat :: n == 4 * m_7 + 1
  requires 0 <= m_6_0
  requires 0 <= 4 * m_6_0 + 1
  requires 0 <= 4 * m_6_0 + 4
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 1
  requires 0 <= 4 * m_6_0
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real((m_6_0 as real)).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()))
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(0.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
  requires ((0 <= m_2) && (0 <= m_5) && (0 <= m_8)) || ((0 <= m_2) && (0 <= m_5) && (m_8 < 0)) || ((0 <= m_2) && (m_5 < 0) && (0 <= m_8)) || ((0 <= m_2) && (m_5 < 0) && (m_8 < 0)) || ((m_2 < 0) && (0 <= m_5) && (0 <= m_8)) || ((m_2 < 0) && (0 <= m_5) && (m_8 < 0)) || ((m_2 < 0) && (m_5 < 0) && (0 <= m_8)) || ((m_2 < 0) && (m_5 < 0) && (m_8 < 0))
  ensures  0 <= 4 * 1
{ }

