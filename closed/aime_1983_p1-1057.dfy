// CLOSED LEMMA for failing line aime_1983_p1-1057 (theorem aime_1983_p1, Dafny line 1057, ERR)
// closes with: K5 (automation lemma) — single
// added: DivEqIffReal(24.0*L, 2.0/5.0*L, 60.0); with lemma {:axiom} DivEqIffReal(a,c,b) requires c != 0.0 ensures a / c == b <==> a == b * c (exact Mathlib div_eq_iff, added to work copy; field_simp's simp set)
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_001/aime_1983_p1-1057/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate K5] K5 field_simp lemma div_eq_iff as lemma call
// Line lemma for failing line 1057 of aime_1983_p1 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/aime_1983_p1.dfy"

// ========================================================================================
// FAILING LINE 1057 (ERR) in aime_1983_p1: assertion might not hold
//   dafny |     assert (Real.div((24.0 * Real.log((x as real))), ((2.0 / 5.0) * Real.log((x as real)))) == 60.0) by {  // sub-goal before `have` (Lean state) // @tac 7128-7187 // @tac 7192-7291 // @tac 7192-7251 // @tac 7192-7225 // @tac 7192-7209
//   statement kind: sub-goal (Lean tactic state)
//   @tac 7128-7187 | Lean: have h₅ : Real.log (x : ℝ) ≠ 0 := by linarith [hlogx]
//        before-goal ⊢ (24 : ℝ) * Real.log ↑x / ((2 / 5 : ℝ) * Real.log ↑x) = (60 : ℝ)
//   @tac 7192-7291 | Lean: field_simp [h₅]
//        before-goal ⊢ (24 : ℝ) * Real.log ↑x / ((2 / 5 : ℝ) * Real.log ↑x) = (60 : ℝ)
//   @tac 7192-7251 | Lean: field_simp [h₅]
//        before-goal ⊢ (24 : ℝ) * Real.log ↑x / ((2 / 5 : ℝ) * Real.log ↑x) = (60 : ℝ)
//   @tac 7192-7225 | Lean: field_simp [h₅]
//        before-goal ⊢ (24 : ℝ) * Real.log ↑x / ((2 / 5 : ℝ) * Real.log ↑x) = (60 : ℝ)
//   @tac 7192-7209 | Lean: field_simp [h₅]
//        before-goal ⊢ (24 : ℝ) * Real.log ↑x / ((2 / 5 : ℝ) * Real.log ↑x) = (60 : ℝ)
// inside Lean have hgoal, Lean lines 152-160:
//   lean  |   have hgoal : Real.log (w : ℝ) / Real.log (z : ℝ) = 60 := by
//   lean  |     have h₃ : Real.log (w : ℝ) = 24 * Real.log (x : ℝ) := hlogw_eq
//   lean  |     have h₄ : Real.log (z : ℝ) = (2 : ℝ) / 5 * Real.log (x : ℝ) := hlogz_rel
//   lean  |     rw [h₃, h₄]
//   lean  |     have h₅ : Real.log (x : ℝ) ≠ 0 := by linarith [hlogx]
//   lean  |     field_simp [h₅]
//   lean  |     <;> ring_nf
//   lean  |     <;> field_simp [h₅]
//   lean  |     <;> nlinarith [hlogx, hlogy, hlogz]

// 4 path(s) merged (paths); 28 shared facts; 4 distinct path conditions
lemma {:induction false} vc_aime_1983_p1_L1057(w: int, x: int, y: int, z: int)
  requires 0 <= x
  requires 0 <= y
  requires 0 <= z
  requires 0 <= w
  requires 1 < x
  requires 1 < y
  requires 1 < z
  requires Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0
  requires Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0
  requires Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0
  requires (x as real) > 1.0
  requires (y as real) > 1.0
  requires (z as real) > 1.0
  requires (x as real) * (y as real) * (z as real) > 1.0
  requires Real.log((x as real)) > 0.0
  requires Real.log((y as real)) > 0.0
  requires Real.log((z as real)) > 0.0
  requires Real.log((x as real) * (y as real) * (z as real)) > 0.0
  requires Real.log((w as real)) > 0.0
  requires Real.log((w as real)) == 24.0 * Real.log((x as real))
  requires Real.log((w as real)) == 40.0 * Real.log((y as real))
  requires 3.0 * Real.log((x as real)) == 5.0 * Real.log((y as real))
  requires Real.log((w as real)) == 12.0 * (Real.log((x as real)) + Real.log((y as real)) + Real.log((z as real)))
  requires Real.log((x as real)) == Real.log((y as real)) + Real.log((z as real))
  requires 5.0 != 0.0
  requires Real.log((z as real)) == 2.0 / 5.0 * Real.log((x as real))
  requires Real.log((x as real)) != 0.0
  requires 24.0 * Real.log((x as real)) * 5.0 == 60.0 * (2.0 * Real.log((x as real)))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real))))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real)))))
  ensures  Real.div(24.0 * Real.log((x as real)), 2.0 / 5.0 * Real.log((x as real))) == 60.0
{
  DivEqIffReal(24.0 * Real.log((x as real)), 2.0 / 5.0 * Real.log((x as real)), 60.0);  // K5: field_simp lemma div_eq_iff (Mathlib)
}

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_aime_1983_p1_L1057_side1(w: int, x: int, y: int, z: int)
  requires 0 <= x
  requires 0 <= y
  requires 0 <= z
  requires 0 <= w
  requires 1 < x
  requires 1 < y
  requires 1 < z
  requires Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0
  requires Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0
  requires Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0
  requires (x as real) > 1.0
  requires (y as real) > 1.0
  requires (z as real) > 1.0
  requires (x as real) * (y as real) * (z as real) > 1.0
  requires Real.log((x as real)) > 0.0
  requires Real.log((y as real)) > 0.0
  requires Real.log((z as real)) > 0.0
  requires Real.log((x as real) * (y as real) * (z as real)) > 0.0
  requires Real.log((w as real)) > 0.0
  requires Real.log((w as real)) == 24.0 * Real.log((x as real))
  requires Real.log((w as real)) == 40.0 * Real.log((y as real))
  requires 3.0 * Real.log((x as real)) == 5.0 * Real.log((y as real))
  requires Real.log((w as real)) == 12.0 * (Real.log((x as real)) + Real.log((y as real)) + Real.log((z as real)))
  requires Real.log((x as real)) == Real.log((y as real)) + Real.log((z as real))
  requires 5.0 != 0.0
  requires Real.log((z as real)) == 2.0 / 5.0 * Real.log((x as real))
  requires Real.log((x as real)) != 0.0
  requires 24.0 * Real.log((x as real)) * 5.0 == 60.0 * (2.0 * Real.log((x as real)))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real))))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real)))))
  ensures  5.0 != 0.0
{ }


// Mathlib div_eq_iff (hc : c ≠ 0) : a / c = b ↔ a = b * c  [added to work copy]
lemma {:axiom} DivEqIffReal(a: real, c: real, b: real)
  requires c != 0.0
  ensures a / c == b <==> a == b * c
