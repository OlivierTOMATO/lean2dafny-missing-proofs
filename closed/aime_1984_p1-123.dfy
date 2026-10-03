// CLOSED LEMMA for failing line aime_1984_p1-123 (theorem aime_1984_p1, Dafny line 123, ERR)
// closes with: K4 (types) — single
// added: RatCastNeg(Rat.mul(of_int 1, of_int 2357)); RatCastInjective(E, of_int 0) [Rat.cast_neg + Rat.cast_injective, work copy]
// Dafny: finished with 6 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_003/aime_1984_p1-123/K4b.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/aime_1984_p1.dfy"

// k_ablate_shard_003 aime_1984_p1-123 variant K4b
// base: line_lemmas/ERR/aime_1984_p1/L123.dfy
// K4 (cast lemmas): Rat.cast_neg + Rat.cast_injective (exact Mathlib, work copy)

// Lean (Mathlib): @Rat.cast_injective : Function.Injective (Rat.cast : ℚ → α)  (α = ℝ, a char-zero
//   division ring; to_real is Rat.cast to ℝ per MathPrelude `Lean: Rat.cast_def`)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

// Lean (Mathlib): @Rat.cast_neg : ∀ (q : ℚ), ↑(-q) = -↑q   (α = ℝ)
lemma {:axiom} RatCastNeg(q: Rat.rat)
  ensures Rat.neg(q).to_real() == -q.to_real()

lemma {:induction false} vc_aime_1984_p1_L123_K4b(u: nat -> Rat.rat)
  ensures  Rat.add(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))), Rat.sub(Rat.of_int(93), Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)))) == Rat.of_int(0)
{
  RatCastNeg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)));
  RatCastInjective(Rat.add(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))), Rat.sub(Rat.of_int(93), Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)))), Rat.of_int(0));
}
