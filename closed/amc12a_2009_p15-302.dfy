// CLOSED LEMMA for failing line amc12a_2009_p15-302 (theorem amc12a_2009_p15, Dafny line 302, OOR)
// closes with: K1 (instance) — single
// added: ghost var m0: nat := 0; assert Complex.sum(IccN(4 * m0 + 1, 4 * m0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()));
// Dafny: finished with 51 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_014/amc12a_2009_p15-302/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_014: amc12a_2009_p15-302 variant K1
// K1: Lean's instance argument m=0 made explicit (checked assert of h_grouped_blocks at m0:=0)
// Line lemma for failing line 302 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 302 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |           assert (Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
//   statement kind: instance of a hypothesis
// inside Lean have h₆, Lean lines 57-57:
//   lean  |     have h₆ := h_grouped_blocks 0

// 16 path(s) merged (paths); 56 shared facts; 16 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L302(m_11: int, m_3_0: int, m_3_0_0_0: int, m_3_0_2: int, m_3_0_2_0: int, m_3_0_3: int, m_4_0_2: int, m_7_2: int, n: int)
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
  requires exists m_3_1: nat :: n == 4 * m_3_1
  requires exists m_3_0_1: nat :: n == 4 * m_3_0_1
  requires (0 <= 0 && n == 4 * 0) || (0 <= 0 && n == 4 * 0) || (exists as_m3_0_0_3_0_0: nat :: n == 4 * as_m3_0_0_3_0_0)
  requires 0 <= m_3_0_2_0
  requires n == 4 * m_3_0_2_0
  requires 0 < 4 * m_3_0_2_0
  requires 0 <= 1
  requires Complex.I().Complex?
  requires 0 < 4 * m_3_0_2_0 ==> (forall v_0_5_k: int :: true)
  requires Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
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
  requires Complex.sum(IccN(1, 4 * 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()))
  requires 0 <= 4 * 2
  requires Complex.sum(IccN(1, 4 * 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()))
  requires 0 <= 4 * 3
  requires Complex.sum(IccN(1, 4 * 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(3.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I()))
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires ((0 <= m_3_0) && (0 <= m_3_0_0_0) && (0 <= m_3_0_3) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((0 <= m_3_0) && (0 <= m_3_0_0_0) && (0 <= m_3_0_3) && (4 * m_3_0_2_0 <= 0)) || ((0 <= m_3_0) && (0 <= m_3_0_0_0) && (m_3_0_3 < 0) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((0 <= m_3_0) && (0 <= m_3_0_0_0) && (m_3_0_3 < 0) && (4 * m_3_0_2_0 <= 0)) || ((0 <= m_3_0) && (m_3_0_0_0 < 0) && (0 <= m_3_0_3) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((0 <= m_3_0) && (m_3_0_0_0 < 0) && (0 <= m_3_0_3) && (4 * m_3_0_2_0 <= 0)) || ((0 <= m_3_0) && (m_3_0_0_0 < 0) && (m_3_0_3 < 0) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((0 <= m_3_0) && (m_3_0_0_0 < 0) && (m_3_0_3 < 0) && (4 * m_3_0_2_0 <= 0)) || ((m_3_0 < 0) && (0 <= m_3_0_0_0) && (0 <= m_3_0_3) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((m_3_0 < 0) && (0 <= m_3_0_0_0) && (0 <= m_3_0_3) && (4 * m_3_0_2_0 <= 0)) || ((m_3_0 < 0) && (0 <= m_3_0_0_0) && (m_3_0_3 < 0) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((m_3_0 < 0) && (0 <= m_3_0_0_0) && (m_3_0_3 < 0) && (4 * m_3_0_2_0 <= 0)) || ((m_3_0 < 0) && (m_3_0_0_0 < 0) && (0 <= m_3_0_3) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((m_3_0 < 0) && (m_3_0_0_0 < 0) && (0 <= m_3_0_3) && (4 * m_3_0_2_0 <= 0)) || ((m_3_0 < 0) && (m_3_0_0_0 < 0) && (m_3_0_3 < 0) && (0 <= 4 * m_3_0_2_0) && (Complex.sum(IccN(1, 4 * m_3_0_2_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(48.0).Complex?) && (Complex.of_real(49.0).Complex?) && (Complex.mul(Complex.of_real(49.0), Complex.I()).Complex?) && (Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())).Complex?)) || ((m_3_0 < 0) && (m_3_0_0_0 < 0) && (m_3_0_3 < 0) && (4 * m_3_0_2_0 <= 0))
  ensures  Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
{
  ghost var m0: nat := 0;
  assert Complex.sum(IccN(4 * m0 + 1, 4 * m0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()));
}
