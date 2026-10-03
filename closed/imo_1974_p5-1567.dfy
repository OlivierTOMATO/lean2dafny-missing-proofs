// CLOSED LEMMA for failing line imo_1974_p5-1567 (theorem imo_1974_p5, Dafny line 1567, ERR)
// closes with: K2 (computation) — single
// added: assert s == Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d));  (field_simp's normal form: Lean's after-goal of exec 1131)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_036/imo_1974_p5-1567/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K2: field_simp normal form s == N/D (Lean after-state of field_simp, exec 1131/1254), one checked assert
// source: line_lemmas/ERR/imo_1974_p5/L1567.dfy (vc_extract original line lemma)
include "../../../../../wt_integ5/library/library_new.dfy"
lemma {:induction false} vc_imo_1974_p5_L1567(a: real, b: real, c: real, d: real, s: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 0.0 < d
  requires s == Real.div(a, a + b + d) + Real.div(b, a + b + c) + Real.div(c, b + c + d) + Real.div(d, a + c + d)
  requires 0.0 < Real.div(a, a + b + d)
  requires Real.div(a, a + b + d) < 1.0
  requires 0.0 < Real.div(b, a + b + c)
  requires Real.div(b, a + b + c) < 1.0
  requires 0.0 < Real.div(c, b + c + d)
  requires Real.div(c, b + c + d) < 1.0
  requires 0.0 < Real.div(d, a + c + d)
  requires Real.div(d, a + c + d) < 1.0
  requires 0.0 < s
  requires 0.0 < a + b + d
  requires 0.0 < a + b + c
  requires 0.0 < b + c + d
  requires 0.0 < a + c + d
  requires 0.0 < a + b + c + d
  requires 0.0 < (a + b + d) * (a + b + c)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  requires 1.0 < Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d))
  ensures  1.0 < s
{
  assert s == Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d));
}
