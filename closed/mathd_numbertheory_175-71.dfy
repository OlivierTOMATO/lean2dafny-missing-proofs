// CLOSED — failing line mathd_numbertheory_175-71: theorem mathd_numbertheory_175, Dafny line 71 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert (((Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)) % 10) == (((Int.pow((2 * 2 * 2 * 2), 502) % 10) * ((2 * 2) % 10)) % 10));
// Lean step: simp [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — NatMulMod(Int.pow(2 * 2 * 2 * 2, 502), 2 * 2, 10);  (Nat.mul_mod, simp hint lemma)
// Dafny: finished with 16 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L71()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  ensures   Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
{
  NatMulMod(Int.pow(2 * 2 * 2 * 2, 502), 2 * 2, 10);  // [ADDED]
}

