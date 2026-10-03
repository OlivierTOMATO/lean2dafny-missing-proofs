// CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-302: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 302 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0));
// Lean step: rw [h₆₆] at h₆₅
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 22 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L302(a: real, b: real, n: nat)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires Real.pow((a + b) / 2.0, n - 1 + 1) <= (Real.pow(a, n - 1 + 1) + Real.pow(b, n - 1 + 1)) / 2.0
  requires 0 + 1 <= n
  requires (a - b) * (Real.pow(a, n) - Real.pow(b, n)) >= 0.0
  requires 2.0 != 0.0
  requires (a + b) / 2.0 > 0.0
  requires 0 <= n + 1
  requires Real.pow((a + b) / 2.0, n + 1) == Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0)
  requires Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0)
  requires 4.0 != 0.0
  requires (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0) == (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  ensures   Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
{ }

