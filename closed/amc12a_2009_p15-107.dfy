// CLOSED LEMMA for failing line amc12a_2009_p15-107 (theorem amc12a_2009_p15, Dafny line 107, OOR)
// closes with: K3 (locality) — single
// added: only a_1 (real Re/Im form, before ring_nf) + int facts; group-1 ensures (VC_GAP conjunct omitted); side checks stripped
// Dafny: finished with 62 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_012/amc12a_2009_p15-107/K3g1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_012 ablation variant K3g1: GROUP-1 only: a_1 (real form) + int facts kept (sufficiency); side checks stripped
// Line lemma for failing line 107 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 107 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |         assert ((Real.sum(IccN(1, (n_1 * 4)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == ((n_1 as real) * 2.0)) && (Real.sum(IccN(1, (n_1 * 4)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -(((n_1 as real) * 2.0))));  // hypothesis a_1 aft
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 2143-2155 a_1 after: ∑ x ∈ Finset.Icc (1 : ℕ) (n_1 * (4 : ℕ)), ↑x * (Complex.I ^ x).re = ↑n_1 * (2 : ℝ) ∧
//     ∑ x ∈ Finset.Icc (1 : ℕ) (n_1 * (4 : ℕ)), ↑x * (Complex.I ^ x).im = -(↑n_1 * (2 : ℝ))
// Lean theorem statement, Lean lines 13-126:
//   lean  | theorem amc12a_2009_p15 (n : ℕ) (h₀ : 0 < n)
//   lean  |   (h₁ : (∑ k in Finset.Icc 1 n, ↑k * Complex.I ^ k) = 48 + 49 * Complex.I) : n = 97 := by
//   lean  |   have h_periodicity : ∀ k : ℕ, Complex.I ^ (k % 4) = Complex.I ^ k := by
//   lean  |     intro k
//   lean  |     have h₂ : ∀ n : ℕ, Complex.I ^ n = Complex.I ^ (n % 4) := by
//   lean  |       intro n
//   lean  |       rw [← Nat.mod_add_div n 4]
//   lean  |       simp [pow_add, pow_mul, Complex.I_mul_I, mul_assoc, mul_comm, mul_left_comm]
//   lean  |     rw [h₂ k]
//   lean  |   
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
//   lean  |   
//   lean  |   have h_sum_multiple_of_4 : ∀ m : ℕ, ∑ k in Finset.Icc 1 (4 * m), ↑k * Complex.I ^ k = 2 * m - 2 * m * Complex.I := by
//   lean  |     intro m
//   lean  |     have h_sum_group := h_grouped_blocks m
//   lean  |     have h_sum_periodicity := h_periodicity
//   lean  |     clear h_periodicity
//   lean  |     induction m <;> simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three]
//   lean  |     <;> ring_nf at * <;> norm_num <;> simp_all [Complex.ext_iff]
//   lean  |     <;> norm_num <;> linarith
//   lean  |   
//   lean  |   have h_contradiction_multiple_of_4 : ¬∃ m : ℕ, n = 4 * m := by
//   lean  |     intro h
//   lean  |     obtain ⟨m, rfl⟩ := h
//   lean  |     have h₂ := h_sum_multiple_of_4 0
//   lean  |     have h₃ := h_sum_multiple_of_4 1
//   lean  |     have h₄ := h_sum_multiple_of_4 2
//   lean  |     have h₅ := h_sum_multiple_of_4 3
//   lean  |     have h₆ := h_grouped_blocks 0
//   lean  |     have h₇ := h_grouped_blocks 1
//   lean  |     have h₈ := h_grouped_blocks 2
//   lean  |     have h₉ := h_grouped_blocks 3
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.mul_div_cancel_left]
//   lean  |     <;> ring_nf at *
//   lean  |     <;> simp_all [Complex.ext_iff]
//   lean  |     <;> norm_num
//   lean  |     <;> linarith
//   lean  |   
//   lean  |   have h_n_not_multiple_of_4 : ¬∃ m : ℕ, n = 4 * m := by
//   lean  |     intro h
//   lean  |     obtain ⟨m, hm⟩ := h
//   lean  |     have h₂ := h_sum_multiple_of_4 m
//   lean  |     have h₃ := h_grouped_blocks m
//   lean  |     have h₄ := h_periodicity 0
//   lean  |     have h₅ := h_periodicity 1
//   lean  |     have h₆ := h_periodicity 2
//   lean  |     have h₇ := h_periodicity 3
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three]
//   lean  |     all_goals
//   lean  |       linarith
//   lean  |   
//   lean  |   have h_form_n_plus_1 : ∃ m : ℕ, n = 4 * m + 1 := by
//   lean  |     -- We know n is not a multiple of 4, so it must be of the form 4m + 1, 4m + 2, or 4m + 3.
//   lean  |     have h₂ : n % 4 = 1 := by
//   lean  |       by_contra! h
//   lean  |       -- If n is not of the form 4m + 1, then it must be of the form 4m + 2, 4m + 3, or 4m.
//   lean  |       have h₃ : ∃ m : ℕ, n = 4 * m ∨ n = 4 * m + 2 ∨ n = 4 * m + 3 := by
//   lean  |         -- We can express n as 4m, 4m + 1, 4m + 2, or 4m + 3.
//   lean  |         have : n % 4 = 0 ∨ n % 4 = 1 ∨ n % 4 = 2 ∨ n % 4 = 3 := by omega
//   lean  |         -- For each case, we can find an m such that n = 4m, 4m + 1, 4m + 2, or 4m + 3.
//   lean  |         rcases this with (h₄ | h₄ | h₄ | h₄) <;> use n / 4 <;> omega
//   lean  |       -- If n is not of the form 4m + 1, then it must be of the form 4m + 2, 4m + 3, or 4m.
//   lean  |       rcases h₃ with ⟨m, h₃ | h₃ | h₃⟩ <;> simp_all [Finset.sum_Icc_succ_top, Complex.ext_iff, pow_add,
//   lean  |         pow_mul, pow_two, pow_three]
//   lean  |       -- For each case, we derive a contradiction.
//   lean  |       <;> linarith [h_sum_multiple_of_4 0, h_sum_multiple_of_4 1, h_sum_multiple_of_4 2,
//   lean  |         h_sum_multiple_of_4 3]
//   lean  |     -- Since n is not a multiple of 4, it must be of the form 4m + 1.
//   lean  |     use n / 4
//   lean  |     omega
//   lean  |   have h_sum_n_plus_1 : ∀ m : ℕ, ∑ k in Finset.Icc 1 (4 * m + 1), ↑k * Complex.I ^ k = 2 * m + (2 * m + 1) * Complex.I := by
//   lean  |     intro m
//   lean  |     have h₂ := h_grouped_blocks m
//   lean  |     have h₃ := h_grouped_blocks 0
//   lean  |     have h₄ := h_sum_multiple_of_4 m
//   lean  |     have h₅ := h_sum_multiple_of_4 0
//   lean  |     have h₆ := h_sum_multiple_of_4 1
//   lean  |     have h₇ := h_sum_multiple_of_4 2
//   lean  |     have h₈ := h_grouped_blocks 1
//   lean  |     have h₉ := h_grouped_blocks 2
//   lean  |     have h₁₀ := h_grouped_blocks 3
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.mod_eq_of_lt, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_succ, mul_add, mul_succ, mul_one, add_assoc]
//   lean  |     <;> linarith
//   lean  |   have h_solve_n_plus_1 : n = 97 := by
//   lean  |     cases' h_form_n_plus_1 with m hm
//   lean  |     have h_sum_n_plus_1' := h_sum_n_plus_1 m
//   lean  |     simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
//   lean  |     -- Simplify the sum expression using the given properties and sums
//   lean  |     <;> ring_nf at * <;> norm_cast at * <;> linarith
//   lean  |   obtain ⟨m, rfl⟩ := h_form_n_plus_1
//   lean  |   simp_all [Finset.sum_Icc_succ_top]
//   lean  |   -- Simplify the sum expression using the properties of the sum and the periodicity of the powers of i.
//   lean  |   -- This step involves algebraic manipulation and properties of complex numbers.
//   lean  |   <;> ring_nf
//   lean  |   -- Normalize the expression to simplify it further.
//   lean  |   <;> linarith
//   lean  | 

