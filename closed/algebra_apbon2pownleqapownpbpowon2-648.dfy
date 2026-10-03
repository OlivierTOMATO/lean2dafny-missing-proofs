// NOT CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-648: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 648 (ERR: a precondition for this call could not be proved)
// failing Dafny line: induction_helper_1(a, b, n - 1);
// Lean step: h₆₁
// hypotheses: 9 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2pow_linelemma=failed; this file is the honest base attempt
// Dafny: finished with 1 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L648(a: real, b: real, n: int, n_4_0_0: int)
  requires 0 <= n
  requires 0.0 < b
  requires 0 < n
  requires 2.0 != 0.0
  requires 0.0 < (a + b) / 2.0
  requires forall k_3_1: nat :: true ==> (a - b) * (Real.pow(a, k_3_1) - Real.pow(b, k_3_1)) >= 0.0
  requires 0 <= n_4_0_0
  requires 0 < n_4_0_0
  requires 0 <= n_4_0_0 - 1
  ensures   (0.0 < a)
{ }

