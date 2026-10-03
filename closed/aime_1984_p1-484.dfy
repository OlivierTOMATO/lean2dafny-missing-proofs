// CLOSED LEMMA for failing line aime_1984_p1-484 (theorem aime_1984_p1, Dafny line 484, OOR)
// closes with: K3 (locality) — simplest-close
// added: own lemma over no hypotheses: SumHelper484(n) ensures 2.0 * Rat.sum(range(n), F).to_real() == closed form, proved by induction with FinsetSumRangeSuccRat; then SumHelper(49); RatCastInjective(Rat.sum(range(49), F), Rat.of_int(2450)); needs library Finset.sum_range_succ at ℚ and Rat.cast_injective
// Dafny: finished with 13 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_003/aime_1984_p1-484/S2_K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/aime_1984_p1.dfy"

// k_ablate_shard_003 aime_1984_p1-484 variant S2_K3
// base: line_lemmas/OOR/aime_1984_p1/L484.dfy
// split, no hypotheses (Lean norm_num goal is closed; sufficiency): closed form of the sum as its own lemma (proved by induction from Finset.sum_range_succ) + Rat.cast_injective

// Lean (Mathlib): @Finset.sum_range_succ : ∑ x ∈ range (n + 1), f x = ∑ x ∈ range n, f x + f n   (β = ℚ)
lemma {:axiom} FinsetSumRangeSuccRat(n: nat, f: nat -> Rat.rat)
  ensures Rat.sum(range(n + 1), f) == Rat.add(Rat.sum(range(n), f), f(n))

// Lean (Mathlib): @Rat.cast_injective : Function.Injective (Rat.cast : ℚ → α)  (α = ℝ, a char-zero
//   division ring; to_real is Rat.cast to ℝ per MathPrelude `Lean: Rat.cast_def`)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

// helper PROVED here by induction (not an axiom) from Finset.sum_range_succ (Mathlib, axiom above) and
//   the library's to_real postconditions: 2 * (sum of the summand over range n) = 2 * n * (n + 1)
lemma {:induction false} SumHelper484(n: nat)
  ensures 2.0 * Rat.sum(range(n), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))).to_real() == (2 * n * (n + 1)) as real
{
  if n == 0 { assert range(0) == {}; }
  else {
    SumHelper484(n - 1);
    FinsetSumRangeSuccRat(n - 1, ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))));
  }
}

lemma {:induction false} vc_aime_1984_p1_L484_S2_K3(u: nat -> Rat.rat)
  ensures  Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))) == Rat.of_int(2450)
{
  SumHelper484(49);
  RatCastInjective(Rat.sum(range(49), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))), Rat.of_int(2450));
}
