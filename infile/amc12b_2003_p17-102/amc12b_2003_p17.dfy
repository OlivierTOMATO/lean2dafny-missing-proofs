// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2003_p17.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `hx`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real, y: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hy`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real, y: real)
  ensures (-(y) + y) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `hxy`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(x: real, y: real)
  requires (0.0 < x)
  requires (0.0 < y)
  ensures (0.0 < (x * y))
{
  MulPos(x, y);
}

// ──────────────────────────────────────────────────
// certificate piece for ``: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(x: real, y: real)
  requires (0.0 < x)
  ensures (0.0 < (x * x))
{
  MulPos(x, x);
}

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real, y: real)
  ensures ((-(((Real.log(x) + (Real.log(y) * 3.0)) - 1.0)) + -((2.0 * (((Real.log(x) * 2.0) + Real.log(y)) - 1.0)))) + (((Real.log(x) * 5.0) + (Real.log(y) * 5.0)) - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real, y: real)
  ensures ((((Real.log(x) + (Real.log(y) * 3.0)) - 1.0) + (2.0 * (((Real.log(x) * 2.0) + Real.log(y)) - 1.0))) + (3.0 - ((Real.log(x) * 5.0) + (Real.log(y) * 5.0)))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2003_p17(x: real, y: real)
  requires ((0.0 < x) && (0.0 < y))
  requires (Real.log((x * Real.pow(y, 3))) == 1.0)
  requires (Real.log((Real.pow(x, 2) * y)) == 1.0)
  ensures (Real.log((x * y)) == (3.0 / 5.0)) // @tac 506-536 // @tac 539-569 // @tac 572-609 // @tac 612-681
{
  // have hx : 0 < x  [type from Lean state]
  assert (0.0 < x) by { // @tac 528-536
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 528-536 exec 20)
    cert_identity_1(x, y);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 20 528-536]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 21 528-536]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 21)]
  }
  // have hy : 0 < y  [type from Lean state]
  assert (0.0 < y) by { // @tac 561-569
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 561-569 exec 38)
    cert_identity_2(x, y);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 38 561-569]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 39 561-569]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 39)]
  }
  // have hxy : 0 < x * y  [type from Lean state]
  assert (0.0 < (x * y)) by { // @tac 599-609
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 599-609 exec 56)
    if (0.0 < x) && (0.0 < y) { cert_piece_3(x, y); }  // cert: mul_pos
    assert (0.0 < (x)) && (0.0 < (y));  // precondition of MulPos (Lean: mul_pos)
    MulPos(x, y);  // cite: mul_pos [applied by the tactic, not named in it]
  }
  // [TACTIC: «Field_simp[_]At___» [ Real.log_mul , Real.log_pow , hx , hy , hxy ] at h₁ h₂ ⊢]
  // UNCITED Real.log_pow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
  assert ((x) != 0.0) && ((y) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
  RealLogMul(x, y);  // cite: Real.log_mul
  // UNCITED-APPLIED internal ×7 [exec 57 612-681]: applications made inside the tactic's own automation, not stated — ne_of_gt ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], Real.log_mul [Lean recorded ×1])
  assert ((Real.log(x) + (3.0 * Real.log(y))) == 1.0);  // hypothesis h₁ after `field_simp` (Lean state) // @tac-hyp 612-681
  assert 0.0 < x;  /* [IN-FILE CHECK] requires 1 of vc_amc12b_2003_p17_L102 */
  assert 0.0 < y;  /* [IN-FILE CHECK] requires 2 of vc_amc12b_2003_p17_L102 */
  assert Real.log(Real.pow(x, 2) * y) == 1.0;  /* [IN-FILE CHECK] requires 3 of vc_amc12b_2003_p17_L102 */
  vc_amc12b_2003_p17_L102(x, y);  /* [IN-FILE CHECK] the closed lemma for line 102 */
  assert (((2.0 * Real.log(x)) + Real.log(y)) == 1.0);  // hypothesis h₂ after `field_simp` (Lean state) // @tac-hyp 612-681
  assert (((Real.log(x) + Real.log(y)) * 5.0) == 3.0) by {  // sub-goal before `ring_nf` (Lean state) // @tac 684-708
    // [TACTIC: Ring_nfAt at h₁ h₂ ⊢]
    PowOne(Real.log(x));  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(Real.log(y));  // cite: pow_one [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×34 [exec 58 684-708]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×5, Eq.trans ×4, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_pf_add_lt ×2 (+14 more heads, ×20) (cited in this block, not counted here: pow_one [Lean recorded ×2])
    assert ((Real.log(x) + (Real.log(y) * 3.0)) == 1.0);  // hypothesis h₁ after `ring_nf` (Lean state) // @tac-hyp 684-708
    assert (((Real.log(x) * 2.0) + Real.log(y)) == 1.0);  // hypothesis h₂ after `ring_nf` (Lean state) // @tac-hyp 684-708
    assert (((Real.log(x) * 5.0) + (Real.log(y) * 5.0)) == 3.0) by {  // sub-goal before `linarith` (Lean state) // @tac 711-719
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 711-719 exec 59)
      if (0.0 < x) { cert_piece_4(x, y); }  // cert: pow_pos
      // cert: pow_pos piece `(0.0 < (y * y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(Real.log x * (2 : ℝ) + Real.log y - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((Real.log(x) * 2.0) + Real.log(y)) - 1.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (Real.log x * (2 : ℝ) + Real.log y - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.log(x) * 2.0) + Real.log(y)) - 1.0) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log x + Real.log y * (3 : ℝ) - (1 : ℝ)) + (2 : ℝ) * -(Real.log x * (2 : ℝ) + Real.log y - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log x + Real.log y * (3 : ℝ) - (1 : ℝ) + (2 : ℝ) * (Real.log x * (2 : ℝ) + Real.log y - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_5(x, y);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_6(x, y);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×72 [exec 59 711-719]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, neg_eq_zero ×2, sub_eq_zero_of_eq ×2, mul_one ×2, add_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×4, Linarith.lt_of_eq_of_lt ×2 (+20 more heads, ×36) (cited in this block, not counted here: Real.log_mul [Lean recorded ×2], Real.log_pow [Lean recorded ×2], pow_one [Lean recorded ×2], pow_pos [Lean recorded ×2])
      // UNCITED-APPLIED internal ×145 [exec 60 711-719]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7 (+35 more heads, ×115) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×130 [exec 62 711-719]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×6 (+35 more heads, ×102) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 63 711-719]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 60, 62)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 61, 63 / `ring1` exec 60, 62)]
      // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.log(x));]
      // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.log(y));]
      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log x); (a := Real.log y)
      assert (0.0 < (y));  // precondition of PowPos (Lean: pow_pos)
      PowPos(y, 3);  // cite: pow_pos [applied by the tactic, not named in it]
      assert (0.0 < (x));  // precondition of PowPos (Lean: pow_pos)
      PowPos(x, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      RealLogPow(3, y);  // cite: Real.log_pow [applied by the tactic, not named in it]
      RealLogPow(2, x);  // cite: Real.log_pow [applied by the tactic, not named in it]
      assert ((x) != 0.0) && ((Real.pow(y, 3)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul; discharged inside the tactic's term by the applications stated above)
      RealLogMul(x, Real.pow(y, 3));  // cite: Real.log_mul [applied by the tactic, not named in it]
      assert ((Real.pow(x, 2)) != 0.0) && ((y) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul; discharged inside the tactic's term by the applications stated above)
      RealLogMul(Real.pow(x, 2), y);  // cite: Real.log_mul [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×5 [exec 61 711-719]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
}



// ===== closed lemma for line 102 (from closed/amc12b_2003_p17-102.dfy) =====

lemma {:induction false} {:fuel Real.pow, 0, 1} vc_amc12b_2003_p17_L102(x: real, y: real)
  requires 0.0 < x
  requires 0.0 < y
  requires Real.log(Real.pow(x, 2) * y) == 1.0
  ensures   2.0 * Real.log(x) + Real.log(y) == 1.0
{
  var p := Real.pow(x, 2);  // [ADDED]
  PowPos(x, 2);  // [ADDED]
  RealLogPow(2, x);  // [ADDED]
  assert Real.log(p) == 2.0 * Real.log(x);  // [ADDED]
  assert Real.log(p * y) == 1.0;  // [ADDED]
  RealLogMul(p, y);  // [ADDED]
  assert Real.log(p * y) == Real.log(p) + Real.log(y);  // [ADDED]
}
