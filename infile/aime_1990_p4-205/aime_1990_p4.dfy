// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/aime_1990_p4.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h_y/h₉/h₉₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real)
  ensures (-(((((((x * x) - (10.0 * x)) - 45.0) + (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 69.0)) - (((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 45.0)) * 2.0))) + ((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_y/h₉/h₉₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real)
  ensures (((((((x * x) - (10.0 * x)) - 45.0) + (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 69.0)) - (((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 45.0)) * 2.0)) + -(((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_y/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real)
  ensures (-(((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0)))) + (64.0 * (39.0 - ((x * x) - (10.0 * x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_y/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real)
  ensures (((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0))) + (64.0 * (((x * x) - (10.0 * x)) - 39.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real)
  ensures (-((((x * x) - (10.0 * x)) - 39.0)) + (((x * x) - (10.0 * x)) - 39.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real)
  ensures ((((x * x) - (10.0 * x)) - 39.0) + -((((x * x) - (10.0 * x)) - 39.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: real)
  ensures (-((((x * x) - (10.0 * x)) - 39.0)) + ((x - 13.0) * (x + 3.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(x: real)
  ensures ((((x * x) - (10.0 * x)) - 39.0) + -(((x - 13.0) * (x + 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: real)
  ensures (-((x - 13.0)) + (x - 13.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: real)
  ensures ((x - 13.0) + (13.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅/h₅₁/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: real)
  ensures ((-((3.0 * 1.0)) + -(x)) + (x + 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: real)
  ensures ((-((3.0 * 1.0)) + -(x)) + (x - -(3.0))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma aime_1990_p4(x: real)
  requires (0.0 < x)
  requires ((((x * x) - (10.0 * x)) - 29.0) != 0.0)
  requires ((((x * x) - (10.0 * x)) - 45.0) != 0.0)
  requires ((((x * x) - (10.0 * x)) - 69.0) != 0.0)
  requires (((Real.div(1.0, (((x * x) - (10.0 * x)) - 29.0)) + Real.div(1.0, (((x * x) - (10.0 * x)) - 45.0))) - Real.div(2.0, (((x * x) - (10.0 * x)) - 69.0))) == 0.0)
  ensures (x == 13.0) // @tac 510-1660 // @tac 1666-2460 // @tac 2466-2479
{
  // have h_y : x ^ 2 - 10 * x == 39  [type from Lean state]
  assert (((x * x) - (10.0 * x)) == 39.0) by { // @tac 551-613 // @tac 618-680 // @tac 685-747 // @tac 752-857 // @tac 862-1454 // @tac 1459-1642 // @tac 1647-1660
    // have h₅ : ( x ^ 2 - 10 * x - 45 ) != 0  [type from Lean state]
    assert ((((x * x) - (10.0 * x)) - 45.0) != 0.0); // @tac 597-613
      // [TACTIC: simpa using h₂]
    // have h₆ : ( x ^ 2 - 10 * x - 29 ) != 0  [type from Lean state]
    assert ((((x * x) - (10.0 * x)) - 29.0) != 0.0); // @tac 664-680
      // [TACTIC: simpa using h₁]
    // have h₇ : ( x ^ 2 - 10 * x - 69 ) != 0  [type from Lean state]
    assert ((((x * x) - (10.0 * x)) - 69.0) != 0.0); // @tac 731-747
      // [TACTIC: simpa using h₃]
    // have h₈ : 1 / ( x ^ 2 - 10 * x - 29 ) + 1 / ( x ^ 2 - 10 * x - 45 ) - 2 / ( x ^   [type from Lean state]
    assert (((Real.div(1.0, (((x * x) - (10.0 * x)) - 29.0)) + Real.div(1.0, (((x * x) - (10.0 * x)) - 45.0))) - Real.div(2.0, (((x * x) - (10.0 * x)) - 69.0))) == 0.0) by {
      // [TACTIC: exact h₄]
      assert (((Real.div(1.0, (((x * x) - (10.0 * x)) - 29.0)) + Real.div(1.0, (((x * x) - (10.0 * x)) - 45.0))) - Real.div(2.0, (((x * x) - (10.0 * x)) - 69.0))) == 0.0);
    }
    // have h₉ : ( x ^ 2 - 10 * x - 45 ) * ( x ^ 2 - 10 * x - 69 ) + ( x ^ 2 - 10 * x -  [type from Lean state]
    assert (((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0))) == 0.0) by { // @tac 1036-1434 // @tac 1441-1454
      // have h₉₁ : ( x ^ 2 - 10 * x - 45 ) * ( x ^ 2 - 10 * x - 69 ) + ( x ^ 2 - 10 * x -  [type from Lean state]
      assert (((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0))) == 0.0) by { // @tac 1215-1289 // @tac 1298-1434
        // [TACTIC: «Field_simp[_]At___» [ h₅ , h₆ , h₇ , sub_eq_zero , add_eq_zero_iff_eq_neg ] at h₈]
        // UNCITED sub_eq_zero: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED add_eq_zero_iff_eq_neg: no Lean instance recorded (arguments unknown), not guessed
        assert ((((((x * x) - (10.0 * x)) - 45.0) + (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 69.0)) == (((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 45.0)) * 2.0));  // hypothesis h₈ after `field_simp` (Lean state) // @tac-hyp 1215-1289
        // [TACTIC: «Nlinarith[_]At___» [ sq_pos_of_ne_zero ( sub_ne_zero.mpr h₆ ) , sq_pos_of_ne_zero ( sub_ne_zero.mpr h₅ ) , sq_pos_of_ne_zero ( sub_ne_zero.mpr h₇ ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1298-1434 exec 116)
        cert_identity_1(x);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_2(x);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×24 [exec 116 1298-1434]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2, one_mul ×2, div_div ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, add_div' ×1, div_add' ×1, sub_div' ×1, div_sub' ×1; machinery/glue: Eq.trans ×5, congrArg ×5, Not.intro ×1, Linarith.lt_irrefl ×1 (cited in this block, not counted here: mul_ne_zero [Lean recorded ×2])
        // UNCITED-APPLIED internal ×259 [exec 118 1298-1434]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+41 more heads, ×227) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED sq_pos_of_ne_zero: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED sub_ne_zero.mpr: no Lean instance recorded (arguments unknown), not guessed
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 117, 118)]
        assert (((((x * x) - (10.0 * x)) - 29.0)) != 0.0) && (((((x * x) - (10.0 * x)) - 45.0)) != 0.0);  // precondition of MulNeZero (Lean: mul_ne_zero)
        MulNeZero((((x * x) - (10.0 * x)) - 29.0), (((x * x) - (10.0 * x)) - 45.0));  // cite: mul_ne_zero [applied by the tactic, not named in it]
        assert ((((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 45.0))) != 0.0) && (((((x * x) - (10.0 * x)) - 69.0)) != 0.0);  // precondition of MulNeZero (Lean: mul_ne_zero)
        MulNeZero(((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 45.0)), (((x * x) - (10.0 * x)) - 69.0));  // cite: mul_ne_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×261 [exec 117 1298-1434]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+42 more heads, ×229) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: exact h₉₁]
      assert (((((((x * x) - (10.0 * x)) - 45.0) * (((x * x) - (10.0 * x)) - 69.0)) + ((((x * x) - (10.0 * x)) - 29.0) * (((x * x) - (10.0 * x)) - 69.0))) - ((2.0 * (((x * x) - (10.0 * x)) - 29.0)) * (((x * x) - (10.0 * x)) - 45.0))) == 0.0);
    }
    // have h₁₀ : x ^ 2 - 10 * x == 39  [type from Lean state]
    assert (((x * x) - (10.0 * x)) == 39.0) by { // @tac 1506-1642
      // [TACTIC: «Nlinarith[_]At___» [ sq_pos_of_ne_zero ( sub_ne_zero.mpr h₆ ) , sq_pos_of_ne_zero ( sub_ne_zero.mpr h₅ ) , sq_pos_of_ne_zero ( sub_ne_zero.mpr h₇ ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1506-1642 exec 136)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(64 : ℝ) * (x ^ (2 : ℕ) - (10 : ℝ) * x - (39 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x * x) - (10.0 * x)) - 39.0) < 0.0); (64.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(64 : ℝ) * ((39 : ℝ) - (x ^ (2 : ℕ) - (10 : ℝ) * x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((39.0 - ((x * x) - (10.0 * x))) < 0.0); (64.0 > 0.0)
      cert_identity_3(x);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_4(x);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×7 [exec 136 1506-1642]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×256 [exec 139 1506-1642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+41 more heads, ×224) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 140 1506-1642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED sq_pos_of_ne_zero: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED sub_ne_zero.mpr: no Lean instance recorded (arguments unknown), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 138, 140 / `ring1` exec 137, 139)]
      // UNCITED-APPLIED internal ×253 [exec 137 1506-1642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+40 more heads, ×221) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 138 1506-1642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₁₀]
    assert (((x * x) - (10.0 * x)) == 39.0);
  }
  // have h_final : x == 13  [type from Lean state]
  assert (x == 13.0) by { // @tac 1698-2445 // @tac 2450-2460
    // have h₅ : x == 13  [type from Lean state]
    assert (x == 13.0) by { // @tac 1729-2257 // @tac 2264-2445
      // have h₅₁ : x == 13 || x == - 3  [type from Lean state]
      assert ((x == 13.0) || (x == -(3.0))) by { // @tac 1776-1840 // @tac 1849-1912 // @tac 1921-2024 // @tac 2033-2257
        // have h₅₂ : x ^ 2 - 10 * x - 39 == 0  [type from Lean state]
        assert ((((x * x) - (10.0 * x)) - 39.0) == 0.0) by { // @tac 1831-1840
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1831-1840 exec 206)
          cert_identity_5(x);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_6(x);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×10 [exec 206 1831-1840]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, sub_eq_zero_of_eq ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×88 [exec 207 1831-1840]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+37 more heads, ×68) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×88 [exec 208 1831-1840]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+37 more heads, ×68) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 207, 208)]
        }
        // have h₅₃ : ( x - 13 ) * ( x + 3 ) == 0  [type from Lean state]
        assert (((x - 13.0) * (x + 3.0)) == 0.0) by { // @tac 1903-1912
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1903-1912 exec 225)
          cert_identity_7(x);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_8(x);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×10 [exec 225 1903-1912]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, sub_eq_zero_of_eq ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×137 [exec 226 1903-1912]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+42 more heads, ×112) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×137 [exec 227 1903-1912]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+42 more heads, ×112) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 226, 227)]
        }
        // have h₅₄ : x - 13 == 0 || x + 3 == 0  [type from Lean state]
        vc_aime_1990_p4_L205(x);  /* [IN-FILE CHECK] the closed lemma for line 205 */
        assert (((x - 13.0) == 0.0) || ((x + 3.0) == 0.0)); // @tac 1977-2024
          // [TACTIC: apply eq_zero_or_eq_zero_of_mul_eq_zero h₅₃]
          // UNCITED eq_zero_or_eq_zero_of_mul_eq_zero: no Lean instance recorded (arguments unknown), not guessed
        // `cases`: 2 cases (Lean states); 2 branch bodies
        if (((x - 13.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
          // have h₅₅ : x == 13  [type from Lean state]
          assert (x == 13.0) by { // @tac 2115-2123
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2115-2123 exec 266)
            cert_identity_9(x);  // cert: Linarith.lt_of_eq_of_lt
            cert_identity_10(x);  // cert: Linarith.lt_of_eq_of_lt
            // UNCITED-APPLIED internal ×10 [exec 266 2115-2123]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×41 [exec 267 2115-2123]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+22 more heads, ×29) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×39 [exec 268 2115-2123]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 267, 268)]
          }
          // [TACTIC: exact Or.inl h₅₅]
          assert (x == 13.0);
          assert ((x == 13.0) || (x == -(3.0)));  // sub-goal of `cases` (Lean state) // @tac 2087-2123 // @tac 2134-2154
        }
        if (((x + 3.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
          // have h₅₅ : x == - 3  [type from Lean state]
          assert (x == -(3.0)) by { // @tac 2218-2226
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2218-2226 exec 289)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (3.0 > 0.0)
            // UNCITED-APPLIED Left.add_neg: certificate sum `(3 : ℝ) * (-1 : ℝ) + -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_11(x);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×10 [exec 289 2218-2226]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, Left.add_neg ×1, zero_lt_one ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×46 [exec 290 2218-2226]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.neg_congr ×2 (+25 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×46 [exec 292 2218-2226]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.neg_congr ×2 (+25 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 293 2218-2226]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 290, 292)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 291, 293 / `ring1` exec 290, 292)]
            // UNCITED-APPLIED internal ×5 [exec 291 2218-2226]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: exact Or.inr h₅₅]
          assert (x == -(3.0));
          assert ((x == 13.0) || (x == -(3.0)));  // sub-goal of `cases` (Lean state) // @tac 2190-2226 // @tac 2237-2257
        }
      }
      // `cases`: 2 cases (Lean states); 2 branch bodies
      if ((x == 13.0)) {  // sub-goal of `cases` (Lean state)
        // [TACTIC: exact h₅₁]
        assert (x == 13.0);
        assert (x == 13.0);  // sub-goal of `cases` (Lean state) // @tac 2314-2327
      }
      if ((x == -(3.0))) {  // sub-goal of `cases` (Lean state)
        // have h₅₂ : x > 0  [type from Lean state]
        assert (x > 0.0) by {
          // [TACTIC: exact h₀]
          assert (0.0 < x);
        }
        // have h₅₃ : x == - 3  [type from Lean state]
        assert (x == -(3.0)) by {
          // [TACTIC: exact h₅₁]
          assert (x == -(3.0));
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2437-2445 exec 328)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (3.0 > 0.0)
        // UNCITED-APPLIED Left.add_neg: certificate sum `(3 : ℝ) * (-1 : ℝ) + -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_12(x);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×11 [exec 328 2437-2445]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, Left.add_neg ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×57 [exec 329 2437-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_congr ×3 (+28 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×57 [exec 331 2437-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_congr ×3 (+28 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 332 2437-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 329, 331)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 330, 332 / `ring1` exec 329, 331)]
        assert (x == 13.0);  // sub-goal of `cases` (Lean state) // @tac 2359-2387 // @tac 2396-2428 // @tac 2437-2445
        // UNCITED-APPLIED internal ×5 [exec 330 2437-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₅]
    assert (x == 13.0);
  }
  // [TACTIC: exact h_final]
  assert (x == 13.0);
}



// ===== closed lemma for line 205 (from closed/aime_1990_p4-205.dfy) =====

lemma {:induction false} vc_aime_1990_p4_L205(x: real)
  requires 0.0 < x
  requires x * x - 10.0 * x - 29.0 != 0.0
  requires x * x - 10.0 * x - 45.0 != 0.0
  requires x * x - 10.0 * x - 69.0 != 0.0
  requires Real.div(1.0, x * x - 10.0 * x - 29.0) + Real.div(1.0, x * x - 10.0 * x - 45.0) - Real.div(2.0, x * x - 10.0 * x - 69.0) == 0.0
  requires x * x - 10.0 * x == 39.0
  requires x * x - 10.0 * x - 39.0 == 0.0
  requires (x - 13.0) * (x + 3.0) == 0.0
  requires (x - 13.0 != 0.0) || (x - 13.0 == 0.0)
  ensures   x - 13.0 == 0.0 || x + 3.0 == 0.0
{ }

