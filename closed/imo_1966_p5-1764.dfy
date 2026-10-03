// CLOSED LEMMA for failing line imo_1966_p5-1764 (theorem imo_1966_p5, Dafny line 1764, ERR)
// closes with: K5 (automation lemma) — single
// added: axiom S34_MulPosOfNegOfNeg (exact Mathlib mul_pos_of_neg_of_neg) + call at Lean's arguments
// Dafny: finished with 48 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_034/imo_1966_p5-1764/K5_lib.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"

// Mathlib: mul_pos_of_neg_of_neg {a b : α} (ha : a < 0) (hb : b < 0) : 0 < a * b  (exact statement, added to the work copy)
lemma {:axiom} S34_MulPosOfNegOfNeg(a: real, b: real) requires a < 0.0 requires b < 0.0 ensures 0.0 < a * b

lemma {:induction false} vc_imo_1966_p5_L1764(a: nat -> real, x: nat -> real)
  requires a(2) - a(1) < 0.0
  requires x(1) * (a(1) - a(4)) - 1.0 < 0.0
  requires 0 <= 2
  requires 0 <= 1
  requires 0 <= 4
  requires 0.0 < 0.0 - (a(2) - a(1))
  requires 0.0 < 0.0 - (x(1) * (a(1) - a(4)) - 1.0)
  requires 0.0 < (0.0 - (a(2) - a(1))) * (0.0 - (x(1) * (a(1) - a(4)) - 1.0))
  requires (0.0 - (a(2) - a(1))) * (0.0 - (x(1) * (a(1) - a(4)) - 1.0)) == 0.0 - (0.0 - (a(2) - a(1))) * (x(1) * (a(1) - a(4)) - 1.0)
  requires (0.0 - (a(2) - a(1))) * (x(1) * (a(1) - a(4)) - 1.0) == 0.0 - (a(2) - a(1)) * (x(1) * (a(1) - a(4)) - 1.0)
  ensures  0.0 < (a(2) - a(1)) * (x(1) * (a(1) - a(4)) - 1.0)
{
  S34_MulPosOfNegOfNeg(a(2) - a(1), (x(1) * (a(1) - a(4)) - 1.0));

}
