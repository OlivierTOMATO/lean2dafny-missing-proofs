// CLOSED LEMMA for failing line algebra_sum1onsqrt2to1onsqrt10000lt198-212 (theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 212, ERR)
// closes with: K1 (instance) — single
// added: forall k: nat | 2<=k<=10000 ensures <h₁ body> { assert 0<=k ==> k in IccN(2,10000) ==> <h₁ body>; }  — the instance of h₁ at k (checked)
// Dafny: finished with 15 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_sum1onsqrt2to1onsqrt10000lt198-212/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 212 of algebra_sum1onsqrt2to1onsqrt10000lt198 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"

// ========================================================================================
// FAILING LINE 212 (ERR) in induction_helper_1: assertion might not hold
//   dafny |               assert (forall k: nat :: ((2 <= k) ==> ((k <= 10000) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4624-4716
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 4624-4716 h₁ after: ∀ (k : ℕ), (2 : ℕ) ≤ k → k ≤ (10000 : ℕ) → (√↑k)⁻¹ < (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ)))
// Lean theorem statement, Lean lines 9-150:
//   lean  | theorem algebra_sum1onsqrt2to1onsqrt10000lt198 :
//   lean  |     (∑ k in Finset.Icc (2 : ℕ) 10000, 1 / Real.sqrt k) < 198 := by
//   lean  |   have h₁ : ∀ (k : ℕ), k ∈ Finset.Icc (2 : ℕ) 10000 → (1 : ℝ) / Real.sqrt k < 2 * (Real.sqrt k - Real.sqrt (k - 1)) := by
//   lean  |     intro k hk
//   lean  |     have h₂ : 2 ≤ k ∧ k ≤ 10000 := by simpa using Finset.mem_Icc.mp hk
//   lean  |     have h₃ : (k : ℝ) ≥ 2 := by exact_mod_cast h₂.1
//   lean  |     have h₄ : (k : ℝ) ≤ 10000 := by exact_mod_cast h₂.2
//   lean  |     have h₅ : (k : ℝ) - 1 ≥ 1 := by
//   lean  |       have h₅₁ : (k : ℝ) ≥ 2 := h₃
//   lean  |       linarith
//   lean  |     have h₆ : Real.sqrt (k : ℝ) ≥ 0 := Real.sqrt_nonneg _
//   lean  |     have h₇ : Real.sqrt ((k : ℝ) - 1) ≥ 0 := Real.sqrt_nonneg _
//   lean  |     have h₈ : Real.sqrt (k : ℝ) > 0 := Real.sqrt_pos.mpr (by linarith)
//   lean  |     have h₉ : Real.sqrt ((k : ℝ) - 1) > 0 := Real.sqrt_pos.mpr (by linarith)
//   lean  |     -- Prove that 1 / Real.sqrt k < 2 * (Real.sqrt k - Real.sqrt (k - 1))
//   lean  |     have h₁₀ : (1 : ℝ) / Real.sqrt k < 2 * (Real.sqrt k - Real.sqrt (k - 1)) := by
//   lean  |       have h₁₀₁ : Real.sqrt k > Real.sqrt ((k : ℝ) - 1) := by
//   lean  |         apply Real.sqrt_lt_sqrt
//   lean  |         <;> nlinarith
//   lean  |       have h₁₀₂ : Real.sqrt k - Real.sqrt ((k : ℝ) - 1) > 0 := by linarith
//   lean  |       have h₁₀₃ : 2 * (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) > 0 := by positivity
//   lean  |       -- Use the identity involving square roots to prove the inequality
//   lean  |       have h₁₀₄ : (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) * (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) = 1 := by
//   lean  |         nlinarith [Real.sq_sqrt (show 0 ≤ (k : ℝ) by linarith),
//   lean  |           Real.sq_sqrt (show 0 ≤ (k : ℝ) - 1 by linarith),
//   lean  |           mul_nonneg h₆ h₇, h₈.le, h₉.le]
//   lean  |       have h₁₀₅ : (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) > 0 := by positivity
//   lean  |       have h₁₀₆ : 2 * (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) > 1 / Real.sqrt k := by
//   lean  |         have h₁₀₇ : (1 : ℝ) / Real.sqrt k < 2 * (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) := by
//   lean  |           -- Use the fact that (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) > 0 to prove the inequality
//   lean  |           have h₁₀₈ : (1 : ℝ) / Real.sqrt k < 2 * (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) := by
//   lean  |             -- Use the identity involving square roots to prove the inequality
//   lean  |             have h₁₀₉ : (Real.sqrt k - Real.sqrt ((k : ℝ) - 1)) = 1 / (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) := by
//   lean  |               field_simp [h₁₀₅.ne']
//   lean  |               <;> nlinarith [Real.sq_sqrt (show 0 ≤ (k : ℝ) by linarith),
//   lean  |                 Real.sq_sqrt (show 0 ≤ (k : ℝ) - 1 by linarith),
//   lean  |                 mul_nonneg h₆ h₇, h₈.le, h₉.le]
//   lean  |             rw [h₁₀₉]
//   lean  |             have h₁₁₀ : (1 : ℝ) / Real.sqrt k < 2 * (1 / (Real.sqrt k + Real.sqrt ((k : ℝ) - 1))) := by
//   lean  |               have h₁₁₁ : 0 < Real.sqrt k + Real.sqrt ((k : ℝ) - 1) := by positivity
//   lean  |               have h₁₁₂ : 0 < Real.sqrt k * (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) := by positivity
//   lean  |               field_simp [h₁₁₁.ne']
//   lean  |               rw [div_lt_div_iff (by positivity) (by positivity)]
//   lean  |               nlinarith [Real.sq_sqrt (show 0 ≤ (k : ℝ) by linarith),
//   lean  |                 Real.sq_sqrt (show 0 ≤ (k : ℝ) - 1 by linarith),
//   lean  |                 mul_nonneg h₆ h₇, h₈.le, h₉.le]
//   lean  |             linarith
//   lean  |           linarith
//   lean  |         linarith
//   lean  |       linarith
//   lean  |     exact h₁₀
//   lean  |   
//   lean  |   have h₂ : (∑ k in Finset.Icc (2 : ℕ) 10000, 2 * (Real.sqrt (k : ℝ) - Real.sqrt ((k : ℝ) - 1))) = 198 := by
//   lean  |     have h₃ : (∑ k in Finset.Icc (2 : ℕ) 10000, 2 * (Real.sqrt (k : ℝ) - Real.sqrt ((k : ℝ) - 1))) = 2 * (Real.sqrt (10000 : ℝ) - Real.sqrt (1 : ℝ)) := by
//   lean  |       -- Prove that the sum telescopes to 2 * (Real.sqrt 10000 - Real.sqrt 1)
//   lean  |       have h₄ : (∑ k in Finset.Icc (2 : ℕ) 10000, 2 * (Real.sqrt (k : ℝ) - Real.sqrt ((k : ℝ) - 1))) = 2 * (Real.sqrt (10000 : ℝ) - Real.sqrt (1 : ℝ)) := by
//   lean  |         -- Use the fact that the sum telescopes
//   lean  |         have h₅ : ∀ (n : ℕ), n ≥ 2 → (∑ k in Finset.Icc (2 : ℕ) n, 2 * (Real.sqrt (k : ℝ) - Real.sqrt ((k : ℝ) - 1))) = 2 * (Real.sqrt (n : ℝ) - Real.sqrt (1 : ℝ)) := by
//   lean  |           intro n hn
//   lean  |           induction' hn with n hn IH
//   lean  |           · norm_num [Finset.sum_Icc_succ_top]
//   lean  |           · cases n with
//   lean  |             | zero => contradiction
//   lean  |             | succ n =>
//   lean  |               cases n with
//   lean  |               | zero => contradiction
//   lean  |               | succ n =>
//   lean  |                 simp_all [Finset.sum_Icc_succ_top, Nat.cast_add, Nat.cast_one, Nat.cast_zero, Nat.cast_succ]
//   lean  |                 <;> ring_nf at *
//   lean  |                 <;> field_simp at *
//   lean  |                 <;> ring_nf at *
//   lean  |                 <;> norm_num at *
//   lean  |                 <;>
//   lean  |                 (try
//   lean  |                   {
//   lean  |                     nlinarith [Real.sqrt_nonneg (n + 1 + 1 : ℝ), Real.sqrt_nonneg (n + 1 : ℝ),
//   lean  |                       Real.sqrt_nonneg (n + 1 + 1 - 1 : ℝ), Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 - 1 : ℝ) by
//   lean  |                         {
//   lean  |                           norm_num
//   lean  |                           <;> nlinarith
//   lean  |                         })]
//   lean  |                   })
//   lean  |                 <;>
//   lean  |                 (try
//   lean  |                   {
//   lean  |                     nlinarith [Real.sqrt_nonneg (n + 1 + 1 : ℝ), Real.sqrt_nonneg (n + 1 : ℝ),
//   lean  |                       Real.sqrt_nonneg (n + 1 + 1 - 1 : ℝ), Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 - 1 : ℝ) by
//   lean  |                         {
//   lean  |                           norm_num
//   lean  |                           <;> nlinarith
//   lean  |                         })]
//   lean  |                   })
//   lean  |                 <;>
//   lean  |                 (try
//   lean  |                   {
//   lean  |                     nlinarith [Real.sqrt_nonneg (n + 1 + 1 : ℝ), Real.sqrt_nonneg (n + 1 : ℝ),
//   lean  |                       Real.sqrt_nonneg (n + 1 + 1 - 1 : ℝ), Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 : ℝ) by positivity),
//   lean  |                       Real.sq_sqrt (show (0 : ℝ) ≤ (n + 1 + 1 - 1 : ℝ) by
//   lean  |                         {
//   lean  |                 
//   lean  | … (truncated)

