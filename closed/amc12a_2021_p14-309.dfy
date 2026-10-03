// CLOSED LEMMA for failing line amc12a_2021_p14-309 (theorem amc12a_2021_p14, Dafny line 309, OOR)
// closes with: K2 (computation) — single
// added: library copy with the recursive `ensures` of Real.pow/Int.pow removed (bodies kept); only that change
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-309/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 309 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/_k2pow/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 309 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |       assert (Real.div(((k as real) * Real.log(25.0)), ((k as real) * Real.log(9.0))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4382-4673 // @tac 4678-4967 // @tac 4972-4993
//   statement kind: sub-goal (Lean tactic state)
//   @tac 4382-4673 | Lean: have h₃₄ : Real.log 25 = 2 * Real.log 5 := by
//        before-goal ⊢ ↑k * Real.log (25 : ℝ) / (↑k * Real.log (9 : ℝ)) = logb (3 : ℝ) (5 : ℝ)
//   @tac 4678-4967 | Lean: have h₃₅ : Real.log 9 = 2 * Real.log 3 := by
//        before-goal ⊢ ↑k * Real.log (25 : ℝ) / (↑k * Real.log (9 : ℝ)) = logb (3 : ℝ) (5 : ℝ)
//   @tac 4972-4993 | Lean: rw [h₃₄, h₃₅]
//        before-goal ⊢ ↑k * Real.log (25 : ℝ) / (↑k * Real.log (9 : ℝ)) = logb (3 : ℝ) (5 : ℝ)
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
// inside Lean have h₃, Lean lines 92-160:
//   lean  |   have h₃ : ∀ k ∈ Finset.Icc (1 : ℕ) 100, Real.logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k) = Real.logb 3 5 := by
//   lean  |     intro k hk
//   lean  |     have h₃₁ : Real.logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k) = (Real.log ((25 : ℝ) ^ k) / Real.log ((9 : ℝ) ^ k)) := by
//   lean  |       rw [Real.logb]
//   lean  |       <;> simp [Real.log_rpow]
//   lean  |       <;> field_simp
//   lean  |       <;> ring
//   lean  |     rw [h₃₁]
//   lean  |     have h₃₂ : Real.log ((25 : ℝ) ^ k) = (k : ℝ) * Real.log 25 := by
//   lean  |       rw [Real.log_pow]
//   lean  |       <;> norm_cast
//   lean  |       <;> field_simp
//   lean  |       <;> ring
//   lean  |     have h₃₃ : Real.log ((9 : ℝ) ^ k) = (k : ℝ) * Real.log 9 := by
//   lean  |       rw [Real.log_pow]
//   lean  |       <;> norm_cast
//   lean  |       <;> field_simp
//   lean  |       <;> ring
//   lean  |     rw [h₃₂, h₃₃]
//   lean  |     have h₃₄ : Real.log 25 = 2 * Real.log 5 := by
//   lean  |       have h₃₄₁ : Real.log 25 = Real.log (5 ^ 2) := by norm_num
//   lean  |       rw [h₃₄₁]
//   lean  |       have h₃₄₂ : Real.log (5 ^ 2) = 2 * Real.log 5 := by
//   lean  |         rw [Real.log_pow]
//   lean  |         <;> norm_num
//   lean  |         <;> ring
//   lean  |       rw [h₃₄₂]
//   lean  |     have h₃₅ : Real.log 9 = 2 * Real.log 3 := by
//   lean  |       have h₃₅₁ : Real.log 9 = Real.log (3 ^ 2) := by norm_num
//   lean  |       rw [h₃₅₁]
//   lean  |       have h₃₅₂ : Real.log (3 ^ 2) = 2 * Real.log 3 := by
//   lean  |         rw [Real.log_pow]
//   lean  |         <;> norm_num
//   lean  |         <;> ring
//   lean  |       rw [h₃₅₂]
//   lean  |     rw [h₃₄, h₃₅]
//   lean  |     have h₃₆ : (k : ℝ) ≠ 0 := by
//   lean  |       norm_num at hk ⊢
//   lean  |       <;>
//   lean  |       (try omega) <;>
//   lean  |       (try linarith) <;>
//   lean  |       (try
//   lean  |         {
//   lean  |           aesop
//   lean  |         }) <;>
//   lean  |       (try
//   lean  |         {
//   lean  |           norm_num at hk ⊢ <;>
//   lean  |           omega
//   lean  |         }) <;>
//   lean  |       (try
//   lean  |         {
//   lean  |           linarith
//   lean  |         })
//   lean  |     have h₃₇ : (2 : ℝ) ≠ 0 := by norm_num
//   lean  |     have h₃₈ : Real.log 5 ≠ 0 := by
//   lean  |       have h₃₈₁ : Real.log 5 > 0 := Real.log_pos (by norm_num)
//   lean  |       linarith
//   lean  |     have h₃₉ : Real.log 3 ≠ 0 := by
//   lean  |       have h₃₉₁ : Real.log 3 > 0 := Real.log_pos (by norm_num)
//   lean  |       linarith
//   lean  |     field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//   lean  |     <;> ring_nf
//   lean  |     <;> field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//   lean  |     <;> ring_nf
//   lean  |     <;> field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//   lean  |     <;> ring_nf
//   lean  |     <;> field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//   lean  |     <;> ring_nf

// 1 path(s) merged (paths); 13 shared facts; 1 distinct path conditions
// AUGMENTATION K2pow
lemma {:induction false} vc_amc12a_2021_p14_L309(k_2_0: nat)
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires 0 <= k_2_0
  requires 0 <= 100
  requires k_2_0 in IccN(1, 100)
  requires Real.logb(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0)) == Real.div(Real.log(Real.pow(25.0, k_2_0)), Real.log(Real.pow(9.0, k_2_0)))
  requires Real.log(Real.pow(25.0, k_2_0)) == (k_2_0 as real) * Real.log(25.0)
  requires Real.log(Real.pow(9.0, k_2_0)) == (k_2_0 as real) * Real.log(9.0)
  requires Real.log(25.0) == 2.0 * Real.log(5.0)
  requires Real.log(9.0) == 2.0 * Real.log(3.0)
  requires Real.div((k_2_0 as real) * (2.0 * Real.log(5.0)), (k_2_0 as real) * (2.0 * Real.log(3.0))) == Real.logb(3.0, 5.0)
  ensures  Real.div((k_2_0 as real) * Real.log(25.0), (k_2_0 as real) * Real.log(9.0)) == Real.logb(3.0, 5.0)
{ }
