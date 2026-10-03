// CLOSED LEMMA for failing line imo_1965_p1-1153 (theorem imo_1965_p1, Dafny line 1153, OOR)
// closes with: K3 (locality) — single
// added: hoisted context-free lemma requiring only Lean's premises of Linarith.zero_mul_eq (the line's `if` guard), ensures the product == 0 (cf. cert_piece_20..23 already hoisted by the translator)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_028/imo_1965_p1-1153/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// Lean premises of the certificate piece only (exec 162/202 of h4 nlinarith)
lemma piece_1153(x: real)
  requires (((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x)))) == 0.0)
  ensures ((((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x)))) * ((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x))))) == 0.0)
{ }
