// CLOSED LEMMA for failing line mathd_numbertheory_618-396 (theorem mathd_numbertheory_618, Dafny line 396, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the case as its own lemma over h₀, n==39, h₄ only (requires 0<=n; forall x_1: nat :: p(x_1) == tsub(x_1*x_1, x_1) + 41; n == 39; 1 < gcd(p(n), 2*n); ensures false) with body { assert 39 * 39 == 1521; assert tsub(1521, 39) == 1482; assert gcd(1523, 78) == 1; }
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_043/mathd_numbertheory_618-396/K3K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// PAIR K3+K2: the step over only the hypotheses Lean used (sufficiency) + Lean's computed values (checked asserts); no K1 instance.
lemma {:induction false} vc_mathd_numbertheory_618_L396_K3K2(n: int, p: nat -> nat)
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 39
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 39 * 39 == 1521;  // K2: isNat_pow 39^2 = 1521 (exec 518)
  assert tsub(1521, 39) == 1482;  // K2: isNat_natSub 1521 - 39 = 1482 (exec 518)
  assert gcd(1523, 78) == 1;  // K2: isNat_gcd gcd 1523 78 = 1 (exec 518)
}
