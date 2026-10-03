// CLOSED — failing line aime_1984_p1-596: theorem aime_1984_p1, Dafny line 596 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (Rat.add(Rat.mul(Rat.of_int(49), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))), Rat.of_int(2450)) == Rat.of_int(93)) by {
// Lean step: norm_num
// hypotheses: 0 facts Z3 had at the line; this variant also drops 24 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3K4b — 
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:axiom} RatCastNeg(q: Rat.rat)  // [ADDED DECLARATION]
  ensures Rat.neg(q).to_real() == -q.to_real()

lemma {:induction false} vc_aime_1984_p1_L596(u: nat -> Rat.rat)
  ensures   Rat.add(Rat.mul(Rat.of_int(49), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))), Rat.of_int(2450)) == Rat.of_int(93)
{
  RatCastNeg(Rat.of_int(2357));  // [ADDED]
  RatCastInjective(Rat.add(Rat.mul(Rat.of_int(49), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))), Rat.of_int(2450)), Rat.of_int(93));  // [ADDED]
              // [TACTIC: «Norm_num[_]At___»]
              // UNCITED-APPLIED internal ×19 [exec 819 3649-3657]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isRat_mul ×2, Mathlib.Meta.NormNum.IsNat.to_isInt ×2, of_eq_true ×1 (+10 more heads, ×10)
}

