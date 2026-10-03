// CLOSED LEMMA for failing line aime_1984_p1-114 (theorem aime_1984_p1, Dafny line 114, OOR)
// closes with: K4 (types) — single
// added: RatCastNeg(q) at each Rat.neg(q) subterm [Mathlib Rat.cast_neg] + RatCastInjective(E, Rat.of_int(0)) [Mathlib Rat.cast_injective]
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_002/aime_1984_p1-114/K4b.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_002, line aime_1984_p1-114, variant K4b
// K4 (full cast information): Rat.cast_neg at each neg subterm + Rat.cast_injective, lemma calls
include "../_lib/library_new.dfy"

// Lean (Mathlib): Rat.cast_neg : ∀ {α} [DivisionRing α] (q : ℚ), ↑(-q) = -↑q   (α = ℝ)
lemma {:axiom} RatCastNeg(q: Rat.rat)
  ensures Rat.neg(q).to_real() == -q.to_real()

// Lean (Mathlib): Rat.cast_injective : Function.Injective ((↑) : ℚ → α)  [DivisionRing α] [CharZero α], α = ℝ
// (to_real is the library's model of the cast ℚ → ℝ, MathPrelude: Rat.cast_def)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L114_K4b(u: nat -> Rat.rat)
  ensures  Rat.add(Rat.neg(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))))), Rat.sub(Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)), Rat.of_int(93))) == Rat.of_int(0)
{
  RatCastNeg(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)))));
  RatCastNeg(Rat.mul(Rat.of_int(1), Rat.of_int(2357)));
  RatCastInjective(Rat.add(Rat.neg(Rat.sub(Rat.mul(Rat.of_int(49), u(0)), Rat.neg(Rat.mul(Rat.of_int(1), Rat.of_int(2357))))), Rat.sub(Rat.add(Rat.mul(Rat.of_int(49), u(0)), Rat.of_int(2450)), Rat.of_int(93))), Rat.of_int(0));
}
