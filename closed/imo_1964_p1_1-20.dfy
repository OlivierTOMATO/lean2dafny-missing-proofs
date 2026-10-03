// CLOSED — failing line imo_1964_p1_1-20: theorem imo_1964_p1_1, Dafny line 20 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow(2, n) % 7) == (1 % 7)) by {
// Lean step: rw [← Int.coe_nat_dvd] at h₀
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helper lemma over an abstract nat p (`p >= 1 && tsub(p, 1) % 7 == 0 ==> p % 7 == 1 % 7`, closed by Z3's linear int/mod reasoning) called with p := Int.pow(2, n) (p >= 1 from Int.pow's own ensures b > 0 ==> p > 0; tsub(2^n,1) % 7 == 0 is the in-scope hypothesis); replaces the nested rw/norm_num/omega block whose cites (NatCastPowInt, IntCoeNatDvd) made Z3 run out of resource
// Dafny: finished with 25 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.8 s)

include "../dafny/imo_1964_p1_1.dfy"
// pass2 helper: abstract the power as an int/nat atom so Z3 only needs linear mod arithmetic
lemma Step20(p: nat) requires p >= 1 requires tsub(p, 1) % 7 == 0 ensures p % 7 == 1 % 7 { }  // [ADDED DECLARATION]
lemma {:induction false} vc_imo_1964_p1_1_L20(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires IntDvd(7, tsub(Int.pow(2, n), 1))
  requires 7 != 0
  ensures   Int.pow(2, n) % 7 == 1 % 7
{
  Step20(Int.pow(2, n));  // pass2: p := 2^n (Int.pow(2, n) > 0 by Int.pow's ensures); hypothesis tsub(Int.pow(2, n), 1) % 7 == 0 is the helper's requires  // [ADDED]
}
