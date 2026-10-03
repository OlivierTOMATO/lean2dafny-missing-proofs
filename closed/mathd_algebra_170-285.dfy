// CLOSED — failing line mathd_algebra_170-285: theorem mathd_algebra_170, Dafny line 285 (ERR: assertion might not hold)
// failing Dafny line: assert (|Icc(-(3), 7)| == 11) by {
// Lean step: rfl
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — assert Icc(0 - 3, 7) == {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7};
// Dafny: finished with 3 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_170.dfy"
lemma {:induction false} vc_mathd_algebra_170_L285(S: set<int>)
  requires forall n_1: int :: (n_1 in S) == (IntAbs(n_1 - 2) <= 5 + 6 / 10)
  requires S == Icc(0 - 3, 7)
  ensures   |Icc(0 - 3, 7)| == 11
{
  assert Icc(0 - 3, 7) == {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7};  // [ADDED]
      // [TACTIC: Rfl]
}

