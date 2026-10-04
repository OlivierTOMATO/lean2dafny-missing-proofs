// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2009_p2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2009_p2()
  ensures (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))))) == Rat.div(Rat.of_int(5), Rat.of_int(3))) // @tac 423-765 // @tac 771-1199 // @tac 1205-1360 // @tac 1366-1659 // @tac 1717-1727
{
  // have step1 : 1 + 1 == 2  [type from Lean state]
  assert ((1 + 1) == 2); // @tac 522-765 // @tac 522-753 // @tac 522-741 // @tac 522-633 // @tac 522-530
  // UNCITED-APPLIED internal ×6 [exec 40 522-530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
    // [TACTIC: «_<;>_» norm_num <;> rfl rfl <;> rfl rfl <;> rfl rfl <;> rfl rfl]
    // [TACTIC: «Norm_num[_]At___»]
    // `norm_num` closed the goal; the rest of the chain did not run
  // have step2 : 1 + 1 / ( 1 + 1 ) == 3 / 2  [type from Lean state]
  vc_amc12a_2009_p2_L20();  /* [IN-FILE CHECK] the closed lemma for line 20 */
  assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))); // @tac 911-1199 // @tac 911-1118 // @tac 911-1029 // @tac 911-927
  // UNCITED-APPLIED internal ×18 [exec 96 911-927]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.isRat_div ×2, Mathlib.Meta.NormNum.isRat_mul ×2 (+6 more heads, ×7)
    // [TACTIC: «_<;>_» [ step1 ] norm_num [ step1 ] <;> field_simp [ step1 ] field_simp [ step1 ] <;> ring_nf ring_nf <;> norm_cast norm_cast norm_cast]
    // [TACTIC: «Norm_num[_]At___» [ step1 ]]
    // `norm_num` closed the goal; the rest of the chain did not run
  // have step3 : 1 + 1 / ( 3 / 2 ) == 5 / 3  [type from Lean state]
  assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))) == Rat.div(Rat.of_int(5), Rat.of_int(3))); // @tac 1260-1360 // @tac 1260-1343 // @tac 1260-1330 // @tac 1260-1313 // @tac 1260-1283
  // UNCITED-APPLIED internal ×21 [exec 151 1260-1283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isRat_div ×3, Mathlib.Meta.NormNum.isRat_mul ×3 (+5 more heads, ×7)
    // [TACTIC: «_<;>_» [ step1 , step2 ] norm_num [ step1 , step2 ] <;> simp [ div_eq_mul_inv ] simp [ div_eq_mul_inv ] simp [ div_eq_mul_inv ] <;> norm_num norm_num <;> ring <;> norm_num norm_num]
    // [TACTIC: «Norm_num[_]At___» [ step1 , step2 ]]
    // `norm_num` closed the goal; the rest of the chain did not run
  // have final : 1 + 1 / ( 1 + 1 / ( 1 + 1 ) ) == 5 / 3  [type from Lean state]
  assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))))) == Rat.div(Rat.of_int(5), Rat.of_int(3))); // @tac 1431-1659 // @tac 1431-1566 // @tac 1431-1461
  // UNCITED-APPLIED internal ×22 [exec 202 1431-1461]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.isRat_div ×3, Mathlib.Meta.NormNum.isRat_mul ×3 (+6 more heads, ×9)
    // [TACTIC: «_<;>_» [ step1 , step2 , step3 ] norm_num [ step1 , step2 , step3 ] <;> field_simp field_simp <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» [ step1 , step2 , step3 ]]
    // `norm_num` closed the goal; the rest of the chain did not run
  // [TACTIC: rwSeq [ final ]]
  // UNCITED-APPLIED congrArg((1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ))), (5 / 3 : ℚ), fun (_a : ℚ) => _a = (5 / 3 : ℚ)): no library counterpart (not stated) [exec 219 1717-1727]
}



// ===== closed lemma for line 20 (from closed/amc12a_2009_p2-20.dfy) =====

lemma {:induction false} vc_amc12a_2009_p2_L20()
  requires 1 + 1 == 2
  requires Rat.of_int(1).Rational?
  requires Rat.add(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))).Rational?
  requires Rat.of_int(3).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(3), Rat.of_int(2)).Rational?
  ensures   Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))
{
  // K4: ℚ is a normalised structure / cast ℚ→ℝ injective (Rat.cast_injective)
  RatCastInjective(Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))), Rat.div(Rat.of_int(3), Rat.of_int(2)));  // [ADDED]
}

// Mathlib: Rat.cast_injective (ℚ → ℝ cast is injective), exact statement over the library's to_real cast
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  requires a.to_real() == b.to_real()
  ensures a == b
