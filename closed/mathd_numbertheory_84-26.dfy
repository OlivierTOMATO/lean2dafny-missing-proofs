// CLOSED — failing line mathd_numbertheory_84-26: theorem mathd_numbertheory_84, Dafny line 26 (ERR: assertion might not hold)
// failing Dafny line: assert (floor(((9.0 / 160.0) * 100.0)) == 5) by {
// Lean step: norm_num [Int.floor_eq_iff, shifted_decimal]
// hypotheses: 3 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — IntFloorEqIff(9.0 / 160.0 * 100.0, 5);  (library counterpart of Int.floor_eq_iff, the simp lemma in norm_num [Int.floor_eq_iff, shifted_decimal])
// Dafny: finished with 8 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_84.dfy"
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
