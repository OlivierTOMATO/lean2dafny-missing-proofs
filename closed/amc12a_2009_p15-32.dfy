// CLOSED LEMMA for failing line amc12a_2009_p15-32 (theorem amc12a_2009_p15, Dafny line 32, OOR)
// closes with: K3+K5 (locality, automation lemma) — multi
// added: own lemma with no hypotheses: assert IccN(1, 4*0) == {}; ComplexSumOfEmpty(IccN(1, 4*0), F) [work-copy exact Mathlib Finset.sum_empty for s == ∅]; assert Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)) == Complex.Complex(0.0, 0.0)
// Dafny: finished with 36 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_012/amc12a_2009_p15-32/K3K5b.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_012 ablation variant K3K5b: pair: no hypotheses (K3) + set-empty assert and Finset.sum_empty call (K5) + RHS normal form assert (K2)
// Line lemma for failing line 32 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 32 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |       assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())));  // sub-goal 
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2031-2134 | Lean: simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * (0 : ℕ)), ↑k * Complex.I ^ k = (2 : ℂ) * ↑(0 : ℕ) - (2 : ℂ) * ↑(0 : ℕ) * Complex.I
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * (n_1 + (1 : ℕ))), ↑k * Complex.I ^ k =
//     (2 : ℂ) * ↑(n_1 + (1 : ℕ)) - (2 : ℂ) * ↑(n_1 + (1 : ℕ)) * Complex.I
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

// 1 path(s) merged (paths); 25 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L32(m: int, n: int)
  // K3-dropped: requires 0 <= n
  // K3-dropped: requires 0 <= m
  // K3-dropped: requires 0 < n
  // K3-dropped: requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  // K3-dropped: requires forall m_2: nat :: forall k: int :: true
  // K3-dropped: requires forall m_2: nat :: Complex.sum(IccN(4 * m_2 + 1, 4 * m_2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  // K3-dropped: requires Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  // K3-dropped: requires forall k_4: int :: true
  // K3-dropped: requires forall k_4: nat :: Complex.pow(Complex.I(), k_4 % 4) == Complex.pow(Complex.I(), k_4)
  // K3-dropped: requires m == 0
  // K3-dropped: requires 0 <= 4 * 0 + 1
  // K3-dropped: requires 0 <= 4 * 0 + 4
  // K3-dropped: requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  // K3-dropped: requires Complex.of_real(2.0).Complex?
  // K3-dropped: requires Complex.I().Complex?
  // K3-dropped: requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  // K3-dropped: requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  // K3-dropped: requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  // K3-dropped: requires 0 <= 1
  // K3-dropped: requires 0 <= 4 * 0
  // K3-dropped: requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  // K3-dropped: requires Complex.of_real(0.0).Complex?
  // K3-dropped: requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  // K3-dropped: requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  // K3-dropped: requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  ensures  Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
{
  assert IccN(1, 4 * 0) == {};
  ComplexSumOfEmpty(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));
  assert Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)) == Complex.Complex(0.0, 0.0);
}

// side checks at the same line (not the reported failure): 2 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L32_side1(m: int, n: int)
  requires 0 <= n
  requires 0 <= m
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall m_2: nat :: forall k: int :: true
  requires forall m_2: nat :: Complex.sum(IccN(4 * m_2 + 1, 4 * m_2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires forall k_4: int :: true
  requires forall k_4: nat :: Complex.pow(Complex.I(), k_4 % 4) == Complex.pow(Complex.I(), k_4)
  requires m == 0
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L32_side2(m: int, n: int)
  requires 0 <= n
  requires 0 <= m
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall m_2: nat :: forall k: int :: true
  requires forall m_2: nat :: Complex.sum(IccN(4 * m_2 + 1, 4 * m_2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires forall k_4: int :: true
  requires forall k_4: nat :: Complex.pow(Complex.I(), k_4 % 4) == Complex.pow(Complex.I(), k_4)
  requires m == 0
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 1
  ensures  0 <= 4 * 0
{ }



// work copy: exact Mathlib Finset.sum_empty stated for any finset equal to ∅ (Lean: Finset.Icc_eq_empty_of_lt then sum_empty, exec 354)
lemma {:axiom} ComplexSumOfEmpty(s: set<nat>, f: nat -> Complex.complex)
  requires s == {}
  ensures Complex.sum(s, f) == Complex.of_real(0.0)
