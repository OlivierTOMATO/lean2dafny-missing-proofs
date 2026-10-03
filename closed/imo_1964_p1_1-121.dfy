// CLOSED — failing line imo_1964_p1_1-121: theorem imo_1964_p1_1, Dafny line 121 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((n % 3) == 0);
// Lean step: simp [h, h₂, Nat.pow_mod, Nat.mul_mod, Nat.mod_mod] at h₃
// hypotheses: 36 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — kept only n%3==1 and Int.pow(2%7,n%3)%7==1 (contradictory: 2^1 % 7 == 2); unfolded Int.pow(2,1) to expose the contradiction
// Dafny: Dafny program verifier finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 1.7s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L121(n: nat)
  requires 0 <= n
  requires Int.pow(2 % 7, n % 3) % 7 == 1
  requires n % 3 == 1
  ensures   n % 3 == 0
{
  assert 2 % 7 == 2;  // [ADDED]
  assert Int.pow(2, 0) == 1;  // [ADDED]
  assert Int.pow(2, 1) == 2;  // [ADDED]
  assert Int.pow(2 % 7, n % 3) == Int.pow(2, 1);  // [ADDED]
  assert Int.pow(2 % 7, n % 3) % 7 == 2;  // [ADDED]
  assert false;  // [ADDED]
}

