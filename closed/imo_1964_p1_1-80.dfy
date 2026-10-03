// CLOSED — failing line imo_1964_p1_1-80: theorem imo_1964_p1_1, Dafny line 80 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow(2, ((n % 3) + (3 * (n / 3)))) % 7) == (1 % 7));
// Lean step: rw [← Nat.mod_add_div n 3] at h₃
// hypotheses: 13 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — kept only Int.pow(2,n) % 7 == 1 % 7; cited NatModAddDiv(n,3) and stated the hypothesis as a forall over k == n (so Z3 instantiates it at the goal's exponent by matching, avoiding the Int.pow unfolding chain)
// Dafny: Dafny program verifier finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.6s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L80(n: nat)
  requires 0 <= n
  requires Int.pow(2, n) % 7 == 1 % 7
  ensures   Int.pow(2, n % 3 + 3 * (n / 3)) % 7 == 1 % 7
{
  NatModAddDiv(n, 3);  // [ADDED]
  forall k: nat | k == n ensures Int.pow(2, k) % 7 == 1 % 7 { }  // [ADDED]
}

