// CLOSED — failing line amc12a_2021_p14-482: theorem amc12a_2021_p14, Dafny line 482 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by {
// Lean step: have h₅₁ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 3); nothing assumed beyond the facts in scope; pass2 keeps 3 of the 7 (dropped: see "how it closes")
// how it closes: pass2 — RealLogbUnfold(5,3), RealLogbUnfold(3,5) (Lean: Real.logb unfolding, h51/h52), RealLogNeZeroOfPosOfNeOne(3), (5) (h53/h54); then with a=log 3, b=log 5 checked asserts logb(5,3)==a/b, logb(3,5)==b/a, (a/b)*b==a, (b/a)*a==b, (a/b)*(b/a)==1; dropped 4 of the 7 hypotheses, those mentioning Real.pow/Real.sum (h1..h4: irrelevant to the goal, and their recursive-pow terms push Z3 out of resource)
// Dafny: finished with 16 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L482()
  requires 0 <= 1
  requires 0 <= 20
  requires 0 <= 100
  ensures   Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0


{
RealLogbUnfold(5.0, 3.0);  // Lean: Real.logb (definition unfolding, h51)  // [ADDED]
  RealLogbUnfold(3.0, 5.0);  // Lean: Real.logb (definition unfolding, h52)  // [ADDED]
  RealLogNeZeroOfPosOfNeOne(3.0);  // Lean: Real.log_ne_zero_of_pos_of_ne_one (h53)
  RealLogNeZeroOfPosOfNeOne(5.0);  // Lean: Real.log_ne_zero_of_pos_of_ne_one (h54)
  var a := Real.log(3.0);  // [ADDED]
  var b := Real.log(5.0);  // [ADDED]
  assert Real.logb(5.0, 3.0) == a / b;  // [ADDED]
  assert Real.logb(3.0, 5.0) == b / a;  // [ADDED]
  assert (a / b) * b == a;  // [ADDED]
  assert (b / a) * a == b;  // [ADDED]
  assert (a / b) * (b / a) == 1.0;  // [ADDED]
}
