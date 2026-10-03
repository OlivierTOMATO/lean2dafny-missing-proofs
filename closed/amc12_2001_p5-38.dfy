// NOT CLOSED — failing line amc12_2001_p5-38: theorem amc12_2001_p5, Dafny line 38 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: ensures (!(Even(x)) <==> ((x % 2) == 1))
// Lean step: simp [Nat.even_iff, Nat.mod_eq_zero_of_dvd]
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 7 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L38(x_1_0_0_0_0: int)
  requires 0 <= 5000
  requires 0 <= Int.pow(2, 5000) * factorial(5000)
  requires 0 <= 10000
  requires NatDvd(Int.pow(2, 5000) * factorial(5000), factorial(10000))
  requires 0 <= x_1_0_0_0_0
  ensures   !Even(x_1_0_0_0_0) == (x_1_0_0_0_0 % 2 == 1)
{ }

