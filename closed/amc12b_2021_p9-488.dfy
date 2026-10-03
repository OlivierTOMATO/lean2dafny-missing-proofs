// CLOSED LEMMA for failing line amc12b_2021_p9-488 (theorem amc12b_2021_p9, Dafny line 488, ERR)
// closes with: K3 (locality) — single
// added: all requires dropped except 0<2, 2≠1 (field_simp used no context hypothesis)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/amc12b_2021_p9-488/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K3: locality: field_simp's step used no context hypothesis (simp set only) -> all requires dropped except 0<2, 2!=1
// Line lemma for failing line 488 of amc12b_2021_p9 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12b_2021_p9.dfy"

// ========================================================================================
// FAILING LINE 488 (ERR) in amc12b_2021_p9: assertion might not hold
//   dafny |       assert ((Real.div(Real.log(160.0), Real.log(2.0)) * Real.div(Real.log(20.0), Real.log(2.0))) == Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) by {  // sub-goal of `field_simp` (Lean state) // @tac 6886-6994
//   statement kind: sub-goal (Lean tactic state)
//   @tac 6886-6994 | Lean: field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
//        before-goal ⊢ Real.log (160 : ℝ) / Real.log (2 : ℝ) * (Real.log (20 : ℝ) / Real.log (2 : ℝ)) =
//   Real.log (160 : ℝ) * Real.log (20 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ)
// inside Lean have h₇₂, Lean lines 113-128:
//   lean  |     have h₇₂ : Real.log 160 / Real.log 2 / (Real.log 2 / Real.log 20) = (Real.log 160 * Real.log 20) / (Real.log 2) ^ 2 := by
//   lean  |       have h₇₂₁ : Real.log 160 / Real.log 2 / (Real.log 2 / Real.log 20) = (Real.log 160 / Real.log 2) * (Real.log 20 / Real.log 2) := by
//   lean  |         field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1),
//   lean  |           Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 5) (by norm_num : (5 : ℝ) ≠ 1),
//   lean  |           Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 20) (by norm_num : (20 : ℝ) ≠ 1),
//   lean  |           Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 40) (by norm_num : (40 : ℝ) ≠ 1),
//   lean  |           Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 80) (by norm_num : (80 : ℝ) ≠ 1),
//   lean  |           Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 160) (by norm_num : (160 : ℝ) ≠ 1)]
//   lean  |         <;> ring_nf
//   lean  |         <;> field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
//   lean  |         <;> ring_nf
//   lean  |       rw [h₇₂₁]
//   lean  |       <;> field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
//   lean  |       <;> ring_nf
//   lean  |       <;> field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
//   lean  |       <;> ring_nf

// 16 path(s) merged (paths); 12 shared facts; 12 distinct path conditions


lemma {:induction false} vc_amc12b_2021_p9_L488()
  // [K3 dropped] requires Real.log(80.0) == 4.0 * Real.log(2.0) + Real.log(5.0)
  // [K3 dropped] requires Real.log(40.0) == 3.0 * Real.log(2.0) + Real.log(5.0)
  // [K3 dropped] requires Real.log(160.0) == 5.0 * Real.log(2.0) + Real.log(5.0)
  // [K3 dropped] requires Real.log(20.0) == 2.0 * Real.log(2.0) + Real.log(5.0)
  // [K3 dropped] requires Real.log(80.0) * Real.log(40.0) == 12.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  // [K3 dropped] requires Real.log(160.0) * Real.log(20.0) == 10.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  // [K3 dropped] requires Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0) == 2.0 * (Real.log(2.0) * Real.log(2.0))
  // [K3 dropped] requires Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) == Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0))
  // [K3 dropped] requires Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0))) == Real.div(Real.log(160.0), Real.log(2.0)) * Real.div(Real.log(20.0), Real.log(2.0))
  requires 0.0 < 2.0
  requires 2.0 != 1.0
  // [K3 dropped] requires Real.log(2.0) * Real.log(2.0) == Real.log(2.0) * Real.log(2.0)
  // [K3 dropped] requires ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (0.0 < Real.log(2.0) * Real.log(2.0)) && (Real.log(2.0) <= 0.0)) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))) && (Real.log(2.0) <= 0.0)) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (Real.log(2.0) <= 0.0) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (Real.log(2.0) <= 0.0) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2)) && (Real.log(2.0) <= 0.0) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0)))) || ((Real.log(2.0) <= 0.0) && (0.0 < Real.log(2.0)) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((Real.log(2.0) <= 0.0) && (0.0 < Real.log(2.0)) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((Real.log(2.0) <= 0.0) && (0.0 < Real.log(2.0)) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0)))) || ((Real.log(2.0) <= 0.0) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))) && (0.0 < Real.log(2.0)) && (0.0 < Real.log(2.0) * Real.log(2.0))) || ((Real.log(2.0) <= 0.0) && (!(0.0 < Real.log(2.0) && 0.0 < Real.log(2.0))))
  ensures  Real.div(Real.log(160.0), Real.log(2.0)) * Real.div(Real.log(20.0), Real.log(2.0)) == Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
{

}
