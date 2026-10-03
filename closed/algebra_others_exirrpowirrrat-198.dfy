// CLOSED LEMMA for failing line algebra_others_exirrpowirrrat-198 (theorem algebra_others_exirrpowirrrat, Dafny line 198, ERR)
// closes with: K1 (instance) — single
// added: IrrationalNeRatK8(2.0, Rat.of_int(2)) — Lean's witness q := 2; exact Mathlib Irrational.ne_rat added to the work copy
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_others_exirrpowirrrat-198/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate shard_008 K1] algebra_others_exirrpowirrrat-198: K1 the instance (witness q := 2) Lean used to refute Irrational 2, via exact Mathlib Irrational.ne_rat
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_others_exirrpowirrrat.dfy"

// Mathlib: theorem Irrational.ne_rat (h : Irrational x) (q : ℚ) : x ≠ q  (added to the work copy)
lemma {:axiom} IrrationalNeRatK8(x: real, q: Rat.rat)
  requires Irrational(x)
  ensures x != q.to_real()

lemma {:induction false} K8_K1_algebra_others_exirrpowirrrat_198()
  requires Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))
  requires Irrational(Real.sqrt(2.0))
  requires Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)) > 0.0
  requires Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0
  requires Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))
  requires Irrational(2.0)
  requires Rat.of_int(2).Rational?
  requires Rat.of_int(2).to_real() == 2.0
  ensures  false
{
  IrrationalNeRatK8(2.0, Rat.of_int(2));  // K1: Lean's anonymous-constructor witness ⟨2, _⟩ for ∃ q, (q:ℝ) = 2
}
