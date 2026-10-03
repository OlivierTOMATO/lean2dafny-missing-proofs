// CLOSED LEMMA for failing line aime_1983_p1-507 (theorem aime_1983_p1, Dafny line 507, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/aime_1983_p1/L507.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 507 of aime_1983_p1 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/aime_1983_p1.dfy"

// ========================================================================================
// FAILING LINE 507 (ERR) in aime_1983_p1: assertion might not hold
//   dafny |       assert (Real.log(((x as real) * (y as real))) == (Real.log((x as real)) + Real.log((y as real)))) by { // @tac 1902-1944 // @tac 1951-1993 // @tac 2000-2049
//   statement kind: have / step assertion
//   @tac 1902-1944 | Lean: have h₃ : 0 < (x : ℝ) := by positivity
//        before-goal ⊢ Real.log (↑x * ↑y) = Real.log ↑x + Real.log ↑y
//   @tac 1951-1993 | Lean: have h₄ : 0 < (y : ℝ) := by positivity
//        before-goal ⊢ Real.log (↑x * ↑y) = Real.log ↑x + Real.log ↑y
//   @tac 2000-2049 | Lean: rw [Real.log_mul (by positivity) (by positivity)]
//        before-goal ⊢ Real.log (↑x * ↑y) = Real.log ↑x + Real.log ↑y
//        before-goal ⊢ Real.log ↑x + Real.log ↑y = Real.log ↑x + Real.log ↑y
// Lean have h₂, Lean lines 54-57:
//   lean  |     have h₂ : Real.log ((x : ℝ) * y) = Real.log (x : ℝ) + Real.log (y : ℝ) := by
//   lean  |       have h₃ : 0 < (x : ℝ) := by positivity
//   lean  |       have h₄ : 0 < (y : ℝ) := by positivity
//   lean  |       rw [Real.log_mul (by positivity) (by positivity)]

// 1 path(s) merged (paths); 23 shared facts; 1 distinct path conditions
lemma {:induction false} vc_aime_1983_p1_L507(w: int, x: int, y: int, z: int)
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
  requires Real.log((x as real) * (y as real) * (z as real)) == Real.log((x as real) * (y as real)) + Real.log((z as real))
  requires 0.0 < (x as real)
  requires 0.0 < (y as real)
  requires (x as real) != 0.0
  requires (y as real) != 0.0
  requires Real.log((x as real) * (y as real)) == Real.log((x as real)) + Real.log((y as real))
  ensures  Real.log((x as real) * (y as real)) == Real.log((x as real)) + Real.log((y as real))
{ }

