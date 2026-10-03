// CLOSED — failing line mathd_numbertheory_175-107: theorem mathd_numbertheory_175, Dafny line 107 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert (((2 * 2) % 10) == 4);
// Lean step: norm_num
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — kinds/work/shard_039/_lib_nopowpost (MathPrelude Int.pow without `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)`; only change)
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/mathd_numbertheory_175-107/LIBRARY_CHANGES.diff

include "alt/mathd_numbertheory_175-107/out/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L107()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  requires Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
  requires 10 != 0
  requires Int.pow(2 * 2 * 2 * 2, 502) % 10 == 6
  ensures   2 * 2 % 10 == 4
{
}

