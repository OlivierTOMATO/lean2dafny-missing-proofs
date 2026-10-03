// CLOSED LEMMA for failing line mathd_numbertheory_618-389 (theorem mathd_numbertheory_618, Dafny line 389, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the case as its own lemma over h₀, n==38, h₄ only (requires 0<=n; forall x_1: nat :: p(x_1) == tsub(x_1*x_1, x_1) + 41; n == 38; 1 < gcd(p(n), 2*n); ensures false) with body { assert 38 * 38 == 1444; assert tsub(1444, 38) == 1406; assert gcd(1447, 76) == 1; }
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_043/mathd_numbertheory_618-389/K3K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// PAIR K3+K2: the step over only the hypotheses Lean used (sufficiency) + Lean's computed values (checked asserts); no K1 instance.
lemma {:induction false} vc_mathd_numbertheory_618_L389_K3K2(n: int, p: nat -> nat)
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 38
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 38 * 38 == 1444;  // K2: isNat_pow 38^2 = 1444 (exec 515)
  assert tsub(1444, 38) == 1406;  // K2: isNat_natSub 1444 - 38 = 1406 (exec 515)
  assert gcd(1447, 76) == 1;  // K2: isNat_gcd gcd 1447 76 = 1 (exec 515)
}
