// CLOSED — failing line algebra_9onxpypzleqsum2onxpy-471: theorem algebra_9onxpypzleqsum2onxpy, Dafny line 471 (ERR: assertion might not hold)
// failing Dafny line: assert (((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= 9.0) by {
// Lean step: have h₉₁ : 0 < x + y := by linarith
// hypotheses: 5 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 7); nothing assumed beyond the facts in scope
// how it closes: K2 — assert 2(x+y+z)(1/(x+y)+1/(y+z)+1/(z+x)) == Real.div(2(x+y+z)((y+z+(x+y))(z+x)+(x+y)(y+z)), (x+y)(y+z)(z+x)) — field_simp normal form (before-goal LHS == after-goal LHS), checked
// Dafny: finished with 63 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_9onxpypzleqsum2onxpy.dfy"
lemma {:induction false} vc_algebra_9onxpypzleqsum2onxpy_L471(x: real, y: real, z: real)
  requires 0.0 < x
  requires 0.0 < y
  requires 0.0 < z
  requires 0.0 < x + y + z
  requires 0.0 < (x + y) * (y + z) * (z + x)
  ensures   2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) >= 9.0
{
  assert 2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) == Real.div(2.0 * (x + y + z) * ((y + z + (x + y)) * (z + x) + (x + y) * (y + z)), (x + y) * (y + z) * (z + x));  // K2: field_simp normal form (before-goal LHS == after-goal LHS), checked
    // have h₉₁ : 0 < x + y  [type from Lean state]
    assert (0.0 < (x + y)) by { // @tac 871-879
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 871-879 exec 176)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -y < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_10(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 176 871-879]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 177 871-879]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 177)]
    }
    // have h₉₂ : 0 < y + z  [type from Lean state]
    assert (0.0 < (y + z)) by { // @tac 915-923
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 915-923 exec 194)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-y + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_11(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 194 915-923]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 195 915-923]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 195)]
    }
    // have h₉₃ : 0 < z + x  [type from Lean state]
    assert (0.0 < (z + x)) by { // @tac 959-967
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 959-967 exec 212)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_12(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 212 959-967]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 213 959-967]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+19 more heads, ×23) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 213)]
    }
    // have h₉₄ : 0 < ( x + y ) * ( y + z )  [type from Lean state]
    assert (0.0 < ((x + y) * (y + z))) by { // @tac 1015-1025
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1015-1025 exec 230)
      if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_13(x, y, z); }  // cert: mul_pos
      assert (0.0 < ((x + y))) && (0.0 < ((y + z)));  // precondition of MulPos (Lean: mul_pos)
      MulPos((x + y), (y + z));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₉₅ : 0 < ( y + z ) * ( z + x )  [type from Lean state]
    assert (0.0 < ((y + z) * (z + x))) by { // @tac 1073-1083
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1073-1083 exec 247)
      if (0.0 < (y + z)) && (0.0 < (z + x)) { cert_piece_14(x, y, z); }  // cert: mul_pos
      assert (0.0 < ((y + z))) && (0.0 < ((z + x)));  // precondition of MulPos (Lean: mul_pos)
      MulPos((y + z), (z + x));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₉₆ : 0 < ( z + x ) * ( x + y )  [type from Lean state]
    assert (0.0 < ((z + x) * (x + y))) by { // @tac 1131-1141
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1131-1141 exec 264)
      if (0.0 < (z + x)) && (0.0 < (x + y)) { cert_piece_15(x, y, z); }  // cert: mul_pos
      assert (0.0 < ((z + x))) && (0.0 < ((x + y)));  // precondition of MulPos (Lean: mul_pos)
      MulPos((z + x), (x + y));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // [TACTIC: «Field_simp[_]At___» [ h₉₁.ne' , h₉₂.ne' , h₉₃.ne' ]]
    assert (0.0 < ((x + y))) && (0.0 < ((y + z)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((x + y), (y + z));  // cite: mul_pos [applied by the tactic, not named in it]
    // UNCITED h₉₁.ne': a projection of the local hypothesis h₉₁ handed to the tactic; its fact is not stated here
    // UNCITED h₉₂.ne': a projection of the local hypothesis h₉₂ handed to the tactic; its fact is not stated here
    // UNCITED h₉₃.ne': a projection of the local hypothesis h₉₃ handed to the tactic; its fact is not stated here
    // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 1146-1196 exec 265)
    if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_16(x, y, z); }  // cert: mul_pos
    // UNCITED-APPLIED internal ×31 [exec 265 1146-1196]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, one_mul ×3, add_div' ×2, div_mul_eq_mul_div ×2, div_add' ×2, div_div ×2, mul_div_assoc' ×1; machinery/glue: congrArg ×8, Eq.trans ×7 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
    assert (9.0 <= Real.div(((2.0 * ((x + y) + z)) * ((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z)))), (((x + y) * (y + z)) * (z + x)))) by {  // sub-goal before `rw` (Lean state) // @tac 1201-1232
      assert (0.0 < (((x + y) * (y + z)) * (z + x))) by {  // sub-goal of `by` (Lean state) // @tac 1220-1230
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1220-1230 exec 277)
        if (0.0 < ((x + y) * (y + z))) && (0.0 < (z + x)) { cert_piece_17(x, y, z); }  // cert: mul_pos
        if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_18(x, y, z); }  // cert: mul_pos
        assert (0.0 < (((x + y) * (y + z)))) && (0.0 < ((z + x)));  // precondition of MulPos (Lean: mul_pos)
        MulPos(((x + y) * (y + z)), (z + x));  // cite: mul_pos [applied by the tactic, not named in it]
        // cite: mul_pos [same instance stated in an enclosing scope: MulPos((x + y), (y + z));]
      }
      // [TACTIC: rwSeq [ le_div_iff ( by positivity ) ]]
      assert (0.0 < ((((x + y) * (y + z)) * (z + x))));  // precondition of LeDivIff (Lean: le_div_iff)
      LeDivIff(9.0, ((2.0 * ((x + y) + z)) * ((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z)))), (((x + y) * (y + z)) * (z + x)));  // cite: le_div_iff
      assert ((9.0 * (((x + y) * (y + z)) * (z + x))) <= ((2.0 * ((x + y) + z)) * ((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z))))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1237-1391
        // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - y ) , sq_nonneg ( y - z ) , sq_nonneg ( z - x ) , sq_nonneg ( x + y - y - z ) , sq_nonneg ( y + z - z - x ) , sq_nonneg ( z + x - x - y ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1237-1391 exec 302)
        if (0.0 <= ((((x + y) - y) - z) * (((x + y) - y) - z))) && (0.0 <= x) { cert_piece_19(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((((x + y) - y) - z)); assert (0.0 <= ((((x + y) - y) - z) * (((x + y) - y) - z)));  // cert: sq_nonneg
        if (0.0 <= ((((x + y) - y) - z) * (((x + y) - y) - z))) && (0.0 <= z) { cert_piece_20(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        if (0.0 <= ((y - z) * (y - z))) && (0.0 <= y) { cert_piece_21(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((y - z)); assert (0.0 <= ((y - z) * (y - z)));  // cert: sq_nonneg
        if (0.0 <= ((y - z) * (y - z))) && (0.0 <= z) { cert_piece_22(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        if (0.0 <= ((((y + z) - z) - x) * (((y + z) - z) - x))) && (0.0 <= x) { cert_piece_23(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((((y + z) - z) - x)); assert (0.0 <= ((((y + z) - z) - x) * (((y + z) - z) - x)));  // cert: sq_nonneg
        if (0.0 <= ((((y + z) - z) - x) * (((y + z) - z) - x))) && (0.0 <= y) { cert_piece_24(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        // UNCITED-APPLIED add_lt_of_neg_of_le ×5: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (x + y + z) * ((y + z + (x + y)) * (z + x) + (x + y) * (y + z)) - (9 : ℝ) * ((x + y) * (y + z) * (z + x)) + -…`
        cert_identity_25(x, y, z);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×22 [exec 302 1237-1391]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×6, neg_neg_of_pos ×3, add_lt_of_neg_of_le ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×3], sq_nonneg [Lean recorded ×3])
        SqNonneg((((x + y) - y) - z));  // cite: sq_nonneg
        SqNonneg((y - z));  // cite: sq_nonneg
        SqNonneg((((y + z) - z) - x));  // cite: sq_nonneg
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 303)]
        if ((-(x)) < (0.0)) { LeOfLt(-(x), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        if ((-(z)) < (0.0)) { LeOfLt(-(z), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        // NOT APPLIED `sq_nonneg ( x - y )`, `sq_nonneg ( z - x )`, `sq_nonneg ( z + x - x - y )`: named here, but no application Lean recorded at this tactic has their arguments (3 of the 6 named instances match a recorded application)
        // UNCITED-APPLIED internal ×257 [exec 303 1237-1391]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+44 more heads, ×225) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 270 1201-1232]
    }
}

