// CLOSED LEMMA for failing line imo_1974_p5-1035 (theorem imo_1974_p5, Dafny line 1035, ERR)
// closes with: K2 (computation) — single
// added: K1 text + assert x * y == ((a * b) * (b * c));  (ring normal-form identity, checked)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_036/imo_1974_p5-1035/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K2: normal-form identity x*y == ensures product (checked assert; ring identity Lean gets by defeq)
// source: wt_integ5/out/imo_1974_p5.dfy lines 1031-1037 (cert_piece_106)
include "../../../../../wt_integ5/library/library_new.dfy"
lemma {:isolate_assertions} cert_piece_106(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (b * c))
  ensures (0.0 < ((a * b) * (b * c)))
{
  var x := (a * b);
  var y := (b * c);
  MulPos(x, y);
  assert 0.0 < x * y;
  assert x * y == ((a * b) * (b * c));
}
