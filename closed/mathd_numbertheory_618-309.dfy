// CLOSED LEMMA for failing line mathd_numbertheory_618-309 (theorem mathd_numbertheory_618, Dafny line 309, OOR)
// closes with: simplest (simplest) — simplest-close
// added: state the branch as its own lemma over n == 25, h₀, h₄ only, with body `assert gcd(641, 50) == 1;`
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_042/mathd_numbertheory_618-309/SPLIT.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// K3 locality (SUFFICIENCY test: drops all other requires): Lean exec 476 norm_num [h₀,...] at h₄ ⊢
// after interval_cases n:=25; it used only h₀ and h₄.
lemma {:induction false} vc_mathd_numbertheory_618_L309_SPLIT(n: int, p: nat -> nat)
  requires 0 <= n
  requires n == 25  // interval_cases substitution
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41  // h₀
  requires 1 < gcd(p(n), 2 * n)  // h₄
  ensures  false
{
  assert gcd(641, 50) == 1;  // Lean-computed value (Tactic.NormNum.isNat_gcd, exec 476)
}
