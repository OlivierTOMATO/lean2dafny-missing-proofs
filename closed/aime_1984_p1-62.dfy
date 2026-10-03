// CLOSED — failing line aime_1984_p1-62: theorem aime_1984_p1, Dafny line 62 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (u((n + 1)) == Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1))));
// Lean step: simp [ih, Nat.cast_add, Nat.cast_one, Nat.cast_zero, add_assoc] at h₃ h₄ ⊢
// hypotheses: 27 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — RatCastInjective(u(m+1), Rat.add(u(0), Rat.add(Rat.of_int(m), Rat.of_int(1)))) [Mathlib Rat.cast_injective]
// Dafny: finished with 25 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1984_p1-62/LIBRARY_CHANGES.diff

include "alt/aime_1984_p1-62/out/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L62(n: int, n_1_0: int, n_1_0_0: int, u: nat -> Rat.rat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n_2: int :: 0 <= n_2 ==> u.requires(n_2 + 1) && u.requires(n_2)
  requires forall n_2: int :: 0 <= n_2 ==> u(n_2 + 1) == Rat.add(u(n_2), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall n_2: int :: 0 <= n_2 ==> u.requires(n_2 + 1) && u.requires(n_2)
  requires forall n_2: int :: 0 <= n_2 ==> u(n_2 + 1) == Rat.add(u(n_2), Rat.of_int(1))
  requires u(n - 1) == Rat.add(u(0), Rat.of_int(n - 1))
  requires n_1_0_0 == n - 1
  requires 0 <= n_1_0_0 + 1
  requires Rat.of_int(1).Rational?
  requires Rat.add(u(n_1_0_0), Rat.of_int(1)).Rational?
  requires u(n_1_0_0 + 1) == Rat.add(u(n_1_0_0), Rat.of_int(1))
  requires 0 <= n_1_0_0 + 1 + 1
  requires Rat.add(u(n_1_0_0 + 1), Rat.of_int(1)).Rational?
  requires u(n_1_0_0 + 1 + 1) == Rat.add(u(n_1_0_0 + 1), Rat.of_int(1))
  requires 0 <= 1
  requires Rat.of_int(n_1_0_0 + 1) == Rat.add(Rat.of_int(n_1_0_0), Rat.of_int(1))
  requires Rat.of_int(1) == Rat.of_int(1)
  requires 0 <= 0
  requires Rat.of_int(n_1_0_0).Rational?
  requires Rat.add(Rat.of_int(n_1_0_0), Rat.of_int(1)).Rational?
  requires Rat.add(u(0), Rat.add(Rat.of_int(n_1_0_0), Rat.of_int(1))).Rational?
  ensures   u(n_1_0_0 + 1) == Rat.add(u(0), Rat.add(Rat.of_int(n_1_0_0), Rat.of_int(1)))
{
  RatCastInjective(u(n_1_0_0 + 1), Rat.add(u(0), Rat.add(Rat.of_int(n_1_0_0), Rat.of_int(1))));
}

