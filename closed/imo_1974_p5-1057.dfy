// CLOSED LEMMA for failing line imo_1974_p5-1057 (theorem imo_1974_p5, Dafny line 1057, ERR)
// closes with: K2 (computation) — single
// added: K1 text + assert x * y == ((a * b) * (c * d));  (ring normal-form identity, checked)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_036/imo_1974_p5-1057/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K2: normal-form identity x*y == ensures product (checked assert; ring identity Lean gets by defeq)
// source: wt_integ5/out/imo_1974_p5.dfy lines 1053-1059 (cert_piece_108)
include "../../../../../wt_integ5/library/library_new.dfy"
lemma {:isolate_assertions} cert_piece_108(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (c * d))
  ensures (0.0 < ((a * b) * (c * d)))
{
  var x := (a * b);
  var y := (c * d);
  MulPos(x, y);
  assert 0.0 < x * y;
  assert x * y == ((a * b) * (c * d));
}
