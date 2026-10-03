// CLOSED LEMMA for failing line amc12a_2009_p15-242 (theorem amc12a_2009_p15, Dafny line 242, OOR)
// closes with: K3 (locality) — single
// added: only `requires forall k :: pow(I,k%4) == pow(I,k)` (h_periodicity, the hypothesis simp_all rewrote) kept
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_013/amc12a_2009_p15-242/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 242 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 242 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |     assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 955-1075
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 955-1075 h_periodicity after: ∀ (k : ℕ), (Complex.I ^ (k % (4 : ℕ))).re = (Complex.I ^ k).re ∧ (Complex.I ^ (k % (4 : ℕ))).im = (Complex.I ^ k).im
// inside Lean have h_grouped_blocks, Lean lines 23-39:
//   lean  |   have h_grouped_blocks : ∀ m : ℕ, ∑ k in Finset.Icc (4 * m + 1) (4 * m + 4), ↑k * Complex.I ^ k = 2 - 2 * Complex.I := by
//   lean  |     intro m
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
//   lean  |     <;> ring_nf
//   lean  |     <;> norm_num
//   lean  |     <;> simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
//   lean  |     <;> ring_nf
//   lean  |     <;> norm_num
//   lean  |     <;> simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
//   lean  |     <;> ring_nf
//   lean  |     <;> norm_num
//   lean  |     <;> simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
//   lean  |     <;> ring_nf
//   lean  |     <;> norm_num
//   lean  |     <;> simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
//   lean  |     <;> ring_nf
//   lean  |     <;> norm_num

// 3 path(s) merged (paths); 41 shared facts; 3 distinct path conditions
// ABLATION K3: only h_periodicity (the hypothesis simp_all rewrote into this fact); everything else dropped (sufficiency)

lemma {:induction false} vc_amc12a_2009_p15_L242(k_1_4: nat, m_11: int, m_1_0: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: nat)
  // [K3 dropped] requires 0 <= n
  // [K3 dropped] requires 0 <= m_3_0_2
  // [K3 dropped] requires 0 <= m_4_0_2
  // [K3 dropped] requires 0 <= m_7_2
  // [K3 dropped] requires 0 <= m_11
  // [K3 dropped] requires 0 < n
  // [K3 dropped] requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  // [K3 dropped] requires forall k_0_1: int :: true
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  // [K3 dropped] requires 0 <= m_1_0
  // [K3 dropped] requires Complex.I().Complex?
  // [K3 dropped] requires 0 <= 4 * m_1_0
  // [K3 dropped] requires 0 <= 1
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 1))
  // [K3 dropped] requires 0 <= 4 * m_1_0 + 1
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 1 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 1), Complex.pow(Complex.I(), 1))
  // [K3 dropped] requires 0 <= 4 * m_1_0 + 2
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 2 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 2), Complex.pow(Complex.I(), 1))
  // [K3 dropped] requires 0 <= 2
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 2) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 2))
  // [K3 dropped] requires 0 <= 4 * m_1_0 + 3
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 3 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0 + 3), Complex.pow(Complex.I(), 1))
  // [K3 dropped] requires 0 <= 3
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0 + 3) == Complex.mul(Complex.pow(Complex.I(), 4 * m_1_0), Complex.pow(Complex.I(), 3))
  // [K3 dropped] requires 0 <= 4
  // [K3 dropped] requires Complex.pow(Complex.I(), 4 * m_1_0) == Complex.pow(Complex.pow(Complex.I(), 4), m_1_0)
  // [K3 dropped] requires Complex.pow(Complex.I(), 2) == Complex.mul(Complex.I(), Complex.I())
  // [K3 dropped] requires Complex.pow(Complex.I(), 3) == Complex.mul(Complex.I(), Complex.mul(Complex.I(), Complex.I()))
  // [K3 dropped] requires IccN(4 * m_1_0 + 1, 4 * m_1_0 + 1) == {4 * m_1_0 + 1}
  // [K3 dropped] requires Complex.pow(Complex.I(), 1) == Complex.I()
  // [K3 dropped] requires 4 * m_1_0 + 1 <= 4 * m_1_0 + 1 + 1
  // [K3 dropped] requires ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))).requires(4 * m_1_0 + 1 + 1)
  // [K3 dropped] requires Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 1 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m_1_0 + 1 + 1))
  // [K3 dropped] requires 4 * m_1_0 + 1 <= 4 * m_1_0 + 2 + 1
  // [K3 dropped] requires ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))).requires(4 * m_1_0 + 2 + 1)
  // [K3 dropped] requires Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 2 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m_1_0 + 2 + 1))
  // [K3 dropped] requires 4 * m_1_0 + 1 <= 4 * m_1_0 + 3 + 1
  // [K3 dropped] requires ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))).requires(4 * m_1_0 + 3 + 1)
  // [K3 dropped] requires Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 3 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * m_1_0 + 1, 4 * m_1_0 + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m_1_0 + 3 + 1))
  // [K3 dropped] requires Real.sum(IccN(1, n), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 48.0
  // [K3 dropped] requires Real.sum(IccN(1, n), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 49.0
  // [K3 dropped] requires ((0 <= k_1_4) && (0 <= k_1_4 % 4) && (Complex.pow(Complex.I(), k_1_4 % 4).Complex?) && (Complex.pow(Complex.I(), k_1_4).Complex?) && (Complex.Re(Complex.pow(Complex.I(), k_1_4 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_1_4)))) || ((0 <= k_1_4) && (0 <= k_1_4 % 4) && (Complex.pow(Complex.I(), k_1_4 % 4).Complex?) && (Complex.pow(Complex.I(), k_1_4).Complex?) && (Complex.Re(Complex.pow(Complex.I(), k_1_4 % 4)) != Complex.Re(Complex.pow(Complex.I(), k_1_4)))) || (k_1_4 < 0)
  ensures  forall k_1_5: nat :: Complex.Re(Complex.pow(Complex.I(), k_1_5 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_1_5)) && Complex.Im(Complex.pow(Complex.I(), k_1_5 % 4)) == Complex.Im(Complex.pow(Complex.I(), k_1_5))
{
  
}
