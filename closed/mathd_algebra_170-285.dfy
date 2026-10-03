// CLOSED LEMMA for failing line mathd_algebra_170-285 (theorem mathd_algebra_170, Dafny line 285, ERR)
// closes with: K2 (computation) — single
// added: assert Icc(0 - 3, 7) == {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7};
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_038/mathd_algebra_170-285/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// kinds ablation shard_038, mathd_algebra_170-285, augmentation K2
// Line lemma for failing line 285 of mathd_algebra_170 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_algebra_170.dfy"

// ========================================================================================
// FAILING LINE 285 (ERR) in mathd_algebra_170: assertion might not hold
//   dafny |     assert (|Icc(-(3), 7)| == 11) by {  // sub-goal before `rfl` (Lean state) // @tac 2626-2629
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2626-2629 | Lean: rfl
//        before-goal ⊢ Finset.card (Finset.Icc (-3 : ℤ) (7 : ℤ)) = (11 : ℕ)
// inside Lean have h₂, Lean lines 85-89:
//   lean  |   have h₂ : S.card = 11 := by
//   lean  |     rw [h₁]
//   lean  |     -- We need to compute the cardinality of the interval [-3, 7]
//   lean  |     -- This can be done by directly evaluating the cardinality of the finset
//   lean  |     rfl

// 1 path(s) merged (paths); 2 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_algebra_170_L285(S: set<int>)
  requires forall n_1: int :: (n_1 in S) == (IntAbs(n_1 - 2) <= 5 + 6 / 10)
  requires S == Icc(0 - 3, 7)
  ensures  |Icc(0 - 3, 7)| == 11
{
  assert Icc(0 - 3, 7) == {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7};
}

