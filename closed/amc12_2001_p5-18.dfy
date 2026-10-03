// NOT CLOSED — failing line amc12_2001_p5-18: theorem amc12_2001_p5, Dafny line 18 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: assert (NatMod(factorial(10000), (Int.pow(2, 5000) * factorial(5000))) == 0) by {
// Lean step: rfl
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 2 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L18()
  requires 0 <= 10000
  requires 0 <= 5000
  ensures   (0 <= Int.pow(2, 5000) * factorial(5000))
{
        // [TACTIC: Rfl]
}

