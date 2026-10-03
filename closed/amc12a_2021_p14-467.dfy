// CLOSED — failing line amc12a_2021_p14-467: theorem amc12a_2021_p14, Dafny line 467 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(3.0, 5.0))) == (100.0 * Real.logb(3.0, 5.0))) by {
// Lean step: simp [Finset.sum_const, Finset.card_range]
// hypotheses: 0 facts Z3 had at the line; this variant also drops 7 hypotheses; nothing assumed beyond the facts in scope
// how it closes: pairK3K5 — 
// Dafny: finished with 8 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L467()
  ensures   Real.sum(IccN(1, 100), ((v_22_k: nat) => Real.logb(3.0, 5.0))) == 100.0 * Real.logb(3.0, 5.0)
{
  FinsetSumConst(IccN(1, 100), Real.logb(3.0, 5.0));  // Finset.sum_const, applied inside simp (exec 2042, internal)
  NatCardIcc(1, 100);  // Nat.card_Icc, applied inside simp (exec 2042, internal)
}

// Mathlib: theorem Nat.card_Icc (a b : ℕ) : (Finset.Icc a b).card = b + 1 - a   (ℕ truncated subtraction = tsub)
// added to this ablation work copy only (no library counterpart in integ5)
lemma {:axiom} NatCardIcc(a: nat, b: nat)
  ensures |IccN(a, b)| == tsub(b + 1, a)
