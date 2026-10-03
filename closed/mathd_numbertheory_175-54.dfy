// CLOSED — failing line mathd_numbertheory_175-54: theorem mathd_numbertheory_175, Dafny line 54 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert (Int.pow(2, 2010) == (Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)));
// Lean step: norm_num [pow_add, pow_mul, pow_one, pow_two, pow_three, pow_succ]
// hypotheses: 4 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: cite_opaque — 
// Dafny: finished with 15 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/mathd_numbertheory_175-54/LIBRARY_CHANGES.diff

include "alt/mathd_numbertheory_175-54/out/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L54()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  ensures   Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
{
  NatPowAdd(2, 2008, 2);
  NatPowMul(2, 4, 502);
  assert Int.pow(2, 4) == 2 * 2 * 2 * 2 by { reveal Int.pow(); }
  assert Int.pow(2, 2) == 2 * 2 by { reveal Int.pow(); }
}

