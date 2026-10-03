// CLOSED LEMMA for failing line amc12b_2021_p9-546 (theorem amc12b_2021_p9, Dafny line 546, ERR)
// closes with: simplest (simplest) — simplest-close
// added: add exact Mathlib `lemma {:axiom} DivSubDivSame(a: real, b: real, c: real) ensures Real.div(a, c) - Real.div(b, c) == Real.div(a - b, c)` (div_sub_div_same; unconditional since Real.div(_,0)=0 like Lean) and call `DivSubDivSame(Real.log(80.0) * Real.log(40.0), Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0));`
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/amc12b_2021_p9-546/sc_divsubdivsame.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// sc_divsubdivsame: simplest close (d): library + exact Mathlib div_sub_div_same, one call
// Line lemma for failing line 546 of amc12b_2021_p9 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12b_2021_p9.dfy"

// ========================================================================================
// FAILING LINE 546 (ERR) in amc12b_2021_p9: assertion might not hold
//   dafny |         assert ((Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0))) - Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) == Real.div(((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))), (Real.log(2.0) * Real.log(2.0)))) by { 
//   statement kind: have / step assertion
//   @tac 7754-7794 | Lean: field_simp [h₇₅]
//        before-goal ⊢ Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ) -
//     Real.log (160 : ℝ) * Real.log (20 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ) =
//   (Real.log (80 : ℝ) * Real.log (40 : ℝ) - Real.log (160 : ℝ) * Real.log (20 
//   @tac 7754-7774 | Lean: field_simp [h₇₅]
//        before-goal ⊢ Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ) -
//     Real.log (160 : ℝ) * Real.log (20 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ) =
//   (Real.log (80 : ℝ) * Real.log (40 : ℝ) - Real.log (160 : ℝ) * Real.log (20 
// Lean have h₇₆, Lean lines 135-137:
//   lean  |       have h₇₆ : (Real.log 80 * Real.log 40) / (Real.log 2) ^ 2 - (Real.log 160 * Real.log 20) / (Real.log 2) ^ 2 = (Real.log 80 * Real.log 40 - Real.log 160 * Real.log 20) / (Real.log 2) ^ 2 := by
//   lean  |         field_simp [h₇₅]
//   lean  |         <;> ring_nf

// 2 path(s) merged (paths); 10 shared facts; 2 distinct path conditions

// Mathlib: theorem div_sub_div_same (a b c : α) : a / c - b / c = (a - b) / c
lemma {:axiom} DivSubDivSame(a: real, b: real, c: real)
  ensures Real.div(a, c) - Real.div(b, c) == Real.div(a - b, c)


lemma {:induction false} vc_amc12b_2021_p9_L546()
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
  requires ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2))) || (Real.log(2.0) <= 0.0)
  ensures  Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0)) - Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
{
  DivSubDivSame((Real.log(80.0) * Real.log(40.0)), (Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)));
}
