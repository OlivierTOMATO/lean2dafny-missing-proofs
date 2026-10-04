// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real)
  ensures (a + -(a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real)
  ensures ((-((4.0 * 1.0)) + (3.0 * a)) + (4.0 - (3.0 * a))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(a: real, b: real, c: real)
  requires ((a - b) <= 0.0)
  requires (a <= 0.0)
  ensures (0.0 <= ((a - b) * a))
{
  MulNonneg(-((a - b)), -(a)); MulNeg(-((a - b)), a); assert (-((a - b))) * (-(a)) == -((-((a - b))) * (a)); assert (-((a - b))) * (a) == -(((a - b)) * (a));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(a: real, b: real, c: real)
  requires ((b - c) <= 0.0)
  ensures (0.0 <= ((b - c) * (b - c)))
{
  MulNonneg(-((b - c)), -((b - c))); MulNeg(-((b - c)), (b - c)); assert (-((b - c))) * (-((b - c))) == -((-((b - c))) * ((b - c))); assert (-((b - c))) * ((b - c)) == -(((b - c)) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(a: real, b: real, c: real)
  requires ((b - c) <= 0.0)
  requires (a <= 0.0)
  ensures (0.0 <= ((b - c) * a))
{
  MulNonneg(-((b - c)), -(a)); MulNeg(-((b - c)), a); assert (-((b - c))) * (-(a)) == -((-((b - c))) * (a)); assert (-((b - c))) * (a) == -(((b - c)) * (a));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, c: real)
  ensures (((((((((2.0 * (((a + b) + c) - 2.0)) + -((4.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + (10.0 * a)) + -((4.0 * (a * (4.0 - (3.0 * a)))))) + -((2.0 * ((a - b) * (((a + b) + c) - 2.0))))) + -((10.0 * ((a - b) * a)))) + -(((b - c) * (b - c)))) + -(((b - c) * (((a + b) + c) - 2.0)))) + -((5.0 * ((b - c) * a)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_7(a: real, b: real, c: real)
  requires (0.0 <= (((a + b) + c) * ((a + b) + c)))
  requires (a <= 0.0)
  ensures (((((a + b) + c) * ((a + b) + c)) * a) <= 0.0)
{
  MulNonneg((((a + b) + c) * ((a + b) + c)), -(a)); MulNeg((((a + b) + c) * ((a + b) + c)), a); assert ((((a + b) + c) * ((a + b) + c))) * (-(a)) == -(((((a + b) + c) * ((a + b) + c))) * (a));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(a: real, b: real, c: real)
  requires (0.0 <= (a * a))
  requires ((a - b) <= 0.0)
  ensures (((a * a) * (a - b)) <= 0.0)
{
  MulNonneg((a * a), -((a - b))); MulNeg((a * a), (a - b)); assert ((a * a)) * (-((a - b))) == -(((a * a)) * ((a - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(a: real, b: real, c: real)
  requires (0.0 <= (a * a))
  requires ((b - c) <= 0.0)
  ensures (((a * a) * (b - c)) <= 0.0)
{
  MulNonneg((a * a), -((b - c))); MulNeg((a * a), (b - c)); assert ((a * a)) * (-((b - c))) == -(((a * a)) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, c: real)
  requires (0.0 <= ((b - c) * (b - c)))
  requires ((b - c) <= 0.0)
  ensures ((((b - c) * (b - c)) * (b - c)) <= 0.0)
{
  MulNonneg(((b - c) * (b - c)), -((b - c))); MulNeg(((b - c) * (b - c)), (b - c)); assert (((b - c) * (b - c))) * (-((b - c))) == -((((b - c) * (b - c))) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(a: real, b: real, c: real)
  requires (0.0 <= ((b - c) * (b - c)))
  requires (a <= 0.0)
  ensures ((((b - c) * (b - c)) * a) <= 0.0)
{
  MulNonneg(((b - c) * (b - c)), -(a)); MulNeg(((b - c) * (b - c)), a); assert (((b - c) * (b - c))) * (-(a)) == -((((b - c) * (b - c))) * (a));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆/h₆₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(a: real, b: real, c: real)
  requires (0.0 <= (c * c))
  requires (a <= 0.0)
  ensures (((c * c) * a) <= 0.0)
{
  MulNonneg((c * c), -(a)); MulNeg((c * c), a); assert ((c * c)) * (-(a)) == -(((c * c)) * (a));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, c: real)
  ensures ((((((((((((((((((-((416.0 * (a * a))) + -((102.0 * ((b - c) * (b - c))))) + -((36.0 * (((a + b) + c) - 2.0)))) + (72.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0))) + (108.0 * a)) + (310.0 * ((a * a) * (a - b)))) + (230.0 * ((a * a) * (b - c)))) + -((325.0 * ((a * a) * (((a + b) + c) - 2.0))))) + (75.0 * (((b - c) * (b - c)) * (b - c)))) + -((120.0 * (((b - c) * (b - c)) * (((a + b) + c) - 2.0))))) + (105.0 * (((b - c) * (b - c)) * a))) + (225.0 * ((c * c) * (((a + b) + c) - 2.0)))) + (300.0 * ((c * c) * a))) + (45.0 * (((a - b) * (a - b)) * (((a + b) + c) - 2.0)))) + -((30.0 * (((c - a) * (c - a)) * (((a + b) + c) - 2.0))))) + -((204.0 * ((a - b) * (((a + b) + c) - 2.0))))) + (480.0 * ((a - b) * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + -((252.0 * ((b - c) * (((a + b) + c) - 2.0))))) + (540.0 * ((b - c) * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, c: real)
  ensures (((((((((-((6.0 * (a * a))) + -((2.0 * ((b - c) * (b - c))))) + -((4.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + (2.0 * ((((a * a) + (b * b)) + (c * c)) - 2.0))) + -((4.0 * ((a * a) * (((a + b) + c) - 2.0))))) + -(((c * c) * (((a + b) + c) - 2.0)))) + (((a - b) * (a - b)) * (((a + b) + c) - 2.0))) + -(((b * b) * (((a + b) + c) - 2.0)))) + (((c - a) * (c - a)) * (((a + b) + c) - 2.0))) + (2.0 * ((((a + b) + c) * ((a + b) + c)) * a))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real, c: real)
  ensures (((((((-((9.0 * (a * a))) + -((3.0 * ((b - c) * (b - c))))) + -((4.0 * (((a + b) + c) - 2.0)))) + -((2.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + (12.0 * a)) + (5.0 * ((((a * a) + (b * b)) + (c * c)) - 2.0))) + (4.0 * ((a - b) * (((a + b) + c) - 2.0)))) + (2.0 * ((b - c) * (((a + b) + c) - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real, c: real)
  ensures (((-((3.0 * (a * a))) + -(((b - c) * (b - c)))) + (4.0 * a)) + (((b - c) * (b - c)) - ((4.0 * a) - (3.0 * (a * a))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(a: real, b: real, c: real)
  ensures (((-((3.0 * (a * a))) + -(((b - c) * (b - c)))) + (4.0 * a)) + (((b - c) * (b - c)) - ((4.0 * a) - (3.0 * (a * a))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real, c: real)
  ensures (-((((a + b) + c) - 2.0)) + ((a + b) - (2.0 - c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(a: real, b: real, c: real)
  ensures ((((a + b) + c) - 2.0) + ((2.0 - c) - (a + b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(a: real, b: real, c: real)
  ensures (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) + ((a * b) - (1.0 - (c * (a + b))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(a: real, b: real, c: real)
  ensures (((((a * b) + (b * c)) + (c * a)) - 1.0) + ((1.0 - (c * (a + b))) - (a * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(a: real, b: real, c: real)
  ensures (-(((a * b) - (1.0 - (c * (2.0 - c))))) + ((a * b) - ((c - 1.0) * (c - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(a: real, b: real, c: real)
  ensures (((a * b) - (1.0 - (c * (2.0 - c)))) + (((c - 1.0) * (c - 1.0)) - (a * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(a: real, b: real, c: real)
  ensures (-(((b - c) * (b - c))) + ((b - c) * (b - c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_26(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((a - b) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((a - b))); MulNeg(((c - 1.0) * (c - 1.0)), (a - b)); assert (((c - 1.0) * (c - 1.0))) * (-((a - b))) == -((((c - 1.0) * (c - 1.0))) * ((a - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_27(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires (0.0 <= a)
  ensures (0.0 <= (((c - 1.0) * (c - 1.0)) * a))
{
  MulNonneg(((c - 1.0) * (c - 1.0)), a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_28(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((c - 1.0) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (c - 1.0)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((c - 1.0))); MulNeg(((c - 1.0) * (c - 1.0)), (c - 1.0)); assert (((c - 1.0) * (c - 1.0))) * (-((c - 1.0))) == -((((c - 1.0) * (c - 1.0))) * ((c - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_29(a: real, b: real, c: real)
  requires (0.0 <= ((2.0 - c) * (2.0 - c)))
  requires ((a - b) <= 0.0)
  ensures ((((2.0 - c) * (2.0 - c)) * (a - b)) <= 0.0)
{
  MulNonneg(((2.0 - c) * (2.0 - c)), -((a - b))); MulNeg(((2.0 - c) * (2.0 - c)), (a - b)); assert (((2.0 - c) * (2.0 - c))) * (-((a - b))) == -((((2.0 - c) * (2.0 - c))) * ((a - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_30(a: real, b: real, c: real)
  requires (0.0 <= ((2.0 - c) * (2.0 - c)))
  requires ((b - c) <= 0.0)
  ensures ((((2.0 - c) * (2.0 - c)) * (b - c)) <= 0.0)
{
  MulNonneg(((2.0 - c) * (2.0 - c)), -((b - c))); MulNeg(((2.0 - c) * (2.0 - c)), (b - c)); assert (((2.0 - c) * (2.0 - c))) * (-((b - c))) == -((((2.0 - c) * (2.0 - c))) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(a: real, b: real, c: real)
  ensures ((((((((((-(1.0) + -((9.0 * (((a + b) + c) - 2.0)))) + (6.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0))) + (11.0 * (c - 1.0))) + -((6.0 * ((a * b) - ((c - 1.0) * (c - 1.0)))))) + (4.0 * (((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))))) + (3.0 * (((c - 1.0) * (c - 1.0)) * (a - b)))) + -((6.0 * (((c - 1.0) * (c - 1.0)) * a)))) + (6.0 * (((c - 1.0) * (c - 1.0)) * (c - 1.0)))) + (3.0 * (((2.0 - c) * (2.0 - c)) * (a - b)))) + (6.0 * (((2.0 - c) * (2.0 - c)) * (b - c)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(a: real, b: real, c: real)
  ensures ((((a - b) + (2.0 * (b - c))) + -((((a + b) + c) - 2.0))) + ((3.0 * c) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(a: real, b: real, c: real)
  requires (0.0 <= (c * c))
  requires ((c - 1.0) <= 0.0)
  ensures (((c * c) * (c - 1.0)) <= 0.0)
{
  MulNonneg((c * c), -((c - 1.0))); MulNeg((c * c), (c - 1.0)); assert ((c * c)) * (-((c - 1.0))) == -(((c * c)) * ((c - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_34(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((a - b) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((a - b))); MulNeg(((c - 1.0) * (c - 1.0)), (a - b)); assert (((c - 1.0) * (c - 1.0))) * (-((a - b))) == -((((c - 1.0) * (c - 1.0))) * ((a - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_35(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((b - c) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (b - c)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((b - c))); MulNeg(((c - 1.0) * (c - 1.0)), (b - c)); assert (((c - 1.0) * (c - 1.0))) * (-((b - c))) == -((((c - 1.0) * (c - 1.0))) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(a: real, b: real, c: real)
  ensures ((((((((-((3.0 * (((a + b) + c) - 2.0))) + (6.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0))) + (c - 1.0)) + -((6.0 * ((a * b) - ((c - 1.0) * (c - 1.0)))))) + -((5.0 * (((3.0 * (c * c)) - (4.0 * c)) + 1.0)))) + -((3.0 * ((c * c) * (((a + b) + c) - 2.0))))) + (9.0 * ((c * c) * (c - 1.0)))) + (3.0 * (((c - 1.0) * (c - 1.0)) * (a - b)))) + (6.0 * (((c - 1.0) * (c - 1.0)) * (b - c)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(a: real, b: real, c: real)
  ensures ((((a - b) + (2.0 * (b - c))) + -((((a + b) + c) - 2.0))) + ((3.0 * c) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(a: real, b: real, c: real)
  ensures (-((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) + (((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(a: real, b: real, c: real)
  ensures ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) + -((((3.0 * (c * c)) - (4.0 * c)) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_41(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_42(a: real, b: real, c: real)
  ensures (-((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) + (((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_43(a: real, b: real, c: real)
  ensures ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) + -((((3.0 * (c * c)) - (4.0 * c)) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_44(a: real, b: real, c: real)
  ensures ((((a - b) + (2.0 * (b - c))) + -((((a + b) + c) - 2.0))) + ((3.0 * c) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_45(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_46(a: real, b: real, c: real)
  ensures (-((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) + (((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_47(a: real, b: real, c: real)
  ensures ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) + -((((3.0 * (c * c)) - (4.0 * c)) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_48(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_49(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₉/h₃₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_50(a: real, b: real, c: real)
  requires (0.0 <= (c * c))
  requires ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0)
  ensures (((c * c) * (((3.0 * (c * c)) - (4.0 * c)) + 1.0)) <= 0.0)
{
  MulNonneg((c * c), -((((3.0 * (c * c)) - (4.0 * c)) + 1.0))); MulNeg((c * c), (((3.0 * (c * c)) - (4.0 * c)) + 1.0)); assert ((c * c)) * (-((((3.0 * (c * c)) - (4.0 * c)) + 1.0))) == -(((c * c)) * ((((3.0 * (c * c)) - (4.0 * c)) + 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₉/h₃₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_51(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires (0.0 <= (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0))))
  ensures (0.0 <= (((c - 1.0) * (c - 1.0)) * (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0)))))
{
  MulNonneg(((c - 1.0) * (c - 1.0)), (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₉/h₃₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_52(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((a - b) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((a - b))); MulNeg(((c - 1.0) * (c - 1.0)), (a - b)); assert (((c - 1.0) * (c - 1.0))) * (-((a - b))) == -((((c - 1.0) * (c - 1.0))) * ((a - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₉/h₃₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_53(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires ((b - c) <= 0.0)
  ensures ((((c - 1.0) * (c - 1.0)) * (b - c)) <= 0.0)
{
  MulNonneg(((c - 1.0) * (c - 1.0)), -((b - c))); MulNeg(((c - 1.0) * (c - 1.0)), (b - c)); assert (((c - 1.0) * (c - 1.0))) * (-((b - c))) == -((((c - 1.0) * (c - 1.0))) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₉/h₃₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_54(a: real, b: real, c: real)
  requires ((a - b) <= 0.0)
  requires ((b - c) <= 0.0)
  ensures (0.0 <= ((a - b) * (b - c)))
{
  MulNonneg(-((a - b)), -((b - c))); MulNeg(-((a - b)), (b - c)); assert (-((a - b))) * (-((b - c))) == -((-((a - b))) * ((b - c))); assert (-((a - b))) * ((b - c)) == -(((a - b)) * ((b - c)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_55(a: real, b: real, c: real)
  ensures ((((((((((-((39.0 * ((b - c) * (b - c)))) + -((20.0 * (((a + b) + c) - 2.0)))) + -((15.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + (24.0 * (c - 1.0))) + (54.0 * ((a * b) - ((c - 1.0) * (c - 1.0))))) + -((4.0 * ((((3.0 * c) - (1.0 * 2.0)) * ((3.0 * c) - (1.0 * 2.0))) * (((a + b) + c) - 2.0))))) + (27.0 * ((c * c) * (((3.0 * (c * c)) - (4.0 * c)) + 1.0)))) + -((9.0 * (((c - 1.0) * (c - 1.0)) * (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0))))))) + (36.0 * (((c - 1.0) * (c - 1.0)) * (a - b)))) + (72.0 * (((c - 1.0) * (c - 1.0)) * (b - c)))) + -((39.0 * ((a - b) * (b - c))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_56(a: real, b: real, c: real)
  ensures ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) + -((((3.0 * (c * c)) - (4.0 * c)) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_57(a: real, b: real, c: real)
  ensures ((c - 1.0) + (1.0 - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_58(a: real, b: real, c: real)
  ensures (-(((b - c) * (b - c))) + ((b - c) * (b - c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_59(a: real, b: real, c: real)
  requires ((a - b) <= 0.0)
  requires (((1.0 * 4.0) - (3.0 * c)) <= 0.0)
  ensures (0.0 <= ((a - b) * ((1.0 * 4.0) - (3.0 * c))))
{
  MulNonneg(-((a - b)), -(((1.0 * 4.0) - (3.0 * c)))); MulNeg(-((a - b)), ((1.0 * 4.0) - (3.0 * c))); assert (-((a - b))) * (-(((1.0 * 4.0) - (3.0 * c)))) == -((-((a - b))) * (((1.0 * 4.0) - (3.0 * c)))); assert (-((a - b))) * (((1.0 * 4.0) - (3.0 * c))) == -(((a - b)) * (((1.0 * 4.0) - (3.0 * c))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_60(a: real, b: real, c: real)
  requires ((b - c) <= 0.0)
  requires (((1.0 * 4.0) - (3.0 * c)) <= 0.0)
  ensures (0.0 <= ((b - c) * ((1.0 * 4.0) - (3.0 * c))))
{
  MulNonneg(-((b - c)), -(((1.0 * 4.0) - (3.0 * c)))); MulNeg(-((b - c)), ((1.0 * 4.0) - (3.0 * c))); assert (-((b - c))) * (-(((1.0 * 4.0) - (3.0 * c)))) == -((-((b - c))) * (((1.0 * 4.0) - (3.0 * c)))); assert (-((b - c))) * (((1.0 * 4.0) - (3.0 * c))) == -(((b - c)) * (((1.0 * 4.0) - (3.0 * c))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_61(a: real, b: real, c: real)
  ensures ((((((((-((3.0 * ((a - b) * (a - b)))) + (18.0 * (((a + b) + c) - 2.0))) + -((12.0 * ((((a * b) + (b * c)) + (c * a)) - 1.0)))) + (2.0 * ((1.0 * 4.0) - (3.0 * c)))) + -(((a - b) * (((a + b) + c) - 2.0)))) + -(((a - b) * ((1.0 * 4.0) - (3.0 * c))))) + -((2.0 * ((b - c) * (((a + b) + c) - 2.0))))) + -((2.0 * ((b - c) * ((1.0 * 4.0) - (3.0 * c)))))) + (4.0 * ((((a + b) + c) - 2.0) * (((a + b) + c) - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_62(a: real, b: real, c: real)
  ensures (-((((a + b) + c) - 2.0)) + ((a + b) - (2.0 - c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_63(a: real, b: real, c: real)
  ensures ((((a + b) + c) - 2.0) + ((2.0 - c) - (a + b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂/h₆₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_64(a: real, b: real, c: real)
  ensures (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) + ((a * b) - (1.0 - (c * (a + b))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂/h₆₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_65(a: real, b: real, c: real)
  ensures (((((a * b) + (b * c)) + (c * a)) - 1.0) + ((1.0 - (c * (a + b))) - (a * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_66(a: real, b: real, c: real)
  ensures (-(((a * b) - (1.0 - (c * (2.0 - c))))) + ((a * b) - ((c - 1.0) * (c - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_67(a: real, b: real, c: real)
  ensures (((a * b) - (1.0 - (c * (2.0 - c)))) + (((c - 1.0) * (c - 1.0)) - (a * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₅`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_68(a: real, b: real, c: real)
  requires (0.0 <= (a - 0.0))
  requires (0.0 <= (b - a))
  ensures (0.0 <= ((a - 0.0) * (b - a)))
{
  MulNonneg((a - 0.0), (b - a));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_69(a: real, b: real, c: real)
  requires ((b - c) <= 0.0)
  requires (((3.0 * c) - (1.0 * 4.0)) <= 0.0)
  ensures (0.0 <= ((b - c) * ((3.0 * c) - (1.0 * 4.0))))
{
  MulNonneg(-((b - c)), -(((3.0 * c) - (1.0 * 4.0)))); MulNeg(-((b - c)), ((3.0 * c) - (1.0 * 4.0))); assert (-((b - c))) * (-(((3.0 * c) - (1.0 * 4.0)))) == -((-((b - c))) * (((3.0 * c) - (1.0 * 4.0)))); assert (-((b - c))) * (((3.0 * c) - (1.0 * 4.0))) == -(((b - c)) * (((3.0 * c) - (1.0 * 4.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_70(a: real, b: real, c: real)
  ensures ((((((((2.0 * (a - b)) + -((2.0 * (((a + b) + c) - 2.0)))) + (6.0 * ((a * b) - ((c - 1.0) * (c - 1.0))))) + (2.0 * ((1.0 * 1.0) - (3.0 * a)))) + -((3.0 * ((a - 0.0) * (b - a))))) + -((3.0 * ((a - b) * (((a + b) + c) - 2.0))))) + -((3.0 * ((b - c) * (((a + b) + c) - 2.0))))) + -(((b - c) * ((3.0 * c) - (1.0 * 4.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_71(a: real, b: real, c: real)
  ensures (-((((a + b) + c) - 2.0)) + ((a + b) - (2.0 - c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_72(a: real, b: real, c: real)
  ensures ((((a + b) + c) - 2.0) + ((2.0 - c) - (a + b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_73(a: real, b: real, c: real)
  ensures ((((3.0 * (a - b)) + -((3.0 * (((a + b) + c) - 2.0)))) + ((3.0 * c) - (1.0 * 4.0))) + (2.0 * ((3.0 * b) - (1.0 * 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_74(a: real, b: real, c: real)
  ensures ((((b - c) + (((a + b) + c) - 2.0)) + -(a)) + (2.0 * (1.0 - b))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3(a: real, b: real, c: real)
  requires ((a <= b) && (b <= c))
  requires (((a + b) + c) == 2.0)
  requires ((((a * b) + (b * c)) + (c * a)) == 1.0)
  ensures ((0.0 <= a) && ((a <= (1.0 / 3.0)) && (((1.0 / 3.0) <= b) && ((b <= 1.0) && ((1.0 <= c) && (c <= (4.0 / 3.0))))))) // @tac 556-1129 // @tac 1135-3479 // @tac 3485-4161 // @tac 4167-4905 // @tac 4911-5263 // @tac 5269-5759 // @tac 5765-5913 // @tac 5919-5929
{
  // have h₃ : 0 <= a  [type from Lean state]
  assert (0.0 <= a) by { // @tac 586-597
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 27 586-597]
    // by_contra h
    if !((0.0 <= a)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 602-634 // @tac 639-743 // @tac 748-1040 // @tac 1045-1095 // @tac 1100-1129
        // have h₄ : a < 0  [type from Lean state]
        assert (a < 0.0) by { // @tac 626-634
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 626-634 exec 44)
          cert_identity_1(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×5 [exec 44 626-634]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×20 [exec 45 626-634]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 45)]
        }
        // have h₅ : a * ( 4 - 3 * a ) < 0  [type from Lean state]
        assert ((a * (4.0 - (3.0 * a))) < 0.0) by { // @tac 683-727 // @tac 734-743
          // have h₅₁ : 4 - 3 * a > 0  [type from Lean state]
          assert ((4.0 - (3.0 * a)) > 0.0) by { // @tac 718-727
            // [TACTIC: «Nlinarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 718-727 exec 78)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (3.0 > 0.0)
            // UNCITED-APPLIED Left.add_neg: certificate sum `(4 : ℝ) * (-1 : ℝ) + (3 : ℝ) * a < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_2(a, b, c);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×11 [exec 78 718-727]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×2, add_lt_of_neg_of_le ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.mul_neg ×2, Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×62 [exec 79 718-727]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+28 more heads, ×49) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 81 718-727]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 79)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 80, 81 / `ring1` exec 79)]
            // UNCITED-APPLIED internal ×5 [exec 80 718-727]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 734-743 exec 82)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a + b) + c) - 2.0) == 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(10 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (10.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(a * ((4 : ℝ) - (3 : ℝ) * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * (4.0 - (3.0 * a)))); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a - b) * (((a + b) + c) - 2.0))) == 0.0); (2.0 > 0.0)
          if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(10 : ℝ) * -((a - b) * a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - b) * a)); (10.0 > 0.0)
          if ((a - b) <= 0.0) && (a <= 0.0) { cert_piece_3(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if ((b - c) <= 0.0) { cert_piece_4(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * -((b - c) * a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * a)); (5.0 > 0.0)
          if ((b - c) <= 0.0) && (a <= 0.0) { cert_piece_5(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * (a + b + c - (2 : ℝ)) + (4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a + b + c - (2 : ℝ)) + (4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (10 : ℝ) * a + (4 : ℝ) * -(a * ((4 : ℝ…`
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a + b + c - (2 : ℝ)) + (4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (10 : ℝ) * a + (4 : ℝ) * -(a * ((4 : ℝ…`
          // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `(2 : ℝ) * (a + b + c - (2 : ℝ)) + (4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (10 : ℝ) * a < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_6(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×31 [exec 82 734-743]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×4, neg_eq_zero ×3, mul_nonneg_of_nonpos_of_nonpos ×3, lt_of_not_ge ×2, add_lt_of_neg_of_le ×2, sub_eq_zero_of_eq ×2, sub_nonpos_of_le ×2; machinery/glue: Linarith.mul_eq ×3, Linarith.mul_nonpos ×3, Linarith.mul_zero_eq ×2, Linarith.lt_irrefl ×1 (+4 more heads, ×4) (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×254 [exec 83 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×8 (+36 more heads, ×222) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 85 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 86 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 87 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 88 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 89 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 90 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 83)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 84, 85, 86, 87, 88, 89 … / `ring1` exec 83)]
          assert ((a) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(a, 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 84 734-743]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₆ : ( b - c ) ^ 2 == 4 * a - 3 * a ^ 2  [type from Lean state]
        assert (((b - c) * (b - c)) == ((4.0 * a) - (3.0 * (a * a)))) by { // @tac 804-949 // @tac 956-1004 // @tac 1011-1040
          // have h₆₁ : a ^ 2 + b ^ 2 + c ^ 2 == 2  [type from Lean state]
          assert ((((a * a) + (b * b)) + (c * c)) == 2.0) by { // @tac 859-949
            // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a + b + c ) , sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 859-949 exec 123)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * -a ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * a)); (6.0 > 0.0)
            SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * (b - c))); (2.0 > 0.0)
            SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (a ^ (2 : ℕ) + b ^ (2 : ℕ) + c ^ (2 : ℕ) - (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a * a) + (b * b)) + (c * c)) - 2.0) < 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (-a ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a * a) * (((a + b) + c) - 2.0))) == 0.0); (4.0 > 0.0)
            if (0.0 <= (a * a)) && ((((a + b) + c) - 2.0) == 0.0) { assert (-(((a * a) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            if (0.0 <= (c * c)) && ((((a + b) + c) - 2.0) == 0.0) { assert (-(((c * c) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
            if (0.0 <= ((a - b) * (a - b))) && ((((a + b) + c) - 2.0) == 0.0) { assert (-((((a - b) * (a - b)) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
            if (0.0 <= (b * b)) && ((((a + b) + c) - 2.0) == 0.0) { assert (-(((b * b) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            SqNonneg(b); assert (0.0 <= (b * b));  // cert: sq_nonneg
            if (0.0 <= ((c - a) * (c - a))) && ((((a + b) + c) - 2.0) == 0.0) { assert (-((((c - a) * (c - a)) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-(a + b + c) ^ (2 : ℕ) * a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a + b) + c) * ((a + b) + c)) * a) <= 0.0); (2.0 > 0.0)
            if (0.0 <= (((a + b) + c) * ((a + b) + c))) && (a <= 0.0) { cert_piece_7(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            SqNonneg(((a + b) + c)); assert (0.0 <= (((a + b) + c) * ((a + b) + c)));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(416 : ℝ) * -a ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * a)); (416.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(102 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * (b - c))); (102.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(36 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (36.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(72 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0); (72.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(108 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (108.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(310 : ℝ) * -(-a ^ (2 : ℕ) * (a - b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * a) * (a - b)) <= 0.0); (310.0 > 0.0)
            if (0.0 <= (a * a)) && ((a - b) <= 0.0) { cert_piece_8(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(230 : ℝ) * -(-a ^ (2 : ℕ) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * a) * (b - c)) <= 0.0); (230.0 > 0.0)
            if (0.0 <= (a * a)) && ((b - c) <= 0.0) { cert_piece_9(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(325 : ℝ) * (-a ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a * a) * (((a + b) + c) - 2.0))) == 0.0); (325.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(75 : ℝ) * -(-(b - c) ^ (2 : ℕ) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((b - c) * (b - c)) * (b - c)) <= 0.0); (75.0 > 0.0)
            if (0.0 <= ((b - c) * (b - c))) && ((b - c) <= 0.0) { cert_piece_10(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(120 : ℝ) * (-(b - c) ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((b - c) * (b - c)) * (((a + b) + c) - 2.0))) == 0.0); (120.0 > 0.0)
            if (0.0 <= ((b - c) * (b - c))) && ((((a + b) + c) - 2.0) == 0.0) { assert (-((((b - c) * (b - c)) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(105 : ℝ) * -(-(b - c) ^ (2 : ℕ) * a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((b - c) * (b - c)) * a) <= 0.0); (105.0 > 0.0)
            if (0.0 <= ((b - c) * (b - c))) && (a <= 0.0) { cert_piece_11(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(225 : ℝ) * -(-c ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((c * c) * (((a + b) + c) - 2.0)) == 0.0); (225.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(300 : ℝ) * -(-c ^ (2 : ℕ) * a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((c * c) * a) <= 0.0); (300.0 > 0.0)
            if (0.0 <= (c * c)) && (a <= 0.0) { cert_piece_12(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(45 : ℝ) * -(-(a - b) ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a - b) * (a - b)) * (((a + b) + c) - 2.0)) == 0.0); (45.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(30 : ℝ) * (-(c - a) ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((c - a) * (c - a)) * (((a + b) + c) - 2.0))) == 0.0); (30.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(204 : ℝ) * -((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a - b) * (((a + b) + c) - 2.0))) == 0.0); (204.0 > 0.0)
            if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(480 : ℝ) * ((a - b) * (a * b + b * c + c * a - (1 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a - b) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (480.0 > 0.0)
            if ((a - b) <= 0.0) && (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0) { assert (((a - b) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(252 : ℝ) * -((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((b - c) * (((a + b) + c) - 2.0))) == 0.0); (252.0 > 0.0)
            if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(540 : ℝ) * ((b - c) * (a * b + b * c + c * a - (1 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((b - c) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (540.0 > 0.0)
            if ((b - c) <= 0.0) && (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0) { assert (((b - c) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×13: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(416 : ℝ) * -a ^ (2 : ℕ) + (102 : ℝ) * -(b - c) ^ (2 : ℕ) + (36 : ℝ) * -(a + b + c - (2 : ℝ)) + (72 : ℝ) * (a * b + b *…`
            // UNCITED-APPLIED add_lt_of_neg_of_le ×5: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(416 : ℝ) * -a ^ (2 : ℕ) + (102 : ℝ) * -(b - c) ^ (2 : ℕ) + (36 : ℝ) * -(a + b + c - (2 : ℝ)) + (72 : ℝ) * (a * b + b *…`
            // UNCITED-APPLIED add_lt_of_le_of_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(416 : ℝ) * -a ^ (2 : ℕ) + (102 : ℝ) * -(b - c) ^ (2 : ℕ) + (36 : ℝ) * -(a + b + c - (2 : ℝ)) + (72 : ℝ) * (a * b + b *…`
            // UNCITED-APPLIED Linarith.le_of_le_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(416 : ℝ) * -a ^ (2 : ℕ) + (102 : ℝ) * -(b - c) ^ (2 : ℕ) + (36 : ℝ) * -(a + b + c - (2 : ℝ)) + (72 : ℝ) * (a * b + b *…`
            // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(416 : ℝ) * -a ^ (2 : ℕ) + (102 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)`
            cert_identity_13(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
            cert_identity_14(a, b, c);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×66 [exec 123 859-949]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, neg_eq_zero ×7, mul_nonneg_of_nonpos_of_nonpos ×6, add_lt_of_le_of_neg ×2, add_nonpos ×2, sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, sub_neg_of_lt ×1, lt_of_not_ge ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.mul_eq ×8, Linarith.mul_zero_eq ×8, Linarith.le_of_le_of_eq ×3 (+5 more heads, ×6) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×7])
            // UNCITED-APPLIED internal ×5 [exec 126 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 127 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 128 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 129 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 130 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×297 [exec 131 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.neg_congr ×8 (+46 more heads, ×265) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 132 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 133 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 134 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 135 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 136 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 137 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 138 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 139 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 140 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 141 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 142 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 143 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 144 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 145 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 146 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 147 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 148 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 149 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 150 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            SqNonneg(a);  // cite: sq_nonneg
            SqNonneg((b - c));  // cite: sq_nonneg
            SqNonneg(c);  // cite: sq_nonneg
            SqNonneg((a - b));  // cite: sq_nonneg
            SqNonneg(b);  // cite: sq_nonneg
            SqNonneg((c - a));  // cite: sq_nonneg
            SqNonneg(((a + b) + c));  // cite: sq_nonneg
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 124, 131)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 125, 126, 127, 128, 129, 130 … / `ring1` exec 124, 131)]
            assert ((a) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
            LeOfLt(a, 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×282 [exec 124 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+47 more heads, ×250) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 125 859-949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // have h₆₂ : a * b + b * c + c * a == 1  [type from Lean state]
          assert ((((a * b) + (b * c)) + (c * a)) == 1.0) by {
            // [TACTIC: exact h₂]
            assert ((((a * b) + (b * c)) + (c * a)) == 1.0);
          }
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1011-1040 exec 163)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -a ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * a)); (3.0 > 0.0)
          SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
          SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℝ) * -a ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * a)); (9.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * (b - c))); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (12.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℝ) * (a ^ (2 : ℕ) + b ^ (2 : ℕ) + c ^ (2 : ℕ) - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a * a) + (b * b)) + (c * c)) - 2.0) == 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * ((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a - b) * (((a + b) + c) - 2.0)) == 0.0); (4.0 > 0.0)
          if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((b - c) * (((a + b) + c) - 2.0)) == 0.0); (2.0 > 0.0)
          if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(9 : ℝ) * -a ^ (2 : ℕ) + (3 : ℝ) * -(b - c) ^ (2 : ℕ) + (4 : ℝ) * -(a + b + c - (2 : ℝ)) + (2 : ℝ) * -(a * b + b * c + …`
          // UNCITED-APPLIED add_lt_of_le_of_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(9 : ℝ) * -a ^ (2 : ℕ) + (3 : ℝ) * -(b - c) ^ (2 : ℕ) + (4 : ℝ) * -(a + b + c - (2 : ℝ)) + (2 : ℝ) * -(a * b + b * c + …`
          // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(9 : ℝ) * -a ^ (2 : ℕ) + (3 : ℝ) * -(b - c) ^ (2 : ℕ) + (4 : ℝ) * -(a + b + c - (2 : ℝ)) + (2 : ℝ) * -(a * b + b * c + …`
          // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(9 : ℝ) * -a ^ (2 : ℕ) + (3 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)`
          cert_identity_15(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
          cert_identity_16(a, b, c);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×35 [exec 163 1011-1040]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, add_lt_of_le_of_neg ×2, add_nonpos ×2, neg_nonpos_of_nonneg ×2, neg_eq_zero ×2, sub_nonpos_of_le ×2, Left.add_neg ×1, lt_of_not_ge ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_eq ×5, Linarith.mul_nonpos ×3, Linarith.mul_neg ×2, Linarith.le_of_le_of_eq ×2 (+6 more heads, ×7) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
          // UNCITED-APPLIED internal ×5 [exec 166 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 168 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 169 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 170 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 171 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 172 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 173 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 174 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 175 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg(a);  // cite: sq_nonneg
          SqNonneg((b - c));  // cite: sq_nonneg
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 165, 166, 168, 169, 170, 171 … / `ring1` exec 164, 167)]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 167)]
          // UNCITED-APPLIED internal ×190 [exec 164 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.neg_add ×8 (+47 more heads, ×158) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 165 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×270 [exec 167 1011-1040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+47 more heads, ×238) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        // have h₇ : ( b - c ) ^ 2 >= 0  [type from Lean state]
        assert (((b - c) * (b - c)) >= 0.0) by {
          // [TACTIC: exact sq_nonneg ( ( b - c ) )]
          SqNonneg((b - c));  // cite: sq_nonneg
        }
        // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1100-1129 exec 188)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -a ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (a * a)); (3.0 > 0.0)
        SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
        SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * a < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (a < 0.0); (4.0 > 0.0)
        SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
        // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(3 : ℝ) * -a ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) + (4 : ℝ) * a < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED add_nonpos: certificate sum `(3 : ℝ) * -a ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_17(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×11 [exec 188 1100-1129]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×2, add_lt_of_le_of_neg ×1, add_nonpos ×1, lt_of_not_ge ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_nonpos ×1 (+1 more heads, ×1) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
        // UNCITED-APPLIED internal ×5 [exec 191 1100-1129]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        SqNonneg(a);  // cite: sq_nonneg
        SqNonneg((b - c));  // cite: sq_nonneg
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 190, 191 / `ring1` exec 189)]
        // UNCITED-APPLIED internal ×190 [exec 189 1100-1129]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.neg_add ×8 (+47 more heads, ×158) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 190 1100-1129]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert false;
    }
  }
  // have h₄ : 1 <= c  [type from Lean state]
  assert (1.0 <= c) by { // @tac 1165-1197 // @tac 1202-1234 // @tac 1239-1275 // @tac 1280-1328 // @tac 1333-1345
    // have h₄₁ : a <= b  [type from Lean state]
    assert (a <= b);
      // [TACTIC: exact h₀ . 1]
    // have h₄₂ : b <= c  [type from Lean state]
    assert (b <= c);
      // [TACTIC: exact h₀ . 2]
    // have h₄₃ : a + b + c == 2  [type from Lean state]
    assert (((a + b) + c) == 2.0) by {
      // [TACTIC: exact h₁]
      assert (((a + b) + c) == 2.0);
    }
    // have h₄₄ : a * b + b * c + c * a == 1  [type from Lean state]
    assert ((((a * b) + (b * c)) + (c * a)) == 1.0) by {
      // [TACTIC: exact h₂]
      assert ((((a * b) + (b * c)) + (c * a)) == 1.0);
    }
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 267 1333-1345]
    // by_contra! h  (h : the pushed negation of the goal, Lean state)
    if (c < 1.0) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 1350-1382 // @tac 1387-1427 // @tac 1432-1489 // @tac 1494-1571 // @tac 1576-1621 // @tac 1626-1756 // @tac 1761-1867 // @tac 1872-1994 // @tac 1999-2037 // @tac 2042-2084 // @tac 2089-2121 // @tac 2126-2158 // @tac 2163-2293 // @tac 2298-2420 // @tac 2425-3466 // @tac 3471-3479
        // have h₅ : c < 1  [type from Lean state]
        assert (c < 1.0) by { // @tac 1374-1382
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1374-1382 exec 290)
          cert_identity_18(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×7 [exec 290 1374-1382]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
          // UNCITED-APPLIED internal ×33 [exec 291 1374-1382]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 291)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 291)]
        }
        // have h₆ : a + b == 2 - c  [type from Lean state]
        assert ((a + b) == (2.0 - c)) by { // @tac 1419-1427
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1419-1427 exec 308)
          cert_identity_19(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_20(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 308 1419-1427]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×72 [exec 309 1419-1427]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+23 more heads, ×53) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×62 [exec 310 1419-1427]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4 (+21 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 309, 310)]
        }
        // have h₇ : a * b == 1 - c * ( a + b )  [type from Lean state]
        assert ((a * b) == (1.0 - (c * (a + b)))) by { // @tac 1480-1489
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1480-1489 exec 327)
          cert_identity_21(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_22(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 327 1480-1489]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×106 [exec 328 1480-1489]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.mul_add ×5 (+31 more heads, ×79) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×94 [exec 329 1480-1489]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.neg_mul ×5 (+29 more heads, ×72) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 328, 329)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 328, 329)]
        }
        // have h₈ : a * b == ( c - 1 ) ^ 2  [type from Lean state]
        assert ((a * b) == ((c - 1.0) * (c - 1.0))) by { // @tac 1538-1555 // @tac 1562-1571
          // [TACTIC: rwSeq [ h₆ ] at h₇]
          assert ((a * b) == (1.0 - (c * (2.0 - c))));  // hypothesis h₇ after `rw` (Lean state) // @tac-hyp 1538-1555
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1562-1571 exec 377)
          cert_identity_23(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_24(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×12 [exec 377 1562-1571]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×152 [exec 378 1562-1571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+44 more heads, ×120) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×153 [exec 379 1562-1571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+43 more heads, ×121) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 378, 379)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 378, 379)]
        }
        // have h₉ : ( b - c ) ^ 2 >= 0  [type from Lean state]
        assert (((b - c) * (b - c)) >= 0.0) by { // @tac 1612-1621
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1612-1621 exec 396)
          SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
          cert_identity_25(a, b, c);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 396 1612-1621]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
          // UNCITED-APPLIED internal ×110 [exec 397 1612-1621]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_pf_left ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Tactic.Ring.add_mul ×5 (+43 more heads, ×87) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 397)]
          SqNonneg((b - c));  // cite: sq_nonneg [applied by the tactic, not named in it]
        }
        // have h₁₀ : ( 2 - c ) ^ 2 - 4 * ( c - 1 ) ^ 2 >= 0  [type from Lean state]
        assert ((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))) >= 0.0) by { // @tac 1689-1756
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1689-1756 exec 414)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (9.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0); (6.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℝ) * (c - (1 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - 1.0) < 0.0); (11.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * -(a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a * b) - ((c - 1.0) * (c - 1.0)))) == 0.0); (6.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * (((2 : ℝ) - c) ^ (2 : ℕ) - (4 : ℝ) * (c - (1 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))) < 0.0); (4.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (a - b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((a - b) <= 0.0) { cert_piece_26(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((c - 1.0)); assert (0.0 <= ((c - 1.0) * (c - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * a)); (6.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= a) { cert_piece_27(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (c - (1 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (c - 1.0)) <= 0.0); (6.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((c - 1.0) <= 0.0) { cert_piece_28(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-((2 : ℝ) - c) ^ (2 : ℕ) * (a - b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 - c) * (2.0 - c)) * (a - b)) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((2.0 - c) * (2.0 - c))) && ((a - b) <= 0.0) { cert_piece_29(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((2.0 - c)); assert (0.0 <= ((2.0 - c) * (2.0 - c)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * -(-((2 : ℝ) - c) ^ (2 : ℕ) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 - c) * (2.0 - c)) * (b - c)) <= 0.0); (6.0 > 0.0)
          if (0.0 <= ((2.0 - c) * (2.0 - c))) && ((b - c) <= 0.0) { cert_piece_30(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℝ) + (9 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (11 : ℝ) * (c - (1 : ℝ)) + …`
          // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℝ) + (9 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (11 : ℝ) * (c - (1 : ℝ)) + …`
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℝ) + (9 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (11 : ℝ) * (c - (1 : ℝ)) + …`
          cert_identity_31(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×42 [exec 414 1689-1756]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×5, sub_eq_zero_of_eq ×3, Left.add_neg ×2, neg_eq_zero ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_neg_of_lt ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.mul_nonpos ×5, Linarith.lt_of_lt_of_eq ×3, Linarith.mul_eq ×3, Linarith.mul_neg ×2 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
          // UNCITED-APPLIED internal ×5 [exec 417 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 418 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 419 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 420 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 421 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 422 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 423 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 424 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 425 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg((c - 1.0));  // cite: sq_nonneg
          SqNonneg((2.0 - c));  // cite: sq_nonneg
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 415)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 416, 417, 418, 419, 420, 421 … / `ring1` exec 415)]
          if (((c - 1.0)) < (0.0)) { LeOfLt((c - 1.0), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // NOT APPLIED `sq_nonneg ( b - c )`, `sq_nonneg ( a - b )`, `sq_nonneg ( a - c )`: named here, but none of the 2 applications of sq_nonneg Lean recorded at this tactic has a named instance's arguments (recorded: sq_nonneg(c - (1 : ℝ)); sq_nonneg((2 : ℝ) - c))
          // UNCITED-APPLIED internal ×287 [exec 415 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.sub_congr ×8 (+44 more heads, ×255) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 416 1689-1756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₁ : c >= 2 / 3  [type from Lean state]
        assert (c >= (2.0 / 3.0)) by { // @tac 1800-1867
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1800-1867 exec 442)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - c) <= 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (c - (2 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (2.0 / 3.0)) < 0.0); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `a - b + (2 : ℝ) * (b - c) + -(a + b + c - (2 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_nonpos: certificate sum `a - b + (2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_32(a, b, c);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×16 [exec 442 1800-1867]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1, Linarith.mul_nonpos ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×5 [exec 447 1800-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 444 1800-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 443, 444 / `ring1` exec 446)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 445, 447 / `ring1` exec 446)]
          // UNCITED-APPLIED internal ×122 [exec 446 1800-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.add_congr ×5 (+33 more heads, ×98) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 443 1800-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 445 1800-1867]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₂ : 3 * c ^ 2 - 4 * c + 1 <= 0  [type from Lean state]
        assert ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0) by { // @tac 1927-1994
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1927-1994 exec 464)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0); (6.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * -(a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a * b) - ((c - 1.0) * (c - 1.0)))) == 0.0); (6.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * -((3 : ℝ) * c ^ (2 : ℕ) - (4 : ℝ) * c + (1 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (((3.0 * (c * c)) - (4.0 * c)) + 1.0)); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * (-c ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((c * c) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
          if (0.0 <= (c * c)) && ((((a + b) + c) - 2.0) == 0.0) { assert (-(((c * c) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
          SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℝ) * -(-c ^ (2 : ℕ) * (c - (1 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((c * c) * (c - 1.0)) <= 0.0); (9.0 > 0.0)
          if (0.0 <= (c * c)) && ((c - 1.0) <= 0.0) { cert_piece_33(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (a - b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((a - b) <= 0.0) { cert_piece_34(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((c - 1.0)); assert (0.0 <= ((c - 1.0) * (c - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (b - c)) <= 0.0); (6.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((b - c) <= 0.0) { cert_piece_35(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(3 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (c - (1 : ℝ)) + (6 : ℝ) * -(a * b - (c…`
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (c - (1 : ℝ)) + (6 : ℝ) * -(a * b - (c…`
          // UNCITED-APPLIED Left.add_neg: certificate sum `(3 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (c - (1 : ℝ)) + (6 : ℝ) * -(a * b - (c…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `(3 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b + b * c + c * a - (1 : ℝ)) + (c - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_36(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×33 [exec 464 1927-1994]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×5, sub_eq_zero_of_eq ×3, mul_nonneg_of_nonpos_of_nonpos ×3, neg_eq_zero ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, Left.add_neg ×1, sub_neg_of_lt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+5 more heads, ×5) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
          // UNCITED-APPLIED internal ×5 [exec 470 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 471 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 472 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 469 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 474 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 473 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 476 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg(c);  // cite: sq_nonneg
          SqNonneg((c - 1.0));  // cite: sq_nonneg
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 468)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 467, 469, 470, 471, 472, 473 … / `ring1` exec 468)]
          if (((c - 1.0)) < (0.0)) { LeOfLt((c - 1.0), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // NOT APPLIED `sq_nonneg ( b - c )`, `sq_nonneg ( a - b )`, `sq_nonneg ( a - c )`: named here, but none of the 2 applications of sq_nonneg Lean recorded at this tactic has a named instance's arguments (recorded: sq_nonneg(c); sq_nonneg(c - (1 : ℝ)))
          // UNCITED-APPLIED internal ×271 [exec 468 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×8 (+47 more heads, ×239) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 467 1927-1994]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₃ : c <= 1  [type from Lean state]
        assert (c <= 1.0) by { // @tac 2028-2037
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2028-2037 exec 493)
          cert_identity_37(a, b, c);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×7 [exec 493 2028-2037]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, le_of_not_gt ×1, Left.add_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
          // UNCITED-APPLIED internal ×33 [exec 497 2028-2037]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 497)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 497)]
        }
        // have h₁₄ : c >= 2 / 3  [type from Lean state]
        assert (c >= (2.0 / 3.0)) by { // @tac 2075-2084
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2075-2084 exec 514)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - c) <= 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (c - (2 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (2.0 / 3.0)) < 0.0); (3.0 > 0.0)
          // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `a - b + (2 : ℝ) * (b - c) + -(a + b + c - (2 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_nonpos: certificate sum `a - b + (2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_38(a, b, c);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×16 [exec 514 2075-2084]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1, Linarith.mul_nonpos ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×122 [exec 521 2075-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.add_congr ×5 (+33 more heads, ×98) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 522 2075-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 515 2075-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 516 2075-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 515, 516 / `ring1` exec 521)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 517, 522 / `ring1` exec 521)]
          // UNCITED-APPLIED internal ×5 [exec 517 2075-2084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₅ : b <= c  [type from Lean state]
        assert (b <= c);
          // [TACTIC: exact h₀ . 2]
        // have h₁₆ : a <= b  [type from Lean state]
        assert (a <= b);
          // [TACTIC: exact h₀ . 1]
        // have h₁₇ : ( 2 - c ) ^ 2 - 4 * ( c - 1 ) ^ 2 >= 0  [type from Lean state]
        assert ((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))) >= 0.0) by { // @tac 2226-2293
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2226-2293 exec 563)
          cert_identity_39(a, b, c);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 563 2226-2293]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 570)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 570)]
          // UNCITED-APPLIED internal ×186 [exec 570 2226-2293]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+45 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₈ : 3 * c ^ 2 - 4 * c + 1 <= 0  [type from Lean state]
        assert ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0) by { // @tac 2353-2420
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2353-2420 exec 587)
          cert_identity_40(a, b, c);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×5 [exec 587 2353-2420]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 594)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 594)]
          // UNCITED-APPLIED internal ×92 [exec 594 2353-2420]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.neg_add ×4 (+37 more heads, ×75) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        // have h₁₉ : c >= 1  [type from Lean state]
        assert (c >= 1.0) by { // @tac 2460-2477
          // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 618 2460-2477]
          // by_contra h
          if !((c >= 1.0)) {
            assert false by {  // sub-goal before `have` (Lean state) // @tac 2484-2519 // @tac 2526-2658 // @tac 2665-2789 // @tac 2796-2838 // @tac 2845-2883 // @tac 2890-2922 // @tac 2929-2961 // @tac 2968-3100 // @tac 3107-3231 // @tac 3238-3264
              // have h₂₁ : c < 1  [type from Lean state]
              assert (c < 1.0) by { // @tac 2511-2519
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2511-2519 exec 635)
                cert_identity_41(a, b, c);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×7 [exec 635 2511-2519]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
                // UNCITED-APPLIED internal ×33 [exec 642 2511-2519]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 642)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 642)]
              }
              // have h₂₂ : ( 2 - c ) ^ 2 - 4 * ( c - 1 ) ^ 2 >= 0  [type from Lean state]
              assert ((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))) >= 0.0) by { // @tac 2591-2658
                // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2591-2658 exec 659)
                cert_identity_42(a, b, c);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×6 [exec 659 2591-2658]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 666)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 666)]
                // UNCITED-APPLIED internal ×186 [exec 666 2591-2658]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+45 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
              // have h₂₃ : 3 * c ^ 2 - 4 * c + 1 <= 0  [type from Lean state]
              assert ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0) by { // @tac 2722-2789
                // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2722-2789 exec 683)
                cert_identity_43(a, b, c);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×5 [exec 683 2722-2789]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 690)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 690)]
                // UNCITED-APPLIED internal ×92 [exec 690 2722-2789]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.neg_add ×4 (+37 more heads, ×75) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
              // have h₂₄ : c >= 2 / 3  [type from Lean state]
              assert (c >= (2.0 / 3.0)) by { // @tac 2829-2838
                // [TACTIC: «Nlinarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2829-2838 exec 707)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - c) <= 0.0); (2.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (c - (2 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (2.0 / 3.0)) < 0.0); (3.0 > 0.0)
                // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `a - b + (2 : ℝ) * (b - c) + -(a + b + c - (2 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_nonpos: certificate sum `a - b + (2 : ℝ) * (b - c) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_44(a, b, c);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×16 [exec 707 2829-2838]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1, Linarith.mul_nonpos ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×122 [exec 717 2829-2838]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.add_congr ×5 (+33 more heads, ×98) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 718 2829-2838]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 708 2829-2838]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 709 2829-2838]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 708, 709 / `ring1` exec 717)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 710, 718 / `ring1` exec 717)]
                // UNCITED-APPLIED internal ×5 [exec 710 2829-2838]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              }
              // have h₂₅ : c <= 1  [type from Lean state]
              assert (c <= 1.0) by { // @tac 2874-2883
                // [TACTIC: «Nlinarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2874-2883 exec 735)
                cert_identity_45(a, b, c);  // cert: Left.add_neg
                // UNCITED-APPLIED internal ×7 [exec 735 2874-2883]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, le_of_not_gt ×1, Left.add_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
                // UNCITED-APPLIED internal ×33 [exec 745 2874-2883]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 745)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 745)]
              }
              // have h₂₆ : b <= c  [type from Lean state]
              assert (b <= c);
                // [TACTIC: exact h₀ . 2]
              // have h₂₇ : a <= b  [type from Lean state]
              assert (a <= b);
                // [TACTIC: exact h₀ . 1]
              // have h₂₈ : ( 2 - c ) ^ 2 - 4 * ( c - 1 ) ^ 2 >= 0  [type from Lean state]
              assert ((((2.0 - c) * (2.0 - c)) - (4.0 * ((c - 1.0) * (c - 1.0)))) >= 0.0) by { // @tac 3033-3100
                // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3033-3100 exec 786)
                cert_identity_46(a, b, c);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×6 [exec 786 3033-3100]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 796)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 796)]
                // UNCITED-APPLIED internal ×186 [exec 796 3033-3100]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+45 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
              // have h₂₉ : 3 * c ^ 2 - 4 * c + 1 <= 0  [type from Lean state]
              assert ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0) by { // @tac 3164-3231
                // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( a - b ) , sq_nonneg ( a - c ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3164-3231 exec 813)
                cert_identity_47(a, b, c);  // cert: add_lt_of_le_of_neg
                // UNCITED-APPLIED internal ×5 [exec 813 3164-3231]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 823)]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 823)]
                // UNCITED-APPLIED internal ×92 [exec 823 3164-3231]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.neg_add ×4 (+37 more heads, ×75) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
              // by_cases h₃₀ : c ≥ 1
              if (c >= 1.0) {
                assert false by {  // sub-goal before `linarith` (Lean state) // @tac 3274-3282 // @tac 3271-3282
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3274-3282 exec 833)
                  cert_identity_48(a, b, c);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×6 [exec 833 3274-3282]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
                  // UNCITED-APPLIED internal ×33 [exec 843 3274-3282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 843)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 843)]
                }
              } else {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 3292-3327 // @tac 3289-3466 // @tac 3336-3449 // @tac 3458-3466
                  // have h₃₁ : c < 1  [type from Lean state]
                  assert (c < 1.0) by { // @tac 3319-3327
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3319-3327 exec 864)
                    cert_identity_49(a, b, c);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×7 [exec 864 3319-3327]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
                    // UNCITED-APPLIED internal ×33 [exec 874 3319-3327]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 874)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 874)]
                  }
                  // have h₃₂ : 3 * c ^ 2 - 4 * c + 1 > 0  [type from Lean state]
                  assert ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) > 0.0) by { // @tac 3393-3449
                    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( c - 1 / 3 ) , sq_nonneg ( c - 2 / 3 ) ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3393-3449 exec 891)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(39 : ℝ) * -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * (b - c))); (39.0 > 0.0)
                    SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
                    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(20 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (20.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(15 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (15.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(24 : ℝ) * (c - (1 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - 1.0) < 0.0); (24.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(54 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * b) - ((c - 1.0) * (c - 1.0))) == 0.0); (54.0 > 0.0)
                    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (-((3 : ℝ) * c - (1 : ℝ) * (2 : ℝ)) ^ (2 : ℕ) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((3.0 * c) - (1.0 * 2.0)) * ((3.0 * c) - (1.0 * 2.0))) * (((a + b) + c) - 2.0))) == 0.0); (4.0 > 0.0)
                    if (0.0 <= (((3.0 * c) - (1.0 * 2.0)) * ((3.0 * c) - (1.0 * 2.0)))) && ((((a + b) + c) - 2.0) == 0.0) { assert (-(((((3.0 * c) - (1.0 * 2.0)) * ((3.0 * c) - (1.0 * 2.0))) * (((a + b) + c) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
                    SqNonneg(((3.0 * c) - (1.0 * 2.0))); assert (0.0 <= (((3.0 * c) - (1.0 * 2.0)) * ((3.0 * c) - (1.0 * 2.0))));  // cert: sq_nonneg
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-c ^ (2 : ℕ) * ((3 : ℝ) * c ^ (2 : ℕ) - (4 : ℝ) * c + (1 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((c * c) * (((3.0 * (c * c)) - (4.0 * c)) + 1.0)) <= 0.0); (27.0 > 0.0)
                    if (0.0 <= (c * c)) && ((((3.0 * (c * c)) - (4.0 * c)) + 1.0) <= 0.0) { cert_piece_50(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -((3 : ℝ) * c - (1 : ℝ) * (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0))))); (9.0 > 0.0)
                    if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0)))) { cert_piece_51(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    SqNonneg((c - 1.0)); assert (0.0 <= ((c - 1.0) * (c - 1.0)));  // cert: sq_nonneg
                    SqNonneg(((3.0 * c) - (1.0 * 1.0))); assert (0.0 <= (((3.0 * c) - (1.0 * 1.0)) * ((3.0 * c) - (1.0 * 1.0))));  // cert: sq_nonneg
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(36 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (a - b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (a - b)) <= 0.0); (36.0 > 0.0)
                    if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((a - b) <= 0.0) { cert_piece_52(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(72 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - 1.0) * (c - 1.0)) * (b - c)) <= 0.0); (72.0 > 0.0)
                    if (0.0 <= ((c - 1.0) * (c - 1.0))) && ((b - c) <= 0.0) { cert_piece_53(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(39 : ℝ) * -((a - b) * (b - c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - b) * (b - c))); (39.0 > 0.0)
                    if ((a - b) <= 0.0) && ((b - c) <= 0.0) { cert_piece_54(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(39 : ℝ) * -(b - c) ^ (2 : ℕ) + (20 : ℝ) * -(a + b + c - (2 : ℝ)) + (15 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (24…`
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(39 : ℝ) * -(b - c) ^ (2 : ℕ) + (20 : ℝ) * -(a + b + c - (2 : ℝ)) + (15 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (24…`
                    // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(39 : ℝ) * -(b - c) ^ (2 : ℕ) + (20 : ℝ) * -(a + b + c - (2 : ℝ)) + (15 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (24…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(39 : ℝ) * -(b - c) ^ (2 : ℕ) + (20 : ℝ) * -(a + b + c - (2 : ℝ)) + (15 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) ≤ (0 …`
                    cert_identity_55(a, b, c);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×41 [exec 891 3393-3449]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×5, sub_eq_zero_of_eq ×3, neg_eq_zero ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_nonpos ×6, Linarith.mul_eq ×4, Linarith.lt_of_lt_of_eq ×2, Linarith.le_of_le_of_eq ×2 (+4 more heads, ×4) (cited in this block, not counted here: sq_nonneg [Lean recorded ×5])
                    // UNCITED-APPLIED internal ×5 [exec 910 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 911 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 912 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 913 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 914 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 915 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 916 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 918 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 919 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 920 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    SqNonneg((b - c));  // cite: sq_nonneg
                    SqNonneg(((3.0 * c) - (1.0 * 2.0)));  // cite: sq_nonneg
                    SqNonneg(c);  // cite: sq_nonneg
                    SqNonneg((c - 1.0));  // cite: sq_nonneg
                    SqNonneg(((3.0 * c) - (1.0 * 1.0)));  // cite: sq_nonneg
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 909)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 895, 910, 911, 912, 913, 914 … / `ring1` exec 909)]
                    // UNCITED-APPLIED internal ×310 [exec 909 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.neg_congr ×8 (+46 more heads, ×278) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 895 3393-3449]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  }
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3458-3466 exec 921)
                  cert_identity_56(a, b, c);  // cert: add_lt_of_le_of_neg
                  // UNCITED-APPLIED internal ×4 [exec 921 3458-3466]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                  // UNCITED-APPLIED internal ×92 [exec 931 3458-3466]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.neg_add ×4 (+37 more heads, ×75) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 931)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 931)]
                }
              }
            }
            assert false;
          }
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3471-3479 exec 932)
        cert_identity_57(a, b, c);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 932 3471-3479]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.PushNeg.not_le_eq ×1
        // UNCITED-APPLIED internal ×33 [exec 939 3471-3479]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 939)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 939)]
      }
      assert false;
    }
  }
  // have h₅ : c <= 4 / 3  [type from Lean state]
  assert (c <= (4.0 / 3.0)) by { // @tac 3519-3555 // @tac 3560-3608 // @tac 3613-3645 // @tac 3650-3682 // @tac 3687-3717 // @tac 3722-3752 // @tac 3757-3805 // @tac 3810-4126 // @tac 4131-4161 // @tac 4131-4144
    // have h₅₁ : a + b + c == 2  [type from Lean state]
    assert (((a + b) + c) == 2.0) by {
      // [TACTIC: exact h₁]
      assert (((a + b) + c) == 2.0);
    }
    // have h₅₂ : a * b + b * c + c * a == 1  [type from Lean state]
    assert ((((a * b) + (b * c)) + (c * a)) == 1.0) by {
      // [TACTIC: exact h₂]
      assert ((((a * b) + (b * c)) + (c * a)) == 1.0);
    }
    // have h₅₃ : a <= b  [type from Lean state]
    assert (a <= b);
      // [TACTIC: exact h₀ . 1]
    // have h₅₄ : b <= c  [type from Lean state]
    assert (b <= c);
      // [TACTIC: exact h₀ . 2]
    // have h₅₅ : 0 <= a  [type from Lean state]
    assert (0.0 <= a) by {
      // [TACTIC: exact h₃]
      assert (0.0 <= a);
    }
    // have h₅₆ : 1 <= c  [type from Lean state]
    assert (1.0 <= c) by {
      // [TACTIC: exact h₄]
      assert (1.0 <= c);
    }
    // have h₅₇ : ( b - c ) ^ 2 >= 0  [type from Lean state]
    assert (((b - c) * (b - c)) >= 0.0) by { // @tac 3796-3805
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3796-3805 exec 1044)
      SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
      cert_identity_58(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×6 [exec 1044 3796-3805]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×110 [exec 1045 3796-3805]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_pf_left ×6, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Tactic.Ring.add_mul ×5 (+43 more heads, ×87) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1045)]
      SqNonneg((b - c));  // cite: sq_nonneg [applied by the tactic, not named in it]
    }
    // have h₅₈ : c <= 4 / 3  [type from Lean state]
    assert (c <= (4.0 / 3.0)) by { // @tac 3849-4126
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , mul_nonneg ( sub_nonneg.mpr h₅₅ ) ( sub_nonneg.mpr h₅₃ ) , mul_nonneg ( sub_nonneg.mpr h₅₃ ) ( sub_nonneg.mpr h₅₄ ) , mul_nonneg ( sub_nonneg.mpr h₅₅ ) ( sub_nonneg.mpr h₅₄ ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3849-4126 exec 1062)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(a - b) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - b) * (a - b))); (3.0 > 0.0)
      SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(18 : ℝ) * (a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a + b) + c) - 2.0) == 0.0); (18.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(12 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * (4 : ℝ) - (3 : ℝ) * c) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 4.0) - (3.0 * c)) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((4 / 3 : ℝ) - c) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((4.0 / 3.0) - c) < 0.0); (3.0 > 0.0)
      if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      if ((a - b) <= 0.0) && (((1.0 * 4.0) - (3.0 * c)) <= 0.0) { cert_piece_59(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((b - c) * (((a + b) + c) - 2.0))) == 0.0); (2.0 > 0.0)
      if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -((b - c) * ((1 : ℝ) * (4 : ℝ) - (3 : ℝ) * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b - c) * ((1.0 * 4.0) - (3.0 * c)))); (2.0 > 0.0)
      if ((b - c) <= 0.0) && (((1.0 * 4.0) - (3.0 * c)) <= 0.0) { cert_piece_60(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * ((a + b + c - (2 : ℝ)) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a + b) + c) - 2.0) * (((a + b) + c) - 2.0)) == 0.0); (4.0 > 0.0)
      if ((((a + b) + c) - 2.0) == 0.0) { assert (((((a + b) + c) - 2.0) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.zero_mul_eq
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(a - b) ^ (2 : ℕ) + (18 : ℝ) * (a + b + c - (2 : ℝ)) + (12 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (2 : …`
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(a - b) ^ (2 : ℕ) + (18 : ℝ) * (a + b + c - (2 : ℝ)) + (12 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (2 : …`
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(3 : ℝ) * -(a - b) ^ (2 : ℕ) + (18 : ℝ) * (a + b + c - (2 : ℝ)) + (12 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) + (2 : …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(a - b) ^ (2 : ℕ) + (18 : ℝ) * (a + b + c - (2 : ℝ)) + (12 : ℝ) * -(a * b + b * c + c * a - (1 : ℝ)) ≤ (0 : …`
      cert_identity_61(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×34 [exec 1062 3849-4126]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, neg_eq_zero ×3, sub_eq_zero_of_eq ×2, sub_nonpos_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.le_of_le_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.mul_neg ×2 (+5 more heads, ×6) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1068 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1069 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1064 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1067 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1070 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1071 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1072 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1073 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      SqNonneg((a - b));  // cite: sq_nonneg
      // NOT APPLIED mul_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      // NOT APPLIED sub_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1063, 1064 / `ring1` exec 1066)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1065, 1067, 1068, 1069, 1070, 1071 … / `ring1` exec 1066)]
      if ((((1.0 * 4.0) - (3.0 * c))) < (0.0)) { LeOfLt(((1.0 * 4.0) - (3.0 * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
      // NOT APPLIED `sq_nonneg ( b - c )`, `sq_nonneg ( c - a )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 3 named instances match a recorded application)
      // UNCITED-APPLIED internal ×263 [exec 1066 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+44 more heads, ×231) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1065 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1063 3849-4126]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: «_<;>_» h₅₈ exact h₅₈ <;> linarith linarith]
    // [TACTIC: exact h₅₈]
    assert (c <= (4.0 / 3.0));
    // `exact` closed the goal; the rest of the chain did not run
  }
  // have h₆ : a <= 1 / 3  [type from Lean state]
  assert (a <= (1.0 / 3.0)) by { // @tac 4201-4244 // @tac 4249-4502 // @tac 4507-4537 // @tac 4542-4576 // @tac 4581-4887 // @tac 4892-4905
    // have h₆₁ : a + b == 2 - c  [type from Lean state]
    assert ((a + b) == (2.0 - c)) by { // @tac 4236-4244
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4236-4244 exec 1118)
      cert_identity_62(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_63(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×11 [exec 1118 4236-4244]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×72 [exec 1122 4236-4244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+23 more heads, ×53) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×62 [exec 1126 4236-4244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4 (+21 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1122, 1126)]
    }
    // have h₆₂ : a * b == ( c - 1 ) ^ 2  [type from Lean state]
    assert ((a * b) == ((c - 1.0) * (c - 1.0))) by { // @tac 4296-4344 // @tac 4351-4387 // @tac 4394-4456 // @tac 4463-4486 // @tac 4493-4502
      // have h₆₃ : a * b + b * c + c * a == 1  [type from Lean state]
      assert ((((a * b) + (b * c)) + (c * a)) == 1.0) by {
        // [TACTIC: exact h₂]
        assert ((((a * b) + (b * c)) + (c * a)) == 1.0);
      }
      // have h₆₄ : a + b + c == 2  [type from Lean state]
      assert (((a + b) + c) == 2.0) by {
        // [TACTIC: exact h₁]
        assert (((a + b) + c) == 2.0);
      }
      // have h₆₅ : a * b == 1 - c * ( a + b )  [type from Lean state]
      assert ((a * b) == (1.0 - (c * (a + b)))) by { // @tac 4447-4456
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4447-4456 exec 1183)
        cert_identity_64(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_65(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 1183 4447-4456]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×106 [exec 1187 4447-4456]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.mul_add ×5 (+31 more heads, ×79) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×94 [exec 1191 4447-4456]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.neg_mul ×5 (+29 more heads, ×72) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1187, 1191)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1187, 1191)]
      }
      // [TACTIC: rwSeq [ h₆₁ ] at h₆₅]
      assert ((a * b) == (1.0 - (c * (2.0 - c))));  // hypothesis h₆₅ after `rw` (Lean state) // @tac-hyp 4463-4486
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4493-4502 exec 1223)
      cert_identity_66(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_67(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×12 [exec 1223 4493-4502]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×152 [exec 1227 4493-4502]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+44 more heads, ×120) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×153 [exec 1231 4493-4502]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+43 more heads, ×121) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1227, 1231)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1227, 1231)]
    }
    // have h₆₃ : c >= 1  [type from Lean state]
    assert (c >= 1.0) by {
      // [TACTIC: exact h₄]
      assert (1.0 <= c);
    }
    // have h₆₄ : c <= 4 / 3  [type from Lean state]
    assert (c <= (4.0 / 3.0)) by {
      // [TACTIC: exact h₅]
      assert (c <= (4.0 / 3.0));
    }
    // have h₆₅ : a <= 1 / 3  [type from Lean state]
    assert a <= b;  /* [IN-FILE CHECK] requires 1 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert b <= c;  /* [IN-FILE CHECK] requires 2 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert a + b + c == 2.0;  /* [IN-FILE CHECK] requires 3 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert a * b + b * c + c * a == 1.0;  /* [IN-FILE CHECK] requires 4 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 0.0 <= a;  /* [IN-FILE CHECK] requires 5 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 1.0 <= c;  /* [IN-FILE CHECK] requires 6 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 3.0 != 0.0;  /* [IN-FILE CHECK] requires 7 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert c <= 4.0 / 3.0;  /* [IN-FILE CHECK] requires 8 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert a + b == 2.0 - c;  /* [IN-FILE CHECK] requires 9 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert a * b == (c - 1.0) * (c - 1.0);  /* [IN-FILE CHECK] requires 10 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert c >= 1.0;  /* [IN-FILE CHECK] requires 11 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (0.0 <= a - 0.0) || (a - 0.0 < 0.0);  /* [IN-FILE CHECK] requires 12 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert ((0.0 <= a - 0.0) && (0.0 <= b - a) && (0.0 <= (a - 0.0) * (b - a)) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= a - 0.0 && 0.0 <= b - a)) && ((a - b <= 0.0) || (0.0 < a - b)));  /* [IN-FILE CHECK] requires 13 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)));  /* [IN-FILE CHECK] requires 14 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert ((b - c <= 0.0) && (a + b + c - 2.0 == 0.0) && ((b - c) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(b - c <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)));  /* [IN-FILE CHECK] requires 15 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert ((b - c <= 0.0) && (3.0 * c - 1.0 * 4.0 <= 0.0) && (0.0 <= (b - c) * (3.0 * c - 1.0 * 4.0))) || (!(b - c <= 0.0 && 3.0 * c - 1.0 * 4.0 <= 0.0));  /* [IN-FILE CHECK] requires 16 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 2.0 * (a - b) + (0.0 - 2.0 * (a + b + c - 2.0)) + 6.0 * (a * b - (c - 1.0) * (c - 1.0)) + 2.0 * (1.0 * 1.0 - 3.0 * a) + (0.0 - 3.0 * ((a - 0.0) * (b - a))) + (0.0 - 3.0 * ((a - b) * (a + b + c - 2.0))) + (0.0 - 3.0 * ((b - c) * (a + b + c - 2.0))) + (0.0 - (b - c) * (3.0 * c - 1.0 * 4.0)) == 0.0;  /* [IN-FILE CHECK] requires 17 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (0.0 <= a - 0.0) == (0.0 <= a);  /* [IN-FILE CHECK] requires 18 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (0.0 <= b - a) == (a <= b);  /* [IN-FILE CHECK] requires 19 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (1 as real) == 1.0;  /* [IN-FILE CHECK] requires 20 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (0 as real) == 0.0;  /* [IN-FILE CHECK] requires 21 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert (0.0 <= a - 0.0) || (a - 0.0 < 0.0);  /* [IN-FILE CHECK] requires 22 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 0.0 <= a - 0.0;  /* [IN-FILE CHECK] requires 23 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 0.0 <= b - a;  /* [IN-FILE CHECK] requires 24 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    assert 0.0 <= (a - 0.0) * (b - a);  /* [IN-FILE CHECK] requires 25 of vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502 */
    vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502(a, b, c);  /* [IN-FILE CHECK] the closed lemma for line 1502 */
    assert (a <= (1.0 / 3.0)) by { // @tac 4620-4887
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 1 ) , mul_nonneg ( sub_nonneg.mpr h₀ . 1 ) ( sub_nonneg.mpr h₀ . 2 ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 2 ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4620-4887 exec 1272)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (a - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - b) <= 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * b) - ((c - 1.0) * (c - 1.0))) == 0.0); (6.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * (1 : ℝ) - (3 : ℝ) * a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 1.0) - (3.0 * a)) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((1 / 3 : ℝ) - a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 / 3.0) - a) < 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -((a - (0 : ℝ)) * (b - a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - 0.0) * (b - a))); (3.0 > 0.0)
      if (0.0 <= (a - 0.0)) && (0.0 <= (b - a)) { cert_piece_68(a, b, c); }  // cert: mul_nonneg
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a - b) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((b - c) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      if ((b - c) <= 0.0) && (((3.0 * c) - (1.0 * 4.0)) <= 0.0) { cert_piece_69(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (c - (4 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (4.0 / 3.0)) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…`
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)`
      cert_identity_70(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×36 [exec 1272 4620-4887]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×3, neg_eq_zero ×3, sub_eq_zero_of_eq ×2, CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, neg_nonpos_of_nonneg ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_nonpos ×3, Linarith.le_of_le_of_eq ×2, Linarith.mul_neg ×2 (+4 more heads, ×6) (cited in this block, not counted here: mul_nonneg [Lean recorded ×1], sub_nonneg [Lean recorded ×2])
      // UNCITED-APPLIED internal ×5 [exec 1283 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1284 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1285 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1274 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1286 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1278 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1281 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1287 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1276 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1277 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1288 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      SubNonneg(a, 0.0);  // cite: sub_nonneg
      SubNonneg(b, a);  // cite: sub_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1273, 1274, 1276, 1277 / `ring1` exec 1282)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1275, 1278, 1281, 1283, 1284, 1285 … / `ring1` exec 1282)]
      // NOT APPLIED 2 of the 3 named instances of mul_nonneg: Lean's records at this tactic hold only 1 distinct application of it (which named ones: not identified)
      assert (0.0 <= ((a - 0.0))) && (0.0 <= ((b - a)));  // precondition of MulNonneg (Lean: mul_nonneg)
      MulNonneg((a - 0.0), (b - a));  // cite: mul_nonneg
      // UNCITED-APPLIED internal ×268 [exec 1282 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.sub_congr ×8, Mathlib.Tactic.Ring.sub_pf ×8, Mathlib.Tactic.Ring.neg_add ×8 (+44 more heads, ×236) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1273 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1275 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₆₅]
    assert (a <= (1.0 / 3.0));
  }
  // have h₇ : 1 / 3 <= b  [type from Lean state]
  assert ((1.0 / 3.0) <= b) by { // @tac 4945-4988 // @tac 4993-5027 // @tac 5032-5062 // @tac 5067-5099 // @tac 5104-5134 // @tac 5139-5245 // @tac 5250-5263
    // have h₇₁ : a + b == 2 - c  [type from Lean state]
    assert ((a + b) == (2.0 - c)) by { // @tac 4980-4988
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4980-4988 exec 1323)
      cert_identity_71(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_72(a, b, c);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×11 [exec 1323 4980-4988]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×72 [exec 1330 4980-4988]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+23 more heads, ×53) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×62 [exec 1337 4980-4988]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4 (+21 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1330, 1337)]
    }
    // have h₇₂ : c <= 4 / 3  [type from Lean state]
    assert (c <= (4.0 / 3.0)) by {
      // [TACTIC: exact h₅]
      assert (c <= (4.0 / 3.0));
    }
    // have h₇₃ : 1 <= c  [type from Lean state]
    assert (1.0 <= c) by {
      // [TACTIC: exact h₄]
      assert (1.0 <= c);
    }
    // have h₇₄ : a <= b  [type from Lean state]
    assert (a <= b);
      // [TACTIC: exact h₀ . 1]
    // have h₇₅ : 0 <= a  [type from Lean state]
    assert (0.0 <= a) by {
      // [TACTIC: exact h₃]
      assert (0.0 <= a);
    }
    // have h₇₆ : 1 / 3 <= b  [type from Lean state]
    assert ((1.0 / 3.0) <= b) by { // @tac 5178-5245
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5178-5245 exec 1402)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (a - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - b) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (c - (4 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (4.0 / 3.0)) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((3 : ℝ) * b - (1 : ℝ) * (1 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((3.0 * b) - (1.0 * 1.0)) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (b - (1 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - (1.0 / 3.0)) < 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED add_nonpos: certificate sum `(3 : ℝ) * (a - b) + (3 : ℝ) * -(a + b + c - (2 : ℝ)) + ((3 : ℝ) * c - (1 : ℝ) * (4 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `(3 : ℝ) * (a - b) + (3 : ℝ) * -(a + b + c - (2 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_73(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 1402 5178-5245]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.mul_nonpos ×2, Linarith.mul_neg ×2, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×5 [exec 1408 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1404 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1411 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1406 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1407 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1414 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1418 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1403, 1404, 1406, 1407 / `ring1` exec 1415)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1405, 1408, 1411, 1414, 1418 / `ring1` exec 1415)]
      // UNCITED-APPLIED internal ×169 [exec 1415 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×137) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1405 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1403 5178-5245]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: exact h₇₆]
    assert ((1.0 / 3.0) <= b);
  }
  // have h₈ : b <= 1  [type from Lean state]
  assert (b <= 1.0) by { // @tac 5299-5335 // @tac 5340-5388 // @tac 5393-5425 // @tac 5430-5462 // @tac 5467-5497 // @tac 5502-5532 // @tac 5537-5571 // @tac 5576-5610 // @tac 5615-5649 // @tac 5692-5759
    // have h₈₁ : a + b + c == 2  [type from Lean state]
    assert (((a + b) + c) == 2.0) by {
      // [TACTIC: exact h₁]
      assert (((a + b) + c) == 2.0);
    }
    // have h₈₂ : a * b + b * c + c * a == 1  [type from Lean state]
    assert ((((a * b) + (b * c)) + (c * a)) == 1.0) by {
      // [TACTIC: exact h₂]
      assert ((((a * b) + (b * c)) + (c * a)) == 1.0);
    }
    // have h₈₃ : a <= b  [type from Lean state]
    assert (a <= b);
      // [TACTIC: exact h₀ . 1]
    // have h₈₄ : b <= c  [type from Lean state]
    assert (b <= c);
      // [TACTIC: exact h₀ . 2]
    // have h₈₅ : 0 <= a  [type from Lean state]
    assert (0.0 <= a) by {
      // [TACTIC: exact h₃]
      assert (0.0 <= a);
    }
    // have h₈₆ : 1 <= c  [type from Lean state]
    assert (1.0 <= c) by {
      // [TACTIC: exact h₄]
      assert (1.0 <= c);
    }
    // have h₈₇ : c <= 4 / 3  [type from Lean state]
    assert (c <= (4.0 / 3.0)) by {
      // [TACTIC: exact h₅]
      assert (c <= (4.0 / 3.0));
    }
    // have h₈₈ : a <= 1 / 3  [type from Lean state]
    assert (a <= (1.0 / 3.0)) by {
      // [TACTIC: exact h₆]
      assert (a <= (1.0 / 3.0));
    }
    // have h₈₉ : 1 / 3 <= b  [type from Lean state]
    assert ((1.0 / 3.0) <= b) by {
      // [TACTIC: exact h₇]
      assert ((1.0 / 3.0) <= b);
    }
    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5692-5759 exec 1544)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - b) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - b) < 0.0); (2.0 > 0.0)
    // UNCITED-APPLIED add_nonpos: certificate sum `b - c + (a + b + c - (2 : ℝ)) + -a ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `b - c + (a + b + c - (2 : ℝ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_74(a, b, c);  // cert: add_lt_of_le_of_neg
    // UNCITED-APPLIED internal ×11 [exec 1544 5692-5759]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_nonpos_of_le ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.le_of_le_of_eq ×1, Linarith.mul_neg ×1
    // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1563)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1564 / `ring1` exec 1563)]
    // UNCITED-APPLIED internal ×90 [exec 1563 5692-5759]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_add ×4 (+33 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 1564 5692-5759]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₉ : 0 <= a && a <= 1 / 3 && 1 / 3 <= b && b <= 1 && 1 <= c && c <= 4 / 3  [type from Lean state]
  assert ((0.0 <= a) && ((a <= (1.0 / 3.0)) && (((1.0 / 3.0) <= b) && ((b <= 1.0) && ((1.0 <= c) && (c <= (4.0 / 3.0))))))); // @tac 5867-5913
    // [TACTIC: exact ⟨ h₃ , h₆ , h₇ , h₈ , h₄ , h₅ ⟩ ⟨ h₃ , h₆ , h₇ , h₈ , h₄ , h₅ ⟩]
    // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
  // [TACTIC: exact h₉]
  assert ((0.0 <= a) && ((a <= (1.0 / 3.0)) && (((1.0 / 3.0) <= b) && ((b <= 1.0) && ((1.0 <= c) && (c <= (4.0 / 3.0)))))));
}



// ===== closed lemma for line 1502 (from closed/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-1502.dfy) =====

lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires 0.0 <= a
  requires 1.0 <= c
  requires 3.0 != 0.0
  requires c <= 4.0 / 3.0
  requires a + b == 2.0 - c
  requires a * b == (c - 1.0) * (c - 1.0)
  requires c >= 1.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires ((0.0 <= a - 0.0) && (0.0 <= b - a) && (0.0 <= (a - 0.0) * (b - a)) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= a - 0.0 && 0.0 <= b - a)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (a + b + c - 2.0 == 0.0) && ((b - c) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(b - c <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (3.0 * c - 1.0 * 4.0 <= 0.0) && (0.0 <= (b - c) * (3.0 * c - 1.0 * 4.0))) || (!(b - c <= 0.0 && 3.0 * c - 1.0 * 4.0 <= 0.0))
  requires 2.0 * (a - b) + (0.0 - 2.0 * (a + b + c - 2.0)) + 6.0 * (a * b - (c - 1.0) * (c - 1.0)) + 2.0 * (1.0 * 1.0 - 3.0 * a) + (0.0 - 3.0 * ((a - 0.0) * (b - a))) + (0.0 - 3.0 * ((a - b) * (a + b + c - 2.0))) + (0.0 - 3.0 * ((b - c) * (a + b + c - 2.0))) + (0.0 - (b - c) * (3.0 * c - 1.0 * 4.0)) == 0.0
  requires (0.0 <= a - 0.0) == (0.0 <= a)
  requires (0.0 <= b - a) == (a <= b)
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires 0.0 <= a - 0.0
  requires 0.0 <= b - a
  requires 0.0 <= (a - 0.0) * (b - a)
  ensures   a <= 1.0 / 3.0
{
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 1 ) , mul_nonneg ( sub_nonneg.mpr h₀ . 1 ) ( sub_nonneg.mpr h₀ . 2 ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 2 ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4620-4887 exec 1272)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (a - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - b) <= 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * b) - ((c - 1.0) * (c - 1.0))) == 0.0); (6.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * (1 : ℝ) - (3 : ℝ) * a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 1.0) - (3.0 * a)) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((1 / 3 : ℝ) - a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 / 3.0) - a) < 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -((a - (0 : ℝ)) * (b - a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - 0.0) * (b - a))); (3.0 > 0.0)
      if (0.0 <= (a - 0.0)) && (0.0 <= (b - a)) { cert_piece_68(a, b, c); }  // cert: mul_nonneg
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a - b) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((b - c) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      if ((b - c) <= 0.0) && (((3.0 * c) - (1.0 * 4.0)) <= 0.0) { cert_piece_69(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (c - (4 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (4.0 / 3.0)) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…`
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)`
      cert_identity_70(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×36 [exec 1272 4620-4887]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×3, neg_eq_zero ×3, sub_eq_zero_of_eq ×2, CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, neg_nonpos_of_nonneg ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_nonpos ×3, Linarith.le_of_le_of_eq ×2, Linarith.mul_neg ×2 (+4 more heads, ×6) (cited in this block, not counted here: mul_nonneg [Lean recorded ×1], sub_nonneg [Lean recorded ×2])
      // UNCITED-APPLIED internal ×5 [exec 1283 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1284 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1285 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1274 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1286 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1278 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1281 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1287 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1276 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1277 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1288 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      SubNonneg(a, 0.0);  // cite: sub_nonneg
      SubNonneg(b, a);  // cite: sub_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1273, 1274, 1276, 1277 / `ring1` exec 1282)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1275, 1278, 1281, 1283, 1284, 1285 … / `ring1` exec 1282)]
      // NOT APPLIED 2 of the 3 named instances of mul_nonneg: Lean's records at this tactic hold only 1 distinct application of it (which named ones: not identified)
      assert (0.0 <= ((a - 0.0))) && (0.0 <= ((b - a)));  // precondition of MulNonneg (Lean: mul_nonneg)
      MulNonneg((a - 0.0), (b - a));  // cite: mul_nonneg
      // UNCITED-APPLIED internal ×268 [exec 1282 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.sub_congr ×8, Mathlib.Tactic.Ring.sub_pf ×8, Mathlib.Tactic.Ring.neg_add ×8 (+44 more heads, ×236) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1273 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1275 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
}

