// CLOSED — failing line imo_1992_p1-1593: theorem imo_1992_p1, Dafny line 1593 (OOR: Verification out of resource (cert_identity_173))
// failing Dafny line: ensures ((((((((((-((14 * 1)) + (71 * ((p + 1) - q))) + (33 * ((q + 1) - r))) + (9 * ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (5 * (((q * r) + 1) - (5 * 6)))) + -((46 * (((1 +
// Lean step: h₅
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2c — K2b with monomials written as atoms (-9 * (p * q * r) instead of -9 * p * q * r)
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1992_p1-1593/LIBRARY_CHANGES.diff

include "alt/imo_1992_p1-1593/out/imo_1992_p1.dfy"
lemma {:induction false} vc_imo_1992_p1_L1593_nf4(p: int, q: int, r: int)
  ensures 9 * (p * q * r - 1 - 2 * ((p - 1) * (q - 1) * (r - 1))) == -9 * (p * q * r) + 18 * (p * q) + 18 * (p * r) + -18 * p + 18 * (q * r) + -18 * q + -18 * r + 9
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf5(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 5 * (q * r + 1 - 5 * 6) == 5 * (q * r) + -145
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf7(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 46 * ((1 + 1 - p) * (p + 1 - q)) == -46 * (p * p) + 46 * (p * q) + 46 * p + -92 * q + 92
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf9(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 23 * ((1 + 1 - p) * (q + 1 - r)) == -23 * (p * q) + 23 * (p * r) + -23 * p + 46 * q + -46 * r + 46
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf11(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 41 * ((1 + 1 - p) * (4 - p)) == 41 * (p * p) + -246 * p + 328
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf13(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 9 * ((1 + 1 - p) * (q * r + 1 - 5 * 6)) == -9 * (p * q * r) + 261 * p + 18 * (q * r) + -522
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf15(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 5 * ((p + 1 - q) * (p + 1 - q)) == 5 * (p * p) + -10 * (p * q) + 10 * p + 5 * (q * q) + -10 * q + 5
{ }
lemma {:induction false} vc_imo_1992_p1_L1593_nf17(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 5 * ((p + 1 - q) * (q + 1 - r)) == 5 * (p * q) + -5 * (p * r) + 5 * p + -5 * (q * q) + 5 * (q * r) + -5 * r + 5
{ }

lemma {:induction false} vc_imo_1992_p1_L1593(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures   0 - 14 * 1 + 71 * (p + 1 - q) + 33 * (q + 1 - r) + 9 * (p * q * r - 1 - 2 * ((p - 1) * (q - 1) * (r - 1))) + 5 * (q * r + 1 - 5 * 6) + (0 - 46 * ((1 + 1 - p) * (p + 1 - q))) + (0 - 23 * ((1 + 1 - p) * (q + 1 - r))) + (0 - 41 * ((1 + 1 - p) * (4 - p))) + (0 - 9 * ((1 + 1 - p) * (q * r + 1 - 5 * 6))) + (0 - 5 * ((p + 1 - q) * (p + 1 - q))) + (0 - 5 * ((p + 1 - q) * (q + 1 - r))) == 0
{
  vc_imo_1992_p1_L1593_nf4(p, q, r);
  vc_imo_1992_p1_L1593_nf5(p, q, r);
  vc_imo_1992_p1_L1593_nf7(p, q, r);
  vc_imo_1992_p1_L1593_nf9(p, q, r);
  vc_imo_1992_p1_L1593_nf11(p, q, r);
  vc_imo_1992_p1_L1593_nf13(p, q, r);
  vc_imo_1992_p1_L1593_nf15(p, q, r);
  vc_imo_1992_p1_L1593_nf17(p, q, r);
}

