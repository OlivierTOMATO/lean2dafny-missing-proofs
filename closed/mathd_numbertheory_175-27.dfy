// CLOSED — failing line mathd_numbertheory_175-27: theorem mathd_numbertheory_175, Dafny line 27 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((Int.pow(6, (n + 1)) % 10) == 6);
// Lean step: omega
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — kinds/work/shard_039/_lib_nopowpost (MathPrelude Int.pow without `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)`; only change)
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/mathd_numbertheory_175-27/LIBRARY_CHANGES.diff

include "alt/mathd_numbertheory_175-27/out/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L27(n: int)
  requires 0 <= n
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(6, n - 1 + 1) % 10 == 6
  requires 1 <= n
  requires 0 <= n + 1
  ensures   Int.pow(6, n + 1) % 10 == 6
{
}

