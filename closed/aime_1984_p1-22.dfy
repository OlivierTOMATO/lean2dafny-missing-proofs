// CLOSED LEMMA for failing line aime_1984_p1-22 (theorem aime_1984_p1, Dafny line 22, OOR)
// closes with: K4 (types) — single
// added: RatCastInjective(E, Rat.of_int(0)) [Mathlib Rat.cast_injective, added to work copy]
// Dafny: finished with 10 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_002/aime_1984_p1-22/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_002, line aime_1984_p1-22, variant K4
// K4: Rat.cast_injective (exact Mathlib), lemma call; its precondition is checked
include "../_lib/library_new.dfy"

// Lean (Mathlib): Rat.cast_injective : Function.Injective ((↑) : ℚ → α)  [DivisionRing α] [CharZero α], α = ℝ
// (to_real is the library's model of the cast ℚ → ℝ, MathPrelude: Rat.cast_def)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L22_K4(n: int, u: nat -> Rat.rat)
  requires 0 <= n
  ensures  Rat.add(Rat.sub(u(n + 1), Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1)))), Rat.sub(Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1))), u(n + 1))) == Rat.of_int(0)
{
  RatCastInjective(Rat.add(Rat.sub(u(n + 1), Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1)))), Rat.sub(Rat.add(u(0), Rat.add(Rat.of_int(n), Rat.of_int(1))), u(n + 1))), Rat.of_int(0));  // K4: ℚ is a normalised structure (cast injective)
}
