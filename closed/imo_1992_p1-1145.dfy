// CLOSED — failing line imo_1992_p1-1145: theorem imo_1992_p1, Dafny line 1145 (OOR: Verification out of resource (cert_identity_124))
// failing Dafny line: ensures (((((((((-((14 * 1)) + (17 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + ((2 * 5) -
// Lean step: h₅
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2b — same normal forms as separate context-free helper lemmas, called in the body
// Dafny: finished with 7 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: alt copy was broken (held the library, not the theorem); re-pointed at the stock theorem file: see alt/imo_1992_p1-1145/LIBRARY_CHANGES.diff

include "../dafny/imo_1992_p1.dfy"
lemma {:induction false} vc_imo_1992_p1_L1145_nf6(p: int, q: int, r: int)
  ensures (p - 1) * (q - 1) * (r - 1) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1
{ }
lemma {:induction false} vc_imo_1992_p1_L1145_nf9(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures 1 * ((p - 1) * (q - 1) * (r - 1)) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1
{ }
lemma {:induction false} vc_imo_1992_p1_L1145_nf13(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures (1 + 1 - p) * (p + 1 - q) == (0 - p * p) + p * q + p + -2 * q + 2
{ }
lemma {:induction false} vc_imo_1992_p1_L1145_nf15(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) == (0 - p * p * q) - (p * p * r) + p * p - (p * q * r) + 3 * p * q + 3 * p * r + -2 * p + 2 * q * r + -2 * q + -2 * r
{ }
lemma {:induction false} vc_imo_1992_p1_L1145_nf17(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures (1 + 1 - p) * (2 * 3 - p * q) == p * p * q + -2 * p * q + -6 * p + 12
{ }
lemma {:induction false} vc_imo_1992_p1_L1145_nf19(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures (1 + 1 - p) * (2 * 5 - p * r) == p * p * r + -2 * p * r + -10 * p + 20
{ }

lemma {:induction false} vc_imo_1992_p1_L1145(p: int, q: int, r: int)  // [ADDED DECLARATION]
  ensures   0 - 14 * 1 + 17 * (1 + 1 - p) + 2 * (p + 1 - q) + (0 + 1 - (p - 1) * (q - 1) * (r - 1)) + (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) + (2 * 5 - p * r) + (0 - (1 + 1 - p) * (p + 1 - q)) + (0 - (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1)))) + (0 - (1 + 1 - p) * (2 * 3 - p * q)) + (0 - (1 + 1 - p) * (2 * 5 - p * r)) == 0
{
  vc_imo_1992_p1_L1145_nf6(p, q, r);
  vc_imo_1992_p1_L1145_nf9(p, q, r);
  vc_imo_1992_p1_L1145_nf13(p, q, r);
  vc_imo_1992_p1_L1145_nf15(p, q, r);
  vc_imo_1992_p1_L1145_nf17(p, q, r);
  vc_imo_1992_p1_L1145_nf19(p, q, r);
}

