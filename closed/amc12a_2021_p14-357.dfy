// CLOSED — failing line amc12a_2021_p14-357: theorem amc12a_2021_p14, Dafny line 357 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (Real.div(((k as real) * (2.0 * Real.log(5.0))), ((k as real) * (2.0 * Real.log(3.0)))) == Real.logb(3.0, 5.0)) by {
// Lean step: have h₃₆ : (k : ℝ) ≠ 0 := by
// hypotheses: 15 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 3); nothing assumed beyond the facts in scope; pass2 keeps 9 of the 15 (dropped: see "how it closes")
// how it closes: pass2 — RealLogbUnfold(3,5) (Real.logb in the field_simp list) and RealLogNeZeroOfPosOfNeOne(3) (h39); with k=k as real, a=log 5, b=log 3, d=k*(2b): checked asserts k!=0, b!=0, d!=0, logb(3,5)==a/b, (a/b)*b==a, (a/b)*d==k*(2a), Real.div(k*(2a),d)==(k*(2a))/d, (k*(2a))/d==a/b; dropped 6 of the 15 hypotheses: those with Real.pow/Real.sum (h1, h2, the log(pow) facts) and the giant positivity case-split disjunction (none needed; they drive Z3 out of resource)
// Dafny: finished with 19 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L357(k_2_0: nat)
  requires 0 <= 1
  requires 0 <= 20
  requires 0 <= k_2_0
  requires 0 <= 100
  requires k_2_0 in IccN(1, 100)
  requires Real.log(25.0) == 2.0 * Real.log(5.0)
  requires Real.log(9.0) == 2.0 * Real.log(3.0)
  requires (k_2_0 as real) != 0.0
  requires (k_2_0 as real) * (2.0 * Real.log(5.0)) * Real.log(3.0) == Real.log(5.0) * ((k_2_0 as real) * (2.0 * Real.log(3.0)))
  ensures   Real.div((k_2_0 as real) * (2.0 * Real.log(5.0)), (k_2_0 as real) * (2.0 * Real.log(3.0))) == Real.logb(3.0, 5.0)


{
RealLogbUnfold(3.0, 5.0);  // Lean: Real.logb (definition unfolding, in the field_simp list)  // [ADDED]
  RealLogNeZeroOfPosOfNeOne(3.0);  // Lean: Real.log_ne_zero_of_pos_of_ne_one (h39)  // [ADDED]
  var k := k_2_0 as real;  // [ADDED]
  var a := Real.log(5.0);  // [ADDED]
  var b := Real.log(3.0);  // [ADDED]
  assert k != 0.0;  // [ADDED]
  assert b != 0.0;  // [ADDED]
  var d := k * (2.0 * b);  // [ADDED]
  assert d != 0.0;  // [ADDED]
  assert Real.logb(3.0, 5.0) == a / b;  // [ADDED]
  assert (a / b) * b == a;  // [ADDED]
  assert (a / b) * d == k * (2.0 * a);  // [ADDED]
  assert Real.div(k * (2.0 * a), d) == (k * (2.0 * a)) / d;  // [ADDED]
  assert (k * (2.0 * a)) / d == a / b;  // [ADDED]
}
