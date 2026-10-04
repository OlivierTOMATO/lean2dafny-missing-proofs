// CLOSED — failing line imo_1992_p1-780: theorem imo_1992_p1, Dafny line 780 (OOR: Verification out of resource (cert_identity_85))
// failing Dafny line: ensures (((((((((((-((41 * 1)) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (29 * (3 
// Lean step: h₅
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — ring normal form of each product summand as asserts (Lean's ring normalisation, e.g. assert (1+1-p)*(3-p) == p*p + -5*p + 6)
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: alt copy was broken (held the library, not the theorem); re-pointed at the stock theorem file: see alt/imo_1992_p1-780/LIBRARY_CHANGES.diff

include "../dafny/imo_1992_p1.dfy"
lemma {:induction false} vc_imo_1992_p1_L780(p: int, q: int, r: int)
  ensures   0 - 41 * 1 + 4 * (p + 1 - q) + 2 * (q + 1 - r) + (0 + 1 - (p - 1) * (q - 1) * (r - 1)) + (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) + 29 * (3 - p) + (0 - 2 * ((1 + 1 - p) * (p + 1 - q))) + (0 - (1 + 1 - p) * (q + 1 - r)) + (0 - (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1)))) + (0 - (1 + 1 - p) * (3 - p)) + (0 - (1 + 1 - p) * (3 * 3 - p * q)) + (0 - (1 + 1 - p) * (3 * 4 - p * r)) == 0
{
  assert (p - 1) * (q - 1) * (r - 1) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1;  // [ADDED]
  assert 1 * ((p - 1) * (q - 1) * (r - 1)) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1;  // [ADDED]
  assert 2 * ((1 + 1 - p) * (p + 1 - q)) == -2 * p * p + 2 * p * q + 2 * p + -4 * q + 4;  // [ADDED]
  assert (1 + 1 - p) * (q + 1 - r) == (0 - p * q) + p * r - (p) + 2 * q + -2 * r + 2;  // [ADDED]
  assert (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) == (0 - p * p * q) - (p * p * r) + p * p - (p * q * r) + 3 * p * q + 3 * p * r + -2 * p + 2 * q * r + -2 * q + -2 * r;  // [ADDED]
  assert (1 + 1 - p) * (3 - p) == p * p + -5 * p + 6;  // [ADDED]
  assert (1 + 1 - p) * (3 * 3 - p * q) == p * p * q + -2 * p * q + -9 * p + 18;  // [ADDED]
  assert (1 + 1 - p) * (3 * 4 - p * r) == p * p * r + -2 * p * r + -12 * p + 24;  // [ADDED]
}

