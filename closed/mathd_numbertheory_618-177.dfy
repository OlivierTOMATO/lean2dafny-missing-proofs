// CLOSED LEMMA for failing line mathd_numbertheory_618-177 (theorem mathd_numbertheory_618, Dafny line 177, ERR)
// closes with: K1+K3 (instance, locality) — multi
// added: state the branch as its own lemma: requires ∀x p(x)==tsub(x*x,x)+41, n==3, 1<gcd(p(3),2*3) ensures false; body `assert gcd(47, 6) == 1;`
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_040/mathd_numbertheory_618-177/k3k1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// split lemma: Lean's norm_num at h₄ (case n = 3) — only the facts the step used (h₀, h₄, n = 3)
lemma {:induction false} L177_local(n: int, p: nat -> nat)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 3
  requires 1 < gcd(p(3), 2 * 3)
  ensures false
{
  assert p(3) == tsub(3 * 3, 3) + 41;  // K1: instance h₀ 3
}
