// CLOSED LEMMA for failing line amc12b_2021_p18-101 (theorem amc12b_2021_p18, Dafny line 101, ERR)
// closes with: simplest (simplest) — simplest-close
// added: add exact Mathlib `lemma {:axiom} MulPosOfNegOfNeg(a: real, b: real) requires a < 0.0 requires b < 0.0 ensures 0.0 < a * b` (mul_pos_of_neg_of_neg) + `ghost predicate PosMul(a,b) { 0.0 < a * b }` + helper `PosMulOfNegNeg(a,b) requires a<0.0 && b<0.0 ensures PosMul(a,b) { MulPosOfNegOfNeg(a,b); }`; cert_piece_11 body `PosMulOfNegNeg(F, F); assert PosMul(F, F);` with F = 6.0 - ((Re(z)*Re(z)) + (Im(z)*Im(z)))
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/amc12b_2021_p18-101/sc_pred.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// simplest-close try: Lean's term mul_pos_of_neg_of_neg h h (exact Mathlib, added to the work copy) via a predicate,
// so the instance reaches the goal by term-level unfolding (no ## call temporaries over the compound factor)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// Mathlib: theorem mul_pos_of_neg_of_neg {a b : α} (ha : a < 0) (hb : b < 0) : 0 < a * b
lemma {:axiom} MulPosOfNegOfNeg(a: real, b: real)
  requires a < 0.0
  requires b < 0.0
  ensures 0.0 < a * b
ghost predicate PosMul(a: real, b: real) { 0.0 < a * b }
lemma PosMulOfNegNeg(a: real, b: real) requires a < 0.0 && b < 0.0 ensures PosMul(a, b) { MulPosOfNegOfNeg(a, b); }
lemma {:isolate_assertions} cert_piece_11(z: Complex.complex)
  requires ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) < 0.0)
  ensures (0.0 < ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) * (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))))
{
  PosMulOfNegNeg((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))), (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))));
  assert PosMul((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))), (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))));
}
