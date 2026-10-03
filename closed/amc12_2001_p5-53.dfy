// NOT CLOSED — failing line amc12_2001_p5-53: theorem amc12_2001_p5, Dafny line 53 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: assert (Int.prod((set x: nat | x in range(10000) && ((x % 2) == 1)), ((x: nat) => x)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000)))) by {
// Lean step: rfl
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 41 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L53(x_1_0_4: int, x_1_0_5: int, x_1_0_6: int)
  requires 0 <= 5000
  requires 0 <= Int.pow(2, 5000) * factorial(5000)
  requires 0 <= 10000
  requires NatDvd(Int.pow(2, 5000) * factorial(5000), factorial(10000))
  requires ((0 <= x_1_0_4) && (0 <= 10000) && (((x_1_0_4 in range(10000)) && (((x_1_0_4 in range(10000)) && (!Even(x_1_0_4))) || (!(x_1_0_4 in range(10000) && !Even(x_1_0_4))))) || ((!(x_1_0_4 in range(10000))) && (((x_1_0_4 in range(10000)) && (!Even(x_1_0_4))) || (!(x_1_0_4 in range(10000) && !Even(x_1_0_4))))))) || (x_1_0_4 < 0)
  requires ((0 <= x_1_0_5) && (0 <= 10000) && (((x_1_0_5 in range(10000)) && (2 != 0) && (((x_1_0_5 in range(10000)) && (x_1_0_5 % 2 == 1)) || (!(x_1_0_5 in range(10000) && x_1_0_5 % 2 == 1)))) || ((!(x_1_0_5 in range(10000))) && (((x_1_0_5 in range(10000)) && (x_1_0_5 % 2 == 1)) || (!(x_1_0_5 in range(10000) && x_1_0_5 % 2 == 1)))))) || (x_1_0_5 < 0)
  requires (set y_1: nat | y_1 in range(10000) && !Even(y_1)) == (set y_1_0_7: nat | y_1_0_7 in range(10000) && y_1_0_7 % 2 == 1)
  requires ((0 <= x_1_0_6) && (0 <= 10000) && (((x_1_0_6 in range(10000)) && (((x_1_0_6 in range(10000)) && (x_1_0_6 % 2 == 1)) || (!(x_1_0_6 in range(10000) && x_1_0_6 % 2 == 1)))) || ((!(x_1_0_6 in range(10000))) && (((x_1_0_6 in range(10000)) && (x_1_0_6 % 2 == 1)) || (!(x_1_0_6 in range(10000) && x_1_0_6 % 2 == 1)))))) || (x_1_0_6 < 0)
  ensures   Int.prod(set y_1_0_7: nat | y_1_0_7 in range(10000) && y_1_0_7 % 2 == 1, ((x_1: nat) => x_1)) == NatDiv(factorial(10000), Int.pow(2, 5000) * factorial(5000))
{
        // [TACTIC: Rfl]
}

