// CLOSED LEMMA for failing line mathd_numbertheory_618-189 (theorem mathd_numbertheory_618, Dafny line 189, OOR)
// closes with: K3 (locality) — single
// added: split lemma with only h₀ (∀x, p x = x*x - x + 41), n == 5, h₄ (1 < gcd(p(5), 2*5)) ⊢ false — the hypotheses Lean's `norm_num [h₀,…] at h₄ ⊢` used; all other requires (40-branch path disjunctions etc.) dropped
// Dafny: finished with 4 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_040/mathd_numbertheory_618-189/k3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
// split lemma: Lean's norm_num at h₄ (interval_cases branch n = 5) — only the facts the step used (h₀, h₄, n = 5)
lemma {:induction false} L189_local(n: int, p: nat -> nat)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 5
  requires 1 < gcd(p(5), 2 * 5)
  ensures false
{

}
