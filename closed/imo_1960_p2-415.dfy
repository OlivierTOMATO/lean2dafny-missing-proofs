// CLOSED LEMMA for failing line imo_1960_p2-415 (theorem imo_1960_p2, Dafny line 415, ERR)
// closes with: K1 (instance) — single
// added: Motive415 predicate (Lean's congrArg motive) + assert Motive415(E); assert Motive415(x);
// Dafny: finished with 15 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/imo_1960_p2-415/K1c.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K1c: Lean's rw [h₁₂] proof term: congrArg with motive fun _a => ... at h₁₂ : x = E, stated as predicate Motive415 (checked asserts: Motive415(E) from the rewritten goal, then Motive415(x) by congruence)
// Line lemma for failing line 415 of imo_1960_p2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/imo_1960_p2.dfy"

// ========================================================================================
// FAILING LINE 415 (ERR) in imo_1960_p2: assertion might not hold
//   dafny |                 assert (Real.div((4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) >= ((2.0 * x) + 9.0)) by {  // sub-goal before `have` (Lean state) // @tac 1909-2071 // @tac 2082-2094
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1909-2071 | Lean: have h₁₂ : x = ((Real.sqrt (1 + 2 * x)) ^ 2 - 1) / 2 := by
//        before-goal ⊢ (4 : ℝ) * x ^ (2 : ℕ) / (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ) ≥ (2 : ℝ) * x + (9 : ℝ)
//   @tac 2082-2094 | Lean: rw [h₁₂]
//        before-goal ⊢ (4 : ℝ) * x ^ (2 : ℕ) / (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ) ≥ (2 : ℝ) * x + (9 : ℝ)
//        before-goal ⊢ (4 : ℝ) * ((√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ)) ^ (2 : ℕ) /
//     (√((1 : ℝ) + (2 : ℝ) * ((√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ))) - (1 : ℝ)) ^ (2 : ℕ) ≥
//   (2 : ℝ) * ((√((1 : ℝ) + (2 
// inside Lean have h₁₀, Lean lines 39-53:
//   lean  |         have h₁₀ : 4 * x ^ 2 / (1 - Real.sqrt (1 + 2 * x)) ^ 2 ≥ 2 * x + 9 := by
//   lean  |           have h₁₁ : (1 - Real.sqrt (1 + 2 * x)) ^ 2 = (Real.sqrt (1 + 2 * x) - 1) ^ 2 := by
//   lean  |             ring_nf
//   lean  |             <;>
//   lean  |             nlinarith [Real.sqrt_nonneg (1 + 2 * x), Real.sq_sqrt (by nlinarith : 0 ≤ 1 + 2 * x)]
//   lean  |           rw [h₁₁]
//   lean  |           have h₁₂ : x = ((Real.sqrt (1 + 2 * x)) ^ 2 - 1) / 2 := by
//   lean  |             nlinarith [Real.sq_sqrt (by nlinarith : 0 ≤ 1 + 2 * x), Real.sqrt_nonneg (1 + 2 * x)]
//   lean  |           rw [h₁₂]
//   lean  |           have h₁₃ : 0 < Real.sqrt (1 + 2 * x) - 1 := by nlinarith [Real.sqrt_nonneg (1 + 2 * x), Real.sq_sqrt (by nlinarith : 0 ≤ 1 + 2 * x)]
//   lean  |           have h₁₄ : 0 < (Real.sqrt (1 + 2 * x) - 1) ^ 2 := by nlinarith
//   lean  |           field_simp [h₁₄.ne']
//   lean  |           rw [le_div_iff (by positivity)]
//   lean  |           nlinarith [Real.sq_sqrt (by nlinarith : 0 ≤ 1 + 2 * x), Real.sqrt_nonneg (1 + 2 * x),
//   lean  |             sq_nonneg (Real.sqrt (1 + 2 * x) - 7 / 2)]

// 1 path(s) merged (paths); 14 shared facts; 1 distinct path conditions

// Lean's rw motive (congrArg (fun _a => 4 * _a ^ 2 / (√(1 + 2 * _a) - 1) ^ 2 ≥ 2 * _a + 9) h₁₂), as a Dafny predicate
ghost predicate Motive415(a: real) {
  Real.div(4.0 * (a * a), (Real.sqrt(1.0 + 2.0 * a) - 1.0) * (Real.sqrt(1.0 + 2.0 * a) - 1.0)) >= 2.0 * a + 9.0
}


lemma {:induction false} vc_imo_1960_p2_L415(x: real)
  requires 0.0 <= 1.0 + 2.0 * x
  requires (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x)) != 0.0
  requires Real.div(4.0 * (x * x), (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x))) < 2.0 * x + 9.0
  requires 2.0 != 0.0
  requires 0.0 - 1.0 / 2.0 <= x
  requires x > 0.0
  requires Real.sqrt(1.0 + 2.0 * x) > 1.0
  requires Real.sqrt(1.0 + 2.0 * x) != 1.0
  requires !(Real.sqrt(1.0 + 2.0 * x) < 7.0 / 2.0)
  requires Real.sqrt(1.0 + 2.0 * x) >= 7.0 / 2.0
  requires (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0) >= (7.0 / 2.0 - 1.0) * (7.0 / 2.0 - 1.0)
  requires (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x)) == (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0)
  requires x == (Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0
  requires Real.div(4.0 * ((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0 * ((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0)), (Real.sqrt(1.0 + 2.0 * ((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0)) - 1.0) * (Real.sqrt(1.0 + 2.0 * ((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0)) - 1.0)) >= 2.0 * ((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0) + 9.0
  ensures  Real.div(4.0 * (x * x), (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0)) >= 2.0 * x + 9.0
{
  assert Motive415(((Real.sqrt(1.0 + 2.0 * x) * Real.sqrt(1.0 + 2.0 * x) - 1.0) / 2.0));
  assert Motive415(x);
}
