// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12_2000_p20.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real, y: real, z: real)
  ensures (-(y) + y) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real, y: real, z: real)
  ensures (-((((x * y) + 1.0) - (4.0 * y))) + (((x * y) + 1.0) - (4.0 * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real, y: real, z: real)
  ensures ((((x * y) + 1.0) - (4.0 * y)) + ((4.0 * y) - ((x * y) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real, y: real, z: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real, y: real, z: real)
  ensures (-((((y * z) + 1.0) - z)) + (((y * z) + 1.0) - z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real, y: real, z: real)
  ensures ((((y * z) + 1.0) - z) + (z - ((y * z) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: real, y: real, z: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(x: real, y: real, z: real)
  ensures (-(((((z * x) + 1.0) * 3.0) - (7.0 * x))) + ((((x * z) + 1.0) * 3.0) - (7.0 * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: real, y: real, z: real)
  ensures (((((z * x) + 1.0) * 3.0) - (7.0 * x)) + ((7.0 * x) - (((x * z) + 1.0) * 3.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: real, y: real, z: real)
  ensures ((1.0 - y) + (y - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: real, y: real, z: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(x: real, y: real, z: real)
  requires (0.0 <= x)
  requires ((1.0 - y) <= 0.0)
  ensures ((x * (1.0 - y)) <= 0.0)
{
  MulNonneg(x, -((1.0 - y))); MulNeg(x, (1.0 - y)); assert (x) * (-((1.0 - y))) == -((x) * ((1.0 - y)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(x: real, y: real, z: real)
  ensures (((((-((9.0 * y)) + -((3.0 * (((x * y) + 1.0) - (4.0 * y))))) + ((((1.0 * x) * (3.0 * z)) + (3.0 * 1.0)) - ((1.0 * 7.0) * (1.0 * x)))) + (3.0 * (x * (((y * z) + 1.0) - z)))) + (4.0 * (x * (1.0 - y)))) + -((y * ((((1.0 * x) * (3.0 * z)) + (3.0 * 1.0)) - ((1.0 * 7.0) * (1.0 * x)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(x: real, y: real, z: real)
  ensures ((-(1.0) + (((y * z) + 1.0) - z)) + (z - (y * z))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(x: real, y: real, z: real)
  ensures ((y - 1.0) + (1.0 - y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: real, y: real, z: real)
  ensures (-((((y * z) + 1.0) - z)) + (1.0 - (z * (1.0 - y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(x: real, y: real, z: real)
  ensures ((((y * z) + 1.0) - z) + ((z * (1.0 - y)) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄/h₈₅₂/h₈₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(x: real, y: real, z: real)
  ensures ((y - 1.0) + (1.0 - y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄/h₈₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(x: real, y: real, z: real)
  ensures (-((((y * z) + 1.0) - z)) + (1.0 - (z * (1.0 - y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄/h₈₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(x: real, y: real, z: real)
  ensures ((((y * z) + 1.0) - z) + ((z * (1.0 - y)) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(x: real, y: real, z: real)
  ensures (-(y) + y) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₃/h₉₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(x: real, y: real, z: real)
  ensures ((4.0 - x) + (x - 4.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₉/h₉₃/h₉₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(x: real, y: real, z: real)
  requires (0.0 <= y)
  requires ((4.0 - x) <= 0.0)
  ensures ((y * (4.0 - x)) <= 0.0)
{
  MulNonneg(y, -((4.0 - x))); MulNeg(y, (4.0 - x)); assert (y) * (-((4.0 - x))) == -((y) * ((4.0 - x)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₃/h₉₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(x: real, y: real, z: real)
  ensures ((-(1.0) + (((x * y) + 1.0) - (4.0 * y))) + (y * (4.0 - x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(x: real, y: real, z: real)
  ensures (((-(y) + (((x * y) + 1.0) - (4.0 * y))) + (y - 1.0)) + ((4.0 * y) - (x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₄/h₉₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(x: real, y: real, z: real)
  ensures (-((((x * y) + 1.0) - (4.0 * y))) + (1.0 - (y * (4.0 - x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₄/h₉₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(x: real, y: real, z: real)
  ensures ((((x * y) + 1.0) - (4.0 * y)) + ((y * (4.0 - x)) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₄/h₉₇/h₉₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(x: real, y: real, z: real)
  ensures (-((4.0 - x)) + (4.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₄/h₉₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(x: real, y: real, z: real)
  ensures (-((((x * y) + 1.0) - (4.0 * y))) + (1.0 - (y * (4.0 - x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₄/h₉₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(x: real, y: real, z: real)
  ensures ((((x * y) + 1.0) - (4.0 * y)) + ((y * (4.0 - x)) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(x: real, y: real, z: real)
  ensures ((4.0 - x) + (x - 4.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(x: real, y: real, z: real)
  ensures (-(y) + y) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀/h₁₀₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(x: real, y: real, z: real)
  requires (0.0 <= y)
  requires ((4.0 - x) <= 0.0)
  ensures ((y * (4.0 - x)) <= 0.0)
{
  MulNonneg(y, -((4.0 - x))); MulNeg(y, (4.0 - x)); assert (y) * (-((4.0 - x))) == -((y) * ((4.0 - x)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(x: real, y: real, z: real)
  ensures ((-(1.0) + (((x * y) + 1.0) - (4.0 * y))) + (y * (4.0 - x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_35(x: real, y: real, z: real)
  ensures (((-(y) + (((x * y) + 1.0) - (4.0 * y))) + (y - 1.0)) + ((4.0 * y) - (x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₄/h₁₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(x: real, y: real, z: real)
  ensures ((x - 4.0) + (4.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₄/h₁₁₆/h₁₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(x: real, y: real, z: real)
  ensures ((x - 4.0) + (4.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₁/h₁₁₃/h₁₁₄/h₁₁₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_38(x: real, y: real, z: real)
  requires (0.0 <= y)
  requires (((4.0 - x) - 1.0) <= 0.0)
  ensures ((y * ((4.0 - x) - 1.0)) <= 0.0)
{
  MulNonneg(y, -(((4.0 - x) - 1.0))); MulNeg(y, ((4.0 - x) - 1.0)); assert (y) * (-(((4.0 - x) - 1.0))) == -((y) * (((4.0 - x) - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₄/h₁₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(x: real, y: real, z: real)
  ensures (((((x * y) + 1.0) - (4.0 * y)) + (y - 1.0)) + (y * ((4.0 - x) - 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(x: real, y: real, z: real)
  ensures (((y - 1.0) + -(((1.0 * y) - (1.0 * Real.div(1.0, (4.0 - x)))))) + ((1.0 * 1.0) - (1.0 * Real.div(1.0, (4.0 - x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_41(x: real, y: real, z: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_42(x: real, y: real, z: real)
  ensures (-((3.0 - x)) + (3.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_43(x: real, y: real, z: real)
  ensures ((3.0 - x) + -((3.0 - x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_44(x: real, y: real, z: real)
  ensures (-((3.0 - x)) + (3.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_45(x: real, y: real, z: real)
  ensures ((3.0 - x) + (x - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_46(x: real, y: real, z: real)
  ensures (((((x * y) + 1.0) - (4.0 * y)) + (y - 1.0)) + -((y * (x - 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅/h₁₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_47(x: real, y: real, z: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃/h₁₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_48(x: real, y: real, z: real)
  ensures (((-((6.0 * y)) + (6.0 * (y - 1.0))) + -((((3.0 * z) + 1.0) - 7.0))) + (3.0 * z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_49(x: real, y: real, z: real)
  ensures (((-((4.0 * (y - Real.div(1.0, (4.0 - x))))) + -(((1.0 + (x * y)) - (y * 4.0)))) + (((4.0 - x) + ((x * Real.div(1.0, (4.0 - x))) - (Real.div(1.0, (4.0 - x)) * 4.0))) - (3.0 - x))) + (x * (y - Real.div(1.0, (4.0 - x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_50(x: real, y: real, z: real)
  ensures ((((4.0 * (y - Real.div(1.0, (4.0 - x)))) + ((1.0 + (x * y)) - (y * 4.0))) + ((3.0 - x) - ((4.0 - x) + ((x * Real.div(1.0, (4.0 - x))) - (Real.div(1.0, (4.0 - x)) * 4.0))))) + -((x * (y - Real.div(1.0, (4.0 - x)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_51(x: real, y: real, z: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₅/h₁₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_52(x: real, y: real, z: real)
  ensures (-((3.0 - x)) + (3.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₅/h₁₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_53(x: real, y: real, z: real)
  ensures ((3.0 - x) + -((3.0 - x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₅/h₁₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_54(x: real, y: real, z: real)
  ensures (-((3.0 - x)) + (3.0 - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₅/h₁₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_55(x: real, y: real, z: real)
  ensures ((3.0 - x) + (x - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_56(x: real, y: real, z: real)
  ensures (((9.0 + ((x * 9.0) - ((x * x) * 3.0))) - ((x * 21.0) - ((x * x) * 7.0))) + -(((9.0 - (x * 12.0)) + ((x * x) * 4.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_57(x: real, y: real, z: real)
  ensures (-((((2.0 * x) - (1.0 * 3.0)) * ((2.0 * x) - (1.0 * 3.0)))) + ((9.0 - (x * 12.0)) + ((x * x) * 4.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₃/h₁₃₂`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_58(x: real, y: real, z: real)
  requires (((2.0 * x) - (1.0 * 3.0)) < 0.0)
  ensures (0.0 < (((2.0 * x) - (1.0 * 3.0)) * ((2.0 * x) - (1.0 * 3.0))))
{
  vc_amc12_2000_p20_L483(x);  /* [IN-FILE CHECK] the closed lemma for line 483 */
  MulPos(-(((2.0 * x) - (1.0 * 3.0))), -(((2.0 * x) - (1.0 * 3.0)))); MulNeg(-(((2.0 * x) - (1.0 * 3.0))), ((2.0 * x) - (1.0 * 3.0))); assert (-(((2.0 * x) - (1.0 * 3.0)))) * (-(((2.0 * x) - (1.0 * 3.0)))) == -((-(((2.0 * x) - (1.0 * 3.0)))) * (((2.0 * x) - (1.0 * 3.0)))); assert (-(((2.0 * x) - (1.0 * 3.0)))) * (((2.0 * x) - (1.0 * 3.0))) == -((((2.0 * x) - (1.0 * 3.0))) * (((2.0 * x) - (1.0 * 3.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₃/h₁₃₂`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_59(x: real, y: real, z: real)
  requires (((1.0 * 3.0) - (2.0 * x)) < 0.0)
  ensures (0.0 < (((1.0 * 3.0) - (2.0 * x)) * ((1.0 * 3.0) - (2.0 * x))))
{
  MulPos(-(((1.0 * 3.0) - (2.0 * x))), -(((1.0 * 3.0) - (2.0 * x)))); MulNeg(-(((1.0 * 3.0) - (2.0 * x))), ((1.0 * 3.0) - (2.0 * x))); assert (-(((1.0 * 3.0) - (2.0 * x)))) * (-(((1.0 * 3.0) - (2.0 * x)))) == -((-(((1.0 * 3.0) - (2.0 * x)))) * (((1.0 * 3.0) - (2.0 * x)))); assert (-(((1.0 * 3.0) - (2.0 * x)))) * (((1.0 * 3.0) - (2.0 * x))) == -((((1.0 * 3.0) - (2.0 * x))) * (((1.0 * 3.0) - (2.0 * x))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₃/h₁₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_60(x: real, y: real, z: real)
  ensures ((((4.0 * (x * x)) - (12.0 * x)) + 9.0) + -((((2.0 * x) - (1.0 * 3.0)) * ((2.0 * x) - (1.0 * 3.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₃/h₁₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_61(x: real, y: real, z: real)
  ensures ((((4.0 * (x * x)) - (12.0 * x)) + 9.0) + -((((1.0 * 3.0) - (2.0 * x)) * ((1.0 * 3.0) - (2.0 * x))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12_2000_p20(x: real, y: real, z: real)
  requires ((0.0 < x) && ((0.0 < y) && (0.0 < z)))
  requires ((x + Real.div(1.0, y)) == 4.0)
  requires ((y + Real.div(1.0, z)) == 1.0)
  requires ((z + Real.div(1.0, x)) == (7.0 / 3.0))
  ensures (((x * y) * z) == 1.0) // @tac 643-834 // @tac 840-1027 // @tac 1033-1232 // @tac 1238-1461 // @tac 1467-1960 // @tac 1966-2629 // @tac 2635-2881 // @tac 2887-4351 // @tac 4357-4986 // @tac 4992-5181 // @tac 5187-5435 // @tac 5441-5698 // @tac 5704-5934 // @tac 5940-5953
{
  // have h₄ : x * y + 1 == 4 * y  [type from Lean state]
  assert (((x * y) + 1.0) == (4.0 * y)) by { // @tac 683-720 // @tac 725-761 // @tac 766-791 // @tac 796-834
    // have h₄₁ : y != 0  [type from Lean state]
    assert (y != 0.0) by { // @tac 712-720
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 712-720 exec 36)
      cert_identity_1(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 36 712-720]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 40 712-720]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 40)]
    }
    // have h₄₂ : x + 1 / y == 4  [type from Lean state]
    assert ((x + Real.div(1.0, y)) == 4.0) by {
      // [TACTIC: exact h₁]
      assert ((x + Real.div(1.0, y)) == 4.0);
    }
    // [TACTIC: «Field_simp[_]At___» at h₄₂ ⊢]
    assert (((x * y) + 1.0) == (4.0 * y));  // hypothesis h₄₂ after `field_simp` (Lean state) // @tac-hyp 766-791
    // [TACTIC: «Nlinarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 796-834 exec 54)
    cert_identity_2(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_3(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×14 [exec 54 796-834]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, add_div' ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+2 more heads, ×2)
    // UNCITED-APPLIED internal ×70 [exec 58 796-834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_one_mul ×3 (+32 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×67 [exec 62 796-834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_add_gt ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3 (+30 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 58, 62)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 58, 62)]
  }
  // have h₅ : y * z + 1 == z  [type from Lean state]
  assert (((y * z) + 1.0) == z) by { // @tac 876-913 // @tac 918-954 // @tac 959-984 // @tac 989-1027
    // have h₅₁ : z != 0  [type from Lean state]
    assert (z != 0.0) by { // @tac 905-913
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 905-913 exec 95)
      cert_identity_4(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 95 905-913]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 99 905-913]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 99)]
    }
    // have h₅₂ : y + 1 / z == 1  [type from Lean state]
    assert ((y + Real.div(1.0, z)) == 1.0) by {
      // [TACTIC: exact h₂]
      assert ((y + Real.div(1.0, z)) == 1.0);
    }
    // [TACTIC: «Field_simp[_]At___» at h₅₂ ⊢]
    assert (((y * z) + 1.0) == z);  // hypothesis h₅₂ after `field_simp` (Lean state) // @tac-hyp 959-984
    // [TACTIC: «Nlinarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 989-1027 exec 113)
    cert_identity_5(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_6(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×16 [exec 113 989-1027]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, add_div' ×1, one_mul ×1; machinery/glue: congrArg ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+2 more heads, ×2)
    // UNCITED-APPLIED internal ×54 [exec 117 989-1027]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3 (+31 more heads, ×41) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×52 [exec 121 989-1027]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3 (+29 more heads, ×40) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 117, 121)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 117, 121)]
  }
  // have h₆ : x * z + 1 == 7 / 3 * x  [type from Lean state]
  assert (((x * z) + 1.0) == ((7.0 / 3.0) * x)) by { // @tac 1077-1114 // @tac 1119-1159 // @tac 1164-1189
    // have h₆₁ : x != 0  [type from Lean state]
    assert (x != 0.0) by { // @tac 1106-1114
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1106-1114 exec 154)
      cert_identity_7(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 154 1106-1114]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 158 1106-1114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 158)]
    }
    // have h₆₂ : z + 1 / x == 7 / 3  [type from Lean state]
    assert ((z + Real.div(1.0, x)) == (7.0 / 3.0)) by {
      // [TACTIC: exact h₃]
      assert ((z + Real.div(1.0, x)) == (7.0 / 3.0));
    }
    // [TACTIC: «Field_simp[_]At___» at h₆₂ ⊢]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×6 [exec 171 1164-1189]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    assert ((((z * x) + 1.0) * 3.0) == (7.0 * x));  // hypothesis h₆₂ after `field_simp` (Lean state) // @tac-hyp 1164-1189
    assert ((((x * z) + 1.0) * 3.0) == (7.0 * x)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1194-1232
      // [TACTIC: «Nlinarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1194-1232 exec 172)
      cert_identity_8(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_9(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×19 [exec 172 1194-1232]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, add_div' ×1, div_mul_eq_mul_div ×1; machinery/glue: congrArg ×4, Linarith.lt_of_eq_of_lt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×98 [exec 176 1194-1232]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_zero ×5 (+32 more heads, ×78) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×94 [exec 180 1194-1232]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_zero ×5 (+30 more heads, ×74) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 176, 180)]
      // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
    }
  }
  // have h₇ : y < 1  [type from Lean state]
  assert (y < 1.0) by { // @tac 1266-1277
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 204 1266-1277]
    // by_contra h
    if !((y < 1.0)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 1282-1319 // @tac 1324-1359 // @tac 1364-1400 // @tac 1405-1447 // @tac 1452-1461
        // have h₇₁ : y >= 1  [type from Lean state]
        assert (y >= 1.0) by { // @tac 1311-1319
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1311-1319 exec 221)
          cert_identity_10(x, y, z);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 221 1311-1319]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×33 [exec 230 1311-1319]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 230)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 230)]
        }
        // have h₇₂ : z > 0  [type from Lean state]
        assert (z > 0.0) by { // @tac 1351-1359
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1351-1359 exec 247)
          cert_identity_11(x, y, z);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×6 [exec 247 1351-1359]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×20 [exec 256 1351-1359]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 256)]
        }
        // have h₇₃ : y * z + 1 == z  [type from Lean state]
        assert (((y * z) + 1.0) == z) by {
          // [TACTIC: exact h₅]
          assert (((y * z) + 1.0) == z);
        }
        // have h₇₄ : y * z >= z  [type from Lean state]
        assert ((y * z) >= z) by { // @tac 1438-1447
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1438-1447 exec 285)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(9 : ℝ) * -y < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < y); (9.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -(x * y + (1 : ℝ) - (4 : ℝ) * y) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((x * y) + 1.0) - (4.0 * y))) == 0.0); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * (x * z + (1 : ℝ) - (7 / 3 : ℝ) * x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x * z) + 1.0) - ((7.0 / 3.0) * x)) == 0.0); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -(-x * (y * z + (1 : ℝ) - z)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x * (((y * z) + 1.0) - z)) == 0.0); (3.0 > 0.0)
          if (0.0 < x) && ((((y * z) + 1.0) - z) == 0.0) { assert (-((x * (((y * z) + 1.0) - z))) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-x * ((1 : ℝ) - y)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x * (1.0 - y)) <= 0.0); (4.0 > 0.0)
          if (0.0 <= x) && ((1.0 - y) <= 0.0) { cert_piece_12(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < y) && (((((1.0 * x) * (3.0 * z)) + (3.0 * 1.0)) - ((1.0 * 7.0) * (1.0 * x))) == 0.0) { assert (-((y * ((((1.0 * x) * (3.0 * z)) + (3.0 * 1.0)) - ((1.0 * 7.0) * (1.0 * x))))) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(9 : ℝ) * -y + (3 : ℝ) * -(x * y + (1 : ℝ) - (4 : ℝ) * y) + ((1 : ℝ) * x * ((3 : ℝ) * z) + (3 : ℝ) * (1 : ℝ) - (1 : ℝ) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(9 : ℝ) * -y + (3 : ℝ) * -(x * y + (1 : ℝ) - (4 : ℝ) * y) + ((1 : ℝ) * x * ((3 : ℝ) * z) + (3 : ℝ) * (1 : ℝ) - (1 : ℝ) …`
          cert_identity_13(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×30 [exec 285 1438-1447]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, le_of_not_gt ×2, neg_neg_of_pos ×2, neg_eq_zero ×2, CancelDenoms.mul_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.sub_subst ×1, CancelDenoms.add_subst ×1, CancelDenoms.div_subst ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×3, Linarith.mul_eq ×3, Linarith.mul_zero_eq ×2, Linarith.lt_irrefl ×1 (+3 more heads, ×3) (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×222 [exec 294 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_mul ×8 (+34 more heads, ×190) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 295 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 286 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 287 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 288 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 289 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 293 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 296 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 298 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 292 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 291 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 297 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 286, 287, 288, 289, 291, 292 / `ring1` exec 294)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 290, 293, 295, 296, 297, 298 / `ring1` exec 294)]
          if ((-(x)) < (0.0)) { LeOfLt(-(x), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 290 1438-1447]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1452-1461 exec 299)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℝ) + (y * z + (1 : ℝ) - z) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_14(x, y, z);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×8 [exec 299 1452-1461]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×54 [exec 308 1452-1461]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3 (+30 more heads, ×42) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 308)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 308)]
      }
      assert false;
    }
  }
  // have h₈ : z == 1 / ( 1 - y )  [type from Lean state]
  assert (z == Real.div(1.0, (1.0 - y))) by { // @tac 1505-1533 // @tac 1538-1574 // @tac 1579-1618 // @tac 1623-1942 // @tac 1947-1960
    // have h₈₁ : y < 1  [type from Lean state]
    assert (y < 1.0) by {
      // [TACTIC: exact h₇]
      assert (y < 1.0);
    }
    // have h₈₂ : y * z + 1 == z  [type from Lean state]
    assert (((y * z) + 1.0) == z) by {
      // [TACTIC: exact h₅]
      assert (((y * z) + 1.0) == z);
    }
    // have h₈₃ : 1 - y > 0  [type from Lean state]
    assert ((1.0 - y) > 0.0) by { // @tac 1610-1618
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1610-1618 exec 365)
      cert_identity_15(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 365 1610-1618]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×33 [exec 374 1610-1618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 374)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 374)]
    }
    // have h₈₄ : z == 1 / ( 1 - y )  [type from Lean state]
    assert (z == Real.div(1.0, (1.0 - y))) by { // @tac 1666-1768 // @tac 1775-1919 // @tac 1926-1942
      // have h₈₅ : z * ( 1 - y ) == 1  [type from Lean state]
      assert ((z * (1.0 - y)) == 1.0) by { // @tac 1711-1750 // @tac 1759-1768
        // have h₈₅₁ : y * z + 1 == z  [type from Lean state]
        assert (((y * z) + 1.0) == z) by {
          // [TACTIC: exact h₅]
          assert (((y * z) + 1.0) == z);
        }
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1759-1768 exec 419)
        cert_identity_16(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_17(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 419 1759-1768]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×68 [exec 428 1759-1768]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_pf_left ×3 (+29 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×80 [exec 437 1759-1768]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4 (+31 more heads, ×61) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 428, 437)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 428, 437)]
      }
      // have h₈₅₂ : z == 1 / ( 1 - y )  [type from Lean state]
      assert (z == Real.div(1.0, (1.0 - y))) by { // @tac 1823-1867 // @tac 1876-1901
        // have h₈₅₃ : 1 - y != 0  [type from Lean state]
        assert ((1.0 - y) != 0.0) by { // @tac 1859-1867
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1859-1867 exec 470)
          cert_identity_18(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×5 [exec 470 1859-1867]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×33 [exec 479 1859-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 479)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 479)]
        }
        // [TACTIC: «Field_simp[_]At___» at h₈₅ ⊢]
        assert ((z * (1.0 - y)) == 1.0) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1910-1919
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1910-1919 exec 481)
          cert_identity_19(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_20(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 481 1910-1919]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×68 [exec 490 1910-1919]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_pf_left ×3 (+29 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×80 [exec 499 1910-1919]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4 (+31 more heads, ×61) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 490, 499)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 490, 499)]
        }
      }
      // [TACTIC: exact h₈₅₂]
      assert (z == Real.div(1.0, (1.0 - y)));
    }
    // [TACTIC: exact h₈₄]
    assert (z == Real.div(1.0, (1.0 - y)));
  }
  // have h₉ : y == 1 / ( 4 - x )  [type from Lean state]
  assert (y == Real.div(1.0, (4.0 - x))) by { // @tac 2004-2044 // @tac 2049-2084 // @tac 2089-2297 // @tac 2302-2611 // @tac 2616-2629
    // have h₉₁ : x * y + 1 == 4 * y  [type from Lean state]
    assert (((x * y) + 1.0) == (4.0 * y)) by {
      // [TACTIC: exact h₄]
      assert (((x * y) + 1.0) == (4.0 * y));
    }
    // have h₉₂ : y > 0  [type from Lean state]
    assert (y > 0.0) by { // @tac 2076-2084
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2076-2084 exec 546)
      cert_identity_21(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 546 2076-2084]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 555 2076-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 555)]
    }
    // have h₉₃ : 4 - x > 0  [type from Lean state]
    assert ((4.0 - x) > 0.0) by { // @tac 2126-2137
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 579 2126-2137]
      // by_contra h
      if !(((4.0 - x) > 0.0)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 2144-2181 // @tac 2188-2228 // @tac 2235-2281 // @tac 2288-2297
          // have h₉₄ : x >= 4  [type from Lean state]
          assert (x >= 4.0) by { // @tac 2173-2181
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2173-2181 exec 596)
            cert_identity_22(x, y, z);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×6 [exec 596 2173-2181]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×2, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×39 [exec 605 2173-2181]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 605)]
          }
          // have h₉₅ : x * y + 1 == 4 * y  [type from Lean state]
          assert (((x * y) + 1.0) == (4.0 * y)) by {
            // [TACTIC: exact h₄]
            assert (((x * y) + 1.0) == (4.0 * y));
          }
          // have h₉₆ : x * y >= 4 * y  [type from Lean state]
          assert ((x * y) >= (4.0 * y)) by { // @tac 2272-2281
            // [TACTIC: «Nlinarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2272-2281 exec 634)
            if (0.0 <= y) && ((4.0 - x) <= 0.0) { cert_piece_23(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℝ) + (x * y + (1 : ℝ) - (4 : ℝ) * y) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_24(x, y, z);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×12 [exec 634 2272-2281]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×2, neg_neg_of_pos ×2, add_lt_of_neg_of_le ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
            // UNCITED-APPLIED internal ×98 [exec 643 2272-2281]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5, Mathlib.Meta.NormNum.isInt_mul ×4 (+32 more heads, ×78) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 643)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 643)]
            if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          }
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2288-2297 exec 644)
          // UNCITED-APPLIED Left.add_neg: certificate sum `-y + (x * y + (1 : ℝ) - (4 : ℝ) * y) + (y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `-y + (x * y + (1 : ℝ) - (4 : ℝ) * y) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_25(x, y, z);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×9 [exec 644 2288-2297]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, Left.add_neg ×1, neg_neg_of_pos ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×86 [exec 653 2288-2297]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4 (+33 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 653)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 653)]
        }
        assert false;
      }
    }
    // have h₉₄ : y == 1 / ( 4 - x )  [type from Lean state]
    assert (y == Real.div(1.0, (4.0 - x))) by { // @tac 2345-2385 // @tac 2392-2446 // @tac 2453-2591 // @tac 2598-2611
      // have h₉₅ : x * y + 1 == 4 * y  [type from Lean state]
      assert (((x * y) + 1.0) == (4.0 * y)) by {
        // [TACTIC: exact h₄]
        assert (((x * y) + 1.0) == (4.0 * y));
      }
      // have h₉₆ : y * ( 4 - x ) == 1  [type from Lean state]
      assert ((y * (4.0 - x)) == 1.0) by { // @tac 2437-2446
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2437-2446 exec 698)
        cert_identity_26(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_27(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 698 2437-2446]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×83 [exec 707 2437-2446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Tactic.Ring.mul_congr ×3 (+30 more heads, ×69) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×101 [exec 716 2437-2446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×80) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 707, 716)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 707, 716)]
      }
      // have h₉₇ : y == 1 / ( 4 - x )  [type from Lean state]
      assert (y == Real.div(1.0, (4.0 - x))) by { // @tac 2498-2539 // @tac 2548-2573
        // have h₉₈ : 4 - x != 0  [type from Lean state]
        assert ((4.0 - x) != 0.0) by { // @tac 2531-2539
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2531-2539 exec 749)
          cert_identity_28(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×5 [exec 749 2531-2539]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×42 [exec 758 2531-2539]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 758)]
        }
        // [TACTIC: «Field_simp[_]At___» at h₉₆ ⊢]
        assert ((y * (4.0 - x)) == 1.0) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2582-2591
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2582-2591 exec 760)
          cert_identity_29(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_30(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 760 2582-2591]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×83 [exec 769 2582-2591]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Tactic.Ring.mul_congr ×3 (+30 more heads, ×69) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×101 [exec 778 2582-2591]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×80) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 769, 778)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 769, 778)]
        }
      }
      // [TACTIC: exact h₉₇]
      assert (y == Real.div(1.0, (4.0 - x)));
    }
    // [TACTIC: exact h₉₄]
    assert (y == Real.div(1.0, (4.0 - x)));
  }
  // have h₁₀ : x < 4  [type from Lean state]
  assert (x < 4.0) by { // @tac 2666-2677
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 804 2666-2677]
    // by_contra h
    if !((x < 4.0)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 2682-2722 // @tac 2727-2765 // @tac 2770-2813 // @tac 2818-2867 // @tac 2872-2881
        // have h₁₀₁ : x >= 4  [type from Lean state]
        assert (x >= 4.0) by { // @tac 2714-2722
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2714-2722 exec 821)
          cert_identity_31(x, y, z);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 821 2714-2722]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×39 [exec 830 2714-2722]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 830)]
        }
        // have h₁₀₂ : y > 0  [type from Lean state]
        assert (y > 0.0) by { // @tac 2757-2765
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2757-2765 exec 847)
          cert_identity_32(x, y, z);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×6 [exec 847 2757-2765]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×20 [exec 856 2757-2765]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 856)]
        }
        // have h₁₀₃ : x * y + 1 == 4 * y  [type from Lean state]
        assert (((x * y) + 1.0) == (4.0 * y)) by {
          // [TACTIC: exact h₄]
          assert (((x * y) + 1.0) == (4.0 * y));
        }
        // have h₁₀₄ : x * y >= 4 * y  [type from Lean state]
        assert ((x * y) >= (4.0 * y)) by { // @tac 2858-2867
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2858-2867 exec 885)
          if (0.0 <= y) && ((4.0 - x) <= 0.0) { cert_piece_33(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℝ) + (x * y + (1 : ℝ) - (4 : ℝ) * y) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_34(x, y, z);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×13 [exec 885 2858-2867]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×2, neg_neg_of_pos ×2, add_lt_of_neg_of_le ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×98 [exec 894 2858-2867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5, Mathlib.Meta.NormNum.isInt_mul ×4 (+32 more heads, ×78) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 894)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 894)]
          if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        }
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2872-2881 exec 895)
        // UNCITED-APPLIED Left.add_neg: certificate sum `-y + (x * y + (1 : ℝ) - (4 : ℝ) * y) + (y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `-y + (x * y + (1 : ℝ) - (4 : ℝ) * y) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_35(x, y, z);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×9 [exec 895 2872-2881]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, Left.add_neg ×1, neg_neg_of_pos ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×86 [exec 904 2872-2881]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4 (+33 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 904)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 904)]
      }
      assert false;
    }
  }
  // have h₁₁ : z == ( 4 - x ) / ( 3 - x )  [type from Lean state]
  assert (z == Real.div((4.0 - x), (3.0 - x))) by { // @tac 2934-2975 // @tac 2980-3021 // @tac 3026-4330 // @tac 4335-4351
    // have h₁₁₁ : z == 1 / ( 1 - y )  [type from Lean state]
    assert (z == Real.div(1.0, (1.0 - y))) by {
      // [TACTIC: exact h₈]
      assert (z == Real.div(1.0, (1.0 - y)));
    }
    // have h₁₁₂ : y == 1 / ( 4 - x )  [type from Lean state]
    assert (y == Real.div(1.0, (4.0 - x))) by {
      // [TACTIC: exact h₉]
      assert (y == Real.div(1.0, (4.0 - x)));
    }
    // have h₁₁₃ : z == ( 4 - x ) / ( 3 - x )  [type from Lean state]
    assert (z == Real.div((4.0 - x), (3.0 - x))) by { // @tac 3078-3105
      // [TACTIC: rwSeq [ h₁₁₁ , h₁₁₂ ]]
      // UNCITED-APPLIED congrArg(z, (1 : ℝ) / ((1 : ℝ) - y), fun (_a : ℝ) => _a = ((4 : ℝ) - x) / ((3 : ℝ) - x)): no library counterpart (not stated) [exec 965 3078-3105]
      // UNCITED-APPLIED congrArg(y, (1 : ℝ) / ((4 : ℝ) - x), fun (_a : ℝ) => (1 : ℝ) / ((1 : ℝ) - _a) = ((4 : ℝ) - x) / ((3 : ℝ) -…): no library counterpart (not stated) [exec 965 3078-3105]
      assert (Real.div(1.0, (1.0 - Real.div(1.0, (4.0 - x)))) == Real.div((4.0 - x), (3.0 - x))) by {  // sub-goal before `have` (Lean state) // @tac 3112-3539 // @tac 3546-4168 // @tac 4175-4330 // @tac 4175-4259 // @tac 4175-4210
        // have h₁₁₄ : 1 - ( 1 / ( 4 - x ) ) != 0  [type from Lean state]
        assert ((1.0 - Real.div(1.0, (4.0 - x))) != 0.0) by { // @tac 3168-3210 // @tac 3219-3522 // @tac 3531-3539
          // have h₁₁₅ : 4 - x > 0  [type from Lean state]
          assert ((4.0 - x) > 0.0) by { // @tac 3202-3210
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3202-3210 exec 1025)
            cert_identity_36(x, y, z);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×6 [exec 1025 3202-3210]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×39 [exec 1034 3202-3210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1034)]
          }
          // have h₁₁₆ : 1 - ( 1 / ( 4 - x ) ) > 0  [type from Lean state]
          assert ((1.0 - Real.div(1.0, (4.0 - x))) > 0.0) by { // @tac 3275-3317 // @tac 3328-3395 // @tac 3406-3433
            // have h₁₁₇ : 0 < 4 - x  [type from Lean state]
            assert (0.0 < (4.0 - x)) by { // @tac 3309-3317
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3309-3317 exec 1067)
              cert_identity_37(x, y, z);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×6 [exec 1067 3309-3317]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×39 [exec 1076 3309-3317]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1076)]
            }
            // have h₁₁₈ : 0 < 4 - x  [type from Lean state]
            assert (0.0 < (4.0 - x)) by { // @tac 3370-3395
              // [TACTIC: Exact_mod_cast h₁₁₇]
              // UNCITED-APPLIED Eq.symm((0 as real), 0.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
              // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`exact` exec 1094)]
              // UNCITED-APPLIED congrArg((0 : ℝ), ↑(0 : ℕ), fun (x_1 : ℝ) => x_1 < ↑(4 : ℕ) - x): no library counterpart (not stated) [exec 1094 3370-3395]
              // UNCITED-APPLIED congrArg(↑(0 : ℕ), (0 : ℝ), fun (x_1 : ℝ) => x_1 < (4 : ℝ) - x): no library counterpart (not stated) [exec 1094 3370-3395]
              // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1094 3370-3395]
            }
            // [TACTIC: «Field_simp[_]At___» [ h₁₁₈.ne' ]]
            // UNCITED h₁₁₈.ne': a projection of the local hypothesis h₁₁₈ handed to the tactic; its fact is not stated here
            // UNCITED-APPLIED internal ×7 [exec 1095 3406-3433]: applications made inside the tactic's own automation, not stated — sub_div' ×1, ne_of_gt ×1, one_mul ×1; machinery/glue: Eq.trans ×2, congrArg ×2
            assert (1.0 < (4.0 - x)) by {  // sub-goal before `rw` (Lean state) // @tac 3444-3460
              // [TACTIC: rwSeq [ ← sub_pos ]]
              SubPos((4.0 - x), 1.0);  // cite: sub_pos
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 1100 3444-3460]
              assert (0.0 < ((4.0 - x) - 1.0)) by {  // sub-goal before `field_simp` (Lean state) // @tac 3471-3522 // @tac 3471-3498
                // [TACTIC: «_<;>_» [ h₁₁₈.ne' ] field_simp [ h₁₁₈.ne' ] <;> nlinarith nlinarith]
                // [TACTIC: choice [ h₁₁₈.ne' ] field_simp [ h₁₁₈.ne' ]]
                // UNCITED h₁₁₈.ne': a projection of the local hypothesis h₁₁₈ handed to the tactic; its fact is not stated here
                assert (1.0 < (4.0 - x)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 3513-3522
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1150)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1150)]
                  if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3513-3522 exec 1141)
                  if (0.0 <= y) && (((4.0 - x) - 1.0) <= 0.0) { cert_piece_38(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                  // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `x * y + (1 : ℝ) - (4 : ℝ) * y + (y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  cert_identity_39(x, y, z);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×11 [exec 1141 3513-3522]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_eq_of_lt ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×115 [exec 1150 3513-3522]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+34 more heads, ×93) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                }
              }
            }
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3531-3539 exec 1151)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `y - (1 : ℝ) + -((1 : ℝ) * y - (1 : ℝ) * ((1 : ℝ) / ((4 : ℝ) - x))) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_40(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×14 [exec 1151 3531-3539]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, sub_neg_of_lt ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.without_one_mul ×2, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×80 [exec 1160 3531-3539]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.sub_pf ×4, Mathlib.Tactic.Ring.neg_mul ×4 (+33 more heads, ×63) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1160)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1160)]
        }
        // have h₁₁₅ : 3 - x != 0  [type from Lean state]
        assert ((3.0 - x) != 0.0) by { // @tac 3590-3624 // @tac 3633-3671 // @tac 3680-3700
          // have h₁₁₆ : x < 4  [type from Lean state]
          assert (x < 4.0) by {
            // [TACTIC: exact h₁₀]
            assert (x < 4.0);
          }
          // have h₁₁₇ : x > 0  [type from Lean state]
          assert (x > 0.0) by { // @tac 3663-3671
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3663-3671 exec 1205)
            cert_identity_41(x, y, z);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×6 [exec 1205 3663-3671]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×20 [exec 1214 3663-3671]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1214)]
          }
          // by_contra h
          if !(((3.0 - x) != 0.0)) {
            if (((3.0 - x) == 0.0)) {  // sub-goal before `have` (Lean state)
              // have h₁₁₉ : 3 - x == 0  [type from Lean state]
              assert ((3.0 - x) == 0.0) by { // @tac 3743-3751
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3743-3751 exec 1238)
                cert_identity_42(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
                cert_identity_43(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
                // UNCITED-APPLIED internal ×9 [exec 1238 3743-3751]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×42 [exec 1247 3743-3751]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×42 [exec 1256 3743-3751]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1247, 1256)]
              }
              // have h₁₂₀ : x == 3  [type from Lean state]
              assert (x == 3.0) by { // @tac 3790-3798
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3790-3798 exec 1273)
                cert_identity_44(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
                cert_identity_45(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
                // UNCITED-APPLIED internal ×10 [exec 1273 3790-3798]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×39 [exec 1282 3790-3798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×42 [exec 1291 3790-3798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1282, 1291)]
              }
              // have h₁₂₁ : x * z + 1 == 7 / 3 * x  [type from Lean state]
              assert (((x * z) + 1.0) == ((7.0 / 3.0) * x)) by {
                // [TACTIC: exact h₆]
                assert (((x * z) + 1.0) == ((7.0 / 3.0) * x));
              }
              // have h₁₂₂ : z == ( 4 - x ) / ( 3 - x )  [type from Lean state]
              assert (z == Real.div((4.0 - x), (3.0 - x))) by { // @tac 3919-4001 // @tac 3919-3977 // @tac 3919-3934
                // [TACTIC: «_<;>_» [ h₁₁₈ ] rw [ h₁₁₈ ] <;> field_simp [ h₁₁₈ ] at * <;> nlinarith nlinarith]
                // [TACTIC: choice [ h₁₁₈ ] rw [ h₁₁₈ ]]
                // UNCITED-APPLIED congrArg((3 : ℝ) - x, (0 : ℝ), fun (_a : ℝ) => z = ((4 : ℝ) - x) / _a): no library counterpart (not stated) [exec 1334 3919-3934]
                assert (z == Real.div((4.0 - x), 0.0)) by {  // sub-goal of `field_simp` (Lean state) // @tac 3949-3977
                  assert !((1.0 - Real.div(1.0, (4.0 - x))) == 0.0);  // hypothesis h₁₁₄ after `field_simp` (Lean state) // @tac-hyp 3949-3977
                  assert ((((z * x) + 1.0) * 3.0) == (7.0 * x));  // hypothesis h₃ after `field_simp` (Lean state) // @tac-hyp 3949-3977
                  assert ((((x * z) + 1.0) * 3.0) == (7.0 * x));  // hypothesis h₆ after `field_simp` (Lean state) // @tac-hyp 3949-3977
                  assert (0.0 < x);  // hypothesis h₁₁₇ after `field_simp` (Lean state) // @tac-hyp 3949-3977
                  assert ((((x * z) + 1.0) * 3.0) == (7.0 * x));  // hypothesis h₁₂₁ after `field_simp` (Lean state) // @tac-hyp 3949-3977
                  assert (z == 0.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 3992-4001
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1379, 1380)]
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1380)]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3992-4001 exec 1378)
                    if (0.0 < y) && ((x - 3.0) == 0.0) { assert (-((y * (x - 3.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
                    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `x * y + (1 : ℝ) - (4 : ℝ) * y + (y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_46(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_47(x, y, z);  // cert: Left.add_neg
                    // UNCITED-APPLIED internal ×14 [exec 1378 3992-4001]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, sub_eq_zero_of_eq ×2, Left.add_neg ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
                    // UNCITED-APPLIED internal ×20 [exec 1379 3992-4001]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×103 [exec 1380 3992-4001]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×4 (+34 more heads, ×84) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  }
                  // UNCITED-APPLIED internal ×2 [exec 1369 3949-3977]: applications made inside the tactic's own automation, not stated — div_zero ×1; machinery/glue: congrArg ×1
                }
              }
              // [TACTIC: «_<;>_» [ h₁₂₀ ] at h₁₂₁ h₁₂₂ rw [ h₁₂₀ ] at h₁₂₁ h₁₂₂ <;> norm_num at h₁₂₁ h₁₂₂ ⊢ <;> ( try norm_num norm_num ) <;> ( try nlinarith nlinarith ) <;> ( try linarith linarith )]
              // [TACTIC: choice [ h₁₂₀ ] at h₁₂₁ h₁₂₂ rw [ h₁₂₀ ] at h₁₂₁ h₁₂₂]
              assert (((3.0 * z) + 1.0) == ((7.0 / 3.0) * 3.0));  // hypothesis h₁₂₁ after `rw` (Lean state) // @tac-hyp 4010-4050
              assert (z == Real.div((4.0 - 3.0), (3.0 - 3.0)));  // hypothesis h₁₂₂ after `rw` (Lean state) // @tac-hyp 4010-4050
              assert (((3.0 * z) + 1.0) == 7.0);  // hypothesis h₁₂₁ after `norm_num` (Lean state) // @tac-hyp 4063-4100
              assert (z == 0.0);  // hypothesis h₁₂₂ after `norm_num` (Lean state) // @tac-hyp 4063-4100
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1481)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4139-4148 exec 1472)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -y < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < y); (6.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * (y - (1 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((y - 1.0) < 0.0); (6.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * z = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (z == 0.0); (3.0 > 0.0)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(6 : ℝ) * -y + (6 : ℝ) * (y - (1 : ℝ)) + -((3 : ℝ) * z + (1 : ℝ) - (7 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              // UNCITED-APPLIED Left.add_neg: certificate sum `(6 : ℝ) * -y + (6 : ℝ) * (y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_48(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
              // UNCITED-APPLIED internal ×1 [exec 1440 4063-4100]: applications made inside the tactic's own automation, not stated — machinery/glue: eq_false ×1
              // UNCITED-APPLIED internal ×41 [exec 1472 4139-4148]: applications made inside the tactic's own automation, not stated — Left.add_neg ×1, neg_neg_of_pos ×1, sub_neg_of_lt ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+13 more heads, ×21) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×102 [exec 1481 4139-4148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+31 more heads, ×82) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1482 4139-4148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1483 4139-4148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1477 4139-4148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
              assert false;  // sub-goal before `have` (Lean state) // @tac 3709-3751 // @tac 3760-3798 // @tac 3807-3854 // @tac 3863-4001 // @tac 4010-4168 // @tac 4010-4149 // @tac 4010-4129 // @tac 4010-4100 // @tac 4010-4050 // @tac 4063-4100 // @tac 4116-4128 // @tac 4120-4128 // @tac 4135-4148 // @tac 4139-4148
            }
            assert false;
          }
          // UNCITED-APPLIED internal ×1 [exec 1456 4120-4128]: applications made inside the tactic's own automation, not stated — machinery/glue: eq_false ×1
        }
        // [TACTIC: «_<;>_» [ h₁₁₄ , h₁₁₅ ] field_simp [ h₁₁₄ , h₁₁₅ ] <;> ( try ring_nf at * <;> nlinarith nlinarith ) <;> ( try field_simp [ h₁₁₄ , h₁₁₅ ] at * <;> nlinarith nlinarith )]
        // [TACTIC: choice [ h₁₁₄ , h₁₁₅ ] field_simp [ h₁₁₄ , h₁₁₅ ]]
        // UNCITED-APPLIED internal ×6 [exec 1501 4175-4210]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, one_mul ×1; machinery/glue: Eq.trans ×2, congrArg ×2
        assert ((3.0 - x) == ((4.0 - x) * (1.0 - Real.div(1.0, (4.0 - x))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4232-4258 // @tac 4228-4258 // @tac 4232-4244
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(Real.div(1.0, (4.0 - x)));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x); (a := ((4 : ℝ) - x)⁻¹)
          assert ((1.0 + (x * z)) == (x * (7.0 / 3.0)));  // hypothesis h₆ after `ring_nf` (Lean state) // @tac-hyp 4232-4244
          assert ((1.0 + (y * z)) == z);  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 4232-4244
          assert ((1.0 + (x * y)) == (y * 4.0));  // hypothesis h₄ after `ring_nf` (Lean state) // @tac-hyp 4232-4244
          assert ((3.0 - x) == ((4.0 - x) + ((x * Real.div(1.0, (4.0 - x))) - (Real.div(1.0, (4.0 - x)) * 4.0)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4249-4258
            // cite: Nat.cast_one [same instance stated in an enclosing scope: NatCastOne();]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1541, 1551 / `ring1` exec 1540, 1550)]
            // cite: pow_one [same instance stated in an enclosing scope: PowOne(x);]
            // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.div(1.0, (4.0 - x)));]
            PowOne(y);  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x); (a := ((4 : ℝ) - x)⁻¹); (a := y)
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4249-4258 exec 1531)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (y - ((4 : ℝ) - x)⁻¹) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((y - Real.div(1.0, (4.0 - x))) == 0.0); (4.0 > 0.0)
            if (0.0 < x) && ((y - Real.div(1.0, (4.0 - x))) == 0.0) { assert (-((x * (y - Real.div(1.0, (4.0 - x))))) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(y - ((4 : ℝ) - x)⁻¹) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((y - Real.div(1.0, (4.0 - x)))) == 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(4 : ℝ) * (y - ((4 : ℝ) - x)⁻¹) + ((1 : ℝ) + x * y - y * (4 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
            // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(4 : ℝ) * -(y - ((4 : ℝ) - x)⁻¹) + -((1 : ℝ) + x * y - y * (4 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
            // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(4 : ℝ) * -(y - ((4 : ℝ) - x)⁻¹) + -((1 : ℝ) + x * y - y * (4 : ℝ)) + ((4 : ℝ) - x + (x * ((4 : ℝ) - x)⁻¹ - ((4 : ℝ) - …`
            cert_identity_49(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
            cert_identity_50(x, y, z);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×100 [exec 1531 4249-4258]: applications made inside the tactic's own automation, not stated — add_zero ×4, mul_one ×3, neg_eq_zero ×3, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, neg_neg_of_pos ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×7, Mathlib.Tactic.Ring.add_mul ×3 (+42 more heads, ×59) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×3])
            // UNCITED-APPLIED internal ×167 [exec 1540 4249-4258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×135) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1541 4249-4258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×176 [exec 1550 4249-4258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+35 more heads, ×144) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1551 4249-4258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // UNCITED-APPLIED internal ×102 [exec 1522 4232-4244]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+36 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×2])
        }
        // [TACTIC: try field_simp [ h₁₁₄ , h₁₁₅ ] at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try field_simp [ h₁₁₄ , h₁₁₅ ] at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
      }
    }
    // [TACTIC: exact h₁₁₃]
    assert (z == Real.div((4.0 - x), (3.0 - x)));
  }
  // have h₁₂ : 4 * x ^ 2 - 12 * x + 9 == 0  [type from Lean state]
  assert ((((4.0 * (x * x)) - (12.0 * x)) + 9.0) == 0.0) by { // @tac 4409-4459 // @tac 4464-4511 // @tac 4516-4545 // @tac 4550-4584 // @tac 4589-4627 // @tac 4632-4868 // @tac 4873-4986 // @tac 4873-4944 // @tac 4873-4910 // @tac 4919-4944
    // have h₁₂₁ : z == ( 4 - x ) / ( 3 - x )  [type from Lean state]
    assert (z == Real.div((4.0 - x), (3.0 - x))) by {
      // [TACTIC: exact h₁₁]
      assert (z == Real.div((4.0 - x), (3.0 - x)));
    }
    // have h₁₂₂ : x * z + 1 == 7 / 3 * x  [type from Lean state]
    assert (((x * z) + 1.0) == ((7.0 / 3.0) * x)) by {
      // [TACTIC: exact h₆]
      assert (((x * z) + 1.0) == ((7.0 / 3.0) * x));
    }
    // [TACTIC: rwSeq [ h₁₂₁ ] at h₁₂₂]
    assert (((x * Real.div((4.0 - x), (3.0 - x))) + 1.0) == ((7.0 / 3.0) * x));  // hypothesis h₁₂₂ after `rw` (Lean state) // @tac-hyp 4516-4545
    // have h₁₂₃ : x < 4  [type from Lean state]
    assert (x < 4.0) by {
      // [TACTIC: exact h₁₀]
      assert (x < 4.0);
    }
    // have h₁₂₄ : x > 0  [type from Lean state]
    assert (x > 0.0) by { // @tac 4619-4627
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4619-4627 exec 1658)
      cert_identity_51(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 1658 4619-4627]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 1672 4619-4627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1672)]
    }
    // have h₁₂₅ : 3 - x != 0  [type from Lean state]
    assert ((3.0 - x) != 0.0) by { // @tac 4674-4685
      // by_contra h
      if !(((3.0 - x) != 0.0)) {
        if (((3.0 - x) == 0.0)) {  // sub-goal before `have` (Lean state)
          // have h₁₂₆ : 3 - x == 0  [type from Lean state]
          assert ((3.0 - x) == 0.0) by { // @tac 4726-4734
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4726-4734 exec 1712)
            cert_identity_52(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
            cert_identity_53(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
            // UNCITED-APPLIED internal ×9 [exec 1712 4726-4734]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×42 [exec 1726 4726-4734]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×42 [exec 1740 4726-4734]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1726, 1740)]
          }
          // have h₁₂₇ : x == 3  [type from Lean state]
          assert (x == 3.0) by { // @tac 4771-4779
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4771-4779 exec 1757)
            cert_identity_54(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
            cert_identity_55(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
            // UNCITED-APPLIED internal ×10 [exec 1757 4771-4779]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×39 [exec 1771 4771-4779]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×42 [exec 1785 4771-4779]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+21 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1771, 1785)]
          }
          // [TACTIC: rwSeq [ h₁₂₇ ] at h₁₂₂]
          assert (((3.0 * Real.div((4.0 - 3.0), (3.0 - 3.0))) + 1.0) == ((7.0 / 3.0) * 3.0));  // hypothesis h₁₂₂ after `rw` (Lean state) // @tac-hyp 4786-4815
          // [TACTIC: «_<;>_» at h₁₂₂ ⊢ <;> nlinarith nlinarith]
          // [TACTIC: «Norm_num[_]At___» at h₁₂₂ ⊢]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×30 [exec 1822 4822-4848]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_mul ×2 (+11 more heads, ×17) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // `norm_num` closed the goal; the rest of the chain did not run
          assert false;  // sub-goal before `have` (Lean state) // @tac 4692-4734 // @tac 4741-4779 // @tac 4786-4815 // @tac 4822-4868 // @tac 4822-4848
        }
        assert false;
      }
    }
    // [TACTIC: «_<;>_» [ h₁₂₅ ] at h₁₂₂ field_simp [ h₁₂₅ ] at h₁₂₂ <;> ring_nf at h₁₂₂ ⊢ <;> nlinarith [ sq_nonneg ( x - 3 / 2 ) ] nlinarith [ sq_nonneg ( x - 3 / 2 ) ]]
    // [TACTIC: choice [ h₁₂₅ ] at h₁₂₂ field_simp [ h₁₂₅ ] at h₁₂₂]
    assert ((((x * (4.0 - x)) + (3.0 - x)) * 3.0) == ((7.0 * x) * (3.0 - x)));  // hypothesis h₁₂₂ after `field_simp` (Lean state) // @tac-hyp 4873-4910
    PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
    assert ((9.0 + ((x * 9.0) - ((x * x) * 3.0))) == ((x * 21.0) - ((x * x) * 7.0)));  // hypothesis h₁₂₂ after `ring_nf` (Lean state) // @tac-hyp 4919-4944
    assert (((9.0 - (x * 12.0)) + ((x * x) * 4.0)) == 0.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4953-4986
      SqNonneg(((2.0 * x) - (1.0 * 3.0)));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1870)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      // cite: pow_one [same instance stated in an enclosing scope: PowOne(x);]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4953-4986 exec 1857)
      SqNonneg(((2.0 * x) - (1.0 * 3.0))); assert (0.0 <= (((2.0 * x) - (1.0 * 3.0)) * ((2.0 * x) - (1.0 * 3.0))));  // cert: sq_nonneg
      cert_identity_56(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_57(x, y, z);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×144 [exec 1857 4953-4986]: applications made inside the tactic's own automation, not stated — add_zero ×2, div_mul_eq_mul_div ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_eq_zero_of_eq ×1, mul_div_assoc' ×1, div_add' ×1, one_mul ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+44 more heads, ×101) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], pow_one [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×179 [exec 1870 4953-4986]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+48 more heads, ×147) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×181 [exec 1883 4953-4986]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.one_mul ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_one_mul ×8 (+37 more heads, ×149) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // UNCITED-APPLIED internal ×73 [exec 1848 4919-4944]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×6, Eq.trans ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+36 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×1])
  }
  // have h₁₃ : x == 3 / 2  [type from Lean state]
  assert (x == (3.0 / 2.0)) by { // @tac 5027-5082 // @tac 5087-5160 // @tac 5165-5181
    // have h₁₃₁ : 4 * x ^ 2 - 12 * x + 9 == 0  [type from Lean state]
    assert ((((4.0 * (x * x)) - (12.0 * x)) + 9.0) == 0.0) by {
      // [TACTIC: exact h₁₂]
      assert ((((4.0 * (x * x)) - (12.0 * x)) + 9.0) == 0.0);
    }
    // have h₁₃₂ : x == 3 / 2  [type from Lean state]
    assert (x == (3.0 / 2.0)) by { // @tac 5127-5160
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - 3 / 2 ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5127-5160 exec 1928)
      if (((2.0 * x) - (1.0 * 3.0)) < 0.0) { cert_piece_58(x, y, z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (x - (3 / 2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x - (3.0 / 2.0)) < 0.0); (2.0 > 0.0)
      if (((1.0 * 3.0) - (2.0 * x)) < 0.0) { cert_piece_59(x, y, z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((3 / 2 : ℝ) - x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((3.0 / 2.0) - x) < 0.0); (2.0 > 0.0)
      cert_identity_60(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_61(x, y, z);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×20 [exec 1928 5127-5160]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, mul_pos_of_neg_of_neg ×2, CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.div_subst ×1; machinery/glue: congrArg ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×6 [exec 1930 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1933 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1934 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1951 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×162 [exec 1960 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Tactic.Ring.cast_pos ×7 (+43 more heads, ×131) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1945 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1946 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1949 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1950 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1929, 1930, 1933, 1934, 1945, 1946 … / `ring1` exec 1944, 1960)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1935, 1951 / `ring1` exec 1944, 1960)]
      // UNCITED-APPLIED internal ×161 [exec 1944 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+43 more heads, ×129) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1929 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1935 5127-5160]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₁₃₂]
    assert (x == (3.0 / 2.0));
  }
  // have h₁₄ : y == 2 / 5  [type from Lean state]
  assert (y == (2.0 / 5.0)) by { // @tac 5222-5263 // @tac 5268-5283
    // have h₁₄₁ : y == 1 / ( 4 - x )  [type from Lean state]
    assert (y == Real.div(1.0, (4.0 - x))) by {
      // [TACTIC: exact h₉]
      assert (y == Real.div(1.0, (4.0 - x)));
    }
    // [TACTIC: rwSeq [ h₁₄₁ ]]
    // UNCITED-APPLIED congrArg(y, (1 : ℝ) / ((4 : ℝ) - x), fun (_a : ℝ) => _a = (2 / 5 : ℝ)): no library counterpart (not stated) [exec 1994 5268-5283]
    assert (Real.div(1.0, (4.0 - x)) == (2.0 / 5.0)) by {  // sub-goal before `rw` (Lean state) // @tac 5288-5435 // @tac 5288-5390 // @tac 5288-5363 // @tac 5288-5317 // @tac 5288-5300
      // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> norm_num norm_num <;> ( try norm_num at * <;> nlinarith nlinarith ) <;> ( try linarith linarith ) <;> ( try ring_nf at * <;> nlinarith nlinarith )]
      // [TACTIC: choice [ h₁₃ ] rw [ h₁₃ ]]
      // UNCITED-APPLIED congrArg(x, (3 / 2 : ℝ), fun (_a : ℝ) => (1 : ℝ) / ((4 : ℝ) - _a) = (2 / 5 : ℝ)): no library counterpart (not stated) [exec 2045 5288-5300]
      assert (Real.div(1.0, (4.0 - (3.0 / 2.0))) == (2.0 / 5.0)) by {  // sub-goal of `norm_num` (Lean state) // @tac 5309-5317
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×23 [exec 2080 5309-5317]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isRat_div ×3, Mathlib.Meta.NormNum.isRat_mul ×3 (+5 more heads, ×7) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      }
      // [TACTIC: try norm_num at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try norm_num at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try ring_nf at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try ring_nf at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
    }
  }
  // have h₁₅ : z == 5 / 3  [type from Lean state]
  assert (z == (5.0 / 3.0)) by { // @tac 5476-5526 // @tac 5531-5546
    // have h₁₅₁ : z == ( 4 - x ) / ( 3 - x )  [type from Lean state]
    assert (z == Real.div((4.0 - x), (3.0 - x))) by {
      // [TACTIC: exact h₁₁]
      assert (z == Real.div((4.0 - x), (3.0 - x)));
    }
    // [TACTIC: rwSeq [ h₁₅₁ ]]
    // UNCITED-APPLIED congrArg(z, ((4 : ℝ) - x) / ((3 : ℝ) - x), fun (_a : ℝ) => _a = (5 / 3 : ℝ)): no library counterpart (not stated) [exec 2131 5531-5546]
    assert (Real.div((4.0 - x), (3.0 - x)) == (5.0 / 3.0)) by {  // sub-goal before `rw` (Lean state) // @tac 5551-5698 // @tac 5551-5653 // @tac 5551-5626 // @tac 5551-5580 // @tac 5551-5563
      // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> norm_num norm_num <;> ( try norm_num at * <;> nlinarith nlinarith ) <;> ( try linarith linarith ) <;> ( try ring_nf at * <;> nlinarith nlinarith )]
      // [TACTIC: choice [ h₁₃ ] rw [ h₁₃ ]]
      // UNCITED-APPLIED congrArg(x, (3 / 2 : ℝ), fun (_a : ℝ) => ((4 : ℝ) - _a) / ((3 : ℝ) - _a) = (5 / 3 : ℝ)): no library counterpart (not stated) [exec 2182 5551-5563]
      assert (Real.div((4.0 - (3.0 / 2.0)), (3.0 - (3.0 / 2.0))) == (5.0 / 3.0));  // sub-goal of `norm_num` (Lean state) // @tac 5572-5580
      // UNCITED-APPLIED internal ×22 [exec 2217 5572-5580]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isRat_div ×3, Mathlib.Meta.NormNum.isRat_mul ×3 (+5 more heads, ×8)
      // [TACTIC: try norm_num at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try norm_num at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try ring_nf at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try ring_nf at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
    }
  }
  // have h₁₆ : x * y * z == 1  [type from Lean state]
  assert (((x * y) * z) == 1.0) by { // @tac 5743-5934 // @tac 5743-5907 // @tac 5743-5862 // @tac 5743-5835 // @tac 5743-5790 // @tac 5743-5773
    // [TACTIC: «_<;>_» [ h₁₃ , h₁₄ , h₁₅ ] rw [ h₁₃ , h₁₄ , h₁₅ ] <;> norm_num norm_num <;> ( try ring_nf at * <;> nlinarith nlinarith ) <;> ( try linarith linarith ) <;> ( try ring_nf at * <;> nlinarith nlinarith ) <;> ( try linarith linarith )]
    // [TACTIC: choice [ h₁₃ , h₁₄ , h₁₅ ] rw [ h₁₃ , h₁₄ , h₁₅ ]]
    // UNCITED-APPLIED congrArg(x, (3 / 2 : ℝ), fun (_a : ℝ) => _a * y * z = (1 : ℝ)): no library counterpart (not stated) [exec 2281 5743-5773]
    // UNCITED-APPLIED congrArg(y, (2 / 5 : ℝ), fun (_a : ℝ) => (3 / 2 : ℝ) * _a * z = (1 : ℝ)): no library counterpart (not stated) [exec 2281 5743-5773]
    // UNCITED-APPLIED congrArg(z, (5 / 3 : ℝ), fun (_a : ℝ) => (3 / 2 : ℝ) * (2 / 5 : ℝ) * _a = (1 : ℝ)): no library counterpart (not stated) [exec 2281 5743-5773]
    assert ((((3.0 / 2.0) * (2.0 / 5.0)) * (5.0 / 3.0)) == 1.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 5782-5790
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×23 [exec 2318 5782-5790]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isRat_mul ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isRat_div ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3 (+6 more heads, ×8) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: try ring_nf at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: ( try ring_nf at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: try ring_nf at * <;> nlinarith nlinarith]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: ( try ring_nf at * <;> nlinarith nlinarith )]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
    // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
  }
  // [TACTIC: exact h₁₆]
  assert (((x * y) * z) == 1.0);
}



// ===== closed lemma for line 483 (from closed/amc12_2000_p20-483.dfy) =====

lemma {:induction false} vc_amc12_2000_p20_L483(x: real)
  requires 2.0 * x - 1.0 * 3.0 < 0.0
  ensures   0.0 < (2.0 * x - 1.0 * 3.0) * (2.0 * x - 1.0 * 3.0)
{
  var v := 2.0 * x - 1.0 * 3.0;  // [ADDED]
  pass2_sq_pos_of_neg(v);  // [ADDED]
  assert pass2_mulr(v, v) == v * v;  // [ADDED]
  assert v * v == v * (2.0 * x - 1.0 * 3.0);  // [ADDED]
  assert v * (2.0 * x - 1.0 * 3.0) == 2.0 * (x * v) - 3.0 * v;  // [ADDED]
  assert x * v == 2.0 * (x * x) - 3.0 * x;  // [ADDED]
  assert v * v == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert 0.0 < 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
  assert (2.0 * x - 1.0 * 3.0) * (2.0 * x - 1.0 * 3.0) == 4.0 * (x * x) - 12.0 * x + 9.0;  // [ADDED]
}

// pass2 helper: a definitional wrapper for real multiplication (x * y), used only so that
// the fact "0 < t*t" survives as an atom (Z3 rewrites a bare "0 < t*t" into "t != 0")
function pass2_mulr(x: real, y: real): real { x * y }  // [ADDED DECLARATION]

// pass2 helper (proved): Lean's mul_pos_of_neg_of_neg instance t*t > 0 for t < 0, via the
// library's MulPos on two syntactically distinct copies of -t
lemma pass2_sq_pos_of_neg(t: real)  // [ADDED DECLARATION]
  requires t < 0.0
  ensures 0.0 < pass2_mulr(t, t)
{
  var p := pass2_mulr(-t, 1.0);
  var q := pass2_mulr(1.0, -t);
  assert p == -t;
  assert q == -t;
  MulPos(p, q);
  assert 0.0 < p * q;
  assert p * q == (-t) * q;
  assert (-t) * q == (-t) * (-t);
  assert pass2_mulr(t, t) == t * t;
}
