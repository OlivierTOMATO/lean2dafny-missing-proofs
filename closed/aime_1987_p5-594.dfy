// CLOSED LEMMA for failing line aime_1987_p5-594 (theorem aime_1987_p5, Dafny line 594, OOR)
// closes with: K4 (types) — single
// added: IntDvdIffEmodEqZero(3 * (x * x) + 1, 507);  (Lean ∣ on ℤ is ∃ by definition)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_004/aime_1987_p5-594/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 594 of aime_1987_p5 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/aime_1987_p5.dfy"

// ========================================================================================
// FAILING LINE 594 (OOR) in aime_1987_p5: Verification out of resource (aime_1987_p5)
//   dafny |               assert (0 < (507)) && (exists k: int :: (507) == (((3 * (x * x)) + 1)) * k);  // precondition of IntLeOfDvd (Lean: Int.le_of_dvd)
//   statement kind: precondition (asserted lemma precondition)
// inside Lean have h₃₅₇, Lean lines 66-66:
//   lean  |             have h₃₅₇ : 3 * x ^ 2 + 1 ≤ 507 := Int.le_of_dvd (by norm_num) h₃₅₆

// 1 path(s) merged (paths); 6 shared facts; 1 distinct path conditions
// AUGMENTATION K4
lemma {:induction false} vc_aime_1987_p5_L594_K4(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires IntDvd(3 * (x * x) + 1, 507)
  requires x * x >= 1
  requires 3 * (x * x) + 1 > 0
  requires 0 < 507
  ensures  exists k_2_2_0_1_1_1_1: int :: 507 == (3 * (x * x) + 1) * k_2_2_0_1_1_1_1
{
  IntDvdIffEmodEqZero(3 * (x * x) + 1, 507);  // K4: Lean ∣ on ℤ is ∃ c by definition; h passed directly to Int.le_of_dvd
}
