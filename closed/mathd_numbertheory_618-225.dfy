// CLOSED LEMMA for failing line mathd_numbertheory_618-225 (theorem mathd_numbertheory_618, Dafny line 225, ERR)
// closes with: K1+K3 (instance, locality) — multi
// added: state the branch as its own lemma: requires ∀x p(x)==tsub(x*x,x)+41, n==11, 1<gcd(p(11),2*11) ensures false; body `assert gcd(151, 22) == 1;`
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_040/mathd_numbertheory_618-225/k3k1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// split lemma: Lean's norm_num at h₄ (interval_cases branch n = 11) — only the facts the step used (h₀, h₄, n = 11)
lemma {:induction false} L225_local(n: int, p: nat -> nat)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 11
  requires 1 < gcd(p(11), 2 * 11)
  ensures false
{
  assert p(11) == tsub(11 * 11, 11) + 41;  // K1: instance h₀ 11
}
