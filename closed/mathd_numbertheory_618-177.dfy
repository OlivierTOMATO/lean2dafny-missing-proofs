// CLOSED — failing line mathd_numbertheory_618-177: theorem mathd_numbertheory_618, Dafny line 177 (ERR: assertion might not hold)
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 24 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 kept 21 of 24 facts (dropped 3 interval_cases case-structure facts, hypotheses only dropped, none added)
// how it closes: pass2 — dropped the interval_cases case-structure facts (the giant nested conjunctions); asserts p(3) == tsub(3*3,3)+41, p(3) == 47, gcd(47, 6) == 1 (literal gcd evaluates)
// Dafny: finished with 31 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L177(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_0__arg: nat, x_3_0_0_10__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_0__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat)
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
  requires n == 3
  requires 3 > 0
  requires 1 < gcd(p(3), p(3 + 1))
  requires p(3 + 1) == p(3) + 2 * 3
  requires gcd(p(3), p(3 + 1)) == gcd(p(3), 2 * 3)
  requires 1 < gcd(p(3), 2 * 3)
  requires !(41 <= 3)
  requires 3 <= 40
  ensures   false
{
  assert p(3) == tsub(3 * 3, 3) + 41;  // [ADDED]
  assert p(3) == 47;  // [ADDED]
  assert gcd(47, 6) == 1;  // [ADDED]
}


