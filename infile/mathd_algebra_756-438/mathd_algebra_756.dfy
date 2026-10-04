// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_756.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real)
  ensures (a + -(a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₂/h₂₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real)
  ensures (a + -(a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real)
  ensures ((-((31.0 * 1.0)) + -((Real.rpow(2.0, a) - 32.0))) + (Real.rpow(2.0, a) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real)
  ensures ((-((31.0 * 1.0)) + -((Real.rpow(2.0, a) - 32.0))) + (Real.rpow(2.0, a) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real)
  ensures (-(((a * Real.log(2.0)) - (5.0 * Real.log(2.0)))) + ((a * Real.log(2.0)) - (5.0 * Real.log(2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real)
  ensures (((a * Real.log(2.0)) - (5.0 * Real.log(2.0))) + ((5.0 * Real.log(2.0)) - (a * Real.log(2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₈/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real)
  ensures (-(Real.log(2.0)) + Real.log(2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real)
  ensures (-(((a * Real.log(2.0)) - (5.0 * Real.log(2.0)))) + ((Real.log(2.0) * a) - (Real.log(2.0) * 5.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real)
  ensures (((a * Real.log(2.0)) - (5.0 * Real.log(2.0))) + ((Real.log(2.0) * 5.0) - (Real.log(2.0) * a))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real)
  ensures (-(((b * Real.log(5.0)) - Real.log(125.0))) + ((b * Real.log(5.0)) - Real.log(125.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real)
  ensures (((b * Real.log(5.0)) - Real.log(125.0)) + (Real.log(125.0) - (b * Real.log(5.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real)
  ensures (-(((b * Real.log(5.0)) - (3.0 * Real.log(5.0)))) + ((b * Real.log(5.0)) - (3.0 * Real.log(5.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real)
  ensures (((b * Real.log(5.0)) - (3.0 * Real.log(5.0))) + ((3.0 * Real.log(5.0)) - (b * Real.log(5.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₅/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real)
  ensures (-(Real.log(5.0)) + Real.log(5.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real)
  ensures (-(((b * Real.log(5.0)) - (3.0 * Real.log(5.0)))) + ((Real.log(5.0) * b) - (Real.log(5.0) * 3.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real)
  ensures (((b * Real.log(5.0)) - (3.0 * Real.log(5.0))) + ((Real.log(5.0) * 3.0) - (Real.log(5.0) * b))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_756(a: real, b: real)
  requires (Real.rpow(2.0, a) == 32.0)
  requires (Real.rpow(a, b) == 125.0)
  ensures (Real.rpow(b, a) == 243.0) // @tac 279-806 // @tac 812-1686 // @tac 1692-2792 // @tac 2798-3085 // @tac 3091-3101
{
  // have h₂ : a > 0  [type from Lean state]
  assert (a > 0.0) by { // @tac 307-318
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 27 307-318]
    // by_contra h
    if !((a > 0.0)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 323-360 // @tac 365-747 // @tac 752-793 // @tac 798-806
        // have h₂₁ : a <= 0  [type from Lean state]
        assert (a <= 0.0) by { // @tac 352-360
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 352-360 exec 44)
          cert_identity_1(a, b);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×5 [exec 44 352-360]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×20 [exec 45 352-360]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 45)]
        }
        // have h₂₂ : 2 ^ a <= 1  [type from Lean state]
        assert (Real.rpow(2.0, a) <= 1.0) by { // @tac 502-538 // @tac 545-695 // @tac 702-747 // @tac 702-728 // @tac 739-747
          // have h₂₂₁ : a <= 0  [type from Lean state]
          assert (a <= 0.0) by {
            // [TACTIC: exact h₂₁]
            assert (a <= 0.0);
          }
          // have h₂₂₂ : 2 ^ a <= 2 ^ 0  [type from Lean state]
          assert (Real.rpow(2.0, a) <= Real.rpow(2.0, 0.0)) by { // @tac 617-655
            // [TACTIC: apply Real.rpow_le_rpow_of_exponent_le]
            // `apply`: 2 cases (Lean states); 2 branch bodies
            assert (1.0 <= 2.0) by {  // sub-goal of `apply` (Lean state) // @tac 667-675 // @tac 664-675
              // [TACTIC: «Norm_num[_]At___»]
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 95 667-675]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            }
            assert (a <= 0.0) by {  // sub-goal of `apply` (Lean state) // @tac 687-695 // @tac 684-695
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 687-695 exec 100)
              cert_identity_2(a, b);  // cert: add_lt_of_le_of_neg
              // UNCITED-APPLIED internal ×5 [exec 100 687-695]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×20 [exec 101 687-695]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 101)]
            }
            assert (1.0 <= (2.0)) && ((a) <= (0.0));  // precondition of RealRpowLeRpowOfExponentLe (Lean: Real.rpow_le_rpow_of_exponent_le; `apply`: proved by the steps above)
            RealRpowLeRpowOfExponentLe(2.0, a, 0.0);  // cite: Real.rpow_le_rpow_of_exponent_le
          }
          // [TACTIC: «_<;>_» at h₂₂₂ ⊢ <;> linarith linarith]
          // [TACTIC: «Norm_num[_]At___» at h₂₂₂ ⊢]
          assert (Real.rpow(2.0, a) <= 1.0);  // hypothesis h₂₂₂ after `norm_num` (Lean state) // @tac-hyp 702-728
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 739-747 exec 116)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(31 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (31.0 > 0.0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(31 : ℝ) * (-1 : ℝ) + -((2 : ℝ) ^ a - (32 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_3(a, b);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×19 [exec 116 739-747]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×67 [exec 117 739-747]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4 (+28 more heads, ×51) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 118 739-747]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₂₃ : 2 ^ a == 32  [type from Lean state]
        assert (Real.rpow(2.0, a) == 32.0) by {
          // [TACTIC: exact h₀]
          assert (Real.rpow(2.0, a) == 32.0);
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 798-806 exec 131)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(31 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (31.0 > 0.0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(31 : ℝ) * (-1 : ℝ) + -((2 : ℝ) ^ a - (32 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_4(a, b);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×10 [exec 131 798-806]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
        // UNCITED-APPLIED internal ×67 [exec 132 798-806]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4 (+28 more heads, ×51) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 132)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 133 / `ring1` exec 132)]
        // UNCITED-APPLIED internal ×5 [exec 133 798-806]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert false;
    }
  }
  // have h₃ : a == 5  [type from Lean state]
  assert (a == 5.0) by { // @tac 840-914 // @tac 919-1104 // @tac 1109-1395 // @tac 1400-1417 // @tac 1422-1480 // @tac 1485-1671 // @tac 1676-1686
    // have h₄ : Real.log ( ( 2 ^ a ) ) == Real.log ( 32 )  [type from Lean state]
    assert (Real.log(Real.rpow(2.0, a)) == Real.log(32.0)); // @tac 905-914
      // [TACTIC: rwSeq [ h₀ ]]
    // UNCITED-APPLIED congrArg((2 : ℝ) ^ a, (32 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (32 : ℝ)): no library counterpart (not stated) [exec 170 905-914]
    // have h₅ : a * Real.log ( 2 ) == Real.log ( 32 )  [type from Lean state]
    assert ((a * Real.log(2.0)) == Real.log(32.0)) by { // @tac 972-1104 // @tac 972-1085 // @tac 972-1062 // @tac 972-1028 // @tac 1039-1062
      assert (2.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 994-1002
        // [TACTIC: «Norm_num[_]At___»]
      }
      // [TACTIC: «_<;>_» [ Real.log_rpow ( by norm_num norm_num : ( 2 : ℝ ) > 0 ) ] at h₄ rw [ Real.log_rpow ( by norm_num norm_num : ( 2 : ℝ ) > 0 ) ] at h₄ <;> simp_all [ Real.log_pow ] simp_all [ Real.log_pow ] simp_all [ Real.log_pow ] <;> ring_nf at * <;> linarith linarith]
      // [TACTIC: choice [ Real.log_rpow ( by norm_num norm_num : ( 2 : ℝ ) > 0 ) ] at h₄ rw [ Real.log_rpow ( by norm_num norm_num : ( 2 : ℝ ) > 0 ) ] at h₄]
      // UNCITED Real.log_rpow: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      assert ((a * Real.log(2.0)) == Real.log(32.0));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 972-1028
      // UNCITED Real.log_pow: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      if (0.0 < (2.0)) { RealLogRpow(2.0, a); }  // cite: Real.log_rpow [applied by the tactic, not named in it]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×9 [exec 266 1039-1062]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], Real.log_rpow [Lean recorded ×1])
    }
    // have h₆ : Real.log ( 32 ) == 5 * Real.log ( 2 )  [type from Lean state]
    assert (Real.log(32.0) == (5.0 * Real.log(2.0))) by { // @tac 1162-1222 // @tac 1229-1241
      // have h₆₁ : Real.log ( 32 ) == Real.log ( ( 2 ^ 5 ) )  [type from Lean state]
      assert (Real.log(32.0) == Real.log(Real.pow(2.0, 5))); // @tac 1214-1222
        // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×13 [exec 311 1214-1222]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+8 more heads, ×8)
      // [TACTIC: rwSeq [ h₆₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (32 : ℝ), Real.log ((2 : ℝ) ^ (5 : ℕ)), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 316 1229-1241]
      assert (Real.log(Real.pow(2.0, 5)) == (5.0 * Real.log(2.0))) by {  // sub-goal before `have` (Lean state) // @tac 1248-1376 // @tac 1383-1395
        // have h₆₂ : Real.log ( 2 ^ 5 ) == 5 * Real.log ( 2 )  [type from Lean state]
        assert (Real.log(Real.pow(2.0, 5)) == (5.0 * Real.log(2.0))) by { // @tac 1317-1376 // @tac 1317-1355 // @tac 1317-1334
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> linarith linarith]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(5, 2.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ)), ↑(5 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 373 1317-1334]
          assert (((5 as real) * Real.log(2.0)) == (5.0 * Real.log(2.0)));  // sub-goal of `norm_num` (Lean state) // @tac 1347-1355
          // UNCITED-APPLIED internal ×8 [exec 408 1347-1355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
        }
        // [TACTIC: rwSeq [ h₆₂ ]]
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ)), (5 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 419 1383-1395]
      }
    }
    // [TACTIC: rwSeq [ h₆ ] at h₅]
    assert ((a * Real.log(2.0)) == (5.0 * Real.log(2.0)));  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 1400-1417
    // have h₇ : a * Real.log ( 2 ) == 5 * Real.log ( 2 )  [type from Lean state]
    assert ((a * Real.log(2.0)) == (5.0 * Real.log(2.0))) by { // @tac 1472-1480
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1472-1480 exec 487)
      cert_identity_5(a, b);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_6(a, b);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×12 [exec 487 1472-1480]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×63 [exec 488 1472-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+31 more heads, ×50) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×59 [exec 489 1472-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.mul_congr ×2 (+30 more heads, ×49) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 488, 489)]
    }
    // have h₈ : a == 5  [type from Lean state]
    assert (a == 5.0) by { // @tac 1515-1656
      assert (Real.log(2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1582-1638 // @tac 1647-1655
        // have h₉ : Real.log ( 2 ) > 0  [type from Lean state]
        assert (Real.log(2.0) > 0.0) by {
          assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1629-1637
            // [TACTIC: «Norm_num[_]At___»]
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 525 1629-1637]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          }
          // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
          assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
          RealLogPos(2.0);  // cite: Real.log_pos
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1647-1655 exec 528)
        cert_identity_7(a, b);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×5 [exec 528 1647-1655]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×20 [exec 529 1647-1655]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 529)]
      }
      // [TACTIC: apply mul_left_cancel₀ ( show ( Real.log 2 : ℝ ) ≠ 0 by have h₉ : Real.log 2 > 0 := Real.log_pos ( by norm_num norm_num ) have h₉ : Real.log 2 > 0 := Real.log_pos ( by norm_num norm_num ) linarith linarith )]
      assert ((Real.log(2.0) * a) == (Real.log(2.0) * 5.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 1663-1671
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1663-1671 exec 530)
        cert_identity_8(a, b);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_9(a, b);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×12 [exec 530 1663-1671]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×77 [exec 531 1663-1671]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.neg_mul ×4 (+31 more heads, ×61) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×72 [exec 532 1663-1671]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_pf_left ×3 (+30 more heads, ×57) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 531, 532)]
      }
      assert ((Real.log(2.0)) != 0.0) && ((Real.log(2.0)) * (a) == (Real.log(2.0)) * (5.0));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
      MulLeftCancel(Real.log(2.0), a, 5.0);  // cite: mul_left_cancel₀
    }
    // [TACTIC: exact h₈]
    assert (a == 5.0);
  }
  // have h₄ : b == 3  [type from Lean state]
  assert (b == 3.0) by { // @tac 1720-1745 // @tac 1750-1775 // @tac 1780-1819 // @tac 1824-1841 // @tac 1846-1903 // @tac 1908-1975 // @tac 1980-2204 // @tac 2209-2270 // @tac 2275-2397 // @tac 2402-2480 // @tac 2485-2508 // @tac 2513-2574 // @tac 2579-2774 // @tac 2779-2792
    // have h₅ : a > 0  [type from Lean state]
    assert (a > 0.0) by {
      // [TACTIC: exact h₂]
      assert (a > 0.0);
    }
    // have h₆ : a == 5  [type from Lean state]
    assert (a == 5.0) by {
      // [TACTIC: exact h₃]
      assert (a == 5.0);
    }
    // have h₇ :  ^ b == 125  [type from Lean state]
    assert (Real.rpow(a, b) == 125.0) by {
      // [TACTIC: exact h₁]
      assert (Real.rpow(a, b) == 125.0);
    }
    // [TACTIC: rwSeq [ h₆ ] at h₇]
    assert (Real.rpow(5.0, b) == 125.0);  // hypothesis h₇ after `rw` (Lean state) // @tac-hyp 1824-1841
    // have h₈ : 5 ^ b == 125  [type from Lean state]
    assert (Real.rpow(5.0, b) == 125.0); // @tac 1884-1903
      // [TACTIC: Exact_mod_cast h₇]
    // UNCITED-APPLIED congrArg(a, (5 : ℝ), fun (_a : ℝ) => _a ^ b = (125 : ℝ)): no library counterpart (not stated) [exec 634 1884-1903]
    // have h₉ : Real.log ( ( 5 ^ b ) ) == Real.log ( 125 )  [type from Lean state]
    assert (Real.log(Real.rpow(5.0, b)) == Real.log(125.0)); // @tac 1966-1975
      // [TACTIC: rwSeq [ h₈ ]]
    // UNCITED-APPLIED congrArg((5 : ℝ) ^ b, (125 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (125 : ℝ)): no library counterpart (not stated) [exec 655 1966-1975]
    // have h₁₀ : b * Real.log ( 5 ) == Real.log ( 125 )  [type from Lean state]
    assert ((b * Real.log(5.0)) == Real.log(125.0)) by { // @tac 2037-2159 // @tac 2166-2189 // @tac 2196-2204
      // have h₁₀₁ : Real.log ( ( 5 ^ b ) ) == b * Real.log ( 5 )  [type from Lean state]
      assert (Real.log(Real.rpow(5.0, b)) == (b * Real.log(5.0))) by { // @tac 2111-2159
        assert (5.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2133-2141
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 719 2133-2141]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // [TACTIC: rwSeq [ Real.log_rpow ( by norm_num norm_num : ( 5 : ℝ ) > 0 ) ]]
        assert (0.0 < (5.0));  // precondition of RealLogRpow (Lean: Real.log_rpow)
        RealLogRpow(5.0, b);  // cite: Real.log_rpow
        // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ b), b * Real.log (5 : ℝ), fun (_a : ℝ) => _a = b * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 712 2111-2159]
      }
      // [TACTIC: rwSeq [ h₁₀₁ ] at h₉]
      assert ((b * Real.log(5.0)) == Real.log(125.0));  // hypothesis h₉ after `rw` (Lean state) // @tac-hyp 2166-2189
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2196-2204 exec 769)
      cert_identity_10(a, b);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_11(a, b);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×12 [exec 769 2196-2204]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×49 [exec 770 2196-2204]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+29 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×46 [exec 771 2196-2204]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+28 more heads, ×35) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 770, 771)]
    }
    // have h₁₁ : Real.log ( 125 ) == Real.log ( ( 5 ^ 3 ) )  [type from Lean state]
    assert (Real.log(125.0) == Real.log(Real.pow(5.0, 3))); // @tac 2262-2270
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×11 [exec 788 2262-2270]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
    // have h₁₂ : Real.log ( 5 ^ 3 ) == 3 * Real.log ( 5 )  [type from Lean state]
    assert (Real.log(Real.pow(5.0, 3)) == (3.0 * Real.log(5.0))) by { // @tac 2342-2397 // @tac 2342-2378 // @tac 2342-2359
      // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
      RealLogPow(3, 5.0);  // cite: Real.log_pow
      // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (3 : ℕ)), ↑(3 : ℕ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 819 2342-2359]
      assert (((3 as real) * Real.log(5.0)) == (3.0 * Real.log(5.0)));  // sub-goal of `norm_num` (Lean state) // @tac 2370-2378
      // UNCITED-APPLIED internal ×8 [exec 854 2370-2378]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
    }
    // have h₁₃ : Real.log ( 125 ) == 3 * Real.log ( 5 )  [type from Lean state]
    assert (Real.log(125.0) == (3.0 * Real.log(5.0))); // @tac 2459-2480
      // [TACTIC: rwSeq [ h₁₁ , h₁₂ ]]
    // UNCITED-APPLIED congrArg(Real.log (125 : ℝ), Real.log ((5 : ℝ) ^ (3 : ℕ)), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 881 2459-2480]
    // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (3 : ℕ)), (3 : ℝ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 881 2459-2480]
    // [TACTIC: rwSeq [ h₁₃ ] at h₁₀]
    assert ((b * Real.log(5.0)) == (3.0 * Real.log(5.0)));  // hypothesis h₁₀ after `rw` (Lean state) // @tac-hyp 2485-2508
    // have h₁₄ : b * Real.log ( 5 ) == 3 * Real.log ( 5 )  [type from Lean state]
    assert ((b * Real.log(5.0)) == (3.0 * Real.log(5.0))) by { // @tac 2566-2574
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2566-2574 exec 950)
      cert_identity_12(a, b);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_13(a, b);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×12 [exec 950 2566-2574]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×63 [exec 951 2566-2574]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+31 more heads, ×50) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×59 [exec 952 2566-2574]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.mul_congr ×2 (+30 more heads, ×49) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 951, 952)]
    }
    // have h₁₅ : b == 3  [type from Lean state]
    assert (b == 3.0) by { // @tac 2612-2759
      assert (Real.log(5.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2679-2741 // @tac 2750-2758
        // have h₁₅₁ : Real.log ( 5 ) > 0  [type from Lean state]
        assert (Real.log(5.0) > 0.0) by {
          assert (1.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 2732-2740
            // [TACTIC: «Norm_num[_]At___»]
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 988 2732-2740]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          }
          // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
          assert (1.0 < (5.0));  // precondition of RealLogPos (Lean: Real.log_pos)
          RealLogPos(5.0);  // cite: Real.log_pos
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2750-2758 exec 991)
        cert_identity_14(a, b);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×5 [exec 991 2750-2758]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×20 [exec 992 2750-2758]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 992)]
      }
      // [TACTIC: apply mul_left_cancel₀ ( show ( Real.log 5 : ℝ ) ≠ 0 by have h₁₅₁ : Real.log 5 > 0 := Real.log_pos ( by norm_num norm_num ) have h₁₅₁ : Real.log 5 > 0 := Real.log_pos ( by norm_num norm_num ) linarith linarith )]
      assert ((Real.log(5.0) * b) == (Real.log(5.0) * 3.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 2766-2774
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2766-2774 exec 993)
        cert_identity_15(a, b);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_16(a, b);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×12 [exec 993 2766-2774]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×77 [exec 994 2766-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.neg_mul ×4 (+31 more heads, ×61) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×72 [exec 995 2766-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_pf_left ×3 (+30 more heads, ×57) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 994, 995)]
      }
      assert ((Real.log(5.0)) != 0.0) && ((Real.log(5.0)) * (b) == (Real.log(5.0)) * (3.0));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
      MulLeftCancel(Real.log(5.0), b, 3.0);  // cite: mul_left_cancel₀
    }
    // [TACTIC: exact h₁₅]
    assert (b == 3.0);
  }
  // have h₅ : b ^ a == 243  [type from Lean state]
  assert (Real.rpow(b, a) == 243.0) by { // @tac 2832-2847
    // [TACTIC: rwSeq [ h₄ , h₃ ]]
    // UNCITED-APPLIED congrArg(b, (3 : ℝ), fun (_a : ℝ) => _a ^ a = (243 : ℝ)): no library counterpart (not stated) [exec 1017 2832-2847]
    // UNCITED-APPLIED congrArg(a, (5 : ℝ), fun (_a : ℝ) => (3 : ℝ) ^ _a = (243 : ℝ)): no library counterpart (not stated) [exec 1017 2832-2847]
    assert (Real.rpow(3.0, 5.0) == 243.0) by {  // sub-goal before `have` (Lean state) // @tac 2852-3051 // @tac 3056-3085 // @tac 3056-3068
      // have h₅₁ : 3 ^ 5 == 243  [type from Lean state]
      vc_mathd_algebra_756_L438(a, b);  /* [IN-FILE CHECK] the closed lemma for line 438 */
      assert (Real.rpow(3.0, 5.0) == 243.0); // @tac 2907-3051 // @tac 2907-3026 // @tac 2907-3001 // @tac 2907-2977
      // UNCITED-APPLIED internal ×13 [exec 1076 2907-2977]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+7 more heads, ×7)
        // [TACTIC: «_<;>_» [ Real.rpow_def_of_pos , Real.rpow_def_of_nonneg , Real.log_pow ] norm_num [ Real.rpow_def_of_pos , Real.rpow_def_of_nonneg , Real.log_pow ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
        // [TACTIC: «Norm_num[_]At___» [ Real.rpow_def_of_pos , Real.rpow_def_of_nonneg , Real.log_pow ]]
        // UNCITED Real.rpow_def_of_pos: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Real.log_pow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // UNCITED Real.rpow_def_of_nonneg: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // `norm_num` closed the goal; the rest of the chain did not run
      // [TACTIC: «_<;>_» [ h₅₁ ] rw [ h₅₁ ] <;> norm_num norm_num]
      // [TACTIC: rwSeq [ h₅₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg((3 : ℝ) ^ (5 : ℝ), (243 : ℝ), fun (_a : ℝ) => _a = (243 : ℝ)): no library counterpart (not stated) [exec 1104 3056-3068]
    }
  }
  // [TACTIC: exact h₅]
  assert (Real.rpow(b, a) == 243.0);
}



// ===== closed lemma for line 438 (from closed/mathd_algebra_756-438.dfy) =====

lemma {:induction false} vc_mathd_algebra_756_L438(a: real, b: real)
  requires Real.rpow(2.0, a) == 32.0
  requires Real.rpow(a, b) == 125.0
  requires a > 0.0
  requires a == 5.0
  requires b == 3.0
  ensures   Real.rpow(3.0, 5.0) == 243.0
{
  RealRpowNatCast(3.0, 5);  // [ADDED]
}

