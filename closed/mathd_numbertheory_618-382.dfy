// CLOSED LEMMA for failing line mathd_numbertheory_618-382 (theorem mathd_numbertheory_618, Dafny line 382, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the case as its own lemma over h₀, n==37, h₄ only (requires 0<=n; forall x_1: nat :: p(x_1) == tsub(x_1*x_1, x_1) + 41; n == 37; 1 < gcd(p(n), 2*n); ensures false) with body { assert 37 * 37 == 1369; assert tsub(1369, 37) == 1332; assert gcd(1373, 74) == 1; }
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_043/mathd_numbertheory_618-382/K3K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// PAIR K3+K2: the step over only the hypotheses Lean used (sufficiency) + Lean's computed values (checked asserts); no K1 instance.
lemma {:induction false} vc_mathd_numbertheory_618_L382_K3K2(n: int, p: nat -> nat)
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 37
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 37 * 37 == 1369;  // K2: isNat_pow 37^2 = 1369 (exec 512)
  assert tsub(1369, 37) == 1332;  // K2: isNat_natSub 1369 - 37 = 1332 (exec 512)
  assert gcd(1373, 74) == 1;  // K2: isNat_gcd gcd 1373 74 = 1 (exec 512)
}