// 2 path(s) merged (joined); 76 shared facts; 2 distinct path conditions; 2 claims conjoined
lemma {:induction false} vc_amc12a_2009_p15_L107(a_1_1_10__arg: Complex.complex, a_1_1_9__arg: Complex.complex, b_1_1_10__arg: Complex.complex, b_1_1_9__arg: Complex.complex, f_1_1_2__arg: nat -> Complex.complex, hi_1_1_2__arg: nat, k_1_1_11: nat, lo_1_1_2__arg: nat, m: nat, m_1_1_0: int, n: nat, n_1_1_1_0: int, r_1_1_10__arg: real, r_1_1_9__arg: real, s_1_1_2__arg: set<nat>, x_0_1_1_0: int)
  requires 0 <= n
  requires 0 <= m
  requires 0 < n
  // K3-dropped: requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  // K3-dropped: requires forall m_2: nat :: forall k: int :: true
  // K3-dropped: requires forall m_2: nat :: Complex.sum(IccN(4 * m_2 + 1, 4 * m_2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  // K3-dropped: requires Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  // K3-dropped: requires forall k_4: int :: true
  // K3-dropped: requires forall k_4: nat :: Complex.pow(Complex.I(), k_4 % 4) == Complex.pow(Complex.I(), k_4)
  requires m != 0
  requires 0 <= 1
  requires 0 <= 4 * tsub(m, 1) + 1
  requires 0 <= 4 * tsub(m, 1) + 4
  // K3-dropped: requires Complex.sum(IccN(4 * tsub(m, 1) + 1, 4 * tsub(m, 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  // K3-dropped: requires Complex.of_real(2.0).Complex?
  // K3-dropped: requires Complex.I().Complex?
  // K3-dropped: requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  // K3-dropped: requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  // K3-dropped: requires ((Complex.sum(IccN(4 * tsub(m, 1) + 1, 4 * tsub(m, 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) && (0 <= m - 1) && (0 <= m || m - 1 == m) && (m - 1 < m) && (0 < n) && (Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))) && (forall m_2: nat :: forall k: int :: true) && (forall m_2: nat :: Complex.sum(IccN(4 * m_2 + 1, 4 * m_2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) && (Complex.sum(IccN(4 * (m - 1) + 1, 4 * (m - 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) && (forall k_4: int :: true) && (forall k_4: nat :: Complex.pow(Complex.I(), k_4 % 4) == Complex.pow(Complex.I(), k_4)) && (Complex.sum(IccN(1, 4 * (m - 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(((m - 1) as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(((m - 1) as real))), Complex.I())))) || (!(Complex.sum(IccN(4 * tsub(m, 1) + 1, 4 * tsub(m, 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))))
  requires 0 <= n_1_1_1_0
  requires 0 <= 4 * n_1_1_1_0 + 1
  requires 0 <= 4 * n_1_1_1_0 + 4
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  // K3-dropped: requires ((Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) && (0 <= 1) && (0 <= 4 * n_1_1_1_0) && (Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (Complex.of_real(2.0).Complex?) && (Complex.of_real((n_1_1_1_0 as real)).Complex?) && (Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))).Complex?) && (Complex.I().Complex?) && (Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()).Complex?) && (Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I())).Complex?) && (((Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()))) && (0 <= 4 * (n_1_1_1_0 + 1) + 1) && (lo_1_1_2__arg == 4 * (n_1_1_1_0 + 1) + 1) && (0 <= 4 * (n_1_1_1_0 + 1) + 4) && (hi_1_1_2__arg == 4 * (n_1_1_1_0 + 1) + 4) && (s_1_1_2__arg == IccN(4 * (n_1_1_1_0 + 1) + 1, 4 * (n_1_1_1_0 + 1) + 4)) && (f_1_1_2__arg == ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) && (Complex.sum(IccN(4 * (n_1_1_1_0 + 1) + 1, 4 * (n_1_1_1_0 + 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (r_1_1_9__arg == 2.0) && (Complex.of_real(2.0).Complex?) && (a_1_1_9__arg == Complex.of_real(2.0)) && (r_1_1_10__arg == 2.0) && (a_1_1_10__arg == Complex.of_real(2.0)) && (Complex.I().Complex?) && (b_1_1_10__arg == Complex.I()) && (Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?) && (b_1_1_9__arg == Complex.mul(Complex.of_real(2.0), Complex.I())) && (Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?)) || (!(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I())))))) || ((!(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())))) && (((Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()))) && (0 <= 4 * (n_1_1_1_0 + 1) + 1) && (lo_1_1_2__arg == 4 * (n_1_1_1_0 + 1) + 1) && (0 <= 4 * (n_1_1_1_0 + 1) + 4) && (hi_1_1_2__arg == 4 * (n_1_1_1_0 + 1) + 4) && (s_1_1_2__arg == IccN(4 * (n_1_1_1_0 + 1) + 1, 4 * (n_1_1_1_0 + 1) + 4)) && (f_1_1_2__arg == ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) && (Complex.sum(IccN(4 * (n_1_1_1_0 + 1) + 1, 4 * (n_1_1_1_0 + 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?) && (r_1_1_9__arg == 2.0) && (Complex.of_real(2.0).Complex?) && (a_1_1_9__arg == Complex.of_real(2.0)) && (r_1_1_10__arg == 2.0) && (a_1_1_10__arg == Complex.of_real(2.0)) && (Complex.I().Complex?) && (b_1_1_10__arg == Complex.I()) && (Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?) && (b_1_1_9__arg == Complex.mul(Complex.of_real(2.0), Complex.I())) && (Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?)) || (!(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()))))))
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> (forall v_1_21_k: int :: true)
  // K3-dropped: requires (Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()))) ==> (forall v_1_25_k: int :: true)
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) ==> Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1_1_1_0 as real))), Complex.I()))
  // K3-dropped: requires Complex.sum(IccN(4 * (n_1_1_1_0 + 1) + 1, 4 * (n_1_1_1_0 + 1) + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * n_1_1_1_0
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0), Complex.pow(Complex.I(), 1))
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 1 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 1), Complex.pow(Complex.I(), 1))
  requires 0 <= 4 * n_1_1_1_0 + 2
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 2 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 2), Complex.pow(Complex.I(), 1))
  requires 0 <= 2
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 2) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0), Complex.pow(Complex.I(), 2))
  requires 0 <= 4 * n_1_1_1_0 + 3
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 3 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 3), Complex.pow(Complex.I(), 1))
  requires 0 <= 3
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0 + 3) == Complex.mul(Complex.pow(Complex.I(), 4 * n_1_1_1_0), Complex.pow(Complex.I(), 3))
  requires 0 <= 4
  // K3-dropped: requires Complex.pow(Complex.I(), 4 * n_1_1_1_0) == Complex.pow(Complex.pow(Complex.I(), 4), n_1_1_1_0)
  // K3-dropped: requires Complex.pow(Complex.I(), 2) == Complex.mul(Complex.I(), Complex.I())
  // K3-dropped: requires Complex.pow(Complex.I(), 3) == Complex.mul(Complex.I(), Complex.mul(Complex.I(), Complex.I()))
  // K3-dropped: requires Complex.pow(Complex.I(), 1) == Complex.I()
  requires ((0 <= x_0_1_1_0) && (0 <= 1) && (0 <= 4 * n_1_1_1_0) && ((x_0_1_1_0 in IccN(1, 4 * n_1_1_1_0)) || (!(x_0_1_1_0 in IccN(1, 4 * n_1_1_1_0))))) || (x_0_1_1_0 < 0)
  requires IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) == {4 * n_1_1_1_0 + 1}
  requires 4 * n_1_1_1_0 + 1 <= 4 * n_1_1_1_0 + 1 + 1
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 1 + 1))
  requires 4 * n_1_1_1_0 + 1 <= 4 * n_1_1_1_0 + 2 + 1
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 2 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 2 + 1))
  requires 4 * n_1_1_1_0 + 1 <= 4 * n_1_1_1_0 + 3 + 1
  // K3-dropped: requires Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 3 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 3 + 1))
  requires 1 <= 4 * n_1_1_1_0 + 1
  // K3-dropped: requires Complex.sum(IccN(1, 4 * n_1_1_1_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(1, 4 * n_1_1_1_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 1))
  requires 1 <= 4 * n_1_1_1_0 + 1 + 1
  // K3-dropped: requires Complex.sum(IccN(1, 4 * n_1_1_1_0 + 1 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(1, 4 * n_1_1_1_0 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 1 + 1))
  requires 1 <= 4 * n_1_1_1_0 + 2 + 1
  // K3-dropped: requires Complex.sum(IccN(1, 4 * n_1_1_1_0 + 2 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(1, 4 * n_1_1_1_0 + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 2 + 1))
  requires 1 <= 4 * n_1_1_1_0 + 3 + 1
  // K3-dropped: requires Complex.sum(IccN(1, 4 * n_1_1_1_0 + 3 + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.sum(IccN(1, 4 * n_1_1_1_0 + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * n_1_1_1_0 + 3 + 1))
  // K3-dropped: requires ((Real.sum(IccN(1, n), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 48.0) && (0 <= 1)) || (Real.sum(IccN(1, n), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != 48.0)
  // K3-dropped: requires Real.sum(IccN(1, n), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 48.0
  // K3-dropped: requires Real.sum(IccN(1, n), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 49.0
  requires ((0 <= m_1_1_0) && ((0.0 - 1.0 + (0.0 - 1.0 + (0.0 - 4.0 * (m_1_1_0 as real))) + (4.0 * (m_1_1_0 as real) + 3.0 + 1.0) == 2.0) || (0.0 - 1.0 + (0.0 - 1.0 + (0.0 - 4.0 * (m_1_1_0 as real))) + (4.0 * (m_1_1_0 as real) + 3.0 + 1.0) != 2.0))) || (m_1_1_0 < 0)
  // K3-dropped: requires forall m_1_1_1: nat :: 0.0 - 1.0 + (0.0 - 1.0 + (0.0 - 4.0 * (m_1_1_1 as real))) + (4.0 * (m_1_1_1 as real) + 3.0 + 1.0) == 2.0 && 4.0 * (m_1_1_1 as real) + 1.0 + (0.0 - 1.0 + (0.0 - 2.0 + (0.0 - 4.0 * (m_1_1_1 as real)))) == 0.0 - 2.0
  // K3-dropped: requires ((0 <= k_1_1_11) && (Complex.I().Complex?) && (0 <= k_1_1_11 % 4) && (Complex.pow(Complex.I(), k_1_1_11 % 4).Complex?) && (Complex.pow(Complex.I(), k_1_1_11).Complex?) && (((Complex.Re(Complex.pow(Complex.I(), k_1_1_11 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_1_1_11))) && (Complex.I().Complex?) && (0 <= k_1_1_11 % 4) && (Complex.pow(Complex.I(), k_1_1_11 % 4).Complex?) && (Complex.pow(Complex.I(), k_1_1_11).Complex?)) || (Complex.Re(Complex.pow(Complex.I(), k_1_1_11 % 4)) != Complex.Re(Complex.pow(Complex.I(), k_1_1_11))))) || (k_1_1_11 < 0)
  // K3-dropped: requires forall k_1_1_12: nat :: Complex.Re(Complex.pow(Complex.I(), k_1_1_12 % 4)) == Complex.Re(Complex.pow(Complex.I(), k_1_1_12)) && Complex.Im(Complex.pow(Complex.I(), k_1_1_12 % 4)) == Complex.Im(Complex.pow(Complex.I(), k_1_1_12))
  // K3-dropped: requires ((Real.sum(IccN(1, 4 * n_1_1_1_0), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (n_1_1_1_0 as real)) && (0 <= 1) && (0 <= 4 * n_1_1_1_0)) || (Real.sum(IccN(1, 4 * n_1_1_1_0), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != 2.0 * (n_1_1_1_0 as real))
  requires Real.sum(IccN(1, 4 * n_1_1_1_0), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (n_1_1_1_0 as real)
  requires Real.sum(IccN(1, 4 * n_1_1_1_0), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (n_1_1_1_0 as real)
  requires 0 <= 5
  // K3-dropped: requires Complex.pow(Complex.I(), 5).Complex?
  requires 0 <= 6
  // K3-dropped: requires Complex.pow(Complex.I(), 6).Complex?
  requires 0 <= 7
  // K3-dropped: requires Complex.pow(Complex.I(), 7).Complex?
  ensures  (((((0.0 - (4.0 * (n_1_1_1_0 as real) + 5.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 5)) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 6.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 6))) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 7.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 7))) == 2.0) && (Complex.I().Complex?) && (0 <= 5) && (Complex.pow(Complex.I(), 5).Complex?) && (0 <= 6) && (Complex.pow(Complex.I(), 6).Complex?) && (0 <= 7) && (Complex.pow(Complex.I(), 7).Complex?)) || (0.0 - (4.0 * (n_1_1_1_0 as real) + 5.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 5)) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 6.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 6))) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 7.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 7))) != 2.0)) && (0.0 - (4.0 * (n_1_1_1_0 as real) + 5.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 5)) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 6.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 6))) + (0.0 - (4.0 * (n_1_1_1_0 as real) + 7.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 7))) == 2.0) && (4.0 * (n_1_1_1_0 as real) + 4.0 + 1.0 + (4.0 * (n_1_1_1_0 as real) + 5.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 5)) + (4.0 * (n_1_1_1_0 as real) + 6.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 6)) + (4.0 * (n_1_1_1_0 as real) + 7.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 7)) == 0.0 - 2.0) && (Real.pow((n_1_1_1_0 as real), 1) == (n_1_1_1_0 as real)) && (((0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 5)) * 4.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 6)) * 4.0 + (0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 7)) * 4.0 - Complex.Im(Complex.pow(Complex.I(), 5)) * 6.0) + (0.0 - Complex.Im(Complex.pow(Complex.I(), 6)) * 7.0 - Complex.Im(Complex.pow(Complex.I(), 7)) * 8.0) == 2.0) && (Complex.I().Complex?) && (0 <= 5) && (Complex.pow(Complex.I(), 5).Complex?) && (0 <= 6) && (Complex.pow(Complex.I(), 6).Complex?) && (0 <= 7) && (Complex.pow(Complex.I(), 7).Complex?)) || (0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 5)) * 4.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 6)) * 4.0 + (0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 7)) * 4.0 - Complex.Im(Complex.pow(Complex.I(), 5)) * 6.0) + (0.0 - Complex.Im(Complex.pow(Complex.I(), 6)) * 7.0 - Complex.Im(Complex.pow(Complex.I(), 7)) * 8.0) != 2.0)) && (0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 5)) * 4.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 6)) * 4.0 + (0.0 - (n_1_1_1_0 as real) * Complex.Im(Complex.pow(Complex.I(), 7)) * 4.0 - Complex.Im(Complex.pow(Complex.I(), 5)) * 6.0) + (0.0 - Complex.Im(Complex.pow(Complex.I(), 6)) * 7.0 - Complex.Im(Complex.pow(Complex.I(), 7)) * 8.0) == 2.0) && (5.0 + (n_1_1_1_0 as real) * 4.0 + (n_1_1_1_0 as real) * Complex.Re(Complex.pow(Complex.I(), 5)) * 4.0 + (n_1_1_1_0 as real) * Complex.Re(Complex.pow(Complex.I(), 6)) * 4.0 + (n_1_1_1_0 as real) * Complex.Re(Complex.pow(Complex.I(), 7)) * 4.0 + Complex.Re(Complex.pow(Complex.I(), 5)) * 6.0 + Complex.Re(Complex.pow(Complex.I(), 6)) * 7.0 + Complex.Re(Complex.pow(Complex.I(), 7)) * 8.0 == 0.0 - 2.0) && (0 <= n_1_1_1_0 * 4) && (((Real.sum(IccN(1, n_1_1_1_0 * 4), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == (n_1_1_1_0 as real) * 2.0) && (0 <= 1) && (0 <= n_1_1_1_0 * 4)) || (Real.sum(IccN(1, n_1_1_1_0 * 4), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) != (n_1_1_1_0 as real) * 2.0))) ==> (Real.sum(IccN(1, n_1_1_1_0 * 4), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == (n_1_1_1_0 as real) * 2.0))  // GROUP-1 ONLY: group-2 goal is a VC_GAP in the extracted lemma
{
}

// [shard_012: side-check lemmas removed from this variant; they are not the reported failure]

