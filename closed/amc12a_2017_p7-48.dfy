// CLOSED — failing line amc12a_2017_p7-48: theorem amc12a_2017_p7, Dafny line 48 (ERR: assertion might not hold)
// failing Dafny line: assert (f((n + 1)) == ((n as real) + 2.0));
// Lean step: simp_all [Nat.succ_eq_add_one, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, parity_simps]
// hypotheses: 24 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — instance of h₁ (even step) at Lean argument: assert f(n_1_0_0 + 1 + 1) == f(tsub(n_1_0_0 + 1 + 1, 1)) + 1.0;
// Dafny: finished with 16 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2017_p7.dfy"
lemma {:induction false} vc_amc12a_2017_p7_L48(f: nat -> real, n: nat, n_1_0: int, n_1_0_0: int, n_1_1_0_0: int, n_1_1_0_2: int)
  requires 0 <= n
  requires 0 <= n_1_0
  requires f(1) == 2.0
  requires forall n_2: nat :: 1 < n_2 && Even(n_2) ==> f(n_2) == f(tsub(n_2, 1)) + 1.0
  requires forall n_4: nat :: 1 < n_4 && Odd(n_4) ==> f(n_4) == f(tsub(n_4, 2)) + 2.0
  requires n + 1 + 1 > 1
  requires n != 0
  requires 0 <= 1
  requires 0 <= n - 1
  requires n_1_0_0 == n - 1
  requires ((n_1_0_0 + 1 + 1 > 1) && (0 <= n_1_0_0 + 1 + 1) && ((n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0) || (!(n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0)))) || ((1 >= n_1_0_0 + 1 + 1) && ((n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0) || (!(n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0))))
  requires n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0
  requires n_1_0_0 + 1 + 1 + 1 > 1
  requires Even(n_1_0_0) || Odd(n_1_0_0)
  requires Even(n_1_0_0)
  requires 0 <= 2
  requires ((n_1_0_0 + 2) as real) == (n_1_0_0 as real) + (2 as real)
  requires 0 <= 3
  requires ((n_1_0_0 + 3) as real) == (n_1_0_0 as real) + (3 as real)
  requires ((0 <= n_1_1_0_0) && (((1 < n_1_1_0_0) && (((Even(n_1_1_0_0)) && (0 <= 1)) || (!Even(n_1_1_0_0)))) || (n_1_1_0_0 <= 1))) || (n_1_1_0_0 < 0)
  requires forall n_1_1_0_1: nat :: 1 < n_1_1_0_1 ==> Even(n_1_1_0_1) ==> f(n_1_1_0_1) == f(tsub(n_1_1_0_1, 1)) + 1.0
  requires ((0 <= n_1_1_0_2) && (((1 < n_1_1_0_2) && (((!Even(n_1_1_0_2)) && (0 <= 2)) || (Even(n_1_1_0_2)))) || (n_1_1_0_2 <= 1))) || (n_1_1_0_2 < 0)
  requires forall n_1_1_0_3: nat :: 1 < n_1_1_0_3 ==> !Even(n_1_1_0_3) ==> f(n_1_1_0_3) == f(tsub(n_1_1_0_3, 2)) + 2.0
  requires 0 <= n_1_0_0 + 1
  ensures   f(n_1_0_0 + 1) == (n_1_0_0 as real) + 2.0
{
  assert f(n_1_0_0 + 1 + 1) == f(tsub(n_1_0_0 + 1 + 1, 1)) + 1.0;  // [ADDED]
}

