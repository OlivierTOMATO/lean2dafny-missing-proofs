// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_numbertheory_84.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_numbertheory_84()
  ensures (floor(((9.0 / 160.0) * 100.0)) == 5) // @tac 289-665 // @tac 671-823 // @tac 829-974 // @tac 1084-1138
{
  // have decimal_eq : 9 / 160 == 0.05625  [type from Lean state]
  assert ((9.0 / 160.0) == 0.05625); // @tac 343-665 // @tac 343-648 // @tac 343-631 // @tac 343-470 // @tac 343-351
  // UNCITED-APPLIED internal ×32 [exec 40 343-351]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsNat.raw_refl ×3, Mathlib.Meta.NormNum.isRat_div ×2 (+17 more heads, ×20)
    // [TACTIC: «_<;>_» norm_num <;> norm_num norm_num <;> norm_num norm_num <;> norm_num norm_num <;> norm_num norm_num]
    // [TACTIC: «Norm_num[_]At___»]
    // `norm_num` closed the goal; the rest of the chain did not run
  // have shifted_decimal : 9 / 160 * 100 == 5.625  [type from Lean state]
  assert (((9.0 / 160.0) * 100.0) == 5.625); // @tac 734-823 // @tac 734-806 // @tac 734-789 // @tac 734-772 // @tac 734-755
  // UNCITED-APPLIED internal ×33 [exec 101 734-755]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isRat_mul ×3, Mathlib.Meta.NormNum.IsNat.raw_refl ×3 (+15 more heads, ×18)
    // [TACTIC: «_<;>_» [ decimal_eq ] norm_num [ decimal_eq ] <;> norm_num norm_num <;> norm_num norm_num <;> norm_num norm_num <;> norm_num norm_num]
    // [TACTIC: «Norm_num[_]At___» [ decimal_eq ]]
    // `norm_num` closed the goal; the rest of the chain did not run
  // have floor_value : Int.floor ( ( 9 / 160 * 100 ) ) == 5  [type from Lean state]
  assert 9.0 / 160.0 == 0.05625;  /* [IN-FILE CHECK] requires 1 of vc_mathd_numbertheory_84_L26 */
  assert 9.0 / 160.0 * 100.0 == 5.625;  /* [IN-FILE CHECK] requires 2 of vc_mathd_numbertheory_84_L26 */
  assert (1 as real) == 1.0;  /* [IN-FILE CHECK] requires 3 of vc_mathd_numbertheory_84_L26 */
  vc_mathd_numbertheory_84_L26();  /* [IN-FILE CHECK] the closed lemma for line 26 */
  assert (floor(((9.0 / 160.0) * 100.0)) == 5) by { // @tac 896-974 // @tac 896-957 // @tac 896-940
    // [TACTIC: «_<;>_» [ Int.floor_eq_iff , shifted_decimal ] norm_num [ Int.floor_eq_iff , shifted_decimal ] <;> norm_num norm_num <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» [ Int.floor_eq_iff , shifted_decimal ]]
    // UNCITED Int.floor_eq_iff: no Lean instance recorded (arguments unknown), not guessed
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    // `norm_num` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED internal ×37 [exec 152 896-940]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, congrArg ×4, Mathlib.Meta.NormNum.isRat_mul ×3 (+11 more heads, ×15) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  }
  // [TACTIC: simpa [ shifted_decimal , floor_value ] using floor_value]
  // UNCITED-APPLIED internal ×1 [exec 165 1084-1138]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
}



// ===== closed lemma for line 26 (from closed/mathd_numbertheory_84-26.dfy) =====

lemma {:induction false} vc_mathd_numbertheory_84_L26()
  requires 9.0 / 160.0 == 0.05625
  requires 9.0 / 160.0 * 100.0 == 5.625
  requires (1 as real) == 1.0
  ensures   floor(9.0 / 160.0 * 100.0) == 5
{
  IntFloorEqIff(9.0 / 160.0 * 100.0, 5);  // K5: Int.floor_eq_iff (simp set of norm_num at exec 152)  // [ADDED]
    // [TACTIC: «_<;>_» [ Int.floor_eq_iff , shifted_decimal ] norm_num [ Int.floor_eq_iff , shifted_decimal ] <;> norm_num norm_num <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» [ Int.floor_eq_iff , shifted_decimal ]]
    // UNCITED Int.floor_eq_iff: no Lean instance recorded (arguments unknown), not guessed
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    // `norm_num` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED internal ×37 [exec 152 896-940]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, congrArg ×4, Mathlib.Meta.NormNum.isRat_mul ×3 (+11 more heads, ×15) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
}

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_mathd_numbertheory_84_L26_side1()  // [ADDED DECLARATION]
  requires 9.0 / 160.0 == 0.05625
  requires 9.0 / 160.0 * 100.0 == 5.625
  requires (1 as real) == 1.0
  ensures  160.0 != 0.0
{ }
