// CLOSED LEMMA for failing line amc12a_2009_p9-388 (theorem amc12a_2009_p9, Dafny line 388, ERR)
// closes with: K1 (instance) — single
// added: asserts of h₅ 0, h₅ 1, h₅ 2, h₅ 3 (Lean's linarith hint terms; instances of the ∀ h₅ requires, checked)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p9-388/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 388 of amc12a_2009_p9 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p9.dfy"

// ========================================================================================
// FAILING LINE 388 (ERR) in amc12a_2009_p9: assertion might not hold
//   dafny |     assert (((3.0 * 6.0) + b) == 7.0) by {  // sub-goal before `linarith` (Lean state) // @tac 2069-2110
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2069-2110 | Lean: linarith [h₅ 0, h₅ 1, h₅ 2, h₅ 3]
//        before-goal ⊢ (3 : ℝ) * (6 : ℝ) + b = (7 : ℝ)
//        before-goal ⊢ (3 : ℝ) * (6 : ℝ) + b - (7 : ℝ) +
//        ((0 : ℝ) ^ (2 : ℕ) * (3 : ℝ) + (0 : ℝ) * ((3 : ℝ) * (6 : ℝ) + b) + ((3 : ℝ) * (9 : ℝ) + b * (3 : ℝ) + c) -
//          ((0 : ℝ) ^ (2 : ℕ) * (3 : ℝ) + (0 : ℝ) * (7 : ℝ) + (4 : ℝ))) +
  
// inside Lean have h₇, Lean lines 56-58:
//   lean  |   have h₇ : 6 * a + b = 7 := by
//   lean  |     simp_all only [mul_comm]
//   lean  |     linarith [h₅ 0, h₅ 1, h₅ 2, h₅ 3]

// 1 path(s) merged (paths); 16 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p9_L388(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1 + 3.0) == 3.0 * (x_1 * x_1) + 7.0 * x_1 + 4.0
  requires forall x_3: real :: f(x_3) == a * (x_3 * x_3) + b * x_3 + c
  requires forall x_0_3: real :: true ==> a * ((x_0_3 + 3.0) * (x_0_3 + 3.0)) + b * (x_0_3 + 3.0) + c == 3.0 * (x_0_3 * x_0_3) + 7.0 * x_0_3 + 4.0
  requires forall x_1_1: real :: true ==> a * (x_1_1 * x_1_1 + 6.0 * x_1_1 + 9.0) + b * (x_1_1 + 3.0) + c == 3.0 * (x_1_1 * x_1_1) + 7.0 * x_1_1 + 4.0
  requires forall x_2_1: real :: true ==> a * (x_2_1 * x_2_1) + 6.0 * a * x_2_1 + 9.0 * a + b * x_2_1 + 3.0 * b + c == 3.0 * (x_2_1 * x_2_1) + 7.0 * x_2_1 + 4.0
  requires forall x_3_1: real :: true ==> a * (x_3_1 * x_3_1) + (6.0 * a + b) * x_3_1 + (9.0 * a + 3.0 * b + c) == 3.0 * (x_3_1 * x_3_1) + 7.0 * x_3_1 + 4.0
  requires a == 3.0
  requires forall x_5_1: real :: 3.0 * ((x_5_1 + 3.0) * (x_5_1 + 3.0)) + b * (x_5_1 + 3.0) + c == x_5_1 * x_5_1 * 3.0 + x_5_1 * 7.0 + 4.0
  requires forall x_5_3: real :: f(x_5_3) == x_5_3 * x_5_3 * 3.0 + b * x_5_3 + c
  requires forall x_5_5: real :: 3.0 * (x_5_5 * x_5_5 + x_5_5 * 6.0 + 9.0) + b * (x_5_5 + 3.0) + c == x_5_5 * x_5_5 * 3.0 + x_5_5 * 7.0 + 4.0
  requires forall x_5_7: real :: x_5_7 * x_5_7 * 3.0 + x_5_7 * (3.0 * 6.0) + 3.0 * 9.0 + b * x_5_7 + b * 3.0 + c == x_5_7 * x_5_7 * 3.0 + x_5_7 * 7.0 + 4.0
  requires forall x_5_9: real :: x_5_9 * x_5_9 * 3.0 + x_5_9 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == x_5_9 * x_5_9 * 3.0 + x_5_9 * 7.0 + 4.0
  requires 3.0 * 6.0 + b - 7.0 + (0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0)) + (0.0 - (1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0))) == 0.0
  requires 7.0 - (3.0 * 6.0 + b) + (0.0 - (0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0))) + (1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0)) == 0.0
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  ensures  3.0 * 6.0 + b == 7.0
{
  // K1: linarith hint terms h₅ 0, h₅ 1, h₅ 2, h₅ 3 (exec 286)
  assert 0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0;  // h₅ 0
  assert 1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0;  // h₅ 1
  assert 2.0 * 2.0 * 3.0 + 2.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 2.0 * 2.0 * 3.0 + 2.0 * 7.0 + 4.0;  // h₅ 2
  assert 3.0 * 3.0 * 3.0 + 3.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 3.0 * 3.0 * 3.0 + 3.0 * 7.0 + 4.0;  // h₅ 3
}

