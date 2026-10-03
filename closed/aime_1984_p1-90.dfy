// CLOSED LEMMA for failing line aime_1984_p1-90 (theorem aime_1984_p1, Dafny line 90, OOR)
// closes with: K4 (types) — single
// added: RatCastInjective(E, Rat.of_int(0)) [Mathlib Rat.cast_injective, added to work copy]
// Dafny: finished with 6 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_002/aime_1984_p1-90/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_002, line aime_1984_p1-90, variant K4
// K4: Rat.cast_injective (exact Mathlib), lemma call; its precondition is checked
include "../_lib/library_new.dfy"

// Lean (Mathlib): Rat.cast_injective : Function.Injective ((↑) : ℚ → α)  [DivisionRing α] [CharZero α], α = ℝ
// (to_real is the library's model of the cast ℚ → ℝ, MathPrelude: Rat.cast_def)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L90_K4(u: nat -> Rat.rat)
  ensures  Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.sub(Rat.of_int(137), Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)))) == Rat.of_int(0)
{
  RatCastInjective(Rat.add(Rat.sub(Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)), Rat.of_int(137)), Rat.sub(Rat.of_int(137), Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)))), Rat.of_int(0));  // K4: ℚ is a normalised structure (cast injective)
}
