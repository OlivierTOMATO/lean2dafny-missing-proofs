// CLOSED — failing line imo_1964_p1_1-27: theorem imo_1964_p1_1, Dafny line 27 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow(2, n) % 7) == 1) by {
// Lean step: omega
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helper lemma over an abstract int p (`IntDvd(7, p - 1) ==> p % 7 == 1`, closed by Z3's linear int/mod reasoning) called with p := Int.pow(2, n); the body's NatCastPowInt/IntCoeNatDvd cites were the OOR source (quantifier/pow instantiation) and are replaced by the helper call (hypothesis IntDvd(7, Int.pow(2, n) - 1) is in scope)
// Dafny: finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.8 s)

include "../dafny/imo_1964_p1_1.dfy"
// pass2 helper: abstract the power as an int/nat atom so Z3 only needs linear mod arithmetic
lemma Step27(p: int) requires IntDvd(7, p - 1) ensures p % 7 == 1 { }  // [ADDED DECLARATION]
lemma {:induction false} vc_imo_1964_p1_1_L27(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires IntDvd(7, tsub(Int.pow(2, n), 1))
  requires IntDvd(7, Int.pow(2, n) - 1)
  requires 0 <= 2
  requires Int.pow(2, n) == Int.pow(2, n)
  requires 0 <= 7
  requires (exists k: int :: tsub(Int.pow(2, n), 1) == 7 * k) == (exists k_1: nat :: tsub(Int.pow(2, n), 1) == 7 * k_1)
  ensures   Int.pow(2, n) % 7 == 1
{
  Step27(Int.pow(2, n));  // pass2: p := 2^n; the hypothesis IntDvd(7, Int.pow(2, n) - 1) is the helper's requires  // [ADDED]
}
