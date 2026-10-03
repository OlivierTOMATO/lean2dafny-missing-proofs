// NOT CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-243: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 243 (ERR: a precondition for this call could not be proved)
// failing Dafny line: induction_helper_1(a, b, n - 1);
// Lean step: 
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2pow_linelemma=failed; this file is the honest base attempt
// Dafny: finished with 1 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L243(a: real, b: real, n: int)
  requires 0 <= n
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  ensures   (0.0 < a)
{ }

