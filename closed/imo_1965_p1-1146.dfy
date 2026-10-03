// CLOSED LEMMA for failing line imo_1965_p1-1146 (theorem imo_1965_p1, Dafny line 1146, OOR)
// closes with: K3 (locality) — single
// added: hoisted context-free lemma: no requires, body `SqNonneg(√(1+sin2x) − √(1−sin2x));` ensures 0 <= (…)*(…) (Lean's sq_nonneg at its argument)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_028/imo_1965_p1-1146/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// sq_nonneg piece, no premises (Lean: sq_nonneg (√(1+sin2x) − √(1−sin2x)))
lemma piece_1146(x: real)
  ensures (0.0 <= ((Real.sqrt((1.0 + Real.sin((2.0 * x)))) - Real.sqrt((1.0 - Real.sin((2.0 * x))))) * (Real.sqrt((1.0 + Real.sin((2.0 * x)))) - Real.sqrt((1.0 - Real.sin((2.0 * x)))))))
{
  SqNonneg((Real.sqrt((1.0 + Real.sin((2.0 * x)))) - Real.sqrt((1.0 - Real.sin((2.0 * x))))));
}
