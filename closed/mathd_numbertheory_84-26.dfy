// CLOSED LEMMA for failing line mathd_numbertheory_84-26 (theorem mathd_numbertheory_84, Dafny line 26, ERR)
// closes with: K5 (automation lemma) — single
// added: IntFloorEqIff(9.0 / 160.0 * 100.0, 5);  (library counterpart of Int.floor_eq_iff, the simp lemma in norm_num [Int.floor_eq_iff, shifted_decimal])
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_043/mathd_numbertheory_84-26/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 26 of mathd_numbertheory_84 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_numbertheory_84.dfy"

// ========================================================================================
// FAILING LINE 26 (ERR) in mathd_numbertheory_84: assertion might not hold
//   dafny |   assert (floor(((9.0 / 160.0) * 100.0)) == 5) by { // @tac 896-974 // @tac 896-957 // @tac 896-940
//   statement kind: have / step assertion
//   @tac 896-974 | Lean: norm_num [Int.floor_eq_iff, shifted_decimal]
//        before-goal ⊢ ⌊(9 / 160 : ℝ) * (100 : ℝ)⌋ = (5 : ℤ)
//   @tac 896-957 | Lean: norm_num [Int.floor_eq_iff, shifted_decimal]
//        before-goal ⊢ ⌊(9 / 160 : ℝ) * (100 : ℝ)⌋ = (5 : ℤ)
//   @tac 896-940 | Lean: norm_num [Int.floor_eq_iff, shifted_decimal]
//        before-goal ⊢ ⌊(9 / 160 : ℝ) * (100 : ℝ)⌋ = (5 : ℤ)
// Lean have floor_value, Lean lines 26-29:
//   lean  |   have floor_value : Int.floor ((9 : ℝ) / 160 * 100) = 5 := by
//   lean  |     norm_num [Int.floor_eq_iff, shifted_decimal]
//   lean  |     <;> norm_num
//   lean  |     <;> linarith

// 1 path(s) merged (paths); 3 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_numbertheory_84_L26()
  requires 9.0 / 160.0 == 0.05625
  requires 9.0 / 160.0 * 100.0 == 5.625
  requires (1 as real) == 1.0
  ensures  floor(9.0 / 160.0 * 100.0) == 5
{
  IntFloorEqIff(9.0 / 160.0 * 100.0, 5);  // K5: Int.floor_eq_iff (simp set of norm_num at exec 152)
}

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_mathd_numbertheory_84_L26_side1()
  requires 9.0 / 160.0 == 0.05625
  requires 9.0 / 160.0 * 100.0 == 5.625
  requires (1 as real) == 1.0
  ensures  160.0 != 0.0
{ }