// 16 path(s) merged (paths); 27 shared facts; 16 distinct path conditions
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L212(k_1_0_1_0_1_0_0: int, n: int, n_1_0_1_0: int, n_1_0_1_0_0: int, n_1_0_1_0_1_0: int, n_1_0_1_0_1_0_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n != 1
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n - 1 >= 1
  requires Real.sum(IccN(2, n - 1 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n - 1 + 1) as real)) - Real.sqrt(1.0))
  requires 2 <= n
  requires n != 0
  requires n_1_0_1_0_0 == n - 1
  requires 2 <= n_1_0_1_0_0 + 1
  requires Real.sum(IccN(2, n_1_0_1_0_0 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n_1_0_1_0_0 + 1) as real)) - Real.sqrt(1.0))
  requires n_1_0_1_0_0 != 0
  requires 0 <= n_1_0_1_0_0 - 1
  requires n_1_0_1_0_1_0_0 == n_1_0_1_0_0 - 1
  requires 2 <= n_1_0_1_0_1_0_0 + 1 + 1
  requires Real.sum(IccN(2, n_1_0_1_0_1_0_0 + 1 + 1), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt(((n_1_0_1_0_1_0_0 + 1 + 1) as real)) - Real.sqrt(1.0))
  requires 0 <= n_1_0_1_0_1_0_0 + 1
  requires ((n_1_0_1_0_1_0_0 + 1 + 1) as real) == ((n_1_0_1_0_1_0_0 + 1) as real) + 1.0
  requires ((n_1_0_1_0_1_0_0 + 1) as real) == (n_1_0_1_0_1_0_0 as real) + 1.0
  requires 0 <= n_1_0_1_0_1_0_0 + 2
  requires ((n_1_0_1_0_1_0_0 + 2 + 1) as real) == ((n_1_0_1_0_1_0_0 + 2) as real) + 1.0
  requires ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((0 <= 2) && (0 <= n_1_0_1_0_0 + 1) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (0 <= 2) && (0 <= n_1_0_1_0_1_0_0 + 1 + 1) && (k_1_0_1_0_1_0_0 < 0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 <= 10000)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (2 <= k_1_0_1_0_1_0_0) && (10000 < k_1_0_1_0_1_0_0)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (0 <= k_1_0_1_0_1_0_0) && (k_1_0_1_0_1_0_0 < 2)) || ((n_1_0_1_0_0 + 1 < 2) && (n_1_0_1_0_1_0_0 + 1 + 1 < 2) && (k_1_0_1_0_1_0_0 < 0))
  ensures  forall k_1_0_1_0_1_0_1: nat :: 2 <= k_1_0_1_0_1_0_1 ==> k_1_0_1_0_1_0_1 <= 10000 ==> Real.div(1.0, Real.sqrt((k_1_0_1_0_1_0_1 as real))) < 2.0 * (Real.sqrt((k_1_0_1_0_1_0_1 as real)) - Real.sqrt((k_1_0_1_0_1_0_1 as real) - 1.0))
{
  forall k: nat | 2 <= k <= 10000
    ensures Real.div(1.0, Real.sqrt((k as real))) < 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))
  {
    // instance of h₁ at k (requires #4)
    assert 0 <= k ==> k in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k as real))) < 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0));
  }
}
