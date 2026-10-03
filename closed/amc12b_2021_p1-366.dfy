// CLOSED LEMMA for failing line amc12b_2021_p1-366 (theorem amc12b_2021_p1, Dafny line 366, ERR)
// closes with: K5 (automation lemma) — single
// added: IntIccCard(-9, 9, Icc(-9, 9));
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_023/amc12b_2021_p1-366/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 366 of amc12b_2021_p1 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12b_2021_p1.dfy"

// ========================================================================================
// FAILING LINE 366 (ERR) in amc12b_2021_p1: assertion might not hold
//   dafny |   assert (|Icc(-(9), 9)| == 19); // @tac 3583-3640 // @tac 3583-3628
//   statement kind: have / step assertion
//   @tac 3583-3640 | Lean: norm_num [Finset.Icc_self, Finset.card_empty]
//        before-goal ⊢ Finset.card (Finset.Icc (-9 : ℤ) (9 : ℤ)) = (19 : ℕ)
//   @tac 3583-3628 | Lean: norm_num [Finset.Icc_self, Finset.card_empty]
//        before-goal ⊢ Finset.card (Finset.Icc (-9 : ℤ) (9 : ℤ)) = (19 : ℕ)
// Lean have h_finset_card, Lean lines 111-113:
//   lean  |   have h_finset_card : (Finset.Icc (-9 : ℤ) 9).card = 19 := by
//   lean  |     norm_num [Finset.Icc_self, Finset.card_empty]
//   lean  |     <;> rfl

// 1 path(s) merged (paths); 4 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12b_2021_p1_L366_K5(S: set<int>)
  requires forall x_1: int :: (x_1 in S) == ((IntAbs(x_1) as real) < 3.0 * Real.pi())
  requires 9.0 < 3.0 * Real.pi()
  requires 3.0 * Real.pi() < 10.0
  requires S == Icc(0 - 9, 9)
  ensures  |Icc(0 - 9, 9)| == 19
{
  // K5: Int.card_Icc (applied inside Lean's norm_num, exec 681, args a=-9, b=9)
  IntIccCard(-9, 9, Icc(-9, 9));
}
