// CLOSED — failing line amc12_2001_p5-38: theorem amc12_2001_p5, Dafny line 38 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: ensures (!(Even(x)) <==> ((x % 2) == 1))
// Lean step: simp [Nat.even_iff, Nat.mod_eq_zero_of_dvd]
// hypotheses: 5 facts Z3 had at the line (4 factorial/pow hypotheses dropped in pass2: 0 ≤ 5000, 0 ≤ 2^5000·5000!, 0 ≤ 10000, 2^5000·5000! ∣ 10000!); nothing assumed beyond the facts in scope
// how it closes: pass2 — dropped the 4 factorial/pow hypotheses (0 ≤ 5000, 0 ≤ 2^5000·5000!, 0 ≤ 10000, 2^5000·5000! ∣ 10000!): Z3 unfolds them and runs out of resource; the goal ¬Even x ↔ x % 2 = 1 is then immediate from the body of Even
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L38(x_1_0_0_0_0: int)
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= 5000
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= Int.pow(2, 5000) * factorial(5000)
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= 10000
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): NatDvd(Int.pow(2, 5000) * factorial(5000), factorial(10000))
  requires 0 <= x_1_0_0_0_0
  ensures   !Even(x_1_0_0_0_0) == (x_1_0_0_0_0 % 2 == 1)
{ }

