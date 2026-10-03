// CLOSED LEMMA for failing line amc12a_2009_p15-742 (theorem amc12a_2009_p15, Dafny line 742, OOR)
// closes with: K3 (locality) — single
// added: keep only the pre-norm_cast hypothesis h_sum_multiple_of_4 (∀m, 2.0*(m as real) form) (norm_cast at * rewrote it alone)
// Dafny: finished with 9 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p15-742/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 742 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 742 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |         assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == ((2 * m) as real)) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == (-(((2 * m) as int)) as real))));  // hy
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 5389-5403 h_sum_multiple_of_4 after: ∀ (m : ℕ),
//    ∑ x ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m), ↑x * (Complex.I ^ x).re = ↑((2 : ℕ) * m) ∧
//      ∑ x ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m), ↑x * (Complex.I ^ x).im = ↑(-↑((2 : ℕ) * m))
// inside Lean have h_solve_n_plus_1, Lean lines 112-117:
//   lean  |   have h_solve_n_plus_1 : n = 97 := by
//   lean  |     cases' h_form_n_plus_1 with m hm
//   lean  |     have h_sum_n_plus_1' := h_sum_n_plus_1 m
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
//   lean  |     -- Simplify the sum expression using the given properties and sums
//   lean  |     <;> ring_nf at * <;> norm_cast at * <;> linarith

// 1 path(s) merged (joined); 70 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L742(a_7_1_3__arg: Complex.complex, a_7_1_4__arg: Complex.complex, b_7_1_3__arg: Complex.complex, b_7_1_4__arg: Complex.complex, k_7_17__arg: nat, k_7_1_3__arg: nat, k_7_1_4__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_1_0: int, m_7_1_0_0: int, m_7_1_0_2: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_1_0: int, x_7_2: int, z_7_1_6__arg: Complex.complex, z_7_1_7__arg: Complex.complex, z_7_1_8__arg: Complex.complex, z_7_1_9__arg: Complex.complex, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
  requires forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
  ensures  forall m_7_1_0_3: nat :: Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_3) as real) && Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == ((0 - 2 * m_7_1_0_3) as real)
{ }
