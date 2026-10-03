// CLOSED — failing line aime_1984_p1-192: theorem aime_1984_p1, Dafny line 192 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (Rat.sum(range(98), ((k: nat) => Rat.add(Rat.of_int(k), Rat.of_int(1)))) == Rat.of_int(4851));
// Lean step: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ]
// hypotheses: 19 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S2 — 
// Dafny: finished with 41 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} FinsetSumRangeSuccRat(n: nat, f: nat -> Rat.rat)
  ensures Rat.sum(range(n + 1), f) == Rat.add(Rat.sum(range(n), f), f(n))
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:induction false} SumHelper192(n: nat)
  ensures 2.0 * Rat.sum(range(n), ((k: nat) => Rat.add(Rat.of_int(k), Rat.of_int(1)))).to_real() == (n * (n + 1)) as real
{
  if n == 0 { assert range(0) == {}; }
  else {
    SumHelper192(n - 1);
    FinsetSumRangeSuccRat(n - 1, ((k: nat) => Rat.add(Rat.of_int(k), Rat.of_int(1))));
  }
}

lemma {:induction false} vc_aime_1984_p1_L192(u: nat -> Rat.rat)
  requires forall n_1: int :: 0 <= n_1 ==> u.requires(n_1 + 1) && u.requires(n_1)
  requires forall n_1: int :: 0 <= n_1 ==> u(n_1 + 1) == Rat.add(u(n_1), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires forall n_0_1: nat :: true ==> u.requires(n_0_1) && u.requires(0)
  requires forall n_0_1: nat :: true ==> u(n_0_1) == Rat.add(u(0), Rat.of_int(n_0_1))
  requires 0 <= 98
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))).Rational?
  requires Rat.of_int(137).Rational?
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))).Rational?
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1)))))
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))) == Rat.of_int(137)
  requires Rat.of_int(98).Rational?
  requires 0 <= 0
  requires Rat.mul(Rat.of_int(98), u(0)).Rational?
  requires Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))).Rational?
  requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1))))).Rational?
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))) == Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))))
  requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1))))) == Rat.of_int(137)
  requires Rat.of_int(4851).Rational?
  ensures   Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))) == Rat.of_int(4851)
{
  SumHelper192(98);
  RatCastInjective(Rat.sum(range(98), ((k: nat) => Rat.add(Rat.of_int(k), Rat.of_int(1)))), Rat.of_int(4851));
}

