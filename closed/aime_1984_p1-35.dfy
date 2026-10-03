// CLOSED — failing line aime_1984_p1-35: theorem aime_1984_p1, Dafny line 35 (ERR: assertion might not hold)
// failing Dafny line: assert (u(0) == Rat.add(u(0), Rat.of_int(0))) by {
// Lean step: norm_num
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — RatCastInjective(u(0), Rat.add(u(0), Rat.of_int(0))) [Mathlib Rat.cast_injective]
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1984_p1-35/LIBRARY_CHANGES.diff

include "alt/aime_1984_p1-35/out/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L35(n: int, n_1_0: int, u: nat -> Rat.rat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n_2: int :: 0 <= n_2 ==> u.requires(n_2 + 1) && u.requires(n_2)
  requires forall n_2: int :: 0 <= n_2 ==> u(n_2 + 1) == Rat.add(u(n_2), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires n == 0
  requires 0 <= 0
  requires Rat.of_int(0).Rational?
  requires Rat.add(u(0), Rat.of_int(0)).Rational?
  ensures   u(0) == Rat.add(u(0), Rat.of_int(0))
{
  RatCastInjective(u(0), Rat.add(u(0), Rat.of_int(0)));
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×11 [exec 26 591-599]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
}

