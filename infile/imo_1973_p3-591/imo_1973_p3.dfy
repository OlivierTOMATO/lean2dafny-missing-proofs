// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1973_p3.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, x: real)
  ensures (((-((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0)) + (2.0 * ((((((x * x) + 1.0) * ((x * x) + 1.0)) * x) + ((a * ((x * x) + 1.0)) * (x * x))) + ((b - 2.0) * ((x * x) * x))))) + (((x - 1.0) * (x - 1.0)) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0))) + -(((x * x) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, x: real)
  ensures ((((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) + -((2.0 * ((((((x * x) + 1.0) * ((x * x) + 1.0)) * x) + ((a * ((x * x) + 1.0)) * (x * x))) + ((b - 2.0) * ((x * x) * x)))))) + -((((x - 1.0) * (x - 1.0)) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0)))) + ((x * x) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, x: real)
  ensures (-(((x - 1.0) * (x - 1.0))) + (((x * x) + 1.0) - (2.0 * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, x: real)
  ensures (((1.0 * Real.div(((x * x) + 1.0), x)) - (1.0 * 2.0)) + ((1.0 * 2.0) - (1.0 * Real.div(((x * x) + 1.0), x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, x: real)
  ensures (x + -(x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, x: real)
  ensures (-(((x + 1.0) * (x + 1.0))) + (((x * x) + 1.0) - -((2.0 * x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, x: real)
  ensures ((-((1.0 * 2.0)) - (1.0 * Real.div(((x * x) + 1.0), x))) + ((1.0 * Real.div(((x * x) + 1.0), x)) - -((1.0 * 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, y: real)
  ensures ((-(((a + (2.0 * y)) * (a + (2.0 * y)))) + (4.0 * (((y * y) + (a * y)) + (b - 2.0)))) + ((a * a) - (4.0 * (b - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real, y: real)
  ensures ((-(((a + (2.0 * y)) * (a + (2.0 * y)))) + (4.0 * (((y * y) + (a * y)) + (b - 2.0)))) + ((a * a) - (4.0 * (b - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, y: real)
  requires (0.0 <= ((y + 2.0) * (y + 2.0)))
  requires (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0))))
  ensures (0.0 <= (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0)))))
{
  MulNonneg(((y + 2.0) * (y + 2.0)), ((a - (b * 2.0)) * (a - (b * 2.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(a: real, b: real, y: real)
  requires (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0))))
  requires (0.0 <= ((y - 2.0) * (y - 2.0)))
  ensures (0.0 <= (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0))))
{
  MulNonneg(((a + (b * 2.0)) * (a + (b * 2.0))), ((y - 2.0) * (y - 2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(a: real, b: real, y: real)
  requires (0.0 <= ((1.0 * b) * (1.0 * b)))
  requires (0.0 <= ((y - 2.0) * (y - 2.0)))
  ensures (0.0 <= (((1.0 * b) * (1.0 * b)) * ((y - 2.0) * (y - 2.0))))
{
  MulNonneg(((1.0 * b) * (1.0 * b)), ((y - 2.0) * (y - 2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(a: real, b: real, y: real)
  requires (0.0 <= ((1.0 * b) * (1.0 * b)))
  requires ((2.0 - y) <= 0.0)
  ensures ((((1.0 * b) * (1.0 * b)) * (2.0 - y)) <= 0.0)
{
  MulNonneg(((1.0 * b) * (1.0 * b)), -((2.0 - y))); MulNeg(((1.0 * b) * (1.0 * b)), (2.0 - y)); assert (((1.0 * b) * (1.0 * b))) * (-((2.0 - y))) == -((((1.0 * b) * (1.0 * b))) * ((2.0 - y)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(a: real, b: real, y: real)
  requires (0.0 <= ((y - 2.0) * (y - 2.0)))
  ensures (0.0 <= (((y - 2.0) * (y - 2.0)) * ((y - 2.0) * (y - 2.0))))
{
  MulNonneg(((y - 2.0) * (y - 2.0)), ((y - 2.0) * (y - 2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(a: real, b: real, y: real)
  requires (0.0 <= ((y - 2.0) * (y - 2.0)))
  requires ((2.0 - y) <= 0.0)
  ensures ((((y - 2.0) * (y - 2.0)) * (2.0 - y)) <= 0.0)
{
  MulNonneg(((y - 2.0) * (y - 2.0)), -((2.0 - y))); MulNeg(((y - 2.0) * (y - 2.0)), (2.0 - y)); assert (((y - 2.0) * (y - 2.0))) * (-((2.0 - y))) == -((((y - 2.0) * (y - 2.0))) * ((2.0 - y)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(a: real, b: real, y: real)
  requires (0.0 <= (y * y))
  requires ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) <= 0.0)
  ensures (((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) <= 0.0)
{
  MulNonneg((y * y), -((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))); MulNeg((y * y), (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))); assert ((y * y)) * (-((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))) == -(((y * y)) * ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(a: real, b: real, y: real)
  ensures (((((((((((((-((1528.0 * ((y - 2.0) * (y - 2.0)))) + -((960.0 * (((y * y) + (a * y)) + (b - 2.0))))) + (992.0 * (2.0 - y))) + (8.0 * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))) + -((5.0 * (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0))))))) + (80.0 * (((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0))))) + -((5.0 * (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0)))))) + -((50.0 * (((1.0 * b) * (1.0 * b)) * ((y - 2.0) * (y - 2.0)))))) + (200.0 * (((1.0 * b) * (1.0 * b)) * (2.0 - y)))) + -((80.0 * (((y - 2.0) * (y - 2.0)) * ((y - 2.0) * (y - 2.0)))))) + (80.0 * (((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))))) + (640.0 * (((y - 2.0) * (y - 2.0)) * (2.0 - y)))) + (18.0 * ((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))))) + -((80.0 * ((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(a: real, b: real, y: real)
  requires (0.0 <= ((y + 2.0) * (y + 2.0)))
  ensures (0.0 <= (((y + 2.0) * (y + 2.0)) * ((y + 2.0) * (y + 2.0))))
{
  MulNonneg(((y + 2.0) * (y + 2.0)), ((y + 2.0) * (y + 2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_19(a: real, b: real, y: real)
  requires (0.0 <= ((y + 2.0) * (y + 2.0)))
  requires (0.0 <= ((1.0 * b) * (1.0 * b)))
  ensures (0.0 <= (((y + 2.0) * (y + 2.0)) * ((1.0 * b) * (1.0 * b))))
{
  MulNonneg(((y + 2.0) * (y + 2.0)), ((1.0 * b) * (1.0 * b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(a: real, b: real, y: real)
  requires (0.0 <= ((y + 2.0) * (y + 2.0)))
  requires (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0))))
  ensures (0.0 <= (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0)))))
{
  MulNonneg(((y + 2.0) * (y + 2.0)), ((a - (b * 2.0)) * (a - (b * 2.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_21(a: real, b: real, y: real)
  requires (0.0 <= ((y + 2.0) * (y + 2.0)))
  requires ((y - -(2.0)) <= 0.0)
  ensures ((((y + 2.0) * (y + 2.0)) * (y - -(2.0))) <= 0.0)
{
  MulNonneg(((y + 2.0) * (y + 2.0)), -((y - -(2.0)))); MulNeg(((y + 2.0) * (y + 2.0)), (y - -(2.0))); assert (((y + 2.0) * (y + 2.0))) * (-((y - -(2.0)))) == -((((y + 2.0) * (y + 2.0))) * ((y - -(2.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_22(a: real, b: real, y: real)
  requires (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0))))
  requires (0.0 <= ((y - 2.0) * (y - 2.0)))
  ensures (0.0 <= (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0))))
{
  MulNonneg(((a + (b * 2.0)) * (a + (b * 2.0))), ((y - 2.0) * (y - 2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(a: real, b: real, y: real)
  requires (0.0 <= ((1.0 * b) * (1.0 * b)))
  requires ((y - -(2.0)) <= 0.0)
  ensures ((((1.0 * b) * (1.0 * b)) * (y - -(2.0))) <= 0.0)
{
  MulNonneg(((1.0 * b) * (1.0 * b)), -((y - -(2.0)))); MulNeg(((1.0 * b) * (1.0 * b)), (y - -(2.0))); assert (((1.0 * b) * (1.0 * b))) * (-((y - -(2.0)))) == -((((1.0 * b) * (1.0 * b))) * ((y - -(2.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(a: real, b: real, y: real)
  requires (0.0 <= (y * y))
  requires ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) <= 0.0)
  ensures (((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) <= 0.0)
{
  MulNonneg((y * y), -((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))); MulNeg((y * y), (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))); assert ((y * y)) * (-((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))) == -(((y * y)) * ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(a: real, b: real, y: real)
  ensures (((((((((((((-((1528.0 * ((y + 2.0) * (y + 2.0)))) + -((960.0 * (((y * y) + (a * y)) + (b - 2.0))))) + (992.0 * (y - -(2.0)))) + (8.0 * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)))) + -((80.0 * (((y + 2.0) * (y + 2.0)) * ((y + 2.0) * (y + 2.0)))))) + -((50.0 * (((y + 2.0) * (y + 2.0)) * ((1.0 * b) * (1.0 * b)))))) + -((5.0 * (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0))))))) + (80.0 * (((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0))))) + (640.0 * (((y + 2.0) * (y + 2.0)) * (y - -(2.0))))) + -((5.0 * (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0)))))) + (200.0 * (((1.0 * b) * (1.0 * b)) * (y - -(2.0))))) + (80.0 * (((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))))) + (18.0 * ((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))))) + -((80.0 * ((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(a: real, b: real)
  ensures (((1.0 * 4.0) - ((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b))))) + (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1973_p3(a: real, b: real)
  requires (exists x: real :: ((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) == 0.0))
  ensures ((4.0 / 5.0) <= ((a * a) + (b * b))) // @tac 422-1834 // @tac 1837-2259 // @tac 2265-2614 // @tac 2617-2670 // @tac 2673-2728 // @tac 2731-2774
{
  // have h₁ : ∃ y , y ^ 2 + a * y + ( b - 2 ) = 0 ∧ ( y ≥ 2 ∨ y ≤ - 2 )  [type from Lean state]
  assert (exists y: real :: (((((y * y) + (a * y)) + (b - 2.0)) == 0.0) && ((y >= 2.0) || (y <= -(2.0))))) by { // @tac 506-532 // @tac 537-556
    // obtain ⟨x, hx⟩ := h₀
    assert exists x: real :: ((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) == 0.0);
    var x: real :| ((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) == 0.0);
    // [TACTIC: Use ( x ^ 2 + 1 ) / x]
    assert (((((Real.div(((x * x) + 1.0), x) * Real.div(((x * x) + 1.0), x)) + (a * Real.div(((x * x) + 1.0), x))) + (b - 2.0)) == 0.0) && ((Real.div(((x * x) + 1.0), x) >= 2.0) || (Real.div(((x * x) + 1.0), x) <= -(2.0)))) by {  // sub-goal of `use` (Lean state) // @tac 561-572
      // [TACTIC: constructor]
      // `constructor`: 2 cases (Lean states); 2 branch bodies
      assert ((((Real.div(((x * x) + 1.0), x) * Real.div(((x * x) + 1.0), x)) + (a * Real.div(((x * x) + 1.0), x))) + (b - 2.0)) == 0.0) by {  // sub-goal of `constructor` (Lean state) // @tac 649-727 // @tac 732-758
        // have hx1 : x != 0  [type from Lean state]
        assert (x != 0.0) by { // @tac 680-687
          if (x == 0.0) {
            // [TACTIC: rwSeq [ h ] at hx]
            assert ((((((0.0 * 0.0 * 0.0 * 0.0) + (a * (0.0 * 0.0 * 0.0))) + (b * (0.0 * 0.0))) + (a * 0.0)) + 1.0) == 0.0);  // hypothesis hx after `rw` (Lean state) // @tac-hyp 694-706
            // [TACTIC: «Norm_num[_]At___» at hx]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
            assert false; // @tac 694-706 // @tac 713-727
            // UNCITED-APPLIED internal ×34 [exec 89 713-727]: applications made inside the tactic's own automation, not stated — add_zero ×1, zero_add ×1; machinery/glue: congrArg ×8, Eq.trans ×7, Mathlib.Meta.NormNum.isNat_ofNat ×4, congr ×3 (+4 more heads, ×10) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
        }
        // [TACTIC: «Field_simp[_]At___» [ hx1 ] at hx ⊢]
        assert ((x) != 0.0);  // precondition of PowNeZero (Lean: pow_ne_zero)
        PowNeZero(2, x);  // cite: pow_ne_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×23 [exec 90 732-758]: applications made inside the tactic's own automation, not stated — div_add' ×2, div_pow ×1, mul_div_assoc' ×1, add_div' ×1, div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.lt_of_le_of_ne' ×1, pow_bit0_nonneg ×1, div_div ×1; machinery/glue: Eq.trans ×6, congrArg ×6, congr ×1 (cited in this block, not counted here: pow_ne_zero [Lean recorded ×1])
        assert (((((((x * x) + 1.0) * ((x * x) + 1.0)) * x) + ((a * ((x * x) + 1.0)) * (x * x))) + ((b - 2.0) * ((x * x) * x))) == 0.0) by {  // sub-goal before `nlinarith` (Lean state) // @tac 763-857
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x ^ 2 + 1 ) , sq_nonneg ( x ^ 2 - 1 ) , sq_nonneg ( x + 1 ) , sq_nonneg ( x - 1 ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 763-857 exec 91)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((x ^ (2 : ℕ) + (1 : ℝ)) ^ (2 : ℕ) * x + a * (x ^ (2 : ℕ) + (1 : ℝ)) * x ^ (2 : ℕ) + (b - (2 : ℝ)) * (x ^ (2 …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((x * x) + 1.0) * ((x * x) + 1.0)) * x) + ((a * ((x * x) + 1.0)) * (x * x))) + ((b - 2.0) * ((x * x) * x))) < 0.0); (2.0 > 0.0)
          if (0.0 <= ((x - 1.0) * (x - 1.0))) && ((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) == 0.0) { assert (-((((x - 1.0) * (x - 1.0)) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
          SqNonneg((x - 1.0)); assert (0.0 <= ((x - 1.0) * (x - 1.0)));  // cert: sq_nonneg
          if (0.0 <= (x * x)) && ((((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0) == 0.0) { assert (-(((x * x) * (((((x * x * x * x) + (a * (x * x * x))) + (b * (x * x))) + (a * x)) + 1.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
          SqNonneg(x); assert (0.0 <= (x * x));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -((x ^ (2 : ℕ) + (1 : ℝ)) ^ (2 : ℕ) * x + a * (x ^ (2 : ℕ) + (1 : ℝ)) * x ^ (2 : ℕ) + (b - (2 : ℝ)) * (x ^ (2…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((((((x * x) + 1.0) * ((x * x) + 1.0)) * x) + ((a * ((x * x) + 1.0)) * (x * x))) + ((b - 2.0) * ((x * x) * x)))); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `x ^ (4 : ℕ) + a * x ^ (3 : ℕ) + b * x ^ (2 : ℕ) + a * x + (1 : ℝ) + (2 : ℝ) * -((x ^ (2 : ℕ) + (1 : ℝ)) ^ (2 : ℕ) * x +…`
          // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x ^ (4 : ℕ) + a * x ^ (3 : ℕ) + b * x ^ (2 : ℕ) + a * x + (1 : ℝ)) + (2 : ℝ) * ((x ^ (2 : ℕ) + (1 : ℝ)) ^ (2 : ℕ) * x…`
          cert_identity_1(a, b, x);  // cert: Linarith.lt_of_lt_of_eq
          cert_identity_2(a, b, x);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×17 [exec 91 763-857]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, neg_nonpos_of_nonneg ×2, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.mul_zero_eq ×2 (+3 more heads, ×3) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
          // UNCITED-APPLIED internal ×249 [exec 94 763-857]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+46 more heads, ×217) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 95 763-857]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg((x - 1.0));  // cite: sq_nonneg
          SqNonneg(x);  // cite: sq_nonneg
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 92, 94)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 93, 95 / `ring1` exec 92, 94)]
          // NOT APPLIED `sq_nonneg ( x ^ 2 + 1 )`, `sq_nonneg ( x ^ 2 - 1 )`, `sq_nonneg ( x + 1 )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
          // UNCITED-APPLIED internal ×244 [exec 92 763-857]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+46 more heads, ×212) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 93 763-857]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      assert ((Real.div(((x * x) + 1.0), x) >= 2.0) || (Real.div(((x * x) + 1.0), x) <= -(2.0))) by {  // sub-goal of `constructor` (Lean state) // @tac 925-1003 // @tac 1008-1123 // @tac 1128-1151
        // have hx1 : x != 0  [type from Lean state]
        assert (x != 0.0) by { // @tac 956-963
          if (x == 0.0) {
            // [TACTIC: rwSeq [ h ] at hx]
            assert ((((((0.0 * 0.0 * 0.0 * 0.0) + (a * (0.0 * 0.0 * 0.0))) + (b * (0.0 * 0.0))) + (a * 0.0)) + 1.0) == 0.0);  // hypothesis hx after `rw` (Lean state) // @tac-hyp 970-982
            // [TACTIC: «Norm_num[_]At___» at hx]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
            assert false; // @tac 970-982 // @tac 989-1003
            // UNCITED-APPLIED internal ×34 [exec 144 989-1003]: applications made inside the tactic's own automation, not stated — add_zero ×1, zero_add ×1; machinery/glue: congrArg ×8, Eq.trans ×7, Mathlib.Meta.NormNum.isNat_ofNat ×4, congr ×3 (+4 more heads, ×10) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
        }
        // have hx2 : x > 0 || x < 0  [type from Lean state]
        assert ((x > 0.0) || (x < 0.0)) by { // @tac 1047-1067
          // [TACTIC: apply lt_or_gt_of_ne]
          assert (0.0 != x) by {  // sub-goal before `intro` (Lean state) // @tac 1074-1081
            // intro h (hypothesis and goal from the Lean state)
            if (0.0 == x) {
              // [TACTIC: rwSeq [ h ] at hx1]
              assert (x != x);  // hypothesis hx1 after `rw` (Lean state) // @tac-hyp 1088-1101
              // [TACTIC: «Norm_num[_]At___» at hx1]
              assert false;  // goal after intro (Lean state) // @tac 1088-1101 // @tac 1108-1123
              // UNCITED-APPLIED internal ×6 [exec 194 1108-1123]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, Eq.trans ×1, eq_self ×1, eq_true ×1 (+1 more heads, ×1)
            }
          }
          assert ((0.0) != (x));  // precondition of LtOrGtOfNe (Lean: lt_or_gt_of_ne; `apply`: proved by the steps above)
          LtOrGtOfNe(0.0, x);  // cite: lt_or_gt_of_ne
        }
        // `cases'`: 2 cases (Lean states); 2 branch bodies
        if ((x > 0.0)) {  // sub-goal of `cases'` (Lean state)
          // [TACTIC: apply or_iff_not_imp_left.mpr]
          OrIffNotImpLeft((Real.div(((x * x) + 1.0), x) >= 2.0), (Real.div(((x * x) + 1.0), x) <= -(2.0)));  // cite: or_iff_not_imp_left
          // UNCITED-APPLIED Classical.or_iff_not_imp_left: this block states the lemma as `cite: or_iff_not_imp_left` (the name the source writes; Lean's recorded constant is Classical.or_iff_not_imp_left); not stated under the recorded name [exec 200 1182-1211]
          assert (!(Real.div(((x * x) + 1.0), x) >= 2.0) ==> (Real.div(((x * x) + 1.0), x) <= -(2.0))) by {  // sub-goal before `intro` (Lean state) // @tac 1218-1225
            // intro h: P → Q  (N7 if-wrapper)
            if !(Real.div(((x * x) + 1.0), x) >= 2.0) {
              assert (Real.div(((x * x) + 1.0), x) <= -(2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1281-1473 // @tac 1480-1488
                // have h1 : ( x ^ 2 + 1 ) / x >= 2  [type from Lean state]
                assert (Real.div(((x * x) + 1.0), x) >= 2.0) by { // @tac 1378-1416
                  assert (0.0 < x) by {  // sub-goal of `by` (Lean state) // @tac 1400-1410
                    // [TACTIC: Positivity]
                  }
                  // [TACTIC: apply ( le_div_iff ( by positivity ) ) . mpr]
                  assert ((2.0 * x) <= ((x * x) + 1.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1425-1473
                    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - 1 ) , sq_nonneg ( x + 1 ) ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1425-1473 exec 224)
                    SqNonneg((x - 1.0)); assert (0.0 <= ((x - 1.0) * (x - 1.0)));  // cert: sq_nonneg
                    cert_identity_3(a, b, x);  // cert: add_lt_of_le_of_neg
                    // UNCITED-APPLIED internal ×136 [exec 224 1425-1473]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_zero ×6 (+49 more heads, ×105) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                    SqNonneg((x - 1.0));  // cite: sq_nonneg
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                    // NOT APPLIED `sq_nonneg ( x + 1 )`: named here, but no application Lean recorded at this tactic has its arguments (1 of the 2 named instances match a recorded application)
                  }
                  assert (0.0 < (x));  // precondition of LeDivIff (Lean: le_div_iff; `apply`: proved by the steps above)
                  LeDivIff(2.0, ((x * x) + 1.0), x);  // cite: le_div_iff
                }
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1480-1488 exec 226)
                cert_identity_4(a, b, x);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×109 [exec 226 1480-1488]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+46 more heads, ×83) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              }
            }
          }
          assert ((Real.div(((x * x) + 1.0), x) >= 2.0) || (Real.div(((x * x) + 1.0), x) <= -(2.0)));  // sub-goal of `cases'` (Lean state) // @tac 1156-1488 // @tac 1182-1211
        }
        if ((x < 0.0)) {  // sub-goal of `cases'` (Lean state)
          // [TACTIC: apply or_iff_not_imp_right.mpr]
          OrIffNotImpRight((Real.div(((x * x) + 1.0), x) >= 2.0), (Real.div(((x * x) + 1.0), x) <= -(2.0)));  // cite: or_iff_not_imp_right
          // UNCITED-APPLIED Classical.or_iff_not_imp_right: this block states the lemma as `cite: or_iff_not_imp_right` (the name the source writes; Lean's recorded constant is Classical.or_iff_not_imp_right); not stated under the recorded name [exec 232 1519-1549]
          assert (!(Real.div(((x * x) + 1.0), x) <= -(2.0)) ==> (Real.div(((x * x) + 1.0), x) >= 2.0)) by {  // sub-goal before `intro` (Lean state) // @tac 1556-1563
            // intro h: P → Q  (N7 if-wrapper)
            if !(Real.div(((x * x) + 1.0), x) <= -(2.0)) {
              assert (Real.div(((x * x) + 1.0), x) >= 2.0) by {  // sub-goal before `have` (Lean state) // @tac 1620-1819 // @tac 1826-1834
                // have h1 : ( x ^ 2 + 1 ) / x <= - 2  [type from Lean state]
                assert (Real.div(((x * x) + 1.0), x) <= -(2.0)) by { // @tac 1719-1762
                  assert (x < 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1748-1756
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1748-1756 exec 255)
                    cert_identity_5(a, b, x);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×25 [exec 255 1748-1756]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+18 more heads, ×18) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                  }
                  // [TACTIC: apply ( div_le_iff_of_neg ( by linarith linarith ) ) . mpr]
                  assert ((-(2.0) * x) <= ((x * x) + 1.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1771-1819
                    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - 1 ) , sq_nonneg ( x + 1 ) ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1771-1819 exec 257)
                    SqNonneg((x + 1.0)); assert (0.0 <= ((x + 1.0) * (x + 1.0)));  // cert: sq_nonneg
                    cert_identity_6(a, b, x);  // cert: add_lt_of_le_of_neg
                    // UNCITED-APPLIED internal ×129 [exec 257 1771-1819]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×6 (+49 more heads, ×99) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                    SqNonneg((x + 1.0));  // cite: sq_nonneg
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                    // NOT APPLIED `sq_nonneg ( x - 1 )`: named here, but no application Lean recorded at this tactic has its arguments (1 of the 2 named instances match a recorded application)
                  }
                  assert ((x) < 0.0);  // precondition of DivLeIffOfNeg (Lean: div_le_iff_of_neg; `apply`: proved by the steps above)
                  DivLeIffOfNeg(-(2.0), ((x * x) + 1.0), x);  // cite: div_le_iff_of_neg
                }
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1826-1834 exec 259)
                cert_identity_7(a, b, x);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×116 [exec 259 1826-1834]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, CancelDenoms.neg_subst ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+47 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              }
            }
          }
          assert ((Real.div(((x * x) + 1.0), x) >= 2.0) || (Real.div(((x * x) + 1.0), x) <= -(2.0)));  // sub-goal of `cases'` (Lean state) // @tac 1493-1834 // @tac 1519-1549
        }
      }
    }
  }
  // have h₂ : a ^ 2 - 4 * ( b - 2 ) >= 0  [type from Lean state]
  assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0) by { // @tac 1885-1911 // @tac 1916-1933 // @tac 1938-1955 // @tac 1960-2244 // @tac 2249-2259
    // obtain ⟨y, hy⟩ := h₁
    assert exists y: real :: (((((y * y) + (a * y)) + (b - 2.0)) == 0.0) && ((y >= 2.0) || (y <= -(2.0))));
    var y: real :| (((((y * y) + (a * y)) + (b - 2.0)) == 0.0) && ((y >= 2.0) || (y <= -(2.0))));
    // have h₂ :   [type from Lean state]
    assert ((y >= 2.0) || (y <= -(2.0)));
      // [TACTIC: exact hy . 2]
    // have h₃ :   [type from Lean state]
    assert ((((y * y) + (a * y)) + (b - 2.0)) == 0.0);
      // [TACTIC: exact hy . 1]
    // have h₄ : a ^ 2 - 4 * ( b - 2 ) >= 0  [type from Lean state]
    assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0) by { // @tac 2010-2036
      // `cases'`: 2 cases (Lean states); 2 branch bodies
      if ((y >= 2.0)) {  // sub-goal of `cases'` (Lean state)
        // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( y + 2 ) , sq_nonneg ( y - 2 ) , sq_nonneg ( a + 2 * y ) , sq_nonneg ( a - 2 * y ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2046-2140 exec 323)
        SqNonneg((a + (2.0 * y))); assert (0.0 <= ((a + (2.0 * y)) * (a + (2.0 * y))));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y * y) + (a * y)) + (b - 2.0)) == 0.0); (4.0 > 0.0)
        // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(a + (2 : ℝ) * y) ^ (2 : ℕ) + (4 : ℝ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_8(a, b, y);  // cert: add_lt_of_le_of_neg
        // UNCITED-APPLIED internal ×201 [exec 323 2046-2140]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+52 more heads, ×165) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 325 2046-2140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        SqNonneg((a + (2.0 * y)));  // cite: sq_nonneg
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // NOT APPLIED `sq_nonneg ( y + 2 )`, `sq_nonneg ( y - 2 )`, `sq_nonneg ( a - 2 * y )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
        assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0);  // sub-goal of `cases'` (Lean state) // @tac 2046-2140 // @tac 2043-2140
      }
      if ((y <= -(2.0))) {  // sub-goal of `cases'` (Lean state)
        // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( y + 2 ) , sq_nonneg ( y - 2 ) , sq_nonneg ( a + 2 * y ) , sq_nonneg ( a - 2 * y ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2150-2244 exec 330)
        SqNonneg((a + (2.0 * y))); assert (0.0 <= ((a + (2.0 * y)) * (a + (2.0 * y))));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y * y) + (a * y)) + (b - 2.0)) == 0.0); (4.0 > 0.0)
        // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(a + (2 : ℝ) * y) ^ (2 : ℕ) + (4 : ℝ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_9(a, b, y);  // cert: add_lt_of_le_of_neg
        // UNCITED-APPLIED internal ×201 [exec 330 2150-2244]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+52 more heads, ×165) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 332 2150-2244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        SqNonneg((a + (2.0 * y)));  // cite: sq_nonneg
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // NOT APPLIED `sq_nonneg ( y + 2 )`, `sq_nonneg ( y - 2 )`, `sq_nonneg ( a - 2 * y )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
        assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0);  // sub-goal of `cases'` (Lean state) // @tac 2150-2244 // @tac 2147-2244
      }
    }
    // [TACTIC: exact h₄]
    assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0);
  }
  // have h₃ : a ^ 2 + b ^ 2 >= 4 / 5  [type from Lean state]
  assert (((a * a) + (b * b)) >= (4.0 / 5.0)) by { // @tac 2311-2348 // @tac 2353-2379 // @tac 2384-2614 // @tac 2384-2440 // @tac 2384-2427
    // obtain ⟨y, h_y, h_y_ineq⟩ := h₁
    assert exists y: real :: (((((y * y) + (a * y)) + (b - 2.0)) == 0.0) && ((y >= 2.0) || (y <= -(2.0))));
    var y: real :| (((((y * y) + (a * y)) + (b - 2.0)) == 0.0) && ((y >= 2.0) || (y <= -(2.0))));
    // have h_y_ineq' :   [type from Lean state]
    assert ((y >= 2.0) || (y <= -(2.0))) by {
      // [TACTIC: exact h_y_ineq]
      assert ((y >= 2.0) || (y <= -(2.0)));
    }
    // [TACTIC: «_<;>_» h_y_ineq' with h_y_ge_2 h_y_le_neg_2 <;> simp_all simp_all simp_all <;> nlinarith [ sq_nonneg ( y + 2 ) , sq_nonneg ( y - 2 ) , sq_nonneg a , sq_nonneg ( b - 2 ) , sq_nonneg ( a - b * 2 ) , sq_nonneg ( a + b * 2 ) , sq_nonneg ( a ^ 2 - 4 * ( b - 2 ) ) ] nlinarith [ sq_nonneg ( y + 2 ) , sq_nonneg ( y - 2 ) , sq_nonneg a , sq_nonneg ( b - 2 ) , sq_nonneg ( a - b * 2 ) , sq_nonneg ( a + b * 2 ) , sq_nonneg ( a ^ 2 - 4 * ( b - 2 ) ) ]]
    // [TACTIC: Cases'_With h_y_ineq' with h_y_ge_2 h_y_le_neg_2]
    if ((y >= 2.0)) {  // sub-goal of `simp_all` (Lean state)
      assert ((4.0 * (b - 2.0)) <= (a * a));  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 2432-2440
      assert (2.0 <= y);  // hypothesis h_y_ge_2 after `simp_all` (Lean state) // @tac-hyp 2432-2440
      assert ((4.0 / 5.0) <= ((a * a) + (b * b))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2449-2614
        SqNonneg((y - 2.0));  // cite: sq_nonneg
        SqNonneg((y + 2.0));  // cite: sq_nonneg
        SqNonneg((a - (b * 2.0)));  // cite: sq_nonneg
        SqNonneg((a + (b * 2.0)));  // cite: sq_nonneg
        SqNonneg((1.0 * b));  // cite: sq_nonneg
        SqNonneg(y);  // cite: sq_nonneg
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        if (((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) < (0.0)) { LeOfLt((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        // NOT APPLIED `sq_nonneg a`, `sq_nonneg ( b - 2 )`, `sq_nonneg ( a ^ 2 - 4 * ( b - 2 ) )`: named here, but no application Lean recorded at this tactic has their arguments (4 of the 7 named instances match a recorded application)
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2449-2614 exec 394)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((y - 2.0) * (y - 2.0))); (1528.0 > 0.0)
        SqNonneg((y - 2.0)); assert (0.0 <= ((y - 2.0) * (y - 2.0)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((y * y) + (a * y)) + (b - 2.0))) == 0.0); (960.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(992 : ℝ) * ((2 : ℝ) - y) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((2.0 - y) <= 0.0); (992.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * ((5 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) + (5 : ℝ) * ((1 : ℝ) * b) ^ (2 : ℕ) - (1 : ℝ) * (4 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) < 0.0); (8.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (a ^ (2 : ℕ) + b ^ (2 : ℕ) - (4 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) + (b * b)) - (4.0 / 5.0)) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * -(a - b * (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0))))); (5.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0)))) { cert_piece_10(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((y + 2.0)); assert (0.0 <= ((y + 2.0) * (y + 2.0)));  // cert: sq_nonneg
        SqNonneg((a - (b * 2.0))); assert (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0))));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); (80.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * -(-(a + b * (2 : ℝ)) ^ (2 : ℕ) * -(y - (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0)))); (5.0 > 0.0)
        if (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0)))) && (0.0 <= ((y - 2.0) * (y - 2.0))) { cert_piece_11(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((a + (b * 2.0))); assert (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0))));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(50 : ℝ) * -(-((1 : ℝ) * b) ^ (2 : ℕ) * -(y - (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((1.0 * b) * (1.0 * b)) * ((y - 2.0) * (y - 2.0)))); (50.0 > 0.0)
        if (0.0 <= ((1.0 * b) * (1.0 * b))) && (0.0 <= ((y - 2.0) * (y - 2.0))) { cert_piece_12(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((1.0 * b)); assert (0.0 <= ((1.0 * b) * (1.0 * b)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(200 : ℝ) * -(-((1 : ℝ) * b) ^ (2 : ℕ) * ((2 : ℝ) - y)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * b) * (1.0 * b)) * (2.0 - y)) <= 0.0); (200.0 > 0.0)
        if (0.0 <= ((1.0 * b) * (1.0 * b))) && ((2.0 - y) <= 0.0) { cert_piece_13(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(80 : ℝ) * -(-(y - (2 : ℝ)) ^ (2 : ℕ) * -(y - (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((y - 2.0) * (y - 2.0)) * ((y - 2.0) * (y - 2.0)))); (80.0 > 0.0)
        if (0.0 <= ((y - 2.0) * (y - 2.0))) { cert_piece_14(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -(-(y - (2 : ℝ)) ^ (2 : ℕ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); (80.0 > 0.0)
        if (0.0 <= ((y - 2.0) * (y - 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(640 : ℝ) * -(-(y - (2 : ℝ)) ^ (2 : ℕ) * ((2 : ℝ) - y)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y - 2.0) * (y - 2.0)) * (2.0 - y)) <= 0.0); (640.0 > 0.0)
        if (0.0 <= ((y - 2.0) * (y - 2.0))) && ((2.0 - y) <= 0.0) { cert_piece_15(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(18 : ℝ) * -(-y ^ (2 : ℕ) * ((5 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) + (5 : ℝ) * ((1 : ℝ) * b) ^ (2 : ℕ) - (1 : ℝ) * (4 : ℝ))…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) <= 0.0); (18.0 > 0.0)
        if (0.0 <= (y * y)) && ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) <= 0.0) { cert_piece_16(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg(y); assert (0.0 <= (y * y));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -((y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); (80.0 > 0.0)
        if ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); }  // cert: Linarith.zero_mul_eq
        // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * ((2 : ℝ) - y) …`
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * ((2 : ℝ) - y) …`
        // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * ((2 : ℝ) - y) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED add_nonpos: certificate sum `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * ((2 : ℝ) - y) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `(1528 : ℝ) * -(y - (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_17(a, b, y);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×366 [exec 394 2449-2614]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×7, neg_eq_zero ×4, CancelDenoms.pow_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_nonpos_of_le ×1, CancelDenoms.sub_subst ×1, CancelDenoms.add_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.neg_add ×8 (+54 more heads, ×304) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×6])
        // UNCITED-APPLIED internal ×5 [exec 401 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 402 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 403 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 395 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 396 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 397 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 398 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 399 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 404 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 405 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 406 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 407 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 408 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 409 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 410 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 411 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 412 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 413 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 414 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert (((a * a) + (b * b)) >= (4.0 / 5.0));  // sub-goal of `simp_all` (Lean state) // @tac 2432-2440
      // UNCITED-APPLIED internal ×1 [exec 382 2432-2440]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
    }
    if ((y <= -(2.0))) {  // sub-goal of `simp_all` (Lean state)
      assert ((4.0 * (b - 2.0)) <= (a * a));  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 2432-2440
      assert ((4.0 / 5.0) <= ((a * a) + (b * b))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2449-2614
        SqNonneg((y + 2.0));  // cite: sq_nonneg
        SqNonneg((1.0 * b));  // cite: sq_nonneg
        SqNonneg((a - (b * 2.0)));  // cite: sq_nonneg
        SqNonneg((a + (b * 2.0)));  // cite: sq_nonneg
        SqNonneg((y - 2.0));  // cite: sq_nonneg
        SqNonneg(y);  // cite: sq_nonneg
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        if (((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) < (0.0)) { LeOfLt((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        // NOT APPLIED `sq_nonneg a`, `sq_nonneg ( b - 2 )`, `sq_nonneg ( a ^ 2 - 4 * ( b - 2 ) )`: named here, but no application Lean recorded at this tactic has their arguments (4 of the 7 named instances match a recorded application)
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2449-2614 exec 417)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((y + 2.0) * (y + 2.0))); (1528.0 > 0.0)
        SqNonneg((y + 2.0)); assert (0.0 <= ((y + 2.0) * (y + 2.0)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((y * y) + (a * y)) + (b - 2.0))) == 0.0); (960.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(992 : ℝ) * (y - (-2 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((y - -(2.0)) <= 0.0); (992.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * ((5 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) + (5 : ℝ) * ((1 : ℝ) * b) ^ (2 : ℕ) - (1 : ℝ) * (4 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) < 0.0); (8.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (a ^ (2 : ℕ) + b ^ (2 : ℕ) - (4 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) + (b * b)) - (4.0 / 5.0)) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(80 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * -(y + (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((y + 2.0) * (y + 2.0)) * ((y + 2.0) * (y + 2.0)))); (80.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) { cert_piece_18(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(50 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * -((1 : ℝ) * b) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((y + 2.0) * (y + 2.0)) * ((1.0 * b) * (1.0 * b)))); (50.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && (0.0 <= ((1.0 * b) * (1.0 * b))) { cert_piece_19(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((1.0 * b)); assert (0.0 <= ((1.0 * b) * (1.0 * b)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * -(a - b * (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((y + 2.0) * (y + 2.0)) * ((a - (b * 2.0)) * (a - (b * 2.0))))); (5.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0)))) { cert_piece_20(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((a - (b * 2.0))); assert (0.0 <= ((a - (b * 2.0)) * (a - (b * 2.0))));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); (80.0 > 0.0)
        assert 0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0);  /* [IN-FILE CHECK] requires 1 of vc_imo_1973_p3_L591 */
        assert y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0;  /* [IN-FILE CHECK] requires 2 of vc_imo_1973_p3_L591 */
        vc_imo_1973_p3_L591(a, b, y_2, y, y_2_2, y_2_3);  /* [IN-FILE CHECK] the closed lemma for line 591 */
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(640 : ℝ) * -(-(y + (2 : ℝ)) ^ (2 : ℕ) * (y - (-2 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y + 2.0) * (y + 2.0)) * (y - -(2.0))) <= 0.0); (640.0 > 0.0)
        if (0.0 <= ((y + 2.0) * (y + 2.0))) && ((y - -(2.0)) <= 0.0) { cert_piece_21(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * -(-(a + b * (2 : ℝ)) ^ (2 : ℕ) * -(y - (2 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a + (b * 2.0)) * (a + (b * 2.0))) * ((y - 2.0) * (y - 2.0)))); (5.0 > 0.0)
        if (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0)))) && (0.0 <= ((y - 2.0) * (y - 2.0))) { cert_piece_22(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg((a + (b * 2.0))); assert (0.0 <= ((a + (b * 2.0)) * (a + (b * 2.0))));  // cert: sq_nonneg
        SqNonneg((y - 2.0)); assert (0.0 <= ((y - 2.0) * (y - 2.0)));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(200 : ℝ) * -(-((1 : ℝ) * b) ^ (2 : ℕ) * (y - (-2 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * b) * (1.0 * b)) * (y - -(2.0))) <= 0.0); (200.0 > 0.0)
        if (0.0 <= ((1.0 * b) * (1.0 * b))) && ((y - -(2.0)) <= 0.0) { cert_piece_23(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -(-(y - (2 : ℝ)) ^ (2 : ℕ) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); (80.0 > 0.0)
        if (0.0 <= ((y - 2.0) * (y - 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(18 : ℝ) * -(-y ^ (2 : ℕ) * ((5 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) + (5 : ℝ) * ((1 : ℝ) * b) ^ (2 : ℕ) - (1 : ℝ) * (4 : ℝ))…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((y * y) * (((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0))) <= 0.0); (18.0 > 0.0)
        if (0.0 <= (y * y)) && ((((5.0 * ((1.0 * a) * (1.0 * a))) + (5.0 * ((1.0 * b) * (1.0 * b)))) - (1.0 * 4.0)) <= 0.0) { cert_piece_24(a, b, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
        SqNonneg(y); assert (0.0 <= (y * y));  // cert: sq_nonneg
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(80 : ℝ) * -((y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) * (y ^ (2 : ℕ) + a * y + (b - (2 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); (80.0 > 0.0)
        if ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (((((y * y) + (a * y)) + (b - 2.0)) * (((y * y) + (a * y)) + (b - 2.0))) == 0.0); }  // cert: Linarith.zero_mul_eq
        // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * (y - (-2 : ℝ))…`
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * (y - (-2 : ℝ))…`
        // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * (y - (-2 : ℝ))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED add_nonpos: certificate sum `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) + (992 : ℝ) * (y - (-2 : ℝ))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `(1528 : ℝ) * -(y + (2 : ℝ)) ^ (2 : ℕ) + (960 : ℝ) * -(y ^ (2 : ℕ) + a * y + (b - (2 : ℝ))) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_25(a, b, y);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×367 [exec 417 2449-2614]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×7, neg_eq_zero ×4, CancelDenoms.pow_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_nonpos_of_le ×1, CancelDenoms.sub_subst ×1, CancelDenoms.add_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+54 more heads, ×305) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×6])
        // UNCITED-APPLIED internal ×5 [exec 424 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 425 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 426 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 418 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 419 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 420 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 421 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 422 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 427 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 428 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 429 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 430 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 431 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 432 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 433 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 434 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 435 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 436 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 437 2449-2614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert (((a * a) + (b * b)) >= (4.0 / 5.0));  // sub-goal of `simp_all` (Lean state) // @tac 2432-2440
      // UNCITED-APPLIED internal ×1 [exec 385 2432-2440]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
    }
  }
  // have h₃' : a ^ 2 + b ^ 2 >= 4 / 5  [type from Lean state]
  assert (((a * a) + (b * b)) >= (4.0 / 5.0)); // @tac 2660-2670
    // [TACTIC: assumption]
  // have h₂' : a ^ 2 - 4 * ( b - 2 ) >= 0  [type from Lean state]
  assert (((a * a) - (4.0 * (b - 2.0))) >= 0.0); // @tac 2718-2728
    // [TACTIC: assumption]
  // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a ^ 2 - 4 * ( b - 2 ) ) ]]
  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2731-2774 exec 472)
  // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℝ) * ((4 / 5 : ℝ) - (a ^ (2 : ℕ) + b ^ (2 : ℕ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((4.0 / 5.0) - ((a * a) + (b * b))) <= 0.0); (5.0 > 0.0)
  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (a ^ (2 : ℕ) + b ^ (2 : ℕ) - (4 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) + (b * b)) - (4.0 / 5.0)) < 0.0); (5.0 > 0.0)
  cert_identity_26(a, b);  // cert: add_lt_of_le_of_neg
  // UNCITED-APPLIED internal ×16 [exec 472 2731-2774]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.pow_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.div_subst ×1, CancelDenoms.add_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
  // UNCITED-APPLIED internal ×14 [exec 475 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×6 [exec 476 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×9 [exec 474 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×9 [exec 480 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×9 [exec 481 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×14 [exec 478 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×6 [exec 479 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×5 [exec 482 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 473, 474, 475, 476, 478, 479 … / `ring1` exec 488)]
  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 477, 482 / `ring1` exec 488)]
  // UNCITED-APPLIED internal ×111 [exec 488 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.zero_mul ×6 (+36 more heads, ×83) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
  // UNCITED-APPLIED internal ×9 [exec 473 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
  // UNCITED-APPLIED internal ×5 [exec 477 2731-2774]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
}



// ===== closed lemma for line 591 (from closed/imo_1973_p3-591.dfy) =====

lemma {:induction false} vc_imo_1973_p3_L591(a: real, b: real, y_2: real, y_2_0: real, y_2_2: real, y_2_3: real)
  requires 0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)
  requires y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0
  ensures   0.0 - (y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0
{

}

