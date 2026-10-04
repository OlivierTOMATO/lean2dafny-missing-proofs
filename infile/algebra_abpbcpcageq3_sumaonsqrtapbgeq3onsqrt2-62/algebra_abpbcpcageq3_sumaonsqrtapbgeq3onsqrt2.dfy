// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real)
  ensures (((-(((c - a) * (c - a))) + -(((a - b) * (a - b)))) + -(((b - c) * (b - c)))) + (2.0 * ((((a + b) + c) * ((a + b) + c)) - (3.0 * (((a * b) + (b * c)) + (c * a)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real)
  ensures ((3.0 * (3.0 - (((a * b) + (b * c)) + (c * a)))) + ((3.0 * (((a * b) + (b * c)) + (c * a))) - 9.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, c: real)
  ensures (((3.0 * (3.0 - (((a * b) + (b * c)) + (c * a)))) + ((3.0 * (((a * b) + (b * c)) + (c * a))) - (((a + b) + c) * ((a + b) + c)))) + ((((a + b) + c) * ((a + b) + c)) - 9.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₄`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(a: real, b: real, c: real)
  requires (0.0 < a)
  requires ((((a + b) + c) - 3.0) < 0.0)
  ensures ((a * (((a + b) + c) - 3.0)) < 0.0)
{
  MulPos(a, -((((a + b) + c) - 3.0))); MulNeg(a, (((a + b) + c) - 3.0)); assert (a) * (-((((a + b) + c) - 3.0))) == -((a) * ((((a + b) + c) - 3.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₄`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(a: real, b: real, c: real)
  requires (0.0 < b)
  requires ((((a + b) + c) - 3.0) < 0.0)
  ensures ((b * (((a + b) + c) - 3.0)) < 0.0)
{
  MulPos(b, -((((a + b) + c) - 3.0))); MulNeg(b, (((a + b) + c) - 3.0)); assert (b) * (-((((a + b) + c) - 3.0))) == -((b) * ((((a + b) + c) - 3.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₄`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6(a: real, b: real, c: real)
  requires (0.0 < c)
  requires ((((a + b) + c) - 3.0) < 0.0)
  ensures ((c * (((a + b) + c) - 3.0)) < 0.0)
{
  vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L62(a, b, c);  /* [IN-FILE CHECK] the closed lemma for line 62 */
  MulPos(c, -((((a + b) + c) - 3.0))); MulNeg(c, (((a + b) + c) - 3.0)); assert (c) * (-((((a + b) + c) - 3.0))) == -((c) * ((((a + b) + c) - 3.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, c: real)
  ensures (((((((-(((c - a) * (c - a))) + -(((a - b) * (a - b)))) + -(((b - c) * (b - c)))) + (6.0 * (3.0 - (((a * b) + (b * c)) + (c * a))))) + (6.0 * (((a + b) + c) - 3.0))) + (2.0 * (a * (((a + b) + c) - 3.0)))) + (2.0 * (b * (((a + b) + c) - 3.0)))) + (2.0 * (c * (((a + b) + c) - 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, c: real, x: real, y: real)
  ensures ((-(x) + -(y)) + (x + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(a: real, b: real, c: real, x: real, y: real)
  requires (0.0 < Real.sqrt(2.0))
  requires (0.0 < (x + y))
  ensures (0.0 < (Real.sqrt(2.0) * (x + y)))
{
  MulPos(Real.sqrt(2.0), (x + y));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₈/h₈₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, c: real, x: real, y: real)
  requires (0.0 < ((x + y) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₈/h₈₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real, c: real, x: real, y: real)
  ensures ((((-((((x + y) - 2.0) * ((x + y) - 2.0))) + ((((x + y) + 2.0) * ((x + y) + 2.0)) - ((x + y) * ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))))) + (8.0 * ((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y)))) + -((((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))) * ((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y))))) + (4.0 * ((Real.sqrt((x + y)) * Real.sqrt((x + y))) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, c: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, c: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, c: real)
  ensures ((-(a) + -(b)) + (a + b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₆/h₄₇`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₆/h₄₁₀`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₆/h₄₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_17(a: real, b: real, c: real)
  requires (0.0 <= a)
  requires (((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0)
  ensures ((a * ((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))))) <= 0.0)
{
  MulNonneg(a, -(((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))))); MulNeg(a, ((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))))); assert (a) * (-(((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))))) == -((a) * (((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₆/h₄₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(a: real, b: real, c: real)
  ensures ((((1.0 * a) * (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) - ((1.0 * a) * (1.0 * Real.sqrt((a + b))))) + (a * ((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real, c: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(a: real, b: real, c: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(a: real, b: real, c: real)
  ensures ((-(b) + -(c)) + (b + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₆/h₅₇`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_22(a: real, b: real, c: real)
  requires (0.0 < ((b + c) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₆/h₅₁₀`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(a: real, b: real, c: real)
  requires (0.0 < ((b + c) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₆/h₅₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(a: real, b: real, c: real)
  requires (0.0 <= b)
  requires (((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0)
  ensures ((b * ((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))))) <= 0.0)
{
  MulNonneg(b, -(((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))))); MulNeg(b, ((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))))); assert (b) * (-(((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))))) == -((b) * (((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₆/h₅₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(a: real, b: real, c: real)
  ensures ((((1.0 * b) * (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) - ((1.0 * b) * (1.0 * Real.sqrt((b + c))))) + (b * ((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(a: real, b: real, c: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(a: real, b: real, c: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(a: real, b: real, c: real)
  ensures ((-(a) + -(c)) + (c + a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₆/h₆₇`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_29(a: real, b: real, c: real)
  requires (0.0 < ((c + a) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₆/h₆₁₀`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_30(a: real, b: real, c: real)
  requires (0.0 < ((c + a) + 2.0))
  requires (0.0 < (2.0 * Real.sqrt(2.0)))
  ensures (0.0 < Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))
{
  DivPos(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₆/h₆₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_31(a: real, b: real, c: real)
  requires (0.0 <= c)
  requires (((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0)
  ensures ((c * ((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))))) <= 0.0)
{
  MulNonneg(c, -(((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))))); MulNeg(c, ((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))))); assert (c) * (-(((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))))) == -((c) * (((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₆/h₆₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(a: real, b: real, c: real)
  ensures ((((1.0 * c) * (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) - ((1.0 * c) * (1.0 * Real.sqrt((c + a))))) + (c * ((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_33(a: real, b: real, c: real)
  ensures (((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) - (1.0 * Real.div(c, Real.sqrt((c + a))))) + ((1.0 * Real.div(c, Real.sqrt((c + a)))) - (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(a: real, b: real, c: real)
  ensures (((((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) - (1.0 * Real.div(a, Real.sqrt((a + b))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) - (1.0 * Real.div(b, Real.sqrt((b + c)))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) - (1.0 * Real.div(c, Real.sqrt((c + a)))))) + ((((1.0 * Real.div(a, Real.sqrt((a + b)))) + (1.0 * Real.div(b, Real.sqrt((b + c))))) + (1.0 * Real.div(c, Real.sqrt((c + a))))) - (((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_35(a: real, b: real, c: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(a: real, b: real, c: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(a: real, b: real, c: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(a: real, b: real, c: real)
  ensures (((-((2.0 * 1.0)) + -(a)) + -(b)) + ((a + b) + 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(a: real, b: real, c: real)
  ensures (((-((2.0 * 1.0)) + -(b)) + -(c)) + ((b + c) + 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(a: real, b: real, c: real)
  ensures (((-((2.0 * 1.0)) + -(a)) + -(c)) + ((c + a) + 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₈₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_41(a: real, b: real, c: real)
  requires (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
  requires (0.0 < ((c + a) + 2.0))
  ensures (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))
{
  MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₈₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_42(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < ((b + c) + 2.0))
  ensures (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
{
  MulPos(((a + b) + 2.0), ((b + c) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀/h₉₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_43(a: real, b: real, c: real)
  requires (0.0 < a)
  requires (0.0 < b)
  ensures (0.0 < (a * b))
{
  MulPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀/h₉₂`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_44(a: real, b: real, c: real)
  requires (0.0 < b)
  requires (0.0 < c)
  ensures (0.0 < (b * c))
{
  MulPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀/h₉₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_45(a: real, b: real, c: real)
  requires (0.0 < c)
  requires (0.0 < a)
  ensures (0.0 < (c * a))
{
  MulPos(c, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_46(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < ((b + c) + 2.0))
  ensures (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
{
  MulPos(((a + b) + 2.0), ((b + c) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_47(a: real, b: real, c: real)
  requires (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
  requires (0.0 < ((c + a) + 2.0))
  ensures (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))
{
  MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_48(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < ((b + c) + 2.0))
  ensures (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
{
  MulPos(((a + b) + 2.0), ((b + c) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_49(a: real, b: real, c: real)
  requires (0.0 <= ((c - a) * (c - a)))
  requires (0.0 <= ((b - 1.0) * (b - 1.0)))
  ensures (0.0 <= (((c - a) * (c - a)) * ((b - 1.0) * (b - 1.0))))
{
  MulNonneg(((c - a) * (c - a)), ((b - 1.0) * (b - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_50(a: real, b: real, c: real)
  requires (0.0 <= ((c - a) * (c - a)))
  requires (0.0 <= a)
  ensures (0.0 <= (((c - a) * (c - a)) * a))
{
  MulNonneg(((c - a) * (c - a)), a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_51(a: real, b: real, c: real)
  requires (0.0 <= ((c - a) * (c - a)))
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(((c - a) * (c - a)), -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(((c - a) * (c - a)), (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (((c - a) * (c - a))) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((((c - a) * (c - a))) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_52(a: real, b: real, c: real)
  requires (0.0 <= ((a - b) * (a - b)))
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  ensures (0.0 <= (((a - b) * (a - b)) * ((c - 1.0) * (c - 1.0))))
{
  MulNonneg(((a - b) * (a - b)), ((c - 1.0) * (c - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_53(a: real, b: real, c: real)
  requires (0.0 <= ((a - b) * (a - b)))
  requires (0.0 <= b)
  ensures (0.0 <= (((a - b) * (a - b)) * b))
{
  MulNonneg(((a - b) * (a - b)), b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_54(a: real, b: real, c: real)
  requires (0.0 <= ((a - b) * (a - b)))
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(((a - b) * (a - b)), -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(((a - b) * (a - b)), (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (((a - b) * (a - b))) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((((a - b) * (a - b))) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_55(a: real, b: real, c: real)
  requires (0.0 <= ((a - 1.0) * (a - 1.0)))
  requires (0.0 <= ((b - c) * (b - c)))
  ensures (0.0 <= (((a - 1.0) * (a - 1.0)) * ((b - c) * (b - c))))
{
  MulNonneg(((a - 1.0) * (a - 1.0)), ((b - c) * (b - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_56(a: real, b: real, c: real)
  requires (0.0 <= ((a - 1.0) * (a - 1.0)))
  requires (0.0 <= b)
  ensures (0.0 <= (((a - 1.0) * (a - 1.0)) * b))
{
  MulNonneg(((a - 1.0) * (a - 1.0)), b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_57(a: real, b: real, c: real)
  requires (0.0 <= ((a - 1.0) * (a - 1.0)))
  requires (0.0 <= (a * b))
  ensures (0.0 <= (((a - 1.0) * (a - 1.0)) * (a * b)))
{
  MulNonneg(((a - 1.0) * (a - 1.0)), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_58(a: real, b: real, c: real)
  requires (0.0 <= ((b - c) * (b - c)))
  requires (0.0 <= c)
  ensures (0.0 <= (((b - c) * (b - c)) * c))
{
  MulNonneg(((b - c) * (b - c)), c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_59(a: real, b: real, c: real)
  requires (0.0 <= ((b - c) * (b - c)))
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(((b - c) * (b - c)), -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(((b - c) * (b - c)), (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (((b - c) * (b - c))) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((((b - c) * (b - c))) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_60(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires (0.0 <= a)
  ensures (0.0 <= (((c - 1.0) * (c - 1.0)) * a))
{
  MulNonneg(((c - 1.0) * (c - 1.0)), a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_61(a: real, b: real, c: real)
  requires (0.0 <= ((c - 1.0) * (c - 1.0)))
  requires (0.0 <= (c * a))
  ensures (0.0 <= (((c - 1.0) * (c - 1.0)) * (c * a)))
{
  MulNonneg(((c - 1.0) * (c - 1.0)), (c * a));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_62(a: real, b: real, c: real)
  requires (0.0 <= ((b - 1.0) * (b - 1.0)))
  requires (0.0 <= c)
  ensures (0.0 <= (((b - 1.0) * (b - 1.0)) * c))
{
  MulNonneg(((b - 1.0) * (b - 1.0)), c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_63(a: real, b: real, c: real)
  requires (0.0 <= ((b - 1.0) * (b - 1.0)))
  requires (0.0 <= (b * c))
  ensures (0.0 <= (((b - 1.0) * (b - 1.0)) * (b * c)))
{
  MulNonneg(((b - 1.0) * (b - 1.0)), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_64(a: real, b: real, c: real)
  requires (0.0 <= a)
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((a * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(a, -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(a, (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (a) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((a) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_65(a: real, b: real, c: real)
  requires (0.0 < a)
  requires (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0)
  ensures ((a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0)
{
  MulPos(a, -(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))); MulNeg(a, ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))); assert (a) * (-(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))) == -((a) * (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_66(a: real, b: real, c: real)
  requires (0.0 <= b)
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((b * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(b, -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(b, (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (b) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((b) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_67(a: real, b: real, c: real)
  requires (0.0 < b)
  requires (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0)
  ensures ((b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0)
{
  MulPos(b, -(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))); MulNeg(b, ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))); assert (b) * (-(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))) == -((b) * (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_68(a: real, b: real, c: real)
  requires (0.0 <= c)
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures ((c * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0)
{
  MulNonneg(c, -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(c, (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (c) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((c) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_69(a: real, b: real, c: real)
  requires (0.0 < c)
  requires (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0)
  ensures ((c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0)
{
  MulPos(c, -(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))); MulNeg(c, ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))); assert (c) * (-(((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))) == -((c) * (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_70(a: real, b: real, c: real)
  requires ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0)
  ensures (0.0 <= ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a)))))
{
  MulNonneg(-((3.0 - (((a * b) + (b * c)) + (c * a)))), -((3.0 - (((a * b) + (b * c)) + (c * a))))); MulNeg(-((3.0 - (((a * b) + (b * c)) + (c * a)))), (3.0 - (((a * b) + (b * c)) + (c * a)))); assert (-((3.0 - (((a * b) + (b * c)) + (c * a))))) * (-((3.0 - (((a * b) + (b * c)) + (c * a))))) == -((-((3.0 - (((a * b) + (b * c)) + (c * a))))) * ((3.0 - (((a * b) + (b * c)) + (c * a))))); assert (-((3.0 - (((a * b) + (b * c)) + (c * a))))) * ((3.0 - (((a * b) + (b * c)) + (c * a)))) == -(((3.0 - (((a * b) + (b * c)) + (c * a)))) * ((3.0 - (((a * b) + (b * c)) + (c * a)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_71(a: real, b: real, c: real)
  requires ((3.0 - ((a + b) + c)) <= 0.0)
  ensures (0.0 <= ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c))))
{
  MulNonneg(-((3.0 - ((a + b) + c))), -((3.0 - ((a + b) + c)))); MulNeg(-((3.0 - ((a + b) + c))), (3.0 - ((a + b) + c))); assert (-((3.0 - ((a + b) + c)))) * (-((3.0 - ((a + b) + c)))) == -((-((3.0 - ((a + b) + c)))) * ((3.0 - ((a + b) + c)))); assert (-((3.0 - ((a + b) + c)))) * ((3.0 - ((a + b) + c))) == -(((3.0 - ((a + b) + c))) * ((3.0 - ((a + b) + c))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₉₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_72(a: real, b: real, c: real)
  ensures (((((((((((((((((((((((((612.0 * (3.0 - (((a * b) + (b * c)) + (c * a)))) + (42.0 * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))) + -((((c - a) * (c - a)) * ((b - 1.0) * (b - 1.0))))) + -((12.0 * (((c - a) * (c - a)) * a)))) + (3.0 * (((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + -((((a - b) * (a - b)) * ((c - 1.0) * (c - 1.0))))) + -((12.0 * (((a - b) * (a - b)) * b)))) + (3.0 * (((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + -((((a - 1.0) * (a - 1.0)) * ((b - c) * (b - c))))) + -((180.0 * (((a - 1.0) * (a - 1.0)) * b)))) + -((24.0 * (((a - 1.0) * (a - 1.0)) * (a * b))))) + -((12.0 * (((b - c) * (b - c)) * c)))) + (3.0 * (((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + -((180.0 * (((c - 1.0) * (c - 1.0)) * a)))) + -((24.0 * (((c - 1.0) * (c - 1.0)) * (c * a))))) + -((180.0 * (((b - 1.0) * (b - 1.0)) * c)))) + -((24.0 * (((b - 1.0) * (b - 1.0)) * (b * c))))) + (116.0 * (a * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + (6.0 * (a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))))) + (116.0 * (b * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + (6.0 * (b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))))) + (116.0 * (c * (3.0 - (((a * b) + (b * c)) + (c * a)))))) + (6.0 * (c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))))) + -((40.0 * ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a))))))) + -((52.0 * ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_73(a: real, b: real, c: real)
  requires (0.0 < ((a + b) + 2.0))
  requires (0.0 < ((b + c) + 2.0))
  ensures (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
{
  MulPos(((a + b) + 2.0), ((b + c) + 2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈/h₉₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_74(a: real, b: real, c: real)
  requires (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0)))
  requires (0.0 < ((c + a) + 2.0))
  ensures (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))
{
  MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));
}

// `gcongr` monotonicity step (proven here; Mathlib: mul_le_mul_of_nonneg_left)
lemma gcongr_mul_le_mul_left(x: real, y: real, c: real)
  requires 0.0 <= c
  requires x <= y
  ensures c * x <= c * y
{
}

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₉₄/h₉₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_75(a: real, b: real, c: real)
  ensures (((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0) + -(((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₉₄/h₉₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_76(a: real, b: real, c: real)
  ensures ((2.0 - (Real.sqrt(2.0) * Real.sqrt(2.0))) + ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₉₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_77(a: real, b: real, c: real)
  ensures (((((2.0 * Real.sqrt(2.0)) * 3.0) * Real.sqrt(2.0)) - (3.0 * 4.0)) + -((6.0 * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_78(a: real, b: real, c: real)
  ensures (((((((1.0 * 2.0) * (1.0 * Real.sqrt(2.0))) * (1.0 * 3.0)) - (((1.0 * 2.0) * (1.0 * Real.sqrt(2.0))) * (((4.0 * Real.div(a, ((a + b) + 2.0))) + (4.0 * Real.div(b, ((b + c) + 2.0)))) + (4.0 * Real.div(c, ((c + a) + 2.0)))))) + -(((((1.0 * 2.0) * (1.0 * Real.sqrt(2.0))) * (1.0 * 3.0)) - ((1.0 * Real.div(3.0, Real.sqrt(2.0))) * ((1.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))))) + -((2.0 * (((1.0 * Real.div(3.0, Real.sqrt(2.0))) * ((1.0 * Real.sqrt(2.0)) * (1.0 * Real.sqrt(2.0)))) - ((1.0 * Real.div(3.0, Real.sqrt(2.0))) * (2.0 * 1.0)))))) + (4.0 * ((((1.0 * 2.0) * (1.0 * Real.sqrt(2.0))) * (((1.0 * Real.div(a, ((a + b) + 2.0))) + (1.0 * Real.div(b, ((b + c) + 2.0)))) + (1.0 * Real.div(c, ((c + a) + 2.0))))) - (1.0 * Real.div(3.0, Real.sqrt(2.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_79(a: real, b: real, c: real)
  ensures ((((((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) - (1.0 * Real.div(a, Real.sqrt((a + b))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) - (1.0 * Real.div(b, Real.sqrt((b + c)))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) - (1.0 * Real.div(c, Real.sqrt((c + a)))))) + ((1.0 * Real.div(3.0, Real.sqrt(2.0))) - (((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))))) + ((((1.0 * Real.div(a, Real.sqrt((a + b)))) + (1.0 * Real.div(b, Real.sqrt((b + c))))) + (1.0 * Real.div(c, Real.sqrt((c + a))))) - (1.0 * Real.div(3.0, Real.sqrt(2.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_80(a: real, b: real, c: real)
  ensures ((((((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) - (1.0 * Real.div(a, Real.sqrt((a + b))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) - (1.0 * Real.div(b, Real.sqrt((b + c)))))) + ((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) - (1.0 * Real.div(c, Real.sqrt((c + a)))))) + ((1.0 * Real.div(3.0, Real.sqrt(2.0))) - (((1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)))) + (1.0 * Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))))) + ((((1.0 * Real.div(a, Real.sqrt((a + b)))) + (1.0 * Real.div(b, Real.sqrt((b + c))))) + (1.0 * Real.div(c, Real.sqrt((c + a))))) - (1.0 * Real.div(3.0, Real.sqrt(2.0))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2(a: real, b: real, c: real)
  requires ((0.0 < a) && ((0.0 < b) && (0.0 < c)))
  requires (3.0 <= (((a * b) + (b * c)) + (c * a)))
  ensures (Real.div(3.0, Real.sqrt(2.0)) <= ((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a))))) // @tac 488-948 // @tac 954-1833 // @tac 1839-3266 // @tac 3272-4699 // @tac 4705-6127 // @tac 6133-6847 // @tac 6853-9866 // @tac 9872-10364 // @tac 10370-10378
{
  // have h₂ : a + b + c >= 3  [type from Lean state]
  assert (((a + b) + c) >= 3.0) by { // @tac 526-668 // @tac 673-736 // @tac 741-792 // @tac 797-930 // @tac 935-948
    // have h₂₁ : ( a + b + c ) ^ 2 >= 3 * ( a * b + b * c + c * a )  [type from Lean state]
    assert ((((a + b) + c) * ((a + b) + c)) >= (3.0 * (((a * b) + (b * c)) + (c * a)))) by { // @tac 601-668
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 601-668 exec 36)
      SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
      SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
      SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((a + b + c) ^ (2 : ℕ) - (3 : ℝ) * (a * b + b * c + c * a)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((a + b) + c) * ((a + b) + c)) - (3.0 * (((a * b) + (b * c)) + (c * a)))) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(c - a) ^ (2 : ℕ) + -(a - b) ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) ≤ (0 : ℝ)`
      cert_identity_1(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×11 [exec 36 601-668]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_nonpos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×3])
      SqNonneg((c - a));  // cite: sq_nonneg
      SqNonneg((a - b));  // cite: sq_nonneg
      SqNonneg((b - c));  // cite: sq_nonneg
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 38 / `ring1` exec 37)]
      // UNCITED-APPLIED internal ×235 [exec 37 601-668]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+44 more heads, ×203) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 38 601-668]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₂₂ : 3 * ( a * b + b * c + c * a ) >= 9  [type from Lean state]
    assert ((3.0 * (((a * b) + (b * c)) + (c * a))) >= 9.0) by { // @tac 728-736
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 728-736 exec 55)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0); (3.0 > 0.0)
      cert_identity_2(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×7 [exec 55 728-736]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
      // UNCITED-APPLIED internal ×124 [exec 56 728-736]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+32 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 57 728-736]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 57 / `ring1` exec 56)]
    }
    // have h₂₃ : ( a + b + c ) ^ 2 >= 9  [type from Lean state]
    assert ((((a + b) + c) * ((a + b) + c)) >= 9.0) by { // @tac 784-792
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 784-792 exec 74)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED add_nonpos: certificate sum `(3 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + ((3 : ℝ) * (a * b + b * c + c * a) - (a + b + c) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_3(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×9 [exec 74 784-792]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
      // UNCITED-APPLIED internal ×208 [exec 75 784-792]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+44 more heads, ×176) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 76 784-792]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 76 / `ring1` exec 75)]
    }
    // have h₂₄ : a + b + c >= 3  [type from Lean state]
    assert (((a + b) + c) >= 3.0) by { // @tac 840-930
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a + b + c ) , sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 840-930 exec 93)
      SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
      SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
      SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0); (6.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * (a + b + c - (3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a + b) + c) - 3.0) < 0.0); (6.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-a * (a + b + c - (3 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a * (((a + b) + c) - 3.0)) < 0.0); (2.0 > 0.0)
      if (0.0 < a) && ((((a + b) + c) - 3.0) < 0.0) { cert_piece_4(a, b, c); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-b * (a + b + c - (3 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b * (((a + b) + c) - 3.0)) < 0.0); (2.0 > 0.0)
      if (0.0 < b) && ((((a + b) + c) - 3.0) < 0.0) { cert_piece_5(a, b, c); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-c * (a + b + c - (3 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c * (((a + b) + c) - 3.0)) < 0.0); (2.0 > 0.0)
      if (0.0 < c) && ((((a + b) + c) - 3.0) < 0.0) { cert_piece_6(a, b, c); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(c - a) ^ (2 : ℕ) + -(a - b) ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) + (6 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (6 : ℝ) …`
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `-(c - a) ^ (2 : ℕ) + -(a - b) ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) + (6 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (6 : ℝ) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED add_nonpos ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(c - a) ^ (2 : ℕ) + -(a - b) ^ (2 : ℕ) + -(b - c) ^ (2 : ℕ) + (6 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)`
      cert_identity_7(a, b, c);  // cert: Left.add_neg
      // UNCITED-APPLIED internal ×27 [exec 93 840-930]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×6, add_nonpos ×3, neg_nonpos_of_nonneg ×3, mul_pos_of_neg_of_neg ×3, Left.add_neg ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_neg ×4, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×3])
      // UNCITED-APPLIED internal ×5 [exec 96 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 97 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 98 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 99 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      SqNonneg((c - a));  // cite: sq_nonneg
      SqNonneg((a - b));  // cite: sq_nonneg
      SqNonneg((b - c));  // cite: sq_nonneg
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 95, 96, 97, 98, 99 / `ring1` exec 94)]
      // NOT APPLIED `sq_nonneg ( a + b + c )`: named here, but no application Lean recorded at this tactic has its arguments (3 of the 4 named instances match a recorded application)
      // UNCITED-APPLIED internal ×255 [exec 94 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_mul ×8 (+44 more heads, ×223) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 95 840-930]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₂₄]
    assert (((a + b) + c) >= 3.0);
  }
  // have h₃ : forall ( x y : ℝ ) :: 0 < x -> 0 < y -> Real.sqrt ( ( x + y ) ) <= ( x  [type from Lean state]
  forall x: real, y: real | (0.0 < x) && (0.0 < y) // @tac 1067-1082
    ensures (Real.sqrt((x + y)) <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))) // @tac 1087-1123 // @tac 1128-1190 // @tac 1195-1249 // @tac 1254-1302 // @tac 1307-1818 // @tac 1823-1833
  {
    // [TACTIC: intro x y hx hy]
    // have h₄ : 0 < x + y  [type from Lean state]
    assert (0.0 < (x + y)) by { // @tac 1115-1123
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1115-1123 exec 146)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -y < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_8(a, b, c, x, y);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 146 1115-1123]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 147 1115-1123]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 147)]
    }
    // have h₅ : 0 < Real.sqrt ( 2 )  [type from Lean state]
    assert (0.0 < Real.sqrt(2.0)) by {
      assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1181-1189
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 162 1181-1189]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: exact Real.sqrt_pos.mpr ( ( by norm_num norm_num ) )]
      assert (0.0 < (2.0));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr(2.0);  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos((2 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 157 1128-1190]
    }
    // have h₆ : 0 < Real.sqrt ( 2 ) * ( x + y )  [type from Lean state]
    assert (0.0 < (Real.sqrt(2.0) * (x + y))) by { // @tac 1239-1249
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1239-1249 exec 181)
      if (0.0 < Real.sqrt(2.0)) && (0.0 < (x + y)) { cert_piece_9(a, b, c, x, y); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×4 [exec 181 1239-1249]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (0.0 < (Real.sqrt(2.0))) && (0.0 < ((x + y)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(Real.sqrt(2.0), (x + y));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₇ : 0 < Real.sqrt ( 2 ) * 2  [type from Lean state]
    assert (0.0 < (Real.sqrt(2.0) * 2.0)) by { // @tac 1292-1302
      // [TACTIC: Positivity]
      // positivity proof (Lean execution 1292-1302 exec 198): nothing of it stated; Lean's records:
      // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < √(2 : ℝ) * (2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < Real.sqrt(2.0)); (0.0 < 2.0)
      // UNCITED-APPLIED internal ×3 [exec 198 1292-1302]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (0.0 < (Real.sqrt(2.0))) && (0.0 < (2.0));  // precondition of MulPos (Lean: mul_pos)
      MulPos(Real.sqrt(2.0), 2.0);  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₈ : Real.sqrt ( ( x + y ) ) <= ( x + y + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
    assert (Real.sqrt((x + y)) <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))) by { // @tac 1385-1798 // @tac 1805-1818
      // have h₈₁ : Real.sqrt ( ( x + y ) ) <= ( x + y + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (Real.sqrt((x + y)) <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))) by { // @tac 1468-1506
        assert (0.0 <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 1494-1504
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1494-1504 exec 242)
          if (0.0 < ((x + y) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_10(a, b, c, x, y); }  // cert: div_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
          // UNCITED-APPLIED internal ×5 [exec 242 1494-1504]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1])
          assert ((0.0) < (Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))));  // cite: le_of_lt [applied by the tactic, not named in it]
          assert (0.0 < (((x + y) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
          DivPos(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
          assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
        }
        // [TACTIC: rwSeq [ Real.sqrt_le_left ( by positivity ) ]]
        assert (0.0 <= (Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0)))));  // precondition of RealSqrtLeLeftIff (Lean: Real.sqrt_le_left)
        RealSqrtLeLeftIff((x + y), Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))));  // cite: Real.sqrt_le_left
        assert ((x + y) <= (Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))) * Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `field_simp` (Lean state) // @tac 1515-1536
          // [TACTIC: «Field_simp[_]At___» [ h₅.ne' ]]
          // UNCITED h₅.ne': a projection of the local hypothesis h₅ handed to the tactic; its fact is not stated here
          // UNCITED-APPLIED internal ×2 [exec 267 1515-1536]: applications made inside the tactic's own automation, not stated — div_pow ×1; machinery/glue: congrArg ×1
          assert ((x + y) <= Real.div((((x + y) + 2.0) * ((x + y) + 2.0)), ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 1545-1576
            assert (0.0 < ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 1564-1574
              // [TACTIC: Positivity]
              // positivity proof (Lean execution 1564-1574 exec 279): nothing of it stated; Lean's records:
              // cert: pow_pos piece `(0.0 < ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
              // UNCITED-APPLIED internal ×3 [exec 279 1564-1574]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
              assert (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of PowPos (Lean: pow_pos)
              PowPos((2.0 * Real.sqrt(2.0)), 2);  // cite: pow_pos [applied by the tactic, not named in it]
              assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
              MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
            }
            // [TACTIC: rwSeq [ le_div_iff ( by positivity ) ]]
            assert (0.0 < (((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))));  // precondition of LeDivIff (Lean: le_div_iff)
            LeDivIff((x + y), (((x + y) + 2.0) * ((x + y) + 2.0)), ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))));  // cite: le_div_iff
            assert (((x + y) * ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) <= (((x + y) + 2.0) * ((x + y) + 2.0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1585-1798
              assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1626-1634
                // [TACTIC: «Norm_num[_]At___»]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 309 1626-1634]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              }
              assert (0.0 <= (x + y)) by {  // sub-goal of `by` (Lean state) // @tac 1763-1773
                // [TACTIC: Positivity]
                // UNCITED-APPLIED internal ×1 [exec 314 1763-1773]: applications made inside the tactic's own automation, not stated — add_pos ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
                assert ((0.0) < ((x + y)));  // precondition of LeOfLt (Lean: le_of_lt)
                LeOfLt(0.0, (x + y));  // cite: le_of_lt [applied by the tactic, not named in it]
              }
              // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) , sq_nonneg ( x + y - 2 ) , sq_nonneg ( Real.sqrt 2 * Real.sqrt ( x + y ) - 2 ) , Real.sq_sqrt ( show 0 ≤ x + y by positivity ) , sq_nonneg ( x + y - 2 ) ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1585-1798 exec 304)
              SqNonneg(((x + y) - 2.0)); assert (0.0 <= (((x + y) - 2.0) * ((x + y) - 2.0)));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(8 : ℝ) * (√(x + y) ^ (2 : ℕ) - (x + y)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y)) == 0.0); (8.0 > 0.0)
              if (0.0 <= ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) && (((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y)) == 0.0) { assert (-((((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))) * ((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y)))) == 0.0); }  // cert: Linarith.mul_zero_eq
              SqNonneg((2.0 * Real.sqrt(2.0))); assert (0.0 <= ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(-√(x + y) ^ (2 : ℕ) * (√(2 : ℝ) ^ (2 : ℕ) - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((x + y)) * Real.sqrt((x + y))) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)) == 0.0); (4.0 > 0.0)
              if (0.0 <= (Real.sqrt((x + y)) * Real.sqrt((x + y)))) && (((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0) == 0.0) { assert (-(((Real.sqrt((x + y)) * Real.sqrt((x + y))) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
              SqNonneg(Real.sqrt((x + y))); assert (0.0 <= (Real.sqrt((x + y)) * Real.sqrt((x + y))));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x + y - (2 : ℝ)) ^ (2 : ℕ) + ((x + y + (2 : ℝ)) ^ (2 : ℕ) - (x + y) * ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ)) + (8 : ℝ) * (√(…`
              // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `-(x + y - (2 : ℝ)) ^ (2 : ℕ) + ((x + y + (2 : ℝ)) ^ (2 : ℕ) - (x + y) * ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_11(a, b, c, x, y);  // cert: Linarith.lt_of_lt_of_eq
              // UNCITED-APPLIED internal ×16 [exec 304 1585-1798]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, sub_eq_zero_of_eq ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.mul_eq ×2, Linarith.mul_zero_eq ×2, Linarith.lt_irrefl ×1 (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×2], sq_nonneg [Lean recorded ×3])
              // UNCITED-APPLIED internal ×5 [exec 317 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              SqNonneg(((x + y) - 2.0));  // cite: sq_nonneg
              SqNonneg((2.0 * Real.sqrt(2.0)));  // cite: sq_nonneg
              SqNonneg(Real.sqrt((x + y)));  // cite: sq_nonneg
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 316, 317 / `ring1` exec 315)]
              // NOT APPLIED `sq_nonneg ( Real.sqrt 2 * Real.sqrt ( x + y ) - 2 )`: named here, but no application Lean recorded at this tactic has its arguments (1 of the 2 named instances match a recorded application)
              // UNCITED-APPLIED internal ×264 [exec 315 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+50 more heads, ×232) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 316 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              assert (0.0 <= (2.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
              RealSqSqrt(2.0);  // cite: Real.sq_sqrt
              assert (0.0 <= ((x + y)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
              RealSqSqrt((x + y));  // cite: Real.sq_sqrt
            }
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 272 1545-1576]
          }
        }
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 235 1468-1506]
      }
      // [TACTIC: exact h₈₁]
      assert (Real.sqrt((x + y)) <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))));
    }
    // [TACTIC: exact h₈]
    assert (Real.sqrt((x + y)) <= Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))));
  }
  // have h₄ : a / Real.sqrt ( ( a + b ) ) >= ( 2 * Real.sqrt ( 2 ) * a ) / ( a + b +  [type from Lean state]
  assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) by { // @tac 1923-1958 // @tac 1963-1998 // @tac 2003-2042 // @tac 2047-2112 // @tac 2117-2213 // @tac 2218-2881 // @tac 2886-3217 // @tac 3222-3248 // @tac 3253-3266
    // have h₄₁ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 1950-1958
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1950-1958 exec 352)
      cert_identity_12(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 352 1950-1958]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 353 1950-1958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 353)]
    }
    // have h₄₂ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 1990-1998
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1990-1998 exec 370)
      cert_identity_13(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 370 1990-1998]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 371 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 371)]
    }
    // have h₄₃ : 0 < a + b  [type from Lean state]
    assert (0.0 < (a + b)) by { // @tac 2034-2042
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2034-2042 exec 388)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-a + -b < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_14(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 388 2034-2042]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 389 2034-2042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 389)]
    }
    // have h₄₄ : 0 < Real.sqrt ( ( a + b ) )  [type from Lean state]
    assert (0.0 < Real.sqrt((a + b))) by {
      // [TACTIC: exact Real.sqrt_pos.mpr ( h₄₃ )]
      assert (0.0 < ((a + b)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr((a + b));  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos(a + b): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 399 2047-2112]
    }
    // have h₄₅ : Real.sqrt ( ( a + b ) ) <= ( a + b + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
    assert (Real.sqrt((a + b)) <= Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
      // [TACTIC: exact h₃ ( a , b , h₄₁ , h₄₂ )]
      assert (Real.sqrt((a + b)) <= Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))));  // instance of h₃ (Lean state)
    }
    // have h₄₆ : a / Real.sqrt ( ( a + b ) ) >= a / ( ( a + b + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
    assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(a, Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 2309-2376 // @tac 2383-2448 // @tac 2455-2534 // @tac 2541-2858 // @tac 2865-2881
      // have h₄₇ : 0 < ( a + b + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (0.0 < Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))) by { // @tac 2366-2376
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2366-2376 exec 446)
        if (0.0 < ((a + b) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_15(a, b, c); }  // cert: div_pos
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
        // UNCITED-APPLIED internal ×5 [exec 446 2366-2376]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (0.0 < (((a + b) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
        DivPos(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
        MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₄₈ : 0 < Real.sqrt ( ( a + b ) )  [type from Lean state]
      assert (0.0 < Real.sqrt((a + b))) by {
        // [TACTIC: exact Real.sqrt_pos.mpr ( h₄₃ )]
        assert (0.0 < ((a + b)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
        RealSqrtPosMpr((a + b));  // cite: Real.sqrt_pos.mpr
        // UNCITED-APPLIED Real.sqrt_pos(a + b): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 456 2383-2448]
      }
      // have h₄₉ : Real.sqrt ( ( a + b ) ) <= ( a + b + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (Real.sqrt((a + b)) <= Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
        // [TACTIC: exact h₄₅]
        assert (Real.sqrt((a + b)) <= Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))));
      }
      // have h₄₁₀ : a / Real.sqrt ( ( a + b ) ) >= a / ( ( a + b + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
      assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(a, Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 2637-2695
        assert (0.0 < Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 2663-2673
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2663-2673 exec 492)
          if (0.0 < ((a + b) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_16(a, b, c); }  // cert: div_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
          // UNCITED-APPLIED internal ×5 [exec 492 2663-2673]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
          assert (0.0 < (((a + b) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
          DivPos(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
          assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
        }
        assert (0.0 < Real.sqrt((a + b))) by {  // sub-goal of `by` (Lean state) // @tac 2679-2689
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×2 [exec 497 2679-2689]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, add_pos ×1
        }
        // [TACTIC: apply ( div_le_div_iff ( by positivity ) ( by positivity ) ) . mpr]
        assert ((a * Real.sqrt((a + b))) <= (a * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2704-2858
          assert (0.0 <= (a + b)) by {  // sub-goal of `by` (Lean state) // @tac 2775-2785
            // [TACTIC: Positivity]
          }
          assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 2848-2856
            // [TACTIC: «Norm_num[_]At___»]
          }
          // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( a + b ) , Real.sq_sqrt ( show 0 ≤ a + b by positivity ) , Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2704-2858 exec 498)
          if (0.0 <= a) && (((1.0 * Real.sqrt((a + b))) - (1.0 * Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0) { cert_piece_17(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          cert_identity_18(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 498 2704-2858]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 510 2704-2858]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
          // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 509, 510 / `ring1` exec 511)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 511)]
          if ((-(a)) < (0.0)) { LeOfLt(-(a), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×175 [exec 511 2704-2858]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+47 more heads, ×143) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 509 2704-2858]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        assert (0.0 < (Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))))) && (0.0 < (Real.sqrt((a + b))));  // precondition of DivLeDivIff (Lean: div_le_div_iff; `apply`: proved by the steps above)
        DivLeDivIff(a, Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0))), a, Real.sqrt((a + b)));  // cite: div_le_div_iff
      }
      // [TACTIC: exact h₄₁₀]
      assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(a, Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))));
    }
    // have h₄₁₁ : a / ( ( a + b + 2 ) / ( 2 * Real.sqrt ( 2 ) ) ) == ( 2 * Real.sqrt ( 2  [type from Lean state]
    assert (Real.div(a, Real.div(((a + b) + 2.0), (2.0 * Real.sqrt(2.0)))) == Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) by { // @tac 2992-3217 // @tac 2992-3135 // @tac 2992-3117 // @tac 2992-3058 // @tac 2992-3040
      // [TACTIC: «_<;>_» [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> field_simp [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
      // [TACTIC: choice [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₄₃.ne' , Real.sqrt_eq_iff_sq_eq ]]
      // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED h₄₃.ne': a projection of the local hypothesis h₄₃ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×12 [exec 549 2992-3040]: applications made inside the tactic's own automation, not stated — add_pos ×2, div_div_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_mul_eq_mul_div ×1, mul_div_cancel_right₀ ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1
      assert ((a * (2.0 * Real.sqrt(2.0))) == ((2.0 * Real.sqrt(2.0)) * a)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 3051-3058
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.sqrt(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×48 [exec 558 3051-3058]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.add_mul ×3 (+16 more heads, ×28) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      // [TACTIC: «Norm_num[_]At___»]
    }
    // [TACTIC: rwSeq [ h₄₁₁ ] at h₄₆]
    // UNCITED-APPLIED congrArg(a / ((a + b + (2 : ℝ)) / ((2 : ℝ) * √(2 : ℝ))), (2 : ℝ) * √(2 : ℝ) * a / (a + b + (2 : ℝ)), fun (_a : ℝ) => a / √(a + b) ≥ _a): no library counterpart (not stated) [exec 581 3222-3248]
    assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)));  // hypothesis h₄₆ after `rw` (Lean state) // @tac-hyp 3222-3248
    // [TACTIC: exact h₄₆]
    assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)));  // hypothesis h₄₆ at `exact` (Lean state)
  }
  // have h₅ : b / Real.sqrt ( ( b + c ) ) >= ( 2 * Real.sqrt ( 2 ) * b ) / ( b + c +  [type from Lean state]
  assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) by { // @tac 3356-3391 // @tac 3396-3431 // @tac 3436-3475 // @tac 3480-3545 // @tac 3550-3646 // @tac 3651-4314 // @tac 4319-4650 // @tac 4655-4681 // @tac 4686-4699
    // have h₅₁ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 3383-3391
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3383-3391 exec 641)
      cert_identity_19(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 641 3383-3391]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 642 3383-3391]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 642)]
    }
    // have h₅₂ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 3423-3431
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3423-3431 exec 659)
      cert_identity_20(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 659 3423-3431]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 660 3423-3431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 660)]
    }
    // have h₅₃ : 0 < b + c  [type from Lean state]
    assert (0.0 < (b + c)) by { // @tac 3467-3475
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3467-3475 exec 677)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-b + -c < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_21(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 677 3467-3475]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 678 3467-3475]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 678)]
    }
    // have h₅₄ : 0 < Real.sqrt ( ( b + c ) )  [type from Lean state]
    assert (0.0 < Real.sqrt((b + c))) by {
      // [TACTIC: exact Real.sqrt_pos.mpr ( h₅₃ )]
      assert (0.0 < ((b + c)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr((b + c));  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos(b + c): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 688 3480-3545]
    }
    // have h₅₅ : Real.sqrt ( ( b + c ) ) <= ( b + c + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
    assert (Real.sqrt((b + c)) <= Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
      // [TACTIC: exact h₃ ( b , c , h₅₁ , h₅₂ )]
      assert (Real.sqrt((b + c)) <= Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))));  // instance of h₃ (Lean state)
    }
    // have h₅₆ : b / Real.sqrt ( ( b + c ) ) >= b / ( ( b + c + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
    assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(b, Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 3742-3809 // @tac 3816-3881 // @tac 3888-3967 // @tac 3974-4291 // @tac 4298-4314
      // have h₅₇ : 0 < ( b + c + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (0.0 < Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))) by { // @tac 3799-3809
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 3799-3809 exec 735)
        if (0.0 < ((b + c) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_22(a, b, c); }  // cert: div_pos
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
        // UNCITED-APPLIED internal ×5 [exec 735 3799-3809]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (0.0 < (((b + c) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
        DivPos(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
        MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₅₈ : 0 < Real.sqrt ( ( b + c ) )  [type from Lean state]
      assert (0.0 < Real.sqrt((b + c))) by {
        // [TACTIC: exact Real.sqrt_pos.mpr ( h₅₃ )]
        assert (0.0 < ((b + c)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
        RealSqrtPosMpr((b + c));  // cite: Real.sqrt_pos.mpr
        // UNCITED-APPLIED Real.sqrt_pos(b + c): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 745 3816-3881]
      }
      // have h₅₉ : Real.sqrt ( ( b + c ) ) <= ( b + c + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (Real.sqrt((b + c)) <= Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
        // [TACTIC: exact h₅₅]
        assert (Real.sqrt((b + c)) <= Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))));
      }
      // have h₅₁₀ : b / Real.sqrt ( ( b + c ) ) >= b / ( ( b + c + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
      assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(b, Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 4070-4128
        assert (0.0 < Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 4096-4106
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4096-4106 exec 781)
          if (0.0 < ((b + c) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_23(a, b, c); }  // cert: div_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
          // UNCITED-APPLIED internal ×5 [exec 781 4096-4106]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
          assert (0.0 < (((b + c) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
          DivPos(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
          assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
        }
        assert (0.0 < Real.sqrt((b + c))) by {  // sub-goal of `by` (Lean state) // @tac 4112-4122
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×2 [exec 786 4112-4122]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, add_pos ×1
        }
        // [TACTIC: apply ( div_le_div_iff ( by positivity ) ( by positivity ) ) . mpr]
        assert ((b * Real.sqrt((b + c))) <= (b * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 4137-4291
          assert (0.0 <= (b + c)) by {  // sub-goal of `by` (Lean state) // @tac 4208-4218
            // [TACTIC: Positivity]
          }
          assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 4281-4289
            // [TACTIC: «Norm_num[_]At___»]
          }
          // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( b + c ) , Real.sq_sqrt ( show 0 ≤ b + c by positivity ) , Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4137-4291 exec 787)
          if (0.0 <= b) && (((1.0 * Real.sqrt((b + c))) - (1.0 * Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0) { cert_piece_24(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          cert_identity_25(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 787 4137-4291]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 799 4137-4291]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
          // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 798, 799 / `ring1` exec 800)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 800)]
          if ((-(b)) < (0.0)) { LeOfLt(-(b), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×175 [exec 800 4137-4291]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+47 more heads, ×143) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 798 4137-4291]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        assert (0.0 < (Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))))) && (0.0 < (Real.sqrt((b + c))));  // precondition of DivLeDivIff (Lean: div_le_div_iff; `apply`: proved by the steps above)
        DivLeDivIff(b, Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0))), b, Real.sqrt((b + c)));  // cite: div_le_div_iff
      }
      // [TACTIC: exact h₅₁₀]
      assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(b, Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))));
    }
    // have h₅₁₁ : b / ( ( b + c + 2 ) / ( 2 * Real.sqrt ( 2 ) ) ) == ( 2 * Real.sqrt ( 2  [type from Lean state]
    assert (Real.div(b, Real.div(((b + c) + 2.0), (2.0 * Real.sqrt(2.0)))) == Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) by { // @tac 4425-4650 // @tac 4425-4568 // @tac 4425-4550 // @tac 4425-4491 // @tac 4425-4473
      // [TACTIC: «_<;>_» [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> field_simp [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
      // [TACTIC: choice [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₅₃.ne' , Real.sqrt_eq_iff_sq_eq ]]
      // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED h₅₃.ne': a projection of the local hypothesis h₅₃ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×12 [exec 838 4425-4473]: applications made inside the tactic's own automation, not stated — add_pos ×2, div_div_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_mul_eq_mul_div ×1, mul_div_cancel_right₀ ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1
      assert ((b * (2.0 * Real.sqrt(2.0))) == ((2.0 * Real.sqrt(2.0)) * b)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4484-4491
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.sqrt(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×48 [exec 847 4484-4491]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.add_mul ×3 (+16 more heads, ×28) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      // [TACTIC: «Norm_num[_]At___»]
    }
    // [TACTIC: rwSeq [ h₅₁₁ ] at h₅₆]
    // UNCITED-APPLIED congrArg(b / ((b + c + (2 : ℝ)) / ((2 : ℝ) * √(2 : ℝ))), (2 : ℝ) * √(2 : ℝ) * b / (b + c + (2 : ℝ)), fun (_a : ℝ) => b / √(b + c) ≥ _a): no library counterpart (not stated) [exec 870 4655-4681]
    assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)));  // hypothesis h₅₆ after `rw` (Lean state) // @tac-hyp 4655-4681
    // [TACTIC: exact h₅₆]
    assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)));  // hypothesis h₅₆ at `exact` (Lean state)
  }
  // have h₆ : c / Real.sqrt ( ( c + a ) ) >= ( 2 * Real.sqrt ( 2 ) * c ) / ( c + a +  [type from Lean state]
  assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) by { // @tac 4789-4824 // @tac 4829-4864 // @tac 4869-4908 // @tac 4913-4978 // @tac 4983-5079 // @tac 5084-5747 // @tac 5752-6083 // @tac 6088-6114 // @tac 6119-6127
    // have h₆₁ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 4816-4824
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4816-4824 exec 930)
      cert_identity_26(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 930 4816-4824]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 931 4816-4824]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 931)]
    }
    // have h₆₂ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 4856-4864
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4856-4864 exec 948)
      cert_identity_27(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 948 4856-4864]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 949 4856-4864]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 949)]
    }
    // have h₆₃ : 0 < c + a  [type from Lean state]
    assert (0.0 < (c + a)) by { // @tac 4900-4908
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4900-4908 exec 966)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-a + -c < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_28(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 966 4900-4908]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 967 4900-4908]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+19 more heads, ×23) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 967)]
    }
    // have h₆₄ : 0 < Real.sqrt ( ( c + a ) )  [type from Lean state]
    assert (0.0 < Real.sqrt((c + a))) by {
      // [TACTIC: exact Real.sqrt_pos.mpr ( h₆₃ )]
      assert (0.0 < ((c + a)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr((c + a));  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos(c + a): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 977 4913-4978]
    }
    // have h₆₅ : Real.sqrt ( ( c + a ) ) <= ( c + a + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
    assert (Real.sqrt((c + a)) <= Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
      // [TACTIC: exact h₃ ( c , a , h₆₁ , h₆₂ )]
      assert (Real.sqrt((c + a)) <= Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))));  // instance of h₃ (Lean state)
    }
    // have h₆₆ : c / Real.sqrt ( ( c + a ) ) >= c / ( ( c + a + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
    assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(c, Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 5175-5242 // @tac 5249-5314 // @tac 5321-5400 // @tac 5407-5724 // @tac 5731-5747
      // have h₆₇ : 0 < ( c + a + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (0.0 < Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))) by { // @tac 5232-5242
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 5232-5242 exec 1024)
        if (0.0 < ((c + a) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_29(a, b, c); }  // cert: div_pos
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
        // UNCITED-APPLIED internal ×5 [exec 1024 5232-5242]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (0.0 < (((c + a) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
        DivPos(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
        MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₆₈ : 0 < Real.sqrt ( ( c + a ) )  [type from Lean state]
      assert (0.0 < Real.sqrt((c + a))) by {
        // [TACTIC: exact Real.sqrt_pos.mpr ( h₆₃ )]
        assert (0.0 < ((c + a)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
        RealSqrtPosMpr((c + a));  // cite: Real.sqrt_pos.mpr
        // UNCITED-APPLIED Real.sqrt_pos(c + a): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 1034 5249-5314]
      }
      // have h₆₉ : Real.sqrt ( ( c + a ) ) <= ( c + a + 2 ) / ( 2 * Real.sqrt ( 2 ) )  [type from Lean state]
      assert (Real.sqrt((c + a)) <= Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))) by {
        // [TACTIC: exact h₆₅]
        assert (Real.sqrt((c + a)) <= Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))));
      }
      // have h₆₁₀ : c / Real.sqrt ( ( c + a ) ) >= c / ( ( c + a + 2 ) / ( 2 * Real.sqrt (  [type from Lean state]
      assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(c, Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) by { // @tac 5503-5561
        assert (0.0 < Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 5529-5539
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 5529-5539 exec 1070)
          if (0.0 < ((c + a) + 2.0)) && (0.0 < (2.0 * Real.sqrt(2.0))) { cert_piece_30(a, b, c); }  // cert: div_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
          // UNCITED-APPLIED internal ×5 [exec 1070 5529-5539]: applications made inside the tactic's own automation, not stated — add_pos ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
          assert (0.0 < (((c + a) + 2.0))) && (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of DivPos (Lean: div_pos)
          DivPos(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)));  // cite: div_pos [applied by the tactic, not named in it]
          assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
        }
        assert (0.0 < Real.sqrt((c + a))) by {  // sub-goal of `by` (Lean state) // @tac 5545-5555
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×2 [exec 1075 5545-5555]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, add_pos ×1
        }
        // [TACTIC: apply ( div_le_div_iff ( by positivity ) ( by positivity ) ) . mpr]
        assert ((c * Real.sqrt((c + a))) <= (c * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 5570-5724
          assert (0.0 <= (c + a)) by {  // sub-goal of `by` (Lean state) // @tac 5641-5651
            // [TACTIC: Positivity]
          }
          assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 5714-5722
            // [TACTIC: «Norm_num[_]At___»]
          }
          // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( c + a ) , Real.sq_sqrt ( show 0 ≤ c + a by positivity ) , Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5570-5724 exec 1076)
          if (0.0 <= c) && (((1.0 * Real.sqrt((c + a))) - (1.0 * Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) <= 0.0) { cert_piece_31(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          cert_identity_32(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 1076 5570-5724]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1088 5570-5724]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
          // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1087, 1088 / `ring1` exec 1089)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1089)]
          if ((-(c)) < (0.0)) { LeOfLt(-(c), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×175 [exec 1089 5570-5724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+47 more heads, ×143) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1087 5570-5724]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        assert (0.0 < (Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))))) && (0.0 < (Real.sqrt((c + a))));  // precondition of DivLeDivIff (Lean: div_le_div_iff; `apply`: proved by the steps above)
        DivLeDivIff(c, Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0))), c, Real.sqrt((c + a)));  // cite: div_le_div_iff
      }
      // [TACTIC: exact h₆₁₀]
      assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(c, Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))));
    }
    // have h₆₁₁ : c / ( ( c + a + 2 ) / ( 2 * Real.sqrt ( 2 ) ) ) == ( 2 * Real.sqrt ( 2  [type from Lean state]
    assert (Real.div(c, Real.div(((c + a) + 2.0), (2.0 * Real.sqrt(2.0)))) == Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) by { // @tac 5858-6083 // @tac 5858-6001 // @tac 5858-5983 // @tac 5858-5924 // @tac 5858-5906
      // [TACTIC: «_<;>_» [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> field_simp [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2 , Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
      // [TACTIC: choice [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ] field_simp [ h₆₃.ne' , Real.sqrt_eq_iff_sq_eq ]]
      // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED h₆₃.ne': a projection of the local hypothesis h₆₃ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×12 [exec 1127 5858-5906]: applications made inside the tactic's own automation, not stated — add_pos ×2, div_div_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_mul_eq_mul_div ×1, mul_div_cancel_right₀ ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1
      assert ((c * (2.0 * Real.sqrt(2.0))) == ((2.0 * Real.sqrt(2.0)) * c)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5917-5924
        PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.sqrt(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×48 [exec 1136 5917-5924]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.add_mul ×3 (+16 more heads, ×28) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      // [TACTIC: «Norm_num[_]At___»]
    }
    // [TACTIC: rwSeq [ h₆₁₁ ] at h₆₆]
    // UNCITED-APPLIED congrArg(c / ((c + a + (2 : ℝ)) / ((2 : ℝ) * √(2 : ℝ))), (2 : ℝ) * √(2 : ℝ) * c / (c + a + (2 : ℝ)), fun (_a : ℝ) => c / √(c + a) ≥ _a): no library counterpart (not stated) [exec 1159 6088-6114]
    assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)));  // hypothesis h₆₆ after `rw` (Lean state) // @tac-hyp 6088-6114
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6119-6127 exec 1186)
    cert_identity_33(a, b, c);  // cert: add_lt_of_le_of_neg
    // UNCITED-APPLIED internal ×12 [exec 1186 6119-6127]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
    // UNCITED-APPLIED internal ×114 [exec 1187 6119-6127]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_right ×7, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.zero_mul ×6 (+39 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1187)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1187)]
  }
  // have h₇ : a / Real.sqrt ( ( a + b ) ) + b / Real.sqrt ( ( b + c ) ) + c / Real.s  [type from Lean state]
  assert (((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a)))) >= ((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))) by { // @tac 6341-6425 // @tac 6430-6514 // @tac 6519-6603 // @tac 6608-6829 // @tac 6834-6847
    // have h₇₁ : a / Real.sqrt ( ( a + b ) ) >= ( 2 * Real.sqrt ( 2 ) * a ) / ( a + b +  [type from Lean state]
    assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0))) by {
      // [TACTIC: exact h₄]
      assert (Real.div(a, Real.sqrt((a + b))) >= Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)));
    }
    // have h₇₂ : b / Real.sqrt ( ( b + c ) ) >= ( 2 * Real.sqrt ( 2 ) * b ) / ( b + c +  [type from Lean state]
    assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) by {
      // [TACTIC: exact h₅]
      assert (Real.div(b, Real.sqrt((b + c))) >= Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0)));
    }
    // have h₇₃ : c / Real.sqrt ( ( c + a ) ) >= ( 2 * Real.sqrt ( 2 ) * c ) / ( c + a +  [type from Lean state]
    assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) by {
      // [TACTIC: exact h₆]
      assert (Real.div(c, Real.sqrt((c + a))) >= Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)));
    }
    // have h₇₄ : a / Real.sqrt ( ( a + b ) ) + b / Real.sqrt ( ( b + c ) ) + c / Real.s  [type from Lean state]
    assert (((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a)))) >= ((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))) by { // @tac 6821-6829
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6821-6829 exec 1256)
      // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * a / (a + b + (2 : ℝ))) - (1 : ℝ) * (a / √(a + b)) + ((1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * b …`
      cert_identity_34(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 1256 6821-6829]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×4, CancelDenoms.add_subst ×4, sub_nonpos_of_le ×3, add_nonpos ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×3, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×178 [exec 1257 6821-6829]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+38 more heads, ×146) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1257)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1257)]
    }
    // [TACTIC: exact h₇₄]
    assert (((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a)))) >= ((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))));
  }
  // have h₈ : ( 2 * Real.sqrt ( 2 ) * a ) / ( a + b + 2 ) + ( 2 * Real.sqrt ( 2 ) *   [type from Lean state]
  assert (((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) >= Real.div(3.0, Real.sqrt(2.0))) by { // @tac 7007-7072 // @tac 7077-7128 // @tac 7133-7168 // @tac 7173-7208 // @tac 7213-7248 // @tac 7253-7296 // @tac 7301-7344 // @tac 7349-7392 // @tac 7397-7472 // @tac 7543-8057 // @tac 8127-8585 // @tac 8590-8602
    // have h₈₁ : 0 < Real.sqrt ( 2 )  [type from Lean state]
    assert (0.0 < Real.sqrt(2.0)) by {
      assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 7063-7071
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 1289 7063-7071]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: exact Real.sqrt_pos.mpr ( ( by norm_num norm_num ) )]
      assert (0.0 < (2.0));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr(2.0);  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos((2 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 1284 7007-7072]
    }
    // have h₈₂ : 0 < 2 * Real.sqrt ( 2 )  [type from Lean state]
    assert (0.0 < (2.0 * Real.sqrt(2.0))) by { // @tac 7118-7128
      // [TACTIC: Positivity]
      // positivity proof (Lean execution 7118-7128 exec 1308): nothing of it stated; Lean's records:
      // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
      // UNCITED-APPLIED internal ×3 [exec 1308 7118-7128]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₈₃ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 7160-7168
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7160-7168 exec 1325)
      cert_identity_35(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 1325 7160-7168]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 1326 7160-7168]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1326)]
    }
    // have h₈₄ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 7200-7208
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7200-7208 exec 1343)
      cert_identity_36(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 1343 7200-7208]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 1344 7200-7208]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1344)]
    }
    // have h₈₅ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 7240-7248
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7240-7248 exec 1361)
      cert_identity_37(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 1361 7240-7248]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 1362 7240-7248]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1362)]
    }
    // have h₈₆ : 0 < a + b + 2  [type from Lean state]
    assert (0.0 < ((a + b) + 2.0)) by { // @tac 7288-7296
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7288-7296 exec 1379)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (-1 : ℝ) + -a + -b < (0 : ℝ)`
      cert_identity_38(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1379 7288-7296]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×59 [exec 1380 7288-7296]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+25 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1380)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1381 / `ring1` exec 1380)]
      // UNCITED-APPLIED internal ×5 [exec 1381 7288-7296]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₈₇ : 0 < b + c + 2  [type from Lean state]
    assert (0.0 < ((b + c) + 2.0)) by { // @tac 7336-7344
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7336-7344 exec 1398)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (-1 : ℝ) + -b + -c < (0 : ℝ)`
      cert_identity_39(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1398 7336-7344]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×59 [exec 1399 7336-7344]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+25 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1399)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1400 / `ring1` exec 1399)]
      // UNCITED-APPLIED internal ×5 [exec 1400 7336-7344]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₈₈ : 0 < c + a + 2  [type from Lean state]
    assert (0.0 < ((c + a) + 2.0)) by { // @tac 7384-7392
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7384-7392 exec 1417)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (-1 : ℝ) + -a + -c < (0 : ℝ)`
      cert_identity_40(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1417 7384-7392]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×59 [exec 1418 7384-7392]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_congr ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×45) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1418)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1419 / `ring1` exec 1418)]
      // UNCITED-APPLIED internal ×5 [exec 1419 7384-7392]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₈₉ : 0 < ( a + b + 2 ) * ( b + c + 2 ) * ( c + a + 2 )  [type from Lean state]
    assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) by { // @tac 7462-7472
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7462-7472 exec 1436)
      if (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0))) && (0.0 < ((c + a) + 2.0)) { cert_piece_41(a, b, c); }  // cert: mul_pos
      if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_42(a, b, c); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×8 [exec 1436 7462-7472]: applications made inside the tactic's own automation, not stated — add_pos ×6, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
      assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)))) && (0.0 < (((c + a) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      assert (0.0 < (((a + b) + 2.0))) && (0.0 < (((b + c) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(((a + b) + 2.0), ((b + c) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₉₀ : a / ( a + b + 2 ) + b / ( b + c + 2 ) + c / ( c + a + 2 ) >= 3 / 4  [type from Lean state]
    assert (((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))) >= (3.0 / 4.0)) by { // @tac 7706-7747 // @tac 7754-7795 // @tac 7802-7843 // @tac 7850-7860
      // have h₉₁ : 0 < a * b  [type from Lean state]
      assert (0.0 < (a * b)) by { // @tac 7737-7747
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7737-7747 exec 1469)
        if (0.0 < a) && (0.0 < b) { cert_piece_43(a, b, c); }  // cert: mul_pos
        assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
        MulPos(a, b);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₉₂ : 0 < b * c  [type from Lean state]
      assert (0.0 < (b * c)) by { // @tac 7785-7795
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7785-7795 exec 1486)
        if (0.0 < b) && (0.0 < c) { cert_piece_44(a, b, c); }  // cert: mul_pos
        assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
        MulPos(b, c);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₉₃ : 0 < c * a  [type from Lean state]
      assert (0.0 < (c * a)) by { // @tac 7833-7843
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7833-7843 exec 1503)
        if (0.0 < c) && (0.0 < a) { cert_piece_45(a, b, c); }  // cert: mul_pos
        assert (0.0 < (c)) && (0.0 < (a));  // precondition of MulPos (Lean: mul_pos)
        MulPos(c, a);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Field_simp[_]At___»]
      assert (0.0 < (((a + b) + 2.0))) && (0.0 < (((b + c) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(((a + b) + 2.0), ((b + c) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 7850-7860 exec 1504)
      if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_46(a, b, c); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×33 [exec 1504 7850-7860]: applications made inside the tactic's own automation, not stated — add_pos ×6, ne_of_gt ×4, add_div' ×2, div_mul_eq_mul_div ×2, div_add' ×2, div_div ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert ((3.0 / 4.0) <= Real.div(((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))), ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) by {  // sub-goal before `rw` (Lean state) // @tac 7867-7918
        assert (0.0 < 4.0) by {  // sub-goal of `by` (Lean state) // @tac 7890-7900
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×2 [exec 1516 7890-7900]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) by {  // sub-goal of `by` (Lean state) // @tac 7906-7916
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7906-7916 exec 1521)
          if (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0))) && (0.0 < ((c + a) + 2.0)) { cert_piece_47(a, b, c); }  // cert: mul_pos
          if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_48(a, b, c); }  // cert: mul_pos
          // UNCITED-APPLIED internal ×8 [exec 1521 7906-7916]: applications made inside the tactic's own automation, not stated — add_pos ×6, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
          assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)))) && (0.0 < (((c + a) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
          // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + 2.0), ((b + c) + 2.0));]
        }
        // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
        assert (0.0 < (4.0)) && (0.0 < (((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
        DivLeDivIff(3.0, 4.0, ((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))), ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)));  // cite: div_le_div_iff
        assert ((3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) <= (((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 7925-8057
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , sq_nonneg ( a - 1 ) , sq_nonneg ( b - 1 ) , sq_nonneg ( c - 1 ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7925-8057 exec 1546)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0); (612.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + c + (2…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0); (42.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && (0.0 <= ((b - 1.0) * (b - 1.0))) { cert_piece_49(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
          SqNonneg((b - 1.0)); assert (0.0 <= ((b - 1.0) * (b - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(c - a) ^ (2 : ℕ) * -a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - a) * (c - a)) * a)); (12.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && (0.0 <= a) { cert_piece_50(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(c - a) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_51(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= ((a - b) * (a - b))) && (0.0 <= ((c - 1.0) * (c - 1.0))) { cert_piece_52(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
          SqNonneg((c - 1.0)); assert (0.0 <= ((c - 1.0) * (c - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(a - b) ^ (2 : ℕ) * -b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - b) * (a - b)) * b)); (12.0 > 0.0)
          if (0.0 <= ((a - b) * (a - b))) && (0.0 <= b) { cert_piece_53(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(a - b) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((a - b) * (a - b))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_54(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= ((b - c) * (b - c))) { cert_piece_55(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((a - 1.0)); assert (0.0 <= ((a - 1.0) * (a - 1.0)));  // cert: sq_nonneg
          SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(a - (1 : ℝ)) ^ (2 : ℕ) * -b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - 1.0) * (a - 1.0)) * b)); (180.0 > 0.0)
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= b) { cert_piece_56(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(a - (1 : ℝ)) ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - 1.0) * (a - 1.0)) * (a * b))); (24.0 > 0.0)
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= (a * b)) { cert_piece_57(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(b - c) ^ (2 : ℕ) * -c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - c) * (b - c)) * c)); (12.0 > 0.0)
          if (0.0 <= ((b - c) * (b - c))) && (0.0 <= c) { cert_piece_58(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(b - c) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((b - c) * (b - c))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_59(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * a)); (180.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= a) { cert_piece_60(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -(c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * (c * a))); (24.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= (c * a)) { cert_piece_61(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(b - (1 : ℝ)) ^ (2 : ℕ) * -c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - 1.0) * (b - 1.0)) * c)); (180.0 > 0.0)
          if (0.0 <= ((b - 1.0) * (b - 1.0))) && (0.0 <= c) { cert_piece_62(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(b - (1 : ℝ)) ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - 1.0) * (b - 1.0)) * (b * c))); (24.0 > 0.0)
          if (0.0 <= ((b - 1.0) * (b - 1.0))) && (0.0 <= (b * c)) { cert_piece_63(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-a * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= a) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_64(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-a * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < a) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_65(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-b * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= b) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_66(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-b * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < b) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_67(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-c * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= c) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_68(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-c * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < c) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_69(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(40 : ℝ) * -(((3 : ℝ) - (a * b + b * c + c * a)) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a))))); (40.0 > 0.0)
          if ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_70(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(52 : ℝ) * -(((3 : ℝ) - (a + b + c)) * ((3 : ℝ) - (a + b + c))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c)))); (52.0 > 0.0)
          if ((3.0 - ((a + b) + c)) <= 0.0) { cert_piece_71(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×19: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…`
          // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…`
          // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_72(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×39 [exec 1546 7925-8057]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×6, mul_pos_of_neg_of_neg ×3, sub_nonpos_of_le ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], sq_nonneg [Lean recorded ×6])
          // UNCITED-APPLIED internal ×5 [exec 1549 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1550 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1551 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1552 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1553 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1554 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1555 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1556 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1557 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1558 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1559 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1560 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1561 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1562 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1563 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1564 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1565 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1566 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1567 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1568 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1569 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg((c - a));  // cite: sq_nonneg
          SqNonneg((b - 1.0));  // cite: sq_nonneg
          SqNonneg((a - b));  // cite: sq_nonneg
          SqNonneg((c - 1.0));  // cite: sq_nonneg
          SqNonneg((a - 1.0));  // cite: sq_nonneg
          SqNonneg((b - c));  // cite: sq_nonneg
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1547)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1548, 1549, 1550, 1551, 1552, 1553 … / `ring1` exec 1547)]
          if ((-(a)) < (0.0)) { LeOfLt(-(a), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-(b)) < (0.0)) { LeOfLt(-(b), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-(c)) < (0.0)) { LeOfLt(-(c), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((c * a))) < (0.0)) { LeOfLt(-((c * a)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×302 [exec 1547 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+43 more heads, ×270) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1548 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 1509 7867-7918]
      }
    }
    // have h₉₁ : ( 2 * Real.sqrt ( 2 ) * a ) / ( a + b + 2 ) + ( 2 * Real.sqrt ( 2 ) *   [type from Lean state]
    assert (((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) == ((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))))) by { // @tac 8340-8585 // @tac 8340-8565 // @tac 8340-8547 // @tac 8340-8447 // @tac 8340-8429
      // [TACTIC: «_<;>_» [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ] field_simp [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ] <;> ring_nf ring_nf <;> field_simp [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ] field_simp [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ] <;> ring_nf ring_nf <;> nlinarith nlinarith]
      // [TACTIC: choice [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ] field_simp [ h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' , h₈₃.ne' , h₈₄.ne' ]]
      assert (0.0 < (((a + b) + 2.0))) && (0.0 < (((b + c) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(((a + b) + 2.0), ((b + c) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)))) && (0.0 < (((c + a) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      // UNCITED h₈₃.ne': a projection of the local hypothesis h₈₃ handed to the tactic; its fact is not stated here
      // UNCITED h₈₄.ne': a projection of the local hypothesis h₈₄ handed to the tactic; its fact is not stated here
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 8340-8429 exec 1606)
      if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_73(a, b, c); }  // cert: mul_pos
      if (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0))) && (0.0 < ((c + a) + 2.0)) { cert_piece_74(a, b, c); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×44 [exec 1606 8340-8429]: applications made inside the tactic's own automation, not stated — add_pos ×6, ne_of_gt ×5, div_mul_eq_mul_div ×5, add_div' ×4, div_add' ×4, div_div ×4, Mathlib.Meta.Positivity.pos_of_isNat ×1, mul_div_assoc' ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×6, Eq.trans ×5, Mathlib.Meta.NormNum.isNat_ofNat ×1, of_eq_true ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
      assert (((((((2.0 * Real.sqrt(2.0)) * a) * ((b + c) + 2.0)) + (((2.0 * Real.sqrt(2.0)) * b) * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (((2.0 * Real.sqrt(2.0)) * c) * (((a + b) + 2.0) * ((b + c) + 2.0)))) == ((2.0 * Real.sqrt(2.0)) * ((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 8440-8447
        PowOne(Real.sqrt(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×178 [exec 1615 8440-8447]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+27 more heads, ×145) (cited in this block, not counted here: pow_one [Lean recorded ×4])
      }
    }
    // [TACTIC: rwSeq [ h₉₁ ]]
    // UNCITED-APPLIED congrArg((2 : ℝ) * √(2 : ℝ) * a / (a + b + (2 : ℝ)) + (2 : ℝ) * √(2 : ℝ) * b /…, (2 : ℝ) * √(2 : ℝ) * (a / (a + b + (2 : ℝ)) + b / (b + c + (2 : ℝ)) +…, fun (_a : ℝ) => _a ≥ (3 : ℝ) / √(2 : ℝ)): no library counterpart (not stated) [exec 1638 8590-8602]
    assert (((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)))) >= Real.div(3.0, Real.sqrt(2.0))) by {  // sub-goal before `have` (Lean state) // @tac 8607-8761 // @tac 8766-9052 // @tac 9057-9423 // @tac 9428-9505 // @tac 9510-9853 // @tac 9858-9866
      // have h₉₂ : 2 * Real.sqrt ( 2 ) * ( a / ( a + b + 2 ) + b / ( b + c + 2 ) + c / (   [type from Lean state]
      assert (((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)))) >= ((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0))) by { // @tac 8736-8761 // @tac 8736-8742
        // [TACTIC: «_<;>_» <;> linarith linarith]
        // [TACTIC: Gcongr]
        // gcongr: side goal 0 ≤ c (Lean: positivity), main goal X ≤ Y (Lean: closed by assumption inside gcongr), then mul_le_mul_of_nonneg_left
        assert (0.0 <= (2.0 * Real.sqrt(2.0)));  // side goal of `gcongr` (Lean state)
        assert (3.0 / 4.0) <= ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)));  // sub-goal of `gcongr` (its main goal X <= Y, split from the Lean state X*c <= Y*c; Lean closed it by assumption)
        gcongr_mul_le_mul_left((3.0 / 4.0), ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))), (2.0 * Real.sqrt(2.0)));  // gcongr: mul_le_mul_of_nonneg_left
        assert ((0.0) < ((2.0 * Real.sqrt(2.0))));  // precondition of LeOfLt (Lean: le_of_lt)
        LeOfLt(0.0, (2.0 * Real.sqrt(2.0)));  // cite: le_of_lt [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 1688)]
        if (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0))) { MulPos(2.0, Real.sqrt(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 1688)]
        // positivity proof (Lean execution 8736-8742 exec 1688): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
        // UNCITED-APPLIED internal ×1 [exec 1686 8736-8742]: applications made inside the tactic's own automation, not stated — mul_le_mul_of_nonneg_left ×1
        // UNCITED-APPLIED internal ×3 [exec 1688 8736-8742]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1])
        // `gcongr` closed the goal; the rest of the chain did not run
      }
      // have h₉₃ : 2 * Real.sqrt ( 2 ) * ( 3 / 4 ) == 3 / Real.sqrt ( 2 ) * ( Real.sqrt (  [type from Lean state]
      assert (((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0)) == (Real.div(3.0, Real.sqrt(2.0)) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) / 2.0))) by { // @tac 8871-9052 // @tac 8871-8990 // @tac 8871-8934 // @tac 8871-8916
        // [TACTIC: «_<;>_» [ Real.sqrt_eq_iff_sq_eq , mul_comm ] field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ] field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ] <;> nlinarith [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ] nlinarith [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
        // [TACTIC: choice [ Real.sqrt_eq_iff_sq_eq , mul_comm ] field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ]]
        // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED mul_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (2 : ℝ) * √(2 : ℝ), b := (3 / 4 : ℝ)); (a := (3 : ℝ) / √(2 : ℝ), b := (1 : ℝ)); (a := (3 : ℝ) * ((2 : ℝ) * √(2 : ℝ)) / (4 : ℝ), b := √(2 : ℝ))
        if ((0.0) < (2.0)) { LeOfLt(0.0, 2.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×29 [exec 1726 8871-8916]: applications made inside the tactic's own automation, not stated — mul_comm ×3, mul_div_assoc' ×2, div_mul_eq_mul_div ×1, Real.mul_self_sqrt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_self ×1, one_mul ×1, ne_of_gt ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.isNat_eq_false ×2 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], le_of_lt [Lean recorded ×1])
        assert ((Real.sqrt(2.0) * (3.0 * (2.0 * Real.sqrt(2.0)))) == (3.0 * 4.0)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 8927-8934
          assert (((Real.sqrt(2.0) * Real.sqrt(2.0)) * 6.0) == 12.0) by {  // sub-goal of `field_simp` (Lean state) // @tac 8945-8990
            // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED mul_comm: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
            if (0.0 <= (2.0)) { RealSqSqrt(2.0); }  // cite: Real.sq_sqrt [applied by the tactic, not named in it]
            // cite: le_of_lt [same instance stated in an enclosing scope: if ((0.0) < (2.0)) { LeOfLt(0.0, 2.0); }]
            assert ((2.0 * 6.0) == 12.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 9001-9052
              assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 9042-9050
                // [TACTIC: «Norm_num[_]At___»]
              }
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
              // UNCITED-APPLIED internal ×7 [exec 1753 9001-9052]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
              // UNCITED-APPLIED internal ×34 [exec 1771 9001-9052]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+22 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×34 [exec 1784 9001-9052]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+22 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // UNCITED-APPLIED internal ×3 [exec 1744 8945-8990]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: congrArg ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], le_of_lt [Lean recorded ×1])
          }
          // UNCITED-APPLIED internal ×51 [exec 1735 8927-8934]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+16 more heads, ×33)
        }
      }
      // have h₉₄ : 3 / Real.sqrt ( 2 ) * ( Real.sqrt ( 2 ) * Real.sqrt ( 2 ) / 2 ) == 3 /  [type from Lean state]
      assert ((Real.div(3.0, Real.sqrt(2.0)) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) / 2.0)) == (Real.div(3.0, Real.sqrt(2.0)) * 1.0)) by { // @tac 9158-9268 // @tac 9275-9423 // @tac 9275-9361 // @tac 9275-9305 // @tac 9275-9287
        // have h₉₅ : Real.sqrt ( 2 ) * Real.sqrt ( 2 ) == 2  [type from Lean state]
        assert ((Real.sqrt(2.0) * Real.sqrt(2.0)) == 2.0) by { // @tac 9217-9268
          assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 9258-9266
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1822 9258-9266]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9217-9268 exec 1817)
          cert_identity_75(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
          cert_identity_76(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×11 [exec 1817 9217-9268]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×65 [exec 1844 9217-9268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+37 more heads, ×53) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×62 [exec 1866 9217-9268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.add_mul ×2 (+37 more heads, ×53) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1844, 1866)]
          assert (0.0 <= (2.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(2.0);  // cite: Real.sq_sqrt
        }
        // [TACTIC: «_<;>_» [ h₉₅ ] rw [ h₉₅ ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ] field_simp [ Real.sqrt_eq_iff_sq_eq , mul_comm ] <;> nlinarith [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ] nlinarith [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
        // [TACTIC: choice [ h₉₅ ] rw [ h₉₅ ]]
        // UNCITED-APPLIED congrArg(√(2 : ℝ) * √(2 : ℝ), (2 : ℝ), fun (_a : ℝ) => (3 : ℝ) / √(2 : ℝ) * (_a / (2 : ℝ)) = (3 : ℝ) / √(2 :…): no library counterpart (not stated) [exec 1886 9275-9287]
        assert ((Real.div(3.0, Real.sqrt(2.0)) * (2.0 / 2.0)) == (Real.div(3.0, Real.sqrt(2.0)) * 1.0)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 9298-9305
          PowOne(Real.div(1.0, Real.sqrt(2.0)));  // cite: pow_one [applied by the tactic, not named in it]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×64 [exec 1921 9298-9305]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+29 more heads, ×49) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×1])
        }
        // [TACTIC: «Norm_num[_]At___»]
      }
      // have h₉₅ : 3 / Real.sqrt ( 2 ) * 1 == 3 / Real.sqrt ( 2 )  [type from Lean state]
      assert ((Real.div(3.0, Real.sqrt(2.0)) * 1.0) == Real.div(3.0, Real.sqrt(2.0))) by { // @tac 9501-9505
        // [TACTIC: Ring]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1954)]
        // UNCITED-APPLIED internal ×31 [exec 1954 9501-9505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.mul_pf_right ×2, Mathlib.Tactic.Ring.add_mul ×2 (+20 more heads, ×23) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      }
      // have h₉₆ : 2 * Real.sqrt ( 2 ) * ( 3 / 4 ) >= 3 / Real.sqrt ( 2 )  [type from Lean state]
      assert (((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0)) >= Real.div(3.0, Real.sqrt(2.0))) by { // @tac 9583-9648 // @tac 9655-9706 // @tac 9713-9737
        // have h₉₇ : 0 < Real.sqrt ( 2 )  [type from Lean state]
        assert (0.0 < Real.sqrt(2.0)) by {
          assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 9639-9647
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1985 9639-9647]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: exact Real.sqrt_pos.mpr ( ( by norm_num norm_num ) )]
          assert (0.0 < (2.0));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
          RealSqrtPosMpr(2.0);  // cite: Real.sqrt_pos.mpr
          // UNCITED-APPLIED Real.sqrt_pos((2 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 1980 9583-9648]
        }
        // have h₉₈ : 0 < Real.sqrt ( 2 ) ^ 2  [type from Lean state]
        assert (0.0 < (Real.sqrt(2.0) * Real.sqrt(2.0))) by { // @tac 9696-9706
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 9696-9706 exec 2004): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (Real.sqrt(2.0) * Real.sqrt(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×3 [exec 2004 9696-9706]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (Real.sqrt(2.0)));  // precondition of PowPos (Lean: pow_pos)
          PowPos(Real.sqrt(2.0), 2);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        // [TACTIC: «Field_simp[_]At___» [ h₉₇.ne' ]]
        // UNCITED h₉₇.ne': a projection of the local hypothesis h₉₇ handed to the tactic; its fact is not stated here
        // UNCITED-APPLIED internal ×3 [exec 2005 9713-9737]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1; machinery/glue: Eq.trans ×1, congrArg ×1
        assert (Real.div(3.0, Real.sqrt(2.0)) <= (((2.0 * Real.sqrt(2.0)) * 3.0) / 4.0)) by {  // sub-goal before `rw` (Lean state) // @tac 9744-9795
          assert (0.0 < Real.sqrt(2.0)) by {  // sub-goal of `by` (Lean state) // @tac 9767-9777
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×3 [exec 2017 9767-9777]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          }
          assert (0.0 < 4.0) by {  // sub-goal of `by` (Lean state) // @tac 9783-9793
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×2 [exec 2022 9783-9793]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          }
          // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
          assert (0.0 < (Real.sqrt(2.0))) && (0.0 < (4.0));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
          DivLeDivIff(3.0, Real.sqrt(2.0), ((2.0 * Real.sqrt(2.0)) * 3.0), 4.0);  // cite: div_le_div_iff
          assert ((3.0 * 4.0) <= (((2.0 * Real.sqrt(2.0)) * 3.0) * Real.sqrt(2.0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 9802-9853
            assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 9843-9851
              // [TACTIC: «Norm_num[_]At___»]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 2052 9843-9851]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9802-9853 exec 2047)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * -(√(2 : ℝ) ^ (2 : ℕ) - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)) == 0.0); (6.0 > 0.0)
            cert_identity_77(a, b, c);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×8 [exec 2047 9802-9853]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, sub_neg_of_lt ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_eq ×1 (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
            // UNCITED-APPLIED internal ×126 [exec 2081 9802-9853]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.add_mul ×6 (+41 more heads, ×100) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 2082 9802-9853]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2082 / `ring1` exec 2081)]
            assert (0.0 <= (2.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
            RealSqSqrt(2.0);  // cite: Real.sq_sqrt
          }
          // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2010 9744-9795]
        }
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9858-9866 exec 2083)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * (3 / 4 : ℝ) - (2 : ℝ) * √(2 : ℝ) * (a / (a + b + (2 : ℝ)) + b / (b + c + (2 : ℝ)) + c /…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0)) - ((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))))) <= 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * (3 / 4 : ℝ) - (3 : ℝ) / √(2 : ℝ) * (√(2 : ℝ) * √(2 : ℝ) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0)) - (Real.div(3.0, Real.sqrt(2.0)) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) / 2.0))) == 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) * ((3 : ℝ) / √(2 : ℝ)) * ((1 : ℝ) * √(2 : ℝ) * ((1 : ℝ) * √(2 : ℝ))) - (1 : ℝ) * ((3 : ℝ) / √(2 : ℝ…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((1.0 * Real.div(3.0, Real.sqrt(2.0))) * ((1.0 * Real.sqrt(2.0)) * (1.0 * Real.sqrt(2.0)))) - ((1.0 * Real.div(3.0, Real.sqrt(2.0))) * (2.0 * 1.0)))) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((3 : ℝ) / √(2 : ℝ) * (√(2 : ℝ) * √(2 : ℝ) / (2 : ℝ)) - (3 : ℝ) / √(2 : ℝ) * (1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.div(3.0, Real.sqrt(2.0)) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) / 2.0)) - (Real.div(3.0, Real.sqrt(2.0)) * 1.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * √(2 : ℝ)) * ((1 : ℝ) * (a / (a + b + (2 : ℝ))) + (1 : ℝ) * (b / (b + c + (2 :…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((1.0 * 2.0) * (1.0 * Real.sqrt(2.0))) * (((1.0 * Real.div(a, ((a + b) + 2.0))) + (1.0 * Real.div(b, ((b + c) + 2.0)))) + (1.0 * Real.div(c, ((c + a) + 2.0))))) - (1.0 * Real.div(3.0, Real.sqrt(2.0)))) < 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * √(2 : ℝ)) * ((1 : ℝ) * (3 : ℝ)) - (1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * √(2 : ℝ)) * ((4 : ℝ) * …`
      cert_identity_78(a, b, c);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×38 [exec 2083 9858-9866]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×8, CancelDenoms.sub_subst ×4, CancelDenoms.add_subst ×4, CancelDenoms.div_subst ×3, neg_eq_zero ×2, sub_eq_zero_of_eq ×2, le_of_not_gt ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×3, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×208 [exec 2119 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+42 more heads, ×176) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2084 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 2087 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2088 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2089 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2085 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2100 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2086 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 2099 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2101 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2105 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2094 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 2093 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2104 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×6 [exec 2109 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2106 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2091 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 2103 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2095 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2096 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 2102 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2097 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2120 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2092 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2098 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 2113 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2084, 2085, 2086, 2087, 2088, 2089 … / `ring1` exec 2119)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2090, 2097, 2106, 2113, 2120 / `ring1` exec 2119)]
      // UNCITED-APPLIED internal ×5 [exec 2090 9858-9866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
  // have h₉ : 3 / Real.sqrt ( 2 ) <= a / Real.sqrt ( ( a + b ) ) + b / Real.sqrt ( (  [type from Lean state]
  assert (Real.div(3.0, Real.sqrt(2.0)) <= ((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a))))) by { // @tac 9984-10192 // @tac 10197-10351 // @tac 10356-10364
    // have h₉₁ : a / Real.sqrt ( ( a + b ) ) + b / Real.sqrt ( ( b + c ) ) + c / Real.s  [type from Lean state]
    assert (((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a)))) >= ((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0)))) by {
      // [TACTIC: exact h₇]
      assert (((Real.div(a, Real.sqrt((a + b))) + Real.div(b, Real.sqrt((b + c)))) + Real.div(c, Real.sqrt((c + a)))) >= ((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))));
    }
    // have h₉₂ : ( 2 * Real.sqrt ( 2 ) * a ) / ( a + b + 2 ) + ( 2 * Real.sqrt ( 2 ) *   [type from Lean state]
    assert (((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) >= Real.div(3.0, Real.sqrt(2.0))) by {
      // [TACTIC: exact h₈]
      assert (((Real.div(((2.0 * Real.sqrt(2.0)) * a), ((a + b) + 2.0)) + Real.div(((2.0 * Real.sqrt(2.0)) * b), ((b + c) + 2.0))) + Real.div(((2.0 * Real.sqrt(2.0)) * c), ((c + a) + 2.0))) >= Real.div(3.0, Real.sqrt(2.0)));
    }
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10356-10364 exec 2162)
    // UNCITED-APPLIED add_nonpos ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * a / (a + b + (2 : ℝ))) - (1 : ℝ) * (a / √(a + b)) + ((1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * b …`
    cert_identity_79(a, b, c);  // cert: add_lt_of_le_of_neg
    // UNCITED-APPLIED internal ×28 [exec 2162 10356-10364]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×5, sub_nonpos_of_le ×4, CancelDenoms.add_subst ×4, add_nonpos ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×5, Linarith.without_one_mul ×5, Linarith.lt_irrefl ×1
    // UNCITED-APPLIED internal ×198 [exec 2163 10356-10364]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+38 more heads, ×166) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2163)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2163)]
  }
  // [TACTIC: «Linarith[_]At___»]
  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10370-10378 exec 2164)
  // UNCITED-APPLIED add_nonpos ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * a / (a + b + (2 : ℝ))) - (1 : ℝ) * (a / √(a + b)) + ((1 : ℝ) * ((2 : ℝ) * √(2 : ℝ) * b …`
  cert_identity_80(a, b, c);  // cert: add_lt_of_le_of_neg
  // UNCITED-APPLIED internal ×28 [exec 2164 10370-10378]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×5, sub_nonpos_of_le ×4, CancelDenoms.add_subst ×4, add_nonpos ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×5, Linarith.without_one_mul ×5, Linarith.lt_irrefl ×1
  // UNCITED-APPLIED internal ×198 [exec 2165 10370-10378]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+38 more heads, ×166) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2165)]
  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2165)]
}



// ===== closed lemma for line 62 (from closed/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-62.dfy) =====

lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L62(a: real, b: real, c: real)
  requires 0.0 < c
  requires a + b + c - 3.0 < 0.0
  ensures   c * (a + b + c - 3.0) < 0.0
{
  forall s: real {:trigger Real.div(s, 1.0)} | s == a + b + c - 3.0  // [ADDED]
    ensures c * s < 0.0  // [ADDED]
  {
    MulPos(c, -s);  // [ADDED]
    MulNeg(c, s);  // [ADDED]
    assert c * (-s) == -(c * s);  // [ADDED]
  }
  assert Real.div(a + b + c - 3.0, 1.0) == a + b + c - 3.0;  // [ADDED]
  assert c * (a + b + c - 3.0) < 0.0;  // [ADDED]
}
