// CLOSED — failing line imo_1964_p1_1-40: theorem imo_1964_p1_1, Dafny line 40 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert (orderOf(2, 7) == 3) by {
// Lean step: rw [orderOf_eq_iff] <;> decide
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: pass2 — dropped the Int.pow/NatDvd hypotheses (matching-loop fodder); computed Int.pow(2,j) for j<=3 by unfolding and cited library OrderOfEqIff(2,7,3)
// Dafny: Dafny program verifier finished with 22 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.8s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L40(m_1_0_0: nat, n: nat)
  requires 0 <= n
  ensures   orderOf(2, 7) == 3
{
  assert Int.pow(2, 0) == 1;  // [ADDED]
  assert Int.pow(2, 1) == 2;  // [ADDED]
  assert Int.pow(2, 2) == 4;  // [ADDED]
  assert Int.pow(2, 3) == 8;  // [ADDED]
  assert Int.pow(2, 3) % 7 == 1;  // [ADDED]
  forall j: nat | 0 < j < 3 ensures Int.pow(2, j) % 7 != 1 {  // [ADDED]
    if j == 1 { assert Int.pow(2, j) == 2; } else { assert j == 2; assert Int.pow(2, j) == 4; }  // [ADDED]
  }
  OrderOfEqIff(2, 7, 3);  // [ADDED]
}

