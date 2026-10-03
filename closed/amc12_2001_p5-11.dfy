// CLOSED LEMMA for failing line amc12_2001_p5-11 (theorem amc12_2001_p5, Dafny line 11, OOR)
// closes with: K4 (types) — single
// added: MulNonnegInt(Int.pow(2, 5000), factorial(5000));  (library axiom = Mathlib mul_nonneg; in Lean the term is ℕ so 0 <= it is Nat.zero_le)
// Dafny: finished with 12 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_009/amc12_2001_p5-11/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_009 ablation K4 for amc12_2001_p5 line 11; base = /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12_2001_p5/L11.dfy (main lemma only)
include "../../../../../wt_integ5/out/amc12_2001_p5.dfy"

lemma {:induction false} k_L11_K4(x: int)
  requires 0 <= 10000
  requires 0 <= 5000
  requires ((0 <= x) && (x in range(10000)) && (!Even(x))) || ((0 <= x) && (x in range(10000)) && (!(x in range(10000) && !Even(x)))) || ((0 <= x) && (!(x in range(10000))) && (!(x in range(10000) && !Even(x)))) || (x < 0)
  ensures  0 <= Int.pow(2, 5000) * factorial(5000)
{
  MulNonnegInt(Int.pow(2, 5000), factorial(5000));  // Mathlib mul_nonneg; Lean: the term is ℕ-typed (Nat.zero_le)
}
