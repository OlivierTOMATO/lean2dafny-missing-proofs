// CLOSED LEMMA for failing line imo_1974_p5-383 (theorem imo_1974_p5, Dafny line 383, ERR)
// closes with: K2 (computation) — single
// added: K1 text + assert x * y == (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d));  (ring normal-form identity, checked)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_036/imo_1974_p5-383/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K2: normal-form identity x*y == ensures product (checked assert; ring identity Lean gets by defeq)
// source: wt_integ5/out/imo_1974_p5.dfy lines 379-385 (cert_piece_45)
include "../../../../../wt_integ5/library/library_new.dfy"
lemma {:isolate_assertions} cert_piece_45(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
  requires (0.0 < ((a + c) + d))
  ensures (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))
{
  var x := ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d));
  var y := ((a + c) + d);
  MulPos(x, y);
  assert 0.0 < x * y;
  assert x * y == (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d));
}
