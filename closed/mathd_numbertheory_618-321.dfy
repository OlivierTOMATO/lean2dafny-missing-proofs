// CLOSED LEMMA for failing line mathd_numbertheory_618-321 (theorem mathd_numbertheory_618, Dafny line 321, OOR)
// closes with: simplest (simplest) — simplest-close
// added: state the branch as its own lemma over n == 27, h₀, h₄ only, with body `assert gcd(743, 54) == 1;`
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_042/mathd_numbertheory_618-321/SPLIT.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// K3 locality (SUFFICIENCY test: drops all other requires): Lean exec 482 norm_num [h₀,...] at h₄ ⊢
// after interval_cases n:=27; it used only h₀ and h₄.
lemma {:induction false} vc_mathd_numbertheory_618_L321_SPLIT(n: int, p: nat -> nat)
  requires 0 <= n
  requires n == 27  // interval_cases substitution
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41  // h₀
  requires 1 < gcd(p(n), 2 * n)  // h₄
  ensures  false
{
  assert gcd(743, 54) == 1;  // Lean-computed value (Tactic.NormNum.isNat_gcd, exec 482)
}
