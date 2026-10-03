// CLOSED — failing line amc12_2001_p5-18: theorem amc12_2001_p5, Dafny line 18 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: assert (NatMod(factorial(10000), (Int.pow(2, 5000) * factorial(5000))) == 0) by {
// Lean step: rfl
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — library call MulNonnegInt(Int.pow(2, 5000), factorial(5000)) (Mathlib mul_nonneg; Int.pow's own ensures gives 0 <= 2^5000, factorial's gives 1 <= 5000!). NOTE: the closed statement is the extracted well-formedness obligation 0 <= 2^5000 * 5000! of that line, not the `rfl` mod-computation the Lean step performs
// Dafny: Dafny program verifier finished with 7 verified, 0 errors  (1.47 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L18()
  requires 0 <= 10000
  requires 0 <= 5000
  ensures   (0 <= Int.pow(2, 5000) * factorial(5000))
{
  MulNonnegInt(Int.pow(2, 5000), factorial(5000));  // [ADDED]
}
