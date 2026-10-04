// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1960_p2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real)
  ensures (-((1.0 + (2.0 * x))) + ((2.0 * x) - -((1.0 * 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real)
  ensures (-((2.0 * x)) + ((1.0 + (2.0 * x)) - (1.0 * 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real)
  ensures ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) + (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real)
  ensures ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) + (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real)
  ensures ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) + (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real)
  ensures ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) + (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: real)
  ensures (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) + ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₇/h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(x: real)
  requires ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0)
  requires (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0)
  ensures (0.0 <= ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))))
{
  MulNonneg(-((1.0 - Real.sqrt((1.0 + (2.0 * x))))), -(((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))); MulNeg(-((1.0 - Real.sqrt((1.0 + (2.0 * x))))), ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))); assert (-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (-(((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))) == -((-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))); assert (-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) == -(((1.0 - Real.sqrt((1.0 + (2.0 * x))))) * (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: real)
  ensures (((5.0 * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) + ((4.0 * (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) - (1.0 * (((1.0 * 7.0) - (2.0 * 1.0)) * ((1.0 * 7.0) - (2.0 * 1.0)))))) + -((2.0 * ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: real)
  ensures ((((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0)) - (2.0 * x)) + -(((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 + (2.0 * x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: real)
  ensures (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) + ((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 + (2.0 * x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: real)
  ensures ((-(1.0) + -((2.0 * x))) + (1.0 + (2.0 * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(x: real)
  ensures ((-((5.0 * 1.0)) + ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) + (2.0 * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(x: real)
  ensures ((-((25.0 * 1.0)) + ((1.0 * (((1.0 * 7.0) - (2.0 * 1.0)) * ((1.0 * 7.0) - (2.0 * 1.0)))) - (4.0 * (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))))) + (4.0 * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₇/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(x: real)
  requires (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))))
  requires (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0)
  ensures (((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) <= 0.0)
{
  MulNonneg((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))), -(((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))); MulNeg((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))), ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))); assert ((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) * (-(((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))) == -(((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) * (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: real)
  ensures (((((-((15.0 * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) + (10.0 * ((4.0 * (x * x)) - (((2.0 * x) + 9.0) * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))))) + (10.0 * ((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))))) + -((4.0 * ((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))))) + ((((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) + -((10.0 * ((1.0 + (2.0 * x)) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(x: real)
  ensures (((1.0 * Real.div((4.0 * (x * x)), ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))))) - (((1.0 * 2.0) * (1.0 * x)) + (1.0 * 9.0))) + ((((1.0 * 2.0) * (1.0 * x)) + (1.0 * 9.0)) - (1.0 * Real.div((4.0 * (x * x)), ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₈`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(x: real)
  requires ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) < 0.0)
  requires (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) < 0.0)
  ensures (0.0 < ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))))
{
  MulPos(-((1.0 - Real.sqrt((1.0 + (2.0 * x))))), -(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))); MulNeg(-((1.0 - Real.sqrt((1.0 + (2.0 * x))))), ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))); assert (-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (-(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))) == -((-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))); assert (-((1.0 - Real.sqrt((1.0 + (2.0 * x)))))) * (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) == -(((1.0 - Real.sqrt((1.0 + (2.0 * x))))) * (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(x: real)
  ensures ((((9.0 * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) + ((1.0 * 45.0) - (8.0 * x))) + -((4.0 * ((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 + (2.0 * x)))))) + -((2.0 * ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(x: real)
  ensures ((-(1.0) + -((2.0 * x))) + (1.0 + (2.0 * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(x: real)
  ensures ((-((45.0 * (1.0 + (2.0 * x)))) + (98.0 * x)) + ((1.0 * 45.0) - (8.0 * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅/h₅₂/h₅₃/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅/h₅₂/h₅₃/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(x: real)
  ensures (x + -(x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅/h₅₂/h₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(x: real)
  ensures (x + -(x)) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1960_p2(x: real)
  requires (0.0 <= (1.0 + (2.0 * x)))
  requires (((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))) != 0.0)
  requires (Real.div((4.0 * (x * x)), ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x)))))) < ((2.0 * x) + 9.0))
  ensures (((-(1.0 / 2.0)) <= x) && (x < (45.0 / 8.0))) // @tac 440-594 // @tac 600-3563 // @tac 3569-3591
{
  // have h₃ : - ( 1 / 2 : ℝ ) <= x  [type from Lean state]
  assert (-((1.0 / 2.0)) <= x) by { // @tac 483-521 // @tac 526-576 // @tac 581-594
    // have h₃₁ : 0 <= 1 + 2 * x  [type from Lean state]
    assert (0.0 <= (1.0 + (2.0 * x))) by {
      // [TACTIC: exact h₀]
      assert (0.0 <= (1.0 + (2.0 * x)));
    }
    // have h₃₂ : - ( 1 / 2 : ℝ ) <= x  [type from Lean state]
    assert (-((1.0 / 2.0)) <= x) by { // @tac 568-576
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 568-576 exec 48)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (x - -(1 / 2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - -((1.0 / 2.0))) < 0.0); (2.0 > 0.0)
      cert_identity_1(x);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×11 [exec 48 568-576]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.sub_subst ×1, CancelDenoms.neg_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×62 [exec 53 568-576]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+31 more heads, ×49) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 49 568-576]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 50 568-576]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 49, 50 / `ring1` exec 53)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 51 / `ring1` exec 53)]
      // UNCITED-APPLIED internal ×5 [exec 51 568-576]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₃₂]
    assert (-((1.0 / 2.0)) <= x);
  }
  // have h₄ : x < 45 / 8  [type from Lean state]
  assert (x < (45.0 / 8.0)) by { // @tac 633-652
    // by_cases hx : x > 0
    if (x > 0.0) {
      assert (x < (45.0 / 8.0)) by {  // sub-goal before `have` (Lean state) // @tac 681-778 // @tac 657-2715 // @tac 785-1235 // @tac 1242-2567 // @tac 2574-2698 // @tac 2705-2715
        // have h₅ : Real.sqrt ( ( 1 + 2 * x ) ) > 1  [type from Lean state]
        assert (Real.sqrt((1.0 + (2.0 * x))) > 1.0) by { // @tac 733-760
          // [TACTIC: apply Real.lt_sqrt_of_sq_lt]
          assert ((1.0 * 1.0) < (1.0 + (2.0 * x))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 769-778
            // [TACTIC: «Nlinarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 769-778 exec 97)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < x); (2.0 > 0.0)
            cert_identity_2(x);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×7 [exec 97 769-778]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×65 [exec 102 769-778]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3 (+34 more heads, ×52) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 102)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 100 / `ring1` exec 102)]
            // UNCITED-APPLIED internal ×5 [exec 100 769-778]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          assert ((1.0) * (1.0) < ((1.0 + (2.0 * x))));  // precondition of RealLtSqrtOfSqLt (Lean: Real.lt_sqrt_of_sq_lt; `apply`: proved by the steps above)
          RealLtSqrtOfSqLt(1.0, (1.0 + (2.0 * x)));  // cite: Real.lt_sqrt_of_sq_lt
        }
        // have h₆ : Real.sqrt ( ( 1 + 2 * x ) ) != 1  [type from Lean state]
        assert (Real.sqrt((1.0 + (2.0 * x))) != 1.0) by { // @tac 839-846
          if (Real.sqrt((1.0 + (2.0 * x))) == 1.0) {
            // have h₇ : Real.sqrt ( ( 1 + 2 * x ) ) == 1  [type from Lean state]
            assert (Real.sqrt((1.0 + (2.0 * x))) == 1.0) by {
              // [TACTIC: exact h]
              assert (Real.sqrt((1.0 + (2.0 * x))) == 1.0);
            }
            // have h₈ : ( Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 == 1 ^ 2  [type from Lean state]
            assert ((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) == (1.0 * 1.0)); // @tac 968-977
              // [TACTIC: rwSeq [ h₇ ]]
            // UNCITED-APPLIED congrArg(√((1 : ℝ) + (2 : ℝ) * x), (1 : ℝ), fun (_a : ℝ) => _a ^ (2 : ℕ) = (1 : ℝ) ^ (2 : ℕ)): no library counterpart (not stated) [exec 153 968-977]
            // have h₉ : ( Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 == 1 + 2 * x  [type from Lean state]
            assert ((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) == (1.0 + (2.0 * x))) by { // @tac 1054-1085 // @tac 1054-1071
              // [TACTIC: «_<;>_» [ Real.sq_sqrt ] rw [ Real.sq_sqrt ] <;> nlinarith nlinarith]
              // [TACTIC: choice [ Real.sq_sqrt ] rw [ Real.sq_sqrt ]]
              assert (0.0 <= ((1.0 + (2.0 * x))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
              RealSqSqrt((1.0 + (2.0 * x)));  // cite: Real.sq_sqrt
              // UNCITED-APPLIED congrArg(√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ), (1 : ℝ) + (2 : ℝ) * x, fun (_a : ℝ) => _a = (1 : ℝ) + (2 : ℝ) * x): no library counterpart (not stated) [exec 199 1054-1071]
              // (`rw` closed `(1 : ℝ) + (2 : ℝ) * x = (1 : ℝ) + (2 : ℝ) * x` itself, e.g. by its trailing rfl)
              assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1076-1085
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 233)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 233)]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1076-1085 exec 228)
                cert_identity_3(x);  // cert: Linarith.lt_of_lt_of_eq
                // UNCITED-APPLIED internal ×6 [exec 228 1076-1085]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
                // UNCITED-APPLIED internal ×33 [exec 233 1076-1085]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
            }
            // have h₁₀ : 1 + 2 * x == 1  [type from Lean state]
            assert ((1.0 + (2.0 * x)) == 1.0) by { // @tac 1129-1138
              // [TACTIC: «Nlinarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1129-1138 exec 250)
              cert_identity_4(x);  // cert: Linarith.lt_of_lt_of_eq
              // UNCITED-APPLIED internal ×7 [exec 250 1129-1138]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×33 [exec 255 1129-1138]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×33 [exec 260 1129-1138]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 255, 260)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 255, 260)]
            }
            // have h₁₁ : x == 0  [type from Lean state]
            assert (x == 0.0) by { // @tac 1174-1183
              // [TACTIC: «Nlinarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1174-1183 exec 277)
              cert_identity_5(x);  // cert: Linarith.lt_of_lt_of_eq
              // UNCITED-APPLIED internal ×7 [exec 277 1174-1183]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×33 [exec 282 1174-1183]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×33 [exec 287 1174-1183]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 282, 287)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 282, 287)]
            }
            // have h₁₂ : x > 0  [type from Lean state]
            assert (x > 0.0) by {
              // [TACTIC: exact hx]
              assert (x > 0.0);
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1227-1235 exec 300)
            cert_identity_6(x);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×5 [exec 300 1227-1235]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×33 [exec 305 1227-1235]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 305)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 305)]
            assert false; // @tac 855-897 // @tac 906-977 // @tac 986-1085 // @tac 1094-1138 // @tac 1147-1183 // @tac 1192-1218 // @tac 1227-1235
          }
        }
        // have h₇ : Real.sqrt ( ( 1 + 2 * x ) ) < 7 / 2  [type from Lean state]
        assert (Real.sqrt((1.0 + (2.0 * x))) < (7.0 / 2.0)) by { // @tac 1298-1312
          // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 329 1298-1312]
          // by_contra h
          if !((Real.sqrt((1.0 + (2.0 * x))) < (7.0 / 2.0))) {
            assert false by {  // sub-goal before `have` (Lean state) // @tac 1321-1379 // @tac 1388-1555 // @tac 1564-2550 // @tac 2559-2567
              // have h₈ : Real.sqrt ( ( 1 + 2 * x ) ) >= 7 / 2  [type from Lean state]
              assert (Real.sqrt((1.0 + (2.0 * x))) >= (7.0 / 2.0)) by { // @tac 1371-1379
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1371-1379 exec 346)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (7 / 2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt((1.0 + (2.0 * x))) - (7.0 / 2.0)) < 0.0); (2.0 > 0.0)
                cert_identity_7(x);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×13 [exec 346 1371-1379]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                // UNCITED-APPLIED internal ×58 [exec 357 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+29 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 347 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 348 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 350 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 351 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 352 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 347, 348, 350, 351 / `ring1` exec 357)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 349, 352 / `ring1` exec 357)]
                // UNCITED-APPLIED internal ×5 [exec 349 1371-1379]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              }
              // have h₉ : ( Real.sqrt ( ( 1 + 2 * x ) ) - 1 ) ^ 2 >= ( 7 / 2 - 1 ) ^ 2  [type from Lean state]
              assert (((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) >= (((7.0 / 2.0) - 1.0) * ((7.0 / 2.0) - 1.0))) by { // @tac 1468-1555
                assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 1526-1535
                  // [TACTIC: «Nlinarith[_]At___»]
                  // UNCITED-APPLIED internal ×14 [exec 380 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 381 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 383 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 384 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 386 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 387 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 385 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 388 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 380, 381, 383, 384, 386, 387)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 382, 385, 388)]
                  // UNCITED-APPLIED internal ×5 [exec 382 1526-1535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                }
                // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( 1 + 2 * x ) , Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1468-1555 exec 374)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0); (5.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ) - ((7 / 2 : ℝ) - (1 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) - (((7.0 / 2.0) - 1.0) * ((7.0 / 2.0) - 1.0))) < 0.0); (4.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(((1 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))))); (2.0 > 0.0)
                if ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0) && (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0) { cert_piece_8(x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(5 : ℝ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) + ((4 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_9(x);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×23 [exec 374 1468-1555]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×4, le_of_not_gt ×2, CancelDenoms.pow_subst ×2, sub_neg_of_lt ×2, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×3, congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
                // UNCITED-APPLIED internal ×225 [exec 407 1468-1555]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+48 more heads, ×193) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 408 1468-1555]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×9 [exec 392 1468-1555]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×11 [exec 395 1468-1555]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 396 1468-1555]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 392, 395 / `ring1` exec 407)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 396, 408 / `ring1` exec 407)]
                if (((1.0 - Real.sqrt((1.0 + (2.0 * x))))) < (0.0)) { LeOfLt((1.0 - Real.sqrt((1.0 + (2.0 * x)))), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
              }
              // have h₁₀ : 4 * x ^ 2 / ( 1 - Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 >= 2 * x + 9  [type from Lean state]
              assert (Real.div((4.0 * (x * x)), ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x)))))) >= ((2.0 * x) + 9.0)) by { // @tac 1653-1875 // @tac 1886-1898
                // have h₁₁ : ( 1 - Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 == ( Real.sqrt ( ( 1 + 2 * x )  [type from Lean state]
                assert (((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))) == ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) by { // @tac 1752-1875 // @tac 1752-1759
                  // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ Real.sqrt_nonneg ( 1 + 2 * x ) , Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) ] nlinarith [ Real.sqrt_nonneg ( 1 + 2 * x ) , Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) ]]
                  // [TACTIC: Ring_nfAt]
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                  PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.sqrt((1.0 + (x * 2.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := √((1 : ℝ) + x * (2 : ℝ)) ^ (2 : ℕ))
                  // `ring_nf` closed the goal; the rest of the chain did not run
                  // [TACTIC: «Nlinarith[_]At___»]
                  // NOT RUN in Lean (no execution recorded): no lemma instances
                  // UNCITED-APPLIED internal ×138 [exec 447 1752-1759]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+50 more heads, ×103) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×2])
                }
                // [TACTIC: rwSeq [ h₁₁ ]]
                // UNCITED-APPLIED congrArg(((1 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ), (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ), fun (_a : ℝ) => (4 : ℝ) * x ^ (2 : ℕ) / _a ≥ (2 : ℝ) * x + (9 : ℝ)): no library counterpart (not stated) [exec 458 1886-1898]
                assert (Real.div((4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) >= ((2.0 * x) + 9.0)) by {  // sub-goal before `have` (Lean state) // @tac 1909-2071 // @tac 2082-2094
                  // have h₁₂ : x == ( ( Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 - 1 ) / 2  [type from Lean state]
                  assert (x == (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) by { // @tac 1984-2071
                    assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2012-2021
                      // [TACTIC: «Nlinarith[_]At___»]
                      // UNCITED-APPLIED internal ×14 [exec 507 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 508 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×54 [exec 522 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2 (+26 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 517 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 512 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 513 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 520 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 523 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 507, 508, 512, 513 / `ring1` exec 522)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 514, 517, 520, 523 / `ring1` exec 522)]
                      // UNCITED-APPLIED internal ×5 [exec 514 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) , Real.sqrt_nonneg ( 1 + 2 * x ) ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1984-2071 exec 501)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (x - (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) < 0.0); (2.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < x); (2.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ) - x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0) - x) < 0.0); (2.0 > 0.0)
                    // UNCITED-APPLIED Left.add_neg: certificate sum `(-1 : ℝ) + (2 : ℝ) * -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_10(x);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_11(x);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_12(x);  // cert: Left.add_neg
                    // UNCITED-APPLIED internal ×29 [exec 501 1984-2071]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, sub_neg_of_lt ×2, Left.add_neg ×2, neg_neg_of_pos ×2, CancelDenoms.div_subst ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, le_of_not_gt ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1, neg_eq_zero ×1; machinery/glue: congrArg ×5, Linarith.mul_neg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×102 [exec 543 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.mul_congr ×4 (+37 more heads, ×83) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×8 [exec 524 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×108 [exec 563 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+38 more heads, ×87) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×8 [exec 544 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 524, 544 / `ring1` exec 543, 563)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 543, 563)]
                    assert (0.0 <= ((1.0 + (2.0 * x))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                    RealSqSqrt((1.0 + (2.0 * x)));  // cite: Real.sq_sqrt
                  }
                  // [TACTIC: rwSeq [ h₁₂ ]]
                  // UNCITED-APPLIED congrArg(x, (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ), fun (_a : ℝ) => (4 : ℝ) * _a ^ (2 : ℕ) / (√((1 : ℝ) + (2 : ℝ) * _a) -…): no library counterpart (not stated) [exec 568 2082-2094]
                  assert (Real.div((4.0 * ((((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0) * (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0))), ((Real.sqrt((1.0 + (2.0 * (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)))) - 1.0) * (Real.sqrt((1.0 + (2.0 * (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)))) - 1.0))) >= ((2.0 * (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) + 9.0)) by {  // sub-goal before `have` (Lean state) // @tac 2105-2243 // @tac 2254-2320 // @tac 2331-2355
                    // have h₁₃ : 0 < Real.sqrt ( ( 1 + 2 * x ) ) - 1  [type from Lean state]
                    assert (0.0 < (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) by { // @tac 2156-2243
                      assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2214-2223
                        // [TACTIC: «Nlinarith[_]At___»]
                        // UNCITED-APPLIED internal ×14 [exec 618 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 619 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 628 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 618, 619)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 620, 628)]
                        // UNCITED-APPLIED internal ×5 [exec 620 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( 1 + 2 * x ) , Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2156-2243 exec 611)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (5.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) <= 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℝ) * (-1 : ℝ) + ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_13(x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×16 [exec 611 2156-2243]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, le_of_not_gt ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×88 [exec 660 2156-2243]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.cast_pos ×4 (+32 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 661 2156-2243]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                      // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 660)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 661 / `ring1` exec 660)]
                    }
                    // have h₁₄ : 0 < ( Real.sqrt ( ( 1 + 2 * x ) ) - 1 ) ^ 2  [type from Lean state]
                    assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) by { // @tac 2311-2320
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2311-2320 exec 679)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (25.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((7 / 2 : ℝ) - (1 : ℝ)) ^ (2 : ℕ) - (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((7.0 / 2.0) - 1.0) * ((7.0 / 2.0) - 1.0)) - ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) <= 0.0); (4.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) <= 0.0); (4.0 > 0.0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(25 : ℝ) * (-1 : ℝ) + ((1 : ℝ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) - (4 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_14(x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×19 [exec 679 2311-2320]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, add_lt_of_neg_of_le ×2, CancelDenoms.pow_subst ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×191 [exec 699 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+48 more heads, ×159) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 700 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 681 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 682 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×11 [exec 686 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 687 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 701 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 681, 682, 686, 687 / `ring1` exec 699)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 688, 700, 701 / `ring1` exec 699)]
                      // UNCITED-APPLIED internal ×5 [exec 688 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: «Field_simp[_]At___» [ h₁₄.ne' ]]
                    if (0.0 <= ((1.0 + (2.0 * x)))) { RealSqSqrt((1.0 + (2.0 * x))); }  // cite: Real.sq_sqrt [applied by the tactic, not named in it]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                    // UNCITED h₁₄.ne': a projection of the local hypothesis h₁₄ handed to the tactic; its fact is not stated here
                    // UNCITED-APPLIED internal ×16 [exec 702 2331-2355]: applications made inside the tactic's own automation, not stated — add_sub_cancel_left ×1, mul_div_cancel_left₀ ×1; machinery/glue: congrArg ×6, Eq.trans ×3, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], Real.sq_sqrt [Lean recorded ×1])
                    assert (((2.0 * x) + 9.0) <= Real.div((4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) by {  // sub-goal before `rw` (Lean state) // @tac 2366-2397
                      assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) by {  // sub-goal of `by` (Lean state) // @tac 2385-2395
                        // [TACTIC: Positivity]
                        // positivity proof (Lean execution 2385-2395 exec 714): nothing of it stated; Lean's records:
                        // cert: pow_pos piece `(0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                        assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0)));  // precondition of PowPos (Lean: pow_pos)
                        PowPos((Real.sqrt((1.0 + (2.0 * x))) - 1.0), 2);  // cite: pow_pos [applied by the tactic, not named in it]
                      }
                      // [TACTIC: rwSeq [ le_div_iff ( by positivity ) ]]
                      assert (0.0 < (((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))));  // precondition of LeDivIff (Lean: le_div_iff)
                      LeDivIff(((2.0 * x) + 9.0), (4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)));  // cite: le_div_iff
                      assert ((((2.0 * x) + 9.0) * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) <= (4.0 * (x * x))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2408-2550
                        assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2436-2445
                          // [TACTIC: «Nlinarith[_]At___»]
                          // UNCITED-APPLIED internal ×8 [exec 745 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 746 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 747 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 748 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 749 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 750 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 756 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 754 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 755 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 759 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 753 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 757 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 758 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 762 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 760 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 761 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 745, 746, 747, 749, 750, 754 …)]
                          // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) , Real.sqrt_nonneg ( 1 + 2 * x ) , sq_nonneg ( Real.sqrt ( 1 + 2 * x ) - 7 / 2 ) ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2408-2550 exec 739)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0)))) == 0.0); (15.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (x - (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) == 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(10 : ℝ) * ((4 : ℝ) * x ^ (2 : ℕ) - ((2 : ℝ) * x + (9 : ℝ)) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((4.0 * (x * x)) - (((2.0 * x) + 9.0) * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) < 0.0); (10.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(10 : ℝ) * -(-((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) <= 0.0); (10.0 > 0.0)
                        if (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) && (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0) { cert_piece_15(x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        SqNonneg(((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))); assert (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (-((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) * ((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); (4.0 > 0.0)
                        if (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        if (0.0 <= (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        SqNonneg(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))); assert (0.0 <= (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(10 : ℝ) * (-((1 : ℝ) + (2 : ℝ) * x) * ((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 + (2.0 * x)) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); (10.0 > 0.0)
                        if (0.0 <= (1.0 + (2.0 * x))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((1.0 + (2.0 * x)) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…`
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_16(x);  // cert: Linarith.lt_of_lt_of_eq
                        // UNCITED-APPLIED internal ×33 [exec 739 2408-2550]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×4, CancelDenoms.sub_subst ×3, le_of_not_gt ×2, neg_eq_zero ×2, CancelDenoms.div_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_zero_eq ×3, congrArg ×2, Linarith.mul_nonpos ×2 (+3 more heads, ×3) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
                        // UNCITED-APPLIED internal ×280 [exec 792 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+47 more heads, ×248) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 793 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 794 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 795 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×8 [exec 773 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 776 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 797 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                        SqNonneg(((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)));  // cite: sq_nonneg
                        SqNonneg(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)));  // cite: sq_nonneg
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 773 / `ring1` exec 792)]
                        // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
                      }
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 707 2366-2397]
                    }
                  }
                  vc_imo_1960_p2_L415(x);  /* [IN-FILE CHECK] the closed lemma for line 415 */
                }
              }
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2559-2567 exec 798)
              cert_identity_17(x);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×12 [exec 798 2559-2567]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.add_subst ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
              // UNCITED-APPLIED internal ×176 [exec 815 2559-2567]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.zero_mul ×8 (+48 more heads, ×144) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 799 2559-2567]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 814 2559-2567]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 799, 814 / `ring1` exec 815)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 815)]
            }
            assert false;
          }
        }
        // have h₈ : x < 45 / 8  [type from Lean state]
        assert (x < (45.0 / 8.0)) by { // @tac 2611-2698
          assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2639-2648
            // [TACTIC: «Nlinarith[_]At___»]
            // UNCITED-APPLIED internal ×14 [exec 838 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 839 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×54 [exec 845 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2 (+26 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 843 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 841 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 842 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 846 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 838, 839, 841, 842 / `ring1` exec 845)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 840, 843, 846 / `ring1` exec 845)]
            // UNCITED-APPLIED internal ×5 [exec 840 2639-2648]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) , Real.sqrt_nonneg ( 1 + 2 * x ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2611-2698 exec 832)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(9 : ℝ) * ((2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (7 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) < 0.0); (9.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (7 / 2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt((1.0 + (2.0 * x))) - (7.0 / 2.0)) < 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(8 : ℝ) * ((45 / 8 : ℝ) - x) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((45.0 / 8.0) - x) <= 0.0); (8.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - ((1 : ℝ) + (2 : ℝ) * x)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 + (2.0 * x)))) == 0.0); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < x); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(((1 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) * ((2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (7 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))); (2.0 > 0.0)
          if ((1.0 - Real.sqrt((1.0 + (2.0 * x)))) < 0.0) && (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) < 0.0) { cert_piece_18(x); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(9 : ℝ) * ((2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (7 : ℝ)) + ((1 : ℝ) * (45 : ℝ) - (8 : ℝ) * x) + (4 : ℝ) * -(√…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(9 : ℝ) * ((2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (7 : ℝ)) + ((1 : ℝ) * (45 : ℝ) - (8 : ℝ) * x) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Left.add_neg: certificate sum `(-1 : ℝ) + (2 : ℝ) * -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_19(x);  // cert: Left.add_neg
          cert_identity_20(x);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×32 [exec 832 2611-2698]: applications made inside the tactic's own automation, not stated — Left.add_neg ×3, neg_neg_of_pos ×3, CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, sub_neg_of_lt ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_nonpos_of_le ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, le_of_not_gt ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.mul_neg ×4, congrArg ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×224 [exec 857 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8 (+42 more heads, ×192) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 858 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 847 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 848 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 849 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 859 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 852 2611-2698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 847, 848 / `ring1` exec 857)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 849, 852, 858, 859 / `ring1` exec 857)]
          assert (0.0 <= ((1.0 + (2.0 * x))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt((1.0 + (2.0 * x)));  // cite: Real.sq_sqrt
        }
        // [TACTIC: exact h₈]
        assert (x < (45.0 / 8.0));
      }
    } else {
      assert (x < (45.0 / 8.0)) by {  // sub-goal before `have` (Lean state) // @tac 2746-3546 // @tac 2720-3563 // @tac 3553-3563
        // have h₅ : x < 45 / 8  [type from Lean state]
        assert (x < (45.0 / 8.0)) by { // @tac 2783-2807
          // by_cases h₅₁ : x < 0
          if (x < 0.0) {
            assert (x < (45.0 / 8.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 2847-2855 // @tac 2816-2855
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2847-2855 exec 891)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(45 : ℝ) * -((1 : ℝ) + (2 : ℝ) * x) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (1.0 + (2.0 * x))); (45.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(98 : ℝ) * x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (x < 0.0); (98.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(8 : ℝ) * ((45 / 8 : ℝ) - x) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((45.0 / 8.0) - x) <= 0.0); (8.0 > 0.0)
              // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(45 : ℝ) * -((1 : ℝ) + (2 : ℝ) * x) + (98 : ℝ) * x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_21(x);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×13 [exec 891 2847-2855]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×112 [exec 899 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.mul_congr ×5 (+32 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 900 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 901 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×14 [exec 892 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 893 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 892, 893 / `ring1` exec 899)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 894, 900, 901 / `ring1` exec 899)]
              // UNCITED-APPLIED internal ×5 [exec 894 2847-2855]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
          } else {
            assert (x < (45.0 / 8.0)) by {  // sub-goal before `have` (Lean state) // @tac 2895-3256 // @tac 2864-3546 // @tac 3267-3274
              // have h₅₂ : x == 0  [type from Lean state]
              assert (x == 0.0) by { // @tac 2934-2951
                // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 929 2934-2951]
                // by_contra h
                if !((x == 0.0)) {
                  assert false by {  // sub-goal before `have` (Lean state) // @tac 2964-3235 // @tac 3248-3256
                    // have h₅₃ : x > 0  [type from Lean state]
                    assert (x > 0.0) by { // @tac 3005-3022
                      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 953 3005-3022]
                      // by_contra h
                      if !((x > 0.0)) {
                        assert false by {  // sub-goal before `have` (Lean state) // @tac 3037-3212 // @tac 3227-3235
                          // have h₅₅ : x < 0  [type from Lean state]
                          assert (x < 0.0) by { // @tac 3080-3130
                            assert ((x) != (0.0));  // precondition of LtOrGtOfNe (Lean: lt_or_gt_of_ne)
                            LtOrGtOfNe(x, 0.0);  // cite: lt_or_gt_of_ne
                            // `cases'`: 2 cases (Lean states); 2 branch bodies
                            if ((x < 0.0)) {  // sub-goal of `cases'` (Lean state)
                              // [TACTIC: «Linarith[_]At___»]
                              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3150-3158 exec 975)
                              cert_identity_22(x);  // cert: add_lt_of_le_of_neg
                              // UNCITED-APPLIED internal ×6 [exec 975 3150-3158]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, le_of_not_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                              // UNCITED-APPLIED internal ×20 [exec 980 3150-3158]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 980)]
                              assert (x < 0.0);  // sub-goal of `cases'` (Lean state) // @tac 3150-3158 // @tac 3147-3158
                            }
                            if ((x > 0.0)) {  // sub-goal of `cases'` (Lean state)
                              // [TACTIC: Exfalso]
                              assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 3204-3212
                                // [TACTIC: «Linarith[_]At___»]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3204-3212 exec 987)
                                cert_identity_23(x);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×5 [exec 987 3204-3212]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                // UNCITED-APPLIED internal ×20 [exec 992 3204-3212]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 992)]
                              }
                              assert (x < 0.0);  // sub-goal of `cases'` (Lean state) // @tac 3178-3185 // @tac 3175-3212
                            }
                          }
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3227-3235 exec 993)
                          cert_identity_24(x);  // cert: add_lt_of_le_of_neg
                          // UNCITED-APPLIED internal ×5 [exec 993 3227-3235]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, le_of_not_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                          // UNCITED-APPLIED internal ×20 [exec 998 3227-3235]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 998)]
                        }
                        assert false;
                      }
                    }
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3248-3256 exec 999)
                    cert_identity_25(x);  // cert: add_lt_of_le_of_neg
                    // UNCITED-APPLIED internal ×5 [exec 999 3248-3256]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×20 [exec 1004 3248-3256]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1004)]
                  }
                  assert false;
                }
              }
              // [TACTIC: Exfalso]
              assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 3285-3517 // @tac 3528-3546
                // have h₅₃ : ( 1 - Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 == 0  [type from Lean state]
                assert (((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))) == 0.0) by { // @tac 3354-3366
                  // [TACTIC: rwSeq [ h₅₂ ]]
                  // UNCITED-APPLIED congrArg(x, (0 : ℝ), fun (_a : ℝ) => ((1 : ℝ) - √((1 : ℝ) + (2 : ℝ) * _a)) ^ (2 : ℕ) = (0 …): no library counterpart (not stated) [exec 1027 3354-3366]
                  assert (((1.0 - Real.sqrt((1.0 + (2.0 * 0.0)))) * (1.0 - Real.sqrt((1.0 + (2.0 * 0.0))))) == 0.0) by {  // sub-goal before `have` (Lean state) // @tac 3379-3467 // @tac 3480-3517 // @tac 3480-3492
                    // have h₅₄ : Real.sqrt ( ( 1 + 2 * 0 ) ) == 1  [type from Lean state]
                    assert (Real.sqrt((1.0 + (2.0 * 0.0))) == 1.0) by { // @tac 3434-3467
                      // [TACTIC: «Norm_num[_]At___» [ Real.sqrt_eq_iff_sq_eq ]]
                      // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×13 [exec 1070 3434-3467]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Eq.trans ×2, congrArg ×2, of_eq_true ×1 (+5 more heads, ×5) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: «_<;>_» [ h₅₄ ] rw [ h₅₄ ] <;> norm_num norm_num]
                    // [TACTIC: choice [ h₅₄ ] rw [ h₅₄ ]]
                    // UNCITED-APPLIED congrArg(√((1 : ℝ) + (2 : ℝ) * (0 : ℝ)), (1 : ℝ), fun (_a : ℝ) => ((1 : ℝ) - _a) ^ (2 : ℕ) = (0 : ℝ)): no library counterpart (not stated) [exec 1080 3480-3492]
                    assert (((1.0 - 1.0) * (1.0 - 1.0)) == 0.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 3509-3517
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×11 [exec 1115 3509-3517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+5 more heads, ×5) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    }
                  }
                }
                // [TACTIC: exact h₁ h₅₃]
                assert (((1.0 - Real.sqrt((1.0 + (2.0 * x)))) * (1.0 - Real.sqrt((1.0 + (2.0 * x))))) != 0.0);
              }
            }
          }
        }
        // [TACTIC: exact h₅]
        assert (x < (45.0 / 8.0));
      }
    }
  }
  // [TACTIC: exact ⟨ h₃ , h₄ ⟩ ⟨ h₃ , h₄ ⟩]
  // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
}



// ===== closed lemma for line 415 (from closed/imo_1960_p2-415.dfy) =====

lemma {:induction false} vc_imo_1960_p2_L415(x: real)
  requires 0.0 <= 1.0 + 2.0 * x
  requires (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x)) != 0.0
  requires Real.div(4.0 * (x * x), (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x))) < 2.0 * x + 9.0
  requires 2.0 != 0.0
  requires 0.0 - 1.0 / 2.0 <= x
  requires x > 0.0
  requires Real.sqrt(1.0 + 2.0 * x) > 1.0
  requires Real.sqrt(1.0 + 2.0 * x) != 1.0
  requires !(Real.sqrt(1.0 + 2.0 * x) < 7.0 / 2.0)
  requires Real.sqrt(1.0 + 2.0 * x) >= 7.0 / 2.0
  requires (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0) >= (7.0 / 2.0 - 1.0) * (7.0 / 2.0 - 1.0)
  requires (1.0 - Real.sqrt(1.0 + 2.0 * x)) * (1.0 - Real.sqrt(1.0 + 2.0 * x)) == (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0)
  ensures   Real.div(4.0 * (x * x), (Real.sqrt(1.0 + 2.0 * x) - 1.0) * (Real.sqrt(1.0 + 2.0 * x) - 1.0)) >= 2.0 * x + 9.0
{
                  // have h₁₂ : x == ( ( Real.sqrt ( ( 1 + 2 * x ) ) ) ^ 2 - 1 ) / 2  [type from Lean state]
                  assert (x == (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) by { // @tac 1984-2071
                    assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2012-2021
                      // [TACTIC: «Nlinarith[_]At___»]
                      // UNCITED-APPLIED internal ×14 [exec 507 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 508 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×54 [exec 522 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2 (+26 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 517 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 512 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 513 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 520 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 523 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 507, 508, 512, 513 / `ring1` exec 522)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 514, 517, 520, 523 / `ring1` exec 522)]
                      // UNCITED-APPLIED internal ×5 [exec 514 2012-2021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) , Real.sqrt_nonneg ( 1 + 2 * x ) ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1984-2071 exec 501)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (x - (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) < 0.0); (2.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < x); (2.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ) - x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0) - x) < 0.0); (2.0 > 0.0)
                    // UNCITED-APPLIED Left.add_neg: certificate sum `(-1 : ℝ) + (2 : ℝ) * -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_10(x);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_11(x);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_12(x);  // cert: Left.add_neg
                    // UNCITED-APPLIED internal ×29 [exec 501 1984-2071]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, sub_neg_of_lt ×2, Left.add_neg ×2, neg_neg_of_pos ×2, CancelDenoms.div_subst ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, le_of_not_gt ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1, neg_eq_zero ×1; machinery/glue: congrArg ×5, Linarith.mul_neg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×102 [exec 543 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.mul_congr ×4 (+37 more heads, ×83) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×8 [exec 524 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×108 [exec 563 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+38 more heads, ×87) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×8 [exec 544 1984-2071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 524, 544 / `ring1` exec 543, 563)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 543, 563)]
                    assert (0.0 <= ((1.0 + (2.0 * x))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                    RealSqSqrt((1.0 + (2.0 * x)));  // cite: Real.sq_sqrt
                  }
                  // [TACTIC: rwSeq [ h₁₂ ]]
                  // UNCITED-APPLIED congrArg(x, (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ), fun (_a : ℝ) => (4 : ℝ) * _a ^ (2 : ℕ) / (√((1 : ℝ) + (2 : ℝ) * _a) -…): no library counterpart (not stated) [exec 568 2082-2094]
                  // pass2: Lean's `rw [h₁₂]` only rewrote the goal's x into (√(1+2x)^2-1)/2 (a congruence Dafny cannot undo through the nested sqrt);
                  // the block below is the file's own proof of that goal, stated directly in x (the form its last step `le_div_iff` + nlinarith establishes).
                  assert (((2.0 * x) + 9.0) <= Real.div((4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) by {  // pass2: the goal itself, in x; proof = the file's own block (unchanged)
                    // have h₁₃ : 0 < Real.sqrt ( ( 1 + 2 * x ) ) - 1  [type from Lean state]
                    assert (0.0 < (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) by { // @tac 2156-2243
                      assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2214-2223
                        // [TACTIC: «Nlinarith[_]At___»]
                        // UNCITED-APPLIED internal ×14 [exec 618 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 619 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 628 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 618, 619)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 620, 628)]
                        // UNCITED-APPLIED internal ×5 [exec 620 2214-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( 1 + 2 * x ) , Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2156-2243 exec 611)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (5.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) <= 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℝ) * (-1 : ℝ) + ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_13(x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×16 [exec 611 2156-2243]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, le_of_not_gt ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×88 [exec 660 2156-2243]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.cast_pos ×4 (+32 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 661 2156-2243]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                      // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 660)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 661 / `ring1` exec 660)]
                    }
                    // have h₁₄ : 0 < ( Real.sqrt ( ( 1 + 2 * x ) ) - 1 ) ^ 2  [type from Lean state]
                    assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) by { // @tac 2311-2320
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2311-2320 exec 679)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (25.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((7 / 2 : ℝ) - (1 : ℝ)) ^ (2 : ℕ) - (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((7.0 / 2.0) - 1.0) * ((7.0 / 2.0) - 1.0)) - ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) <= 0.0); (4.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)) <= 0.0); (4.0 > 0.0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(25 : ℝ) * (-1 : ℝ) + ((1 : ℝ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) - (4 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_14(x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×19 [exec 679 2311-2320]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, add_lt_of_neg_of_le ×2, CancelDenoms.pow_subst ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×191 [exec 699 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+48 more heads, ×159) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 700 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 681 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 682 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×11 [exec 686 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 687 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 701 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 681, 682, 686, 687 / `ring1` exec 699)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 688, 700, 701 / `ring1` exec 699)]
                      // UNCITED-APPLIED internal ×5 [exec 688 2311-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: «Field_simp[_]At___» [ h₁₄.ne' ]]
                    if (0.0 <= ((1.0 + (2.0 * x)))) { RealSqSqrt((1.0 + (2.0 * x))); }  // cite: Real.sq_sqrt [applied by the tactic, not named in it]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                    // UNCITED h₁₄.ne': a projection of the local hypothesis h₁₄ handed to the tactic; its fact is not stated here
                    // UNCITED-APPLIED internal ×16 [exec 702 2331-2355]: applications made inside the tactic's own automation, not stated — add_sub_cancel_left ×1, mul_div_cancel_left₀ ×1; machinery/glue: congrArg ×6, Eq.trans ×3, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], Real.sq_sqrt [Lean recorded ×1])
                    assert (((2.0 * x) + 9.0) <= Real.div((4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) by {  // sub-goal before `rw` (Lean state) // @tac 2366-2397
                      assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) by {  // sub-goal of `by` (Lean state) // @tac 2385-2395
                        // [TACTIC: Positivity]
                        // positivity proof (Lean execution 2385-2395 exec 714): nothing of it stated; Lean's records:
                        // cert: pow_pos piece `(0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                        assert (0.0 < ((Real.sqrt((1.0 + (2.0 * x))) - 1.0)));  // precondition of PowPos (Lean: pow_pos)
                        PowPos((Real.sqrt((1.0 + (2.0 * x))) - 1.0), 2);  // cite: pow_pos [applied by the tactic, not named in it]
                      }
                      // [TACTIC: rwSeq [ le_div_iff ( by positivity ) ]]
                      assert (0.0 < (((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))));  // precondition of LeDivIff (Lean: le_div_iff)
                      LeDivIff(((2.0 * x) + 9.0), (4.0 * (x * x)), ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)));  // cite: le_div_iff
                      assert ((((2.0 * x) + 9.0) * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0))) <= (4.0 * (x * x))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2408-2550
                        assert (0.0 <= (1.0 + (2.0 * x))) by {  // sub-goal of `by` (Lean state) // @tac 2436-2445
                          // [TACTIC: «Nlinarith[_]At___»]
                          // UNCITED-APPLIED internal ×8 [exec 745 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 746 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 747 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 748 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 749 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 750 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 756 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 754 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 755 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 759 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 753 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 757 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 758 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 762 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 760 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 761 2436-2445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 745, 746, 747, 749, 750, 754 …)]
                          // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by nlinarith nlinarith : 0 ≤ 1 + 2 * x ) , Real.sqrt_nonneg ( 1 + 2 * x ) , sq_nonneg ( Real.sqrt ( 1 + 2 * x ) - 7 / 2 ) ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2408-2550 exec 739)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0)))) == 0.0); (15.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (x - (√((1 : ℝ) + (2 : ℝ) * x) ^ (2 : ℕ) - (1 : ℝ)) / (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - (((Real.sqrt((1.0 + (2.0 * x))) * Real.sqrt((1.0 + (2.0 * x)))) - 1.0) / 2.0)) == 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(10 : ℝ) * ((4 : ℝ) * x ^ (2 : ℕ) - ((2 : ℝ) * x + (9 : ℝ)) * (√((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((4.0 * (x * x)) - (((2.0 * x) + 9.0) * ((Real.sqrt((1.0 + (2.0 * x))) - 1.0) * (Real.sqrt((1.0 + (2.0 * x))) - 1.0)))) < 0.0); (10.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(10 : ℝ) * -(-((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) * ((1 : ℝ) * (7 : ℝ) - (2 : ℝ) * √((1 …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x)))))) <= 0.0); (10.0 > 0.0)
                        if (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) && (((1.0 * 7.0) - (2.0 * Real.sqrt((1.0 + (2.0 * x))))) <= 0.0) { cert_piece_15(x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        SqNonneg(((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))); assert (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((7 / 2 : ℝ) - √((1 : ℝ) + (2 : ℝ) * x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((7.0 / 2.0) - Real.sqrt((1.0 + (2.0 * x)))) <= 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (-((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x) - (1 : ℝ) * (1 : ℝ)) ^ (2 : ℕ) * ((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); (4.0 > 0.0)
                        if (0.0 <= (((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)) * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        if (0.0 <= (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        SqNonneg(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))); assert (0.0 <= (((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)) * ((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0))));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(10 : ℝ) * (-((1 : ℝ) + (2 : ℝ) * x) * ((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 + (2.0 * x)) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); (10.0 > 0.0)
                        if (0.0 <= (1.0 + (2.0 * x))) && (((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))) == 0.0) { assert (-(((1.0 + (2.0 * x)) * ((2.0 * x) - ((1.0 * ((1.0 * Real.sqrt((1.0 + (2.0 * x)))) * (1.0 * Real.sqrt((1.0 + (2.0 * x)))))) - (1.0 * 1.0))))) == 0.0); }  // cert: Linarith.mul_zero_eq
                        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…`
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `(15 : ℝ) * -((2 : ℝ) * x - ((1 : ℝ) * ((1 : ℝ) * √((1 : ℝ) + (2 : ℝ) * x)) ^ (2 : ℕ) - (1 : ℝ) * (1 : ℝ))) + (10 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_16(x);  // cert: Linarith.lt_of_lt_of_eq
                        // UNCITED-APPLIED internal ×33 [exec 739 2408-2550]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×4, CancelDenoms.sub_subst ×3, le_of_not_gt ×2, neg_eq_zero ×2, CancelDenoms.div_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_zero_eq ×3, congrArg ×2, Linarith.mul_nonpos ×2 (+3 more heads, ×3) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
                        // UNCITED-APPLIED internal ×280 [exec 792 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+47 more heads, ×248) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 793 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 794 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 795 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×8 [exec 773 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 776 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 797 2408-2550]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                        SqNonneg(((1.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 1.0)));  // cite: sq_nonneg
                        SqNonneg(((2.0 * Real.sqrt((1.0 + (2.0 * x)))) - (1.0 * 7.0)));  // cite: sq_nonneg
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 773 / `ring1` exec 792)]
                        // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
                      }
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 707 2366-2397]
                    }
                  }
}

