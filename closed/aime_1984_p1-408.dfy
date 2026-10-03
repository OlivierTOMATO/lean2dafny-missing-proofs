// CLOSED — failing line aime_1984_p1-408: theorem aime_1984_p1, Dafny line 408 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (u(0) == Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))) by {
// Lean step: linarith
// hypotheses: 1 facts Z3 had at the line; this variant also drops 27 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3K4b — 
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:axiom} RatCastNeg(q: Rat.rat)
  ensures Rat.neg(q).to_real() == -q.to_real()

lemma {:induction false} vc_aime_1984_p1_L408(u: nat -> Rat.rat)
  requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.of_int(4851)) == Rat.of_int(137)
  ensures   u(0) == Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49))
{
  RatCastNeg(Rat.of_int(2357));
  RatCastInjective(u(0), Rat.div(Rat.neg(Rat.of_int(2357)), Rat.of_int(49)));
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2370-2378 exec 450)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℚ) * ((49 : ℚ) * u (0 : ℕ) - -((1 : ℚ) * (2357 : ℚ))) < (0 : ℚ)` not stated: not a product
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(49 : ℚ) * (u (0 : ℕ) - (-2357 / 49 : ℚ)) < (0 : ℚ)` not stated: not a product
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℚ) * (-((1 : ℚ) * (2357 : ℚ)) - (49 : ℚ) * u (0 : ℕ)) < (0 : ℚ)` not stated: not a product
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(49 : ℚ) * ((-2357 / 49 : ℚ) - u (0 : ℕ)) < (0 : ℚ)` not stated: not a product
      cert_identity_5(u);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_6(u);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×24 [exec 450 2370-2378]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, CancelDenoms.div_subst ×1, CancelDenoms.neg_subst ×1; machinery/glue: congrArg ×7, Linarith.mul_neg ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×116 [exec 454 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×7, Mathlib.Tactic.Ring.mul_add ×5 (+33 more heads, ×89)
      // UNCITED-APPLIED internal ×14 [exec 451 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
      // UNCITED-APPLIED internal ×6 [exec 452 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×5 [exec 453 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 455 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×111 [exec 459 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.IsNat.to_isInt ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×7 (+32 more heads, ×82)
      // UNCITED-APPLIED internal ×14 [exec 456 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
      // UNCITED-APPLIED internal ×6 [exec 457 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×5 [exec 458 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 460 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
}

