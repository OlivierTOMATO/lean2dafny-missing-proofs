// CLOSED LEMMA for failing line aime_1984_p1-35 (theorem aime_1984_p1, Dafny line 35, ERR)
// closes with: K4 (types) — single
// added: RatCastInjective(u(0), Rat.add(u(0), Rat.of_int(0))) [Mathlib Rat.cast_injective]
// Dafny: finished with 13 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_002/aime_1984_p1-35/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_002, line aime_1984_p1-35, variant K4
// K4: Rat.cast_injective call
include "../_lib/library_new.dfy"

// Lean (Mathlib): Rat.cast_injective : Function.Injective ((↑) : ℚ → α)  [DivisionRing α] [CharZero α], α = ℝ
// (to_real is the library's model of the cast ℚ → ℝ, MathPrelude: Rat.cast_def)
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b

lemma {:induction false} vc_aime_1984_p1_L35_K4(n: int, n_1_0: int, u: nat -> Rat.rat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n_2: int :: 0 <= n_2 ==> u.requires(n_2 + 1) && u.requires(n_2)
  requires forall n_2: int :: 0 <= n_2 ==> u(n_2 + 1) == Rat.add(u(n_2), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires n == 0
  requires 0 <= 0
  requires Rat.of_int(0).Rational?
  requires Rat.add(u(0), Rat.of_int(0)).Rational?
  ensures  u(0) == Rat.add(u(0), Rat.of_int(0))
{
  RatCastInjective(u(0), Rat.add(u(0), Rat.of_int(0)));
}
