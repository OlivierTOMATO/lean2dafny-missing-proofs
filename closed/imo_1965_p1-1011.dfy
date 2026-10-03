// CLOSED LEMMA for failing line imo_1965_p1-1011 (theorem imo_1965_p1, Dafny line 1011, OOR)
// closes with: K3 (locality) — single
// added: only the piece's guard (Lean's lemma premises) — all other in-file facts dropped
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_027/imo_1965_p1-1011/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/imo_1965_p1.dfy"

// k_ablate shard_027 imo_1965_p1-1011 variant K3
// K3: the in-file guarded piece `if (0.0 <= ((Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))) * (Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))))) && (((Real.sqrt((1.0` restated with only its guard (the premises of Lean's Linarith.mul_zero_eq)

lemma {:induction false} ka_L1011_K3(x: real)
  requires (0.0 <= ((Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))) * (Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))))) && (((Real.sqrt((1.0 - Real.sin((2.0 * x)))) * Real.sqrt((1.0 - Real.sin((2.0 * x))))) - (1.0 - Real.sin((2.0 * x)))) == 0.0)
  ensures (-((((Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x))))) * (Real.sqrt((1.0 - Real.sin((2.0 * x)))) - Real.sqrt((1.0 + Real.sin((2.0 * x)))))) * ((Real.sqrt((1.0 - Real.sin((2.0 * x)))) * Real.sqrt((1.0 - Real.sin((2.0 * x))))) - (1.0 - Real.sin((2.0 * x)))))) == 0.0)
{

}
