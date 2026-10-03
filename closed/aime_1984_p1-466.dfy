// CLOSED LEMMA for failing line aime_1984_p1-466 (theorem aime_1984_p1, Dafny line 466, OOR)
// closes with: simplest (simplest) — simplest-close
// added: add (proved, not axiom) lemma FinsetSumAddDistribRatH<T>(s, h, f, g) requires forall x :: x in s ==> h(x) == Rat.add(f(x), g(x)) ensures Rat.sum(s, h) == Rat.add(Rat.sum(s, f), Rat.sum(s, g)) { FinsetSumAddDistribRat(s, f, g); FinsetSumApplyRat(s, h, x => Rat.add(f(x), g(x))); } and call it once at Lean's instance
// Dafny: finished with 35 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_003/aime_1984_p1-466/S.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/aime_1984_p1.dfy"

// k_ablate_shard_003 aime_1984_p1-466 variant S
// base: line_lemmas/OOR/aime_1984_p1/L466.dfy
// simplest close: one cite of the pointwise (h-form) Finset.sum_add_distrib, proved in the work copy (library change)

// Pointwise form of Finset.sum_add_distrib at ℚ (Mathlib corollary: Finset.sum_congr rfl hx ▸ Finset.sum_add_distrib);
//   PROVED here from the library's FinsetSumAddDistribRat + FinsetSumApplyRat (not an axiom) — see hform_check
lemma FinsetSumAddDistribRatH<T>(s: set<T>, h: T -> Rat.rat, f: T -> Rat.rat, g: T -> Rat.rat)
  requires forall x :: x in s ==> h(x) == Rat.add(f(x), g(x))
  ensures Rat.sum(s, h) == Rat.add(Rat.sum(s, f), Rat.sum(s, g))
{
  FinsetSumAddDistribRat(s, f, g);
  FinsetSumApplyRat(s, h, ((x: T) => Rat.add(f(x), g(x))));
}

lemma {:induction false} vc_aime_1984_p1_L466_S(u: nat -> Rat.rat)
  requires forall n_1: int :: 0 <= n_1 ==> u.requires(n_1 + 1) && u.requires(n_1)
  requires forall n_1: int :: 0 <= n_1 ==> u(n_1 + 1) == Rat.add(u(n_1), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires forall n_0_1: nat :: true ==> u.requires(n_0_1) && u.requires(0)
  requires forall n_0_1: nat :: true ==> u(n_0_1) == Rat.add(u(0), Rat.of_int(n_0_1))
  requires 0 <= 0
  requires Rat.of_int(2357).Rational?
  requires Rat.neg(Rat.of_int(2357)).Rational?
  requires Rat.of_int(49).Rational?
  requires Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49)).Rational?
  requires u(0) == Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))
  requires 0 <= 49
  requires Rat.sum(range(49), ((k: nat) => u(2 * (k + 1)))).Rational?
  requires Rat.sum(range(49), ((v_27_k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_27_k), Rat.of_int(1)))))).Rational?
  requires Rat.sum(range(49), ((k: nat) => u(2 * (k + 1)))) == Rat.sum(range(49), ((v_27_k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_27_k), Rat.of_int(1))))))
  requires Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))).Rational?
  requires Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))).Rational?
  requires Rat.add(Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1)))))).Rational?
  ensures  Rat.sum(range(49), ((v_27_k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_27_k), Rat.of_int(1)))))) == Rat.add(Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))))
{
  FinsetSumAddDistribRatH(range(49), ((k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))), ((k: nat) => u(0)), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))));  // sum_add_distrib, pointwise form, at Lean's instance
}
