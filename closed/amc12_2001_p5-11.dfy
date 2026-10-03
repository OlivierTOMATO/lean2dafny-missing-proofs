// CLOSED — failing line amc12_2001_p5-11: theorem amc12_2001_p5, Dafny line 11 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: ensures (Int.prod((set x: nat | x in range(10000) && (!Even(x))), ((x_1: nat) => x_1)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000))))
// Lean step: have h_main : 2 ^ 5000 * 5000! ∣ 10000! := by
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 3); nothing assumed beyond the facts in scope
// how it closes: pass2 — body fully REPLACED by the library call MulNonnegInt(Int.pow(2, 5000), factorial(5000)) (Mathlib mul_nonneg); the goal is the nat-typing obligation 0 <= 2^5000 * 5000! of the ensures line and does not depend on the theorem's own proof body (whose inner asserts OOR independently and were dropped)
// Dafny: Dafny program verifier finished with 7 verified, 0 errors  (1.46 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L11(x: int)
  ensures   0 <= Int.pow(2, 5000) * factorial(5000)
{
  MulNonnegInt(Int.pow(2, 5000), factorial(5000));  // [ADDED]
}
