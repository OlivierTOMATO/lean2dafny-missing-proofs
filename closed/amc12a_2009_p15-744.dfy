// CLOSED LEMMA for failing line amc12a_2009_p15-744 (theorem amc12a_2009_p15, Dafny line 744, OOR)
// closes with: simplest (simplest) — simplest-close
// added: Complex.pow opaque in MathPrelude + the step as its own lemma over h_sum_n_plus_1 with a forall-statement asserting the instance and 3 cast equalities
// Dafny: finished with 20 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p15-744/SC_lib.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 744 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/_libpow/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 744 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |         assert (forall m: nat :: ((((1 + (m * 4)) == 0) || (Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4)))) == 0.0)) && ((((-(((m * 2) as int)) as real) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 5389-5403 h_sum_n_plus_1 after: ∀ (m : ℕ),
//    ((1 : ℕ) + m * (4 : ℕ) = (0 : ℕ) ∨ (Complex.I * Complex.I ^ (m * (4 : ℕ))).re = (0 : ℝ)) ∧
//      ↑(-↑(m * (2 : ℕ))) + ↑m * (Complex.I * Complex.I ^ (m * (4 : ℕ))).im * (4 : ℝ) +
//          (Co
// inside Lean have h_solve_n_plus_1, Lean lines 112-117:
//   lean  |   have h_solve_n_plus_1 : n = 97 := by
//   lean  |     cases' h_form_n_plus_1 with m hm
//   lean  |     have h_sum_n_plus_1' := h_sum_n_plus_1 m
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
//   lean  |     -- Simplify the sum expression using the given properties and sums
//   lean  |     <;> ring_nf at * <;> norm_cast at * <;> linarith

// 1 path(s) merged (joined); 73 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L744(a_7_1_0_3__arg: Complex.complex, a_7_1_0_4__arg: Complex.complex, a_7_1_3__arg: Complex.complex, a_7_1_4__arg: Complex.complex, b_7_1_0_3__arg: Complex.complex, b_7_1_0_4__arg: Complex.complex, b_7_1_3__arg: Complex.complex, b_7_1_4__arg: Complex.complex, k_7_17__arg: nat, k_7_1_0_13__arg: nat, k_7_1_0_14__arg: nat, k_7_1_3__arg: nat, k_7_1_4__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_1_0: int, m_7_1_0_0: int, m_7_1_0_2: int, m_7_1_0_4: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_1_0: int, x_7_2: int, z_7_1_0_26__arg: Complex.complex, z_7_1_0_27__arg: Complex.complex, z_7_1_0_28__arg: Complex.complex, z_7_1_0_29__arg: Complex.complex, z_7_1_6__arg: Complex.complex, z_7_1_7__arg: Complex.complex, z_7_1_8__arg: Complex.complex, z_7_1_9__arg: Complex.complex, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
  requires forall m_7_1_1: nat :: (1.0 + (m_7_1_1 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 0.0) && 0.0 - (m_7_1_1 as real) * 2.0 + (m_7_1_1 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_1 * 4))) == 1.0 + (m_7_1_1 as real) * 2.0
  ensures  forall m_7_1_0_5: nat :: (1 + m_7_1_0_5 * 4 == 0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == 0.0) && ((0 - m_7_1_0_5 * 2) as real) + (m_7_1_0_5 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == ((1 + m_7_1_0_5 * 2) as real)
{
  // SC: the step as its own lemma over only the hypothesis norm_cast rewrote (K3), with the instance (K1) and cast facts (K4)
  forall m_7_1_0_5: nat
    ensures (1 + m_7_1_0_5 * 4 == 0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == 0.0) && ((0 - m_7_1_0_5 * 2) as real) + (m_7_1_0_5 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == ((1 + m_7_1_0_5 * 2) as real)
  {
    assert (1.0 + (m_7_1_0_5 as real) * 4.0 == 0.0 || Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == 0.0) && 0.0 - (m_7_1_0_5 as real) * 2.0 + (m_7_1_0_5 as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) * 4.0 + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), m_7_1_0_5 * 4))) == 1.0 + (m_7_1_0_5 as real) * 2.0;
    assert (1 + m_7_1_0_5 * 4 == 0) == (1.0 + (m_7_1_0_5 as real) * 4.0 == 0.0);
    assert ((0 - m_7_1_0_5 * 2) as real) == 0.0 - (m_7_1_0_5 as real) * 2.0;
    assert ((1 + m_7_1_0_5 * 2) as real) == 1.0 + (m_7_1_0_5 as real) * 2.0;
  }
}
