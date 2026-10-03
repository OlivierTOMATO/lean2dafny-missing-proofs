// CLOSED — failing line aime_1984_p1-484: theorem aime_1984_p1, Dafny line 484 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (Rat.sum(range(49), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))) == Rat.of_int(2450));
// Lean step: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ]
// hypotheses: 0 facts Z3 had at the line; this variant also drops 20 hypotheses; nothing assumed beyond the facts in scope
// how it closes: S2_K3 — 
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} FinsetSumRangeSuccRat(n: nat, f: nat -> Rat.rat)
  ensures Rat.sum(range(n + 1), f) == Rat.add(Rat.sum(range(n), f), f(n))
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:induction false} SumHelper484(n: nat)
  ensures 2.0 * Rat.sum(range(n), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))).to_real() == (2 * n * (n + 1)) as real
{
  if n == 0 { assert range(0) == {}; }
  else {
    SumHelper484(n - 1);
    FinsetSumRangeSuccRat(n - 1, ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))));
  }
}

lemma {:induction false} vc_aime_1984_p1_L484(u: nat -> Rat.rat)
  ensures   Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))) == Rat.of_int(2450)
{
  SumHelper484(49);
  RatCastInjective(Rat.sum(range(49), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))), Rat.of_int(2450));
}

