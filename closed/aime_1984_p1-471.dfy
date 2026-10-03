// CLOSED LEMMA for failing line aime_1984_p1-471 (theorem aime_1984_p1, Dafny line 471, OOR)
// closes with: K1+K5 (instance, automation lemma) — multi
// added: add lemma {:axiom} NsmulEqMulRat(n: nat, a: Rat.rat) ensures Rat.nsmul(n, a) == Rat.mul(Rat.of_int(n), a) [Mathlib nsmul_eq_mul]; body: FinsetSumConstRat(range(49), u(0)); FinsetCardRange(49); NsmulEqMulRat(49, u(0));
// Dafny: finished with 43 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_003/aime_1984_p1-471/K1K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/aime_1984_p1.dfy"

// k_ablate_shard_003 aime_1984_p1-471 variant K1K5
// base: line_lemmas/OOR/aime_1984_p1/L471.dfy
// pair K1+K5

// Lean (Mathlib): @nsmul_eq_mul : ∀ [NonAssocSemiring R] (n : ℕ) (a : R), n • a = ↑n * a   (R = ℚ)
lemma {:axiom} NsmulEqMulRat(n: nat, a: Rat.rat)
  ensures Rat.nsmul(n, a) == Rat.mul(Rat.of_int(n), a)

lemma {:induction false} vc_aime_1984_p1_L471_K1K5(u: nat -> Rat.rat)
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
  requires Rat.sum(range(49), ((v_27_k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_27_k), Rat.of_int(1)))))) == Rat.add(Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))))
  requires |range(49)| == 49
  requires Rat.mul(Rat.of_int(49), u(0)).Rational?
  requires Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1)))))).Rational?
  ensures  Rat.add(Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1)))))) == Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))))
{
  FinsetSumConstRat(range(49), u(0));  // Lean: Finset.sum_const
  FinsetCardRange(49);  // Lean: Finset.card_range
  NsmulEqMulRat(49, u(0));  // Lean simp internal: nsmul_eq_mul
}
