// CLOSED — failing line mathd_numbertheory_618-189: theorem mathd_numbertheory_618, Dafny line 189 (OOR: Verification out of resource (mathd_numbertheory_618))
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 26 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 kept 21 of 26 facts (dropped 5 interval_cases case-structure facts, hypotheses only dropped, none added)
// how it closes: pass2 — dropped the interval_cases case-structure facts; asserts p(5) == tsub(5*5,5)+41, p(5) == 61, gcd(61, 10) == 1
// Dafny: finished with 31 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L189(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_0__arg: nat, x_3_0_0_10__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_13__arg: nat, x_3_0_0_14__arg: nat, x_3_0_0_15__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_17__arg: nat, x_3_0_0_18__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_0__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_13__arg: nat, y_3_0_0_14__arg: nat, y_3_0_0_15__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_17__arg: nat, y_3_0_0_18__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires 0 <= 2 * n
  requires gcd(p(n), p(n + 1)) == gcd(p(n), 2 * n)
  requires 1 < gcd(p(n), 2 * n)
  requires !(41 <= n)
  requires n <= 40
  requires n == 5
  requires 5 > 0
  requires 1 < gcd(p(5), p(5 + 1))
  requires p(5 + 1) == p(5) + 2 * 5
  requires gcd(p(5), p(5 + 1)) == gcd(p(5), 2 * 5)
  requires 1 < gcd(p(5), 2 * 5)
  requires !(41 <= 5)
  requires 5 <= 40
  ensures   false
{
  assert p(5) == tsub(5 * 5, 5) + 41;  // [ADDED]
  assert p(5) == 61;  // [ADDED]
  assert gcd(61, 10) == 1;  // [ADDED]
}


