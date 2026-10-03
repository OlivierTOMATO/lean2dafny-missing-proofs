// CLOSED LEMMA for failing line mathd_algebra_598-542 (theorem mathd_algebra_598, Dafny line 542, ERR)
// closes with: simplest (simplest) — simplest-close
// added: add exact Mathlib div_eq_iff: lemma {:axiom} DivEqIff(a: real, b: real, c: real) requires c != 0.0 ensures a / c == b <==> a == b * c; then call DivEqIff(3.0 * Real.log(2.0), 3.0 / 2.0, 2.0 * Real.log(2.0));
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_598-542/SC_library.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_598-542, augmentation SC_library
// Line lemma for failing line 542 of mathd_algebra_598 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_598.dfy"

// exact Mathlib: theorem div_eq_iff (hc : c ≠ 0) : a / c = b ↔ a = b * c  (added to this work copy only)
lemma {:axiom} DivEqIff(a: real, b: real, c: real)
  requires c != 0.0
  ensures a / c == b <==> a == b * c

// ========================================================================================
// FAILING LINE 542 (ERR) in mathd_algebra_598: assertion might not hold
//   dafny |       assert (Real.div((3.0 * Real.log(2.0)), (2.0 * Real.log(2.0))) == (3.0 / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 4006-4130 // @tac 4135-4223 // @tac 4135-4206 // @tac 4135-4174 // @tac 4135-4158
//   statement kind: sub-goal (Lean tactic state)
//   @tac 4006-4130 | Lean: have h₁₂₃ : Real.log 2 ≠ 0 := by
//        before-goal ⊢ (3 : ℝ) * Real.log (2 : ℝ) / ((2 : ℝ) * Real.log (2 : ℝ)) = (3 / 2 : ℝ)
//   @tac 4135-4223 | Lean: field_simp [h₁₂₃]
//        before-goal ⊢ (3 : ℝ) * Real.log (2 : ℝ) / ((2 : ℝ) * Real.log (2 : ℝ)) = (3 / 2 : ℝ)
//   @tac 4135-4206 | Lean: field_simp [h₁₂₃]
//        before-goal ⊢ (3 : ℝ) * Real.log (2 : ℝ) / ((2 : ℝ) * Real.log (2 : ℝ)) = (3 / 2 : ℝ)
//   @tac 4135-4174 | Lean: field_simp [h₁₂₃]
//        before-goal ⊢ (3 : ℝ) * Real.log (2 : ℝ) / ((2 : ℝ) * Real.log (2 : ℝ)) = (3 / 2 : ℝ)
//   @tac 4135-4158 | Lean: field_simp [h₁₂₃]
//        before-goal ⊢ (3 : ℝ) * Real.log (2 : ℝ) / ((2 : ℝ) * Real.log (2 : ℝ)) = (3 / 2 : ℝ)
// inside Lean have h₁₂, Lean lines 97-108:
//   lean  |   have h₁₂ : a * b * c * d = 3 / 2 := by
//   lean  |     rw [h₉]
//   lean  |     have h₁₂₁ : Real.log 8 = 3 * Real.log 2 := h₁₀
//   lean  |     have h₁₂₂ : Real.log 4 = 2 * Real.log 2 := h₁₁
//   lean  |     rw [h₁₂₁, h₁₂₂]
//   lean  |     have h₁₂₃ : Real.log 2 ≠ 0 := by
//   lean  |       have h₁₂₄ : Real.log 2 > 0 := Real.log_pos (by norm_num)
//   lean  |       linarith
//   lean  |     field_simp [h₁₂₃]
//   lean  |     <;> ring_nf
//   lean  |     <;> field_simp [h₁₂₃]
//   lean  |     <;> linarith

// 4 path(s) merged (paths); 14 shared facts; 4 distinct path conditions
lemma {:induction false} vc_mathd_algebra_598_L542(a: real, b: real, c: real, d: real)
  requires Real.rpow(4.0, a) == 5.0
  requires Real.rpow(5.0, b) == 6.0
  requires Real.rpow(6.0, c) == 7.0
  requires Real.rpow(7.0, d) == 8.0
  requires a == Real.div(Real.log(5.0), Real.log(4.0))
  requires b == Real.div(Real.log(6.0), Real.log(5.0))
  requires c == Real.div(Real.log(7.0), Real.log(6.0))
  requires d == Real.div(Real.log(8.0), Real.log(7.0))
  requires a * b * c * d == Real.div(Real.log(8.0), Real.log(4.0))
  requires Real.log(8.0) == 3.0 * Real.log(2.0)
  requires Real.log(4.0) == 2.0 * Real.log(2.0)
  requires Real.log(2.0) != 0.0
  requires (0 as real) == 0.0
  requires 3.0 * Real.log(2.0) * 2.0 == 3.0 * (2.0 * Real.log(2.0))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0))))
  ensures  Real.div(3.0 * Real.log(2.0), 2.0 * Real.log(2.0)) == 3.0 / 2.0
{
  DivEqIff(3.0 * Real.log(2.0), 3.0 / 2.0, 2.0 * Real.log(2.0));
}

