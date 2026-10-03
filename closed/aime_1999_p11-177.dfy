// CLOSED LEMMA for failing line aime_1999_p11-177 (theorem aime_1999_p11, Dafny line 177, ERR)
// closes with: K4 (types) — single
// added: ℚ→ℝ cast atom m.to_real() abstracted as a real parameter r (piece stated ∀ r; the original is its instance r = m.to_real())
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-177/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/library/library_new.dfy"
// [k_ablate K4] K4 (cast atom): same piece with the ℚ→ℝ cast m.to_real() abstracted to a real parameter r (Lean: ↑m is an opaque real atom for nlinarith)
lemma {:isolate_assertions} cert_piece_20_K4(r: real)
  requires (((r * 2.0) - 175.0) < 0.0)
  requires ((3.0 - Real.pi()) < 0.0)
  ensures (0.0 < (((r * 2.0) - 175.0) * (3.0 - Real.pi())))
{
  MulPos(-(((r * 2.0) - 175.0)), -((3.0 - Real.pi()))); MulNeg(-(((r * 2.0) - 175.0)), (3.0 - Real.pi())); assert (-(((r * 2.0) - 175.0))) * (-((3.0 - Real.pi()))) == -((-(((r * 2.0) - 175.0))) * ((3.0 - Real.pi()))); assert (-(((r * 2.0) - 175.0))) * ((3.0 - Real.pi())) == -((((r * 2.0) - 175.0)) * ((3.0 - Real.pi())));
}
