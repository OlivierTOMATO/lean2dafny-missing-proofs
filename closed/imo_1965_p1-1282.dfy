// CLOSED LEMMA for failing line imo_1965_p1-1282 (theorem imo_1965_p1, Dafny line 1282, OOR)
// closes with: K3 (locality) — single
// added: lemma over only the if-guard (the 2 hypotheses of Linarith.zero_mul_eq) ⇒ claim; all other ~30-50 requires dropped (sufficiency test)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_029/imo_1965_p1-1282/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/imo_1965_p1.dfy"

// K3 locality: the certificate piece over only the hypotheses Lean's lemma application uses
// (requires = the if-guard of Dafny line 1282; all other 47 context facts dropped).
lemma {:induction false} k3_L1282(x: real)
  requires ((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x)))) == 0.0
  ensures ((((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x)))) * ((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x))))) == 0.0)
{ }
