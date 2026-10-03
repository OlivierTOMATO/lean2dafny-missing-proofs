// CLOSED — failing line amc12a_2017_p7-28: theorem amc12a_2017_p7, Dafny line 28 (ERR: assertion might not hold)
// failing Dafny line: assert (f(((0 + 1) + 1)) == ((((0 + 1) + 1) as real) + 1.0));
// Lean step: simp_all [Nat.succ_eq_add_one, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — instance h₁ 2 : f 2 = f (2-1) + 1 (simp_all rewrote with h₁ at 2)
// Dafny: finished with 11 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2017_p7.dfy"
lemma {:induction false} vc_amc12a_2017_p7_L28(f: nat -> real, n: int, n_1_0: int)
  requires 0 <= n
  requires 0 <= n_1_0
  requires f(1) == 2.0
  requires forall n_2: nat :: 1 < n_2 ==> Even(n_2) ==> f.requires(n_2) && f.requires(tsub(n_2, 1))
  requires forall n_2: nat :: 1 < n_2 && Even(n_2) ==> f(n_2) == f(tsub(n_2, 1)) + 1.0
  requires forall n_4: nat :: 1 < n_4 ==> Odd(n_4) ==> f.requires(n_4) && f.requires(tsub(n_4, 2))
  requires forall n_4: nat :: 1 < n_4 && Odd(n_4) ==> f(n_4) == f(tsub(n_4, 2)) + 2.0
  requires n + 1 + 1 > 1
  requires n == 0
  requires 0 + 1 + 1 > 1
  requires 0 <= 0 + 1 + 1
  ensures   f(0 + 1 + 1) == ((0 + 1 + 1) as real) + 1.0
{
  assert f(2) == f(tsub(2, 1)) + 1.0;  // [ADDED]
}

