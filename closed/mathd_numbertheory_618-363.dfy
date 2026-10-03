// CLOSED LEMMA for failing line mathd_numbertheory_618-363 (theorem mathd_numbertheory_618, Dafny line 363, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the case as its own lemma over h₀, n==34, h₄ only (requires 0<=n; forall x_1: nat :: p(x_1) == tsub(x_1*x_1, x_1) + 41; n == 34; 1 < gcd(p(n), 2*n); ensures false) with body { assert 34 * 34 == 1156; assert tsub(1156, 34) == 1122; assert gcd(1163, 68) == 1; }
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_043/mathd_numbertheory_618-363/K3K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// PAIR K3+K2: the step over only the hypotheses Lean used (sufficiency) + Lean's computed values (checked asserts); no K1 instance.
lemma {:induction false} vc_mathd_numbertheory_618_L363_K3K2(n: int, p: nat -> nat)
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 34
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 34 * 34 == 1156;  // K2: isNat_pow 34^2 = 1156 (exec 503)
  assert tsub(1156, 34) == 1122;  // K2: isNat_natSub 1156 - 34 = 1122 (exec 503)
  assert gcd(1163, 68) == 1;  // K2: isNat_gcd gcd 1163 68 = 1 (exec 503)
}
