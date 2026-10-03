// CLOSED — failing line amc12b_2021_p1-366: theorem amc12b_2021_p1, Dafny line 366 (ERR: assertion might not hold)
// failing Dafny line: assert (|Icc(-(9), 9)| == 19);
// Lean step: norm_num [Finset.Icc_self, Finset.card_empty]
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — IntIccCard(-9, 9, Icc(-9, 9));
// Dafny: finished with 3 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p1.dfy"
lemma {:induction false} vc_amc12b_2021_p1_L366(S: set<int>)
  requires forall x_1: int :: (x_1 in S) == ((IntAbs(x_1) as real) < 3.0 * Real.pi())
  requires 9.0 < 3.0 * Real.pi()
  requires 3.0 * Real.pi() < 10.0
  requires S == Icc(0 - 9, 9)
  ensures   |Icc(0 - 9, 9)| == 19
{
  // K5: Int.card_Icc (applied inside Lean's norm_num, exec 681, args a=-9, b=9)
  IntIccCard(-9, 9, Icc(-9, 9));
}

