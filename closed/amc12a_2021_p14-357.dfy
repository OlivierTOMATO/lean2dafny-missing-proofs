// CLOSED LEMMA for failing line amc12a_2021_p14-357 (theorem amc12a_2021_p14, Dafny line 357, OOR)
// closes with: K3+K5 (locality, automation lemma) — multi
// added: own lemma over h₃₆–h₃₉, the cross-multiplied equation, positivity facts, body `RealLogbUnfold(3.0, 5.0);`
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-357/pairK3K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 357 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 357 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |         assert (Real.div(((k as real) * (2.0 * Real.log(5.0))), ((k as real) * (2.0 * Real.log(3.0)))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4998-5304 // @tac 5309-5354 // @tac 5359-5480 // @tac 5485-5606 // @tac 5611-6106 // @tac 5611-6090 // @tac 5611-5980 //
//   statement kind: sub-goal (Lean tactic state)
//   @tac 4998-5304 | Lean: have h₃₆ : (k : ℝ) ≠ 0 := by
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5309-5354 | Lean: have h₃₇ : (2 : ℝ) ≠ 0 := by norm_num
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5359-5480 | Lean: have h₃₈ : Real.log 5 ≠ 0 := by
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5485-5606 | Lean: have h₃₉ : Real.log 3 ≠ 0 := by
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-6106 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-6090 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5980 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5964 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5854 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5838 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5728 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
//        before-goal ⊢ ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * ((2 : ℝ) * Real.log (3 : ℝ))) = logb (3 : ℝ) (5 : ℝ)
//   @tac 5611-5712 | Lean: field_simp [h₃₆, h₃₇, h₃₈, h₃₉, Real.logb, Real.log_mul, Real.log_rpow, Real.log_pow]
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

// 64 path(s) merged (paths); 17 shared facts; 52 distinct path conditions
// K3 ablation: kept requires [12, 13, 14, 15, 16, 17] (Lean step's hypotheses); dropped 12 — sufficiency test
// AUGMENTATION pairK3K5
lemma {:induction false} vc_amc12a_2021_p14_L357(k_2_0: nat)
  requires (k_2_0 as real) != 0.0
  requires 2.0 != 0.0
  requires Real.log(5.0) != 0.0
  requires Real.log(3.0) != 0.0
  requires (k_2_0 as real) * (2.0 * Real.log(5.0)) * Real.log(3.0) == Real.log(5.0) * ((k_2_0 as real) * (2.0 * Real.log(3.0)))
  requires ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && ((k_2_0 as real) <= 0.0)) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || ((0.0 < (k_2_0 as real)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && ((k_2_0 as real) <= 0.0)) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < (k_2_0 as real))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(3.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(3.0))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < (k_2_0 as real)) && (0.0 < 2.0 * Real.log(3.0)) && (0.0 < (k_2_0 as real) * (2.0 * Real.log(3.0)))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))) && (0.0 < (k_2_0 as real))) || (((k_2_0 as real) <= 0.0) && (!(0.0 < (k_2_0 as real) && 0.0 < 2.0 * Real.log(3.0))) && (!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(3.0))))
  ensures  Real.div((k_2_0 as real) * (2.0 * Real.log(5.0)), (k_2_0 as real) * (2.0 * Real.log(3.0))) == Real.logb(3.0, 5.0)
{
  RealLogbUnfold(3.0, 5.0);  // Real.logb unfolded by field_simp [.., Real.logb, ..] (exec 1861)
}
