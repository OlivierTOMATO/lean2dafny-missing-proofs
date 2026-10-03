// CLOSED LEMMA for failing line algebra_sum1onsqrt2to1onsqrt10000lt198-462 (theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 462, ERR)
// closes with: K2 (computation) — single
// added: assert 2.0 * Real.div(1.0, S) == Real.div(2.0, S)  (field_simp before/after normal form, exec 480; checked)
// Dafny: finished with 4 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_sum1onsqrt2to1onsqrt10000lt198-462/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 462 of algebra_sum1onsqrt2to1onsqrt10000lt198 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"

// ========================================================================================
// FAILING LINE 462 (ERR) in algebra_sum1onsqrt2to1onsqrt10000lt198: assertion might not hold
//   dafny |               assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) by { // @tac 2960-3038 // @tac 3053-3147 // @tac 3162-3189
//   statement kind: have / step assertion
//   @tac 2960-3038 | Lean: have h₁₁₁ : 0 < Real.sqrt k + Real.sqrt ((k : ℝ) - 1) := by positivity
//        before-goal ⊢ (1 : ℝ) / √↑k < (2 : ℝ) * ((1 : ℝ) / (√↑k + √(↑k - (1 : ℝ))))
//   @tac 3053-3147 | Lean: have h₁₁₂ : 0 < Real.sqrt k * (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) := by positivity
//        before-goal ⊢ (1 : ℝ) / √↑k < (2 : ℝ) * ((1 : ℝ) / (√↑k + √(↑k - (1 : ℝ))))
//   @tac 3162-3189 | Lean: field_simp [h₁₁₁.ne']
//        before-goal ⊢ (1 : ℝ) / √↑k < (2 : ℝ) * ((1 : ℝ) / (√↑k + √(↑k - (1 : ℝ))))
// Lean have h₁₁₀, Lean lines 47-54:
//   lean  |             have h₁₁₀ : (1 : ℝ) / Real.sqrt k < 2 * (1 / (Real.sqrt k + Real.sqrt ((k : ℝ) - 1))) := by
//   lean  |               have h₁₁₁ : 0 < Real.sqrt k + Real.sqrt ((k : ℝ) - 1) := by positivity
//   lean  |               have h₁₁₂ : 0 < Real.sqrt k * (Real.sqrt k + Real.sqrt ((k : ℝ) - 1)) := by positivity
//   lean  |               field_simp [h₁₁₁.ne']
//   lean  |               rw [div_lt_div_iff (by positivity) (by positivity)]
//   lean  |               nlinarith [Real.sq_sqrt (show 0 ≤ (k : ℝ) by linarith),
//   lean  |                 Real.sq_sqrt (show 0 ≤ (k : ℝ) - 1 by linarith),
//   lean  |                 mul_nonneg h₆ h₇, h₈.le, h₉.le]

// 2 path(s) merged (paths); 22 shared facts; 2 distinct path conditions
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L462(k_0_0: int)
  requires 0 <= k_0_0
  requires 0 <= 2
  requires 0 <= 10000
  requires k_0_0 in IccN(2, 10000)
  requires 2 <= k_0_0
  requires k_0_0 <= 10000
  requires (k_0_0 as real) >= 2.0
  requires (k_0_0 as real) <= 10000.0
  requires (k_0_0 as real) - 1.0 >= 1.0
  requires Real.sqrt((k_0_0 as real)) >= 0.0
  requires Real.sqrt((k_0_0 as real) - 1.0) >= 0.0
  requires Real.sqrt((k_0_0 as real)) > 0.0
  requires Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires Real.sqrt((k_0_0 as real)) > Real.sqrt((k_0_0 as real) - 1.0)
  requires Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires 2.0 * (Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0)) > 0.0
  requires (Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0)) * (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)) == 1.0
  requires Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0) == Real.div(1.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  requires 0.0 < Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)
  requires 0.0 < Real.sqrt((k_0_0 as real)) * (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  requires Real.div(1.0, Real.sqrt((k_0_0 as real))) < Real.div(2.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  ensures  Real.div(1.0, Real.sqrt((k_0_0 as real))) < 2.0 * Real.div(1.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
{
  assert 2.0 * Real.div(1.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))) == Real.div(2.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)));  // field_simp before/after (exec 480)
}
