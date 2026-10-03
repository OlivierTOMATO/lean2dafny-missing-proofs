// CLOSED — failing line mathd_numbertheory_175-79: theorem mathd_numbertheory_175, Dafny line 79 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert ((((Int.pow((2 * 2 * 2 * 2), 502) % 10) * ((2 * 2) % 10)) % 10) == 4) by {
// Lean step: have h₅₂ : (2 ^ 4 : ℕ) ^ 502 % 10 = 6 := by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — opaque-pow library variant (Int.pow without its recursive `ensures p == b*pow(b,k-1)`); proved helper H175b(x,y) (requires x%10==y and the h1 forall over y; NatPowMod(x,502,10); ensures Int.pow(x,502)%10==y) called as H175b(2*2*2*2, 6); then 6*4%10==4
// Dafny: finished with 36 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/mathd_numbertheory_175-79/LIBRARY_CHANGES.diff (Int.pow without its recursive ensures; library taken from kinds/work/shard_039/_lib_nopowpost, the one named in closed/mathd_numbertheory_175-107.dfy, because closed/alt/mathd_numbertheory_175-107/library/ is empty; theorem copy = dafny/mathd_numbertheory_175.dfy unchanged)

include "alt/mathd_numbertheory_175-79/out/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L79()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  requires Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
  requires 10 != 0
  ensures   Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10 == 4
{
  H175b(2 * 2 * 2 * 2, 6);  // [ADDED]
  assert Int.pow(2 * 2 * 2 * 2, 502) % 10 == 6;  // [ADDED]
  assert 2 * 2 % 10 == 4;  // [ADDED]
}

lemma H175b(x: int, y: int)  // [ADDED DECLARATION]
  requires x % 10 == y
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(y, n_0_0_1) % 10 == y
  ensures Int.pow(x, 502) % 10 == y
{
  NatPowMod(x, 502, 10);
  assert Int.pow(x % 10, 502) == Int.pow(y, 502);
  assert Int.pow(y, 502) % 10 == y;
}
