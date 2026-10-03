// CLOSED LEMMA for failing line aime_1984_p1-408 (theorem aime_1984_p1, Dafny line 408, OOR)
// closes with: K3+K4 (locality, types) — multi
// added: own lemma: requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)) == Rat.of_int(137) ensures u(0) == Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49)) { RatCastNeg(Rat.of_int(2357)); RatCastInjective(u(0), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))); } + library lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat) requires a.to_real() == b.to_real() ensures a == b  [Mathlib Rat.cast_injective]; lemma {:axiom} RatCastNeg(q: Rat.rat) ensures Rat.neg(q).to_real() == -q.to_real()  [Mathlib Rat.cast_neg]
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_003/aime_1984_p1-408/K3K4b.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/aime_1984_p1.dfy"

// k_ablate_shard_003 aime_1984_p1-408 variant K3K4b
// base: line_lemmas/OOR/aime_1984_p1/L408.dfy
// pair K3+K4: only h4 (sufficiency) + Rat.cast_neg + Rat.cast_injective

// Lean (Mathlib): @Rat.cast_injective : Function.Injective (Rat.cast : ℚ → α)  (α = ℝ, a char-zero
//   division ring; to_real is Rat.cast to ℝ per MathPrelude `Lean: Rat.cast_def`)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

// Lean (Mathlib): @Rat.cast_neg : ∀ (q : ℚ), ↑(-q) = -↑q   (α = ℝ)
lemma {:axiom} RatCastNeg(q: Rat.rat)
  ensures Rat.neg(q).to_real() == -q.to_real()

lemma {:induction false} vc_aime_1984_p1_L408_K3K4b(u: nat -> Rat.rat)
  requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)) == Rat.of_int(137)
  ensures  u(0) == Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))
{
  RatCastNeg(Rat.of_int(2357));
  RatCastInjective(u(0), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49)));
}
