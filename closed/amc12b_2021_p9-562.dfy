// CLOSED LEMMA for failing line amc12b_2021_p9-562 (theorem amc12b_2021_p9, Dafny line 562, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12b_2021_p9/L562.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 562 of amc12b_2021_p9 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12b_2021_p9.dfy"

// ========================================================================================
// FAILING LINE 562 (ERR) in amc12b_2021_p9: assertion might not hold
//   dafny |             assert (Real.div((2.0 * (Real.log(2.0) * Real.log(2.0))), (Real.log(2.0) * Real.log(2.0))) == 2.0) by {  // sub-goal before `field_simp` (Lean state) // @tac 7950-8045 // @tac 7950-8023 // @tac 7950-7990 // @tac 7950-7970
//   statement kind: sub-goal (Lean tactic state)
//   @tac 7950-8045 | Lean: field_simp [h₇₅]
//        before-goal ⊢ (2 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) / Real.log (2 : ℝ) ^ (2 : ℕ) = (2 : ℝ)
//   @tac 7950-8023 | Lean: field_simp [h₇₅]
//        before-goal ⊢ (2 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) / Real.log (2 : ℝ) ^ (2 : ℕ) = (2 : ℝ)
//   @tac 7950-7990 | Lean: field_simp [h₇₅]
//        before-goal ⊢ (2 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) / Real.log (2 : ℝ) ^ (2 : ℕ) = (2 : ℝ)
//   @tac 7950-7970 | Lean: field_simp [h₇₅]
//        before-goal ⊢ (2 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) / Real.log (2 : ℝ) ^ (2 : ℕ) = (2 : ℝ)
// inside Lean have h₇₇, Lean lines 139-144:
//   lean  |       have h₇₇ : (Real.log 80 * Real.log 40 - Real.log 160 * Real.log 20) / (Real.log 2) ^ 2 = 2 := by
//   lean  |         rw [h₇₄]
//   lean  |         field_simp [h₇₅]
//   lean  |         <;> ring_nf
//   lean  |         <;> field_simp [h₇₅]
//   lean  |         <;> nlinarith

// 1 path(s) merged (paths); 11 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12b_2021_p9_L562()
  requires Real.log(80.0) == 4.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(40.0) == 3.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(160.0) == 5.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(20.0) == 2.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(80.0) * Real.log(40.0) == 12.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  requires Real.log(160.0) * Real.log(20.0) == 10.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  requires Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0) == 2.0 * (Real.log(2.0) * Real.log(2.0))
  requires Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) == Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0))
  requires Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0))) == Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
  requires Real.log(2.0) != 0.0
  requires Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0)) - Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
  ensures  Real.div(2.0 * (Real.log(2.0) * Real.log(2.0)), Real.log(2.0) * Real.log(2.0)) == 2.0
{ }

