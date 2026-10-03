// CLOSED LEMMA for failing line aime_1990_p4-205 (theorem aime_1990_p4, Dafny line 205, ERR)
// closes with: K1 (instance) — single
// added: EqZeroOrEqZeroOfMulEqZero(x - 13.0, x + 3.0);  (Lean lemma at the instance fixed by h₅₃)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_004/aime_1990_p4-205/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 205 of aime_1990_p4 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/aime_1990_p4.dfy"

// ========================================================================================
// FAILING LINE 205 (ERR) in aime_1990_p4: assertion might not hold
//   dafny |         assert (((x - 13.0) == 0.0) || ((x + 3.0) == 0.0)); // @tac 1977-2024
//   statement kind: have / step assertion
//   @tac 1977-2024 | Lean: apply eq_zero_or_eq_zero_of_mul_eq_zero h₅₃
//        before-goal ⊢ x - (13 : ℝ) = (0 : ℝ) ∨ x + (3 : ℝ) = (0 : ℝ)
// Lean have h₅₄, Lean lines 35-36:
//   lean  |         have h₅₄ : x - 13 = 0 ∨ x + 3 = 0 := by
//   lean  |           apply eq_zero_or_eq_zero_of_mul_eq_zero h₅₃

// 2 path(s) merged (paths); 8 shared facts; 2 distinct path conditions
// AUGMENTATION K1
lemma {:induction false} vc_aime_1990_p4_L205_K1(x: real)
  requires 0.0 < x
  requires x * x - 10.0 * x - 29.0 != 0.0
  requires x * x - 10.0 * x - 45.0 != 0.0
  requires x * x - 10.0 * x - 69.0 != 0.0
  requires Real.div(1.0, x * x - 10.0 * x - 29.0) + Real.div(1.0, x * x - 10.0 * x - 45.0) - Real.div(2.0, x * x - 10.0 * x - 69.0) == 0.0
  requires x * x - 10.0 * x == 39.0
  requires x * x - 10.0 * x - 39.0 == 0.0
  requires (x - 13.0) * (x + 3.0) == 0.0
  requires (x - 13.0 != 0.0) || (x - 13.0 == 0.0)
  ensures  x - 13.0 == 0.0 || x + 3.0 == 0.0
{
  EqZeroOrEqZeroOfMulEqZero(x - 13.0, x + 3.0);  // K1: instance fixed by h₅₃ : (x - 13) * (x + 3) = 0
}
