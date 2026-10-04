// CLOSED — failing line imo_1992_p1-1343: theorem imo_1992_p1, Dafny line 1343 (OOR: Verification out of resource (cert_identity_145))
// failing Dafny line: ensures (((((((((-((12 * 1)) + (5 * ((1 + 1) - p))) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + ((2 * 3) - (p * q))) + ((2 * 4) - (p * r))) + (2 * ((3 * 4) - (q * r)))) + ((((p 
// Lean step: h₅
// hypotheses: 0 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — ring normal form of each product summand as asserts (Lean's ring normalisation, e.g. assert (1+1-p)*(3-p) == p*p + -5*p + 6)
// Dafny: finished with 6 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: alt copy was broken (held the library, not the theorem); re-pointed at the stock theorem file: see alt/imo_1992_p1-1343/LIBRARY_CHANGES.diff

include "../dafny/imo_1992_p1.dfy"
lemma {:induction false} vc_imo_1992_p1_L1343(p: int, q: int, r: int)
  ensures   0 - 12 * 1 + 5 * (1 + 1 - p) + (p * q * r - 1 - 2 * ((p - 1) * (q - 1) * (r - 1))) + (2 * 3 - p * q) + (2 * 4 - p * r) + 2 * (3 * 4 - q * r) + (p * q * r + 1 - 2 * 3 * 4) + (0 - 2 * ((1 + 1 - p) * (1 + 1 - p))) + (0 - 2 * ((1 + 1 - p) * (p + 1 - q))) + (0 - (1 + 1 - p) * (q + 1 - r)) == 0
{
  assert 2 * ((p - 1) * (q - 1) * (r - 1)) == 2 * p * q * r + -2 * p * q + -2 * p * r + 2 * p + -2 * q * r + 2 * q + 2 * r + -2;  // [ADDED]
  assert 2 * (3 * 4 - q * r) == -2 * q * r + 24;  // [ADDED]
  assert 2 * ((1 + 1 - p) * (1 + 1 - p)) == 2 * p * p + -8 * p + 8;  // [ADDED]
  assert 2 * ((1 + 1 - p) * (p + 1 - q)) == -2 * p * p + 2 * p * q + 2 * p + -4 * q + 4;  // [ADDED]
  assert (1 + 1 - p) * (q + 1 - r) == (0 - p * q) + p * r - (p) + 2 * q + -2 * r + 2;  // [ADDED]
}

