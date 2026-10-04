// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_9onxpypzleqsum2onxpy.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real, y: real, z: real)
  ensures ((-(x) + -(y)) + (x + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real, y: real, z: real)
  ensures ((-(y) + -(z)) + (y + z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real, y: real, z: real)
  ensures ((-(x) + -(z)) + (z + x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real, y: real, z: real)
  ensures (((-(x) + -(y)) + -(z)) + ((x + y) + z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(x: real, y: real, z: real)
  requires (0.0 < ((x + y) * (y + z)))
  requires (0.0 < (z + x))
  ensures (0.0 < (((x + y) * (y + z)) * (z + x)))
{
  MulPos(((x + y) * (y + z)), (z + x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_7(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(x: real, y: real, z: real)
  requires (0.0 < (y + z))
  requires (0.0 < (z + x))
  ensures (0.0 < ((y + z) * (z + x)))
{
  MulPos((y + z), (z + x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₈`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(x: real, y: real, z: real)
  requires (0.0 < (z + x))
  requires (0.0 < (x + y))
  ensures (0.0 < ((z + x) * (x + y)))
{
  MulPos((z + x), (x + y));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: real, y: real, z: real)
  ensures ((-(x) + -(y)) + (x + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: real, y: real, z: real)
  ensures ((-(y) + -(z)) + (y + z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: real, y: real, z: real)
  ensures ((-(x) + -(z)) + (z + x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₉/h₉₄`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉/h₉₅`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(x: real, y: real, z: real)
  requires (0.0 < (y + z))
  requires (0.0 < (z + x))
  ensures (0.0 < ((y + z) * (z + x)))
{
  MulPos((y + z), (z + x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉/h₉₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(x: real, y: real, z: real)
  requires (0.0 < (z + x))
  requires (0.0 < (x + y))
  ensures (0.0 < ((z + x) * (x + y)))
{
  MulPos((z + x), (x + y));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_17(x: real, y: real, z: real)
  requires (0.0 < ((x + y) * (y + z)))
  requires (0.0 < (z + x))
  ensures (0.0 < (((x + y) * (y + z)) * (z + x)))
{
  MulPos(((x + y) * (y + z)), (z + x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_19(x: real, y: real, z: real)
  requires (0.0 <= ((((x + y) - y) - z) * (((x + y) - y) - z)))
  requires (0.0 <= x)
  ensures (0.0 <= (((((x + y) - y) - z) * (((x + y) - y) - z)) * x))
{
  MulNonneg(((((x + y) - y) - z) * (((x + y) - y) - z)), x);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(x: real, y: real, z: real)
  requires (0.0 <= ((((x + y) - y) - z) * (((x + y) - y) - z)))
  requires (0.0 <= z)
  ensures (0.0 <= (((((x + y) - y) - z) * (((x + y) - y) - z)) * z))
{
  MulNonneg(((((x + y) - y) - z) * (((x + y) - y) - z)), z);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_21(x: real, y: real, z: real)
  requires (0.0 <= ((y - z) * (y - z)))
  requires (0.0 <= y)
  ensures (0.0 <= (((y - z) * (y - z)) * y))
{
  MulNonneg(((y - z) * (y - z)), y);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_22(x: real, y: real, z: real)
  requires (0.0 <= ((y - z) * (y - z)))
  requires (0.0 <= z)
  ensures (0.0 <= (((y - z) * (y - z)) * z))
{
  MulNonneg(((y - z) * (y - z)), z);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(x: real, y: real, z: real)
  requires (0.0 <= ((((y + z) - z) - x) * (((y + z) - z) - x)))
  requires (0.0 <= x)
  ensures (0.0 <= (((((y + z) - z) - x) * (((y + z) - z) - x)) * x))
{
  MulNonneg(((((y + z) - z) - x) * (((y + z) - z) - x)), x);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(x: real, y: real, z: real)
  requires (0.0 <= ((((y + z) - z) - x) * (((y + z) - z) - x)))
  requires (0.0 <= y)
  ensures (0.0 <= (((((y + z) - z) - x) * (((y + z) - z) - x)) * y))
{
  MulNonneg(((((y + z) - z) - x) * (((y + z) - z) - x)), y);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(x: real, y: real, z: real)
  ensures (((((((((2.0 * ((x + y) + z)) * ((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z)))) - (9.0 * (((x + y) * (y + z)) * (z + x)))) + -((((((x + y) - y) - z) * (((x + y) - y) - z)) * x))) + -((((((x + y) - y) - z) * (((x + y) - y) - z)) * z))) + -((((y - z) * (y - z)) * y))) + -((((y - z) * (y - z)) * z))) + -((((((y + z) - z) - x) * (((y + z) - z) - x)) * x))) + -((((((y + z) - z) - x) * (((y + z) - z) - x)) * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(x: real, y: real, z: real)
  ensures (((-(x) + -(y)) + -(z)) + ((x + y) + z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(x: real, y: real, z: real)
  ensures ((-(x) + -(y)) + (x + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(x: real, y: real, z: real)
  ensures ((-(y) + -(z)) + (y + z)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(x: real, y: real, z: real)
  ensures ((-(x) + -(z)) + (z + x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_30(x: real, y: real, z: real)
  requires (0.0 < (x + y))
  requires (0.0 < (y + z))
  ensures (0.0 < ((x + y) * (y + z)))
{
  MulPos((x + y), (y + z));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_31(x: real, y: real, z: real)
  requires (0.0 < (((x + y) * (y + z)) * (z + x)))
  requires (0.0 < (2.0 * ((x + y) + z)))
  ensures (0.0 < ((((x + y) * (y + z)) * (z + x)) * (2.0 * ((x + y) + z))))
{
  MulPos((((x + y) * (y + z)) * (z + x)), (2.0 * ((x + y) + z)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_32(x: real, y: real, z: real)
  requires (0.0 < ((x + y) * (y + z)))
  requires (0.0 < (z + x))
  ensures (0.0 < (((x + y) * (y + z)) * (z + x)))
{
  MulPos(((x + y) * (y + z)), (z + x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(x: real, y: real, z: real)
  requires (0.0 <= x)
  requires (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0)
  ensures ((x * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0)
{
  MulNonneg(x, -(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))); MulNeg(x, ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))); assert (x) * (-(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))) == -((x) * (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_34(x: real, y: real, z: real)
  requires (0.0 <= y)
  requires (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0)
  ensures ((y * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0)
{
  MulNonneg(y, -(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))); MulNeg(y, ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))); assert (y) * (-(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))) == -((y) * (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_35(x: real, y: real, z: real)
  requires (0.0 <= z)
  requires (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0)
  ensures ((z * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0)
{
  MulNonneg(z, -(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))); MulNeg(z, ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))); assert (z) * (-(((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))))) == -((z) * (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(x: real, y: real, z: real)
  ensures ((((((((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))) * ((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z)))) - ((1.0 * 9.0) * ((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))))) + (2.0 * (x * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))))) + (2.0 * (y * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))))) + (2.0 * (z * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(x: real, y: real, z: real)
  ensures (((1.0 * Real.div(9.0, (2.0 * ((x + y) + z)))) - (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))) + ((((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))) - (1.0 * Real.div(9.0, (2.0 * ((x + y) + z)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(x: real, y: real, z: real)
  ensures ((2.0 * ((1.0 * Real.div(9.0, (2.0 * ((x + y) + z)))) - (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) + (((1.0 * 2.0) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))) - ((1.0 * 2.0) * (1.0 * Real.div(9.0, (2.0 * ((x + y) + z))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(x: real, y: real, z: real)
  ensures (((1.0 * Real.div(9.0, ((x + y) + z))) - (((1.0 * Real.div(2.0, (x + y))) + (1.0 * Real.div(2.0, (y + z)))) + (1.0 * Real.div(2.0, (z + x))))) + ((((1.0 * Real.div(2.0, (x + y))) + (1.0 * Real.div(2.0, (y + z)))) + (1.0 * Real.div(2.0, (z + x)))) - (1.0 * Real.div(9.0, ((x + y) + z))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_9onxpypzleqsum2onxpy(x: real, y: real, z: real)
  requires ((0.0 < x) && ((0.0 < y) && (0.0 < z)))
  ensures (Real.div(9.0, ((x + y) + z)) <= ((Real.div(2.0, (x + y)) + Real.div(2.0, (y + z))) + Real.div(2.0, (z + x)))) // @tac 370-406 // @tac 409-445 // @tac 448-484 // @tac 487-527 // @tac 530-590 // @tac 593-643 // @tac 646-696 // @tac 699-749 // @tac 752-1391 // @tac 1397-2669 // @tac 2675-3211 // @tac 3217-3310 // @tac 3316-3329
{
  // have h₁ : 0 < x + y  [type from Lean state]
  assert (0.0 < (x + y)) by { // @tac 398-406
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 398-406 exec 20)
    // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -y < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_1(x, y, z);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×8 [exec 20 398-406]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×32 [exec 21 398-406]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 21)]
  }
  // have h₂ : 0 < y + z  [type from Lean state]
  assert (0.0 < (y + z)) by { // @tac 437-445
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 437-445 exec 38)
    // UNCITED-APPLIED Left.add_neg: certificate sum `-y + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_2(x, y, z);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×8 [exec 38 437-445]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×32 [exec 39 437-445]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 39)]
  }
  // have h₃ : 0 < z + x  [type from Lean state]
  assert (0.0 < (z + x)) by { // @tac 476-484
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 476-484 exec 56)
    // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_3(x, y, z);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×8 [exec 56 476-484]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×32 [exec 57 476-484]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+19 more heads, ×23) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 57)]
  }
  // have h₄ : 0 < x + y + z  [type from Lean state]
  assert (0.0 < ((x + y) + z)) by { // @tac 519-527
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 519-527 exec 74)
    // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-x + -y + -z < (0 : ℝ)`
    cert_identity_4(x, y, z);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×10 [exec 74 519-527]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×46 [exec 75 519-527]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 75)]
  }
  // have h₅ : 0 < ( x + y ) * ( y + z ) * ( z + x )  [type from Lean state]
  assert (0.0 < (((x + y) * (y + z)) * (z + x))) by { // @tac 580-590
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 580-590 exec 92)
    if (0.0 < ((x + y) * (y + z))) && (0.0 < (z + x)) { cert_piece_5(x, y, z); }  // cert: mul_pos
    if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_6(x, y, z); }  // cert: mul_pos
    assert (0.0 < (((x + y) * (y + z)))) && (0.0 < ((z + x)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((x + y) * (y + z)), (z + x));  // cite: mul_pos [applied by the tactic, not named in it]
    assert (0.0 < ((x + y))) && (0.0 < ((y + z)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((x + y), (y + z));  // cite: mul_pos [applied by the tactic, not named in it]
  }
  // have h₆ : 0 < ( x + y ) * ( y + z )  [type from Lean state]
  assert (0.0 < ((x + y) * (y + z))) by { // @tac 633-643
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 633-643 exec 109)
    if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_7(x, y, z); }  // cert: mul_pos
    assert (0.0 < ((x + y))) && (0.0 < ((y + z)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((x + y), (y + z));  // cite: mul_pos [applied by the tactic, not named in it]
  }
  // have h₇ : 0 < ( y + z ) * ( z + x )  [type from Lean state]
  assert (0.0 < ((y + z) * (z + x))) by { // @tac 686-696
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 686-696 exec 126)
    if (0.0 < (y + z)) && (0.0 < (z + x)) { cert_piece_8(x, y, z); }  // cert: mul_pos
    assert (0.0 < ((y + z))) && (0.0 < ((z + x)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((y + z), (z + x));  // cite: mul_pos [applied by the tactic, not named in it]
  }
  // have h₈ : 0 < ( z + x ) * ( x + y )  [type from Lean state]
  assert (0.0 < ((z + x) * (x + y))) by { // @tac 739-749
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 739-749 exec 143)
    if (0.0 < (z + x)) && (0.0 < (x + y)) { cert_piece_9(x, y, z); }  // cert: mul_pos
    assert (0.0 < ((z + x))) && (0.0 < ((x + y)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((z + x), (x + y));  // cite: mul_pos [applied by the tactic, not named in it]
  }
  // have h₉ : 2 * ( x + y + z ) * ( 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) )   [type from Lean state]
  assert (((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= 9.0) by { // @tac 840-879 // @tac 884-923 // @tac 928-967 // @tac 972-1025 // @tac 1030-1083 // @tac 1088-1141 // @tac 1146-1196
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
    vc_algebra_9onxpypzleqsum2onxpy_L471(x, y, z);  /* [IN-FILE CHECK] the closed lemma for line 471 */
  }
  // have h₁₀ : ( 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) ) >= 9 / ( 2 * ( x + y  [type from Lean state]
  assert (((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x))) >= Real.div(9.0, (2.0 * ((x + y) + z)))) by { // @tac 1490-1536 // @tac 1541-1595 // @tac 1600-1642 // @tac 1647-1689 // @tac 1694-1736 // @tac 1802-2669
    // have h₁₀₁ : 0 < x + y + z  [type from Lean state]
    assert (0.0 < ((x + y) + z)) by { // @tac 1528-1536
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1528-1536 exec 336)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-x + -y + -z < (0 : ℝ)`
      cert_identity_26(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 336 1528-1536]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 339 1528-1536]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 339)]
    }
    // have h₁₀₂ : 0 < 2 * ( x + y + z )  [type from Lean state]
    assert (0.0 < (2.0 * ((x + y) + z))) by { // @tac 1585-1595
      // [TACTIC: Positivity]
      // positivity proof (Lean execution 1585-1595 exec 356): nothing of it stated; Lean's records:
      // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (x + y + z)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < ((x + y) + z))
      // UNCITED-APPLIED internal ×2 [exec 356 1585-1595]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (0.0 < (2.0)) && (0.0 < (((x + y) + z)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(2.0, ((x + y) + z));  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₁₀₃ : 0 < x + y  [type from Lean state]
    assert (0.0 < (x + y)) by { // @tac 1634-1642
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1634-1642 exec 373)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -y < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_27(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 373 1634-1642]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 376 1634-1642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 376)]
    }
    // have h₁₀₄ : 0 < y + z  [type from Lean state]
    assert (0.0 < (y + z)) by { // @tac 1681-1689
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1681-1689 exec 393)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-y + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_28(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 393 1681-1689]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 396 1681-1689]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 396)]
    }
    // have h₁₀₅ : 0 < z + x  [type from Lean state]
    assert (0.0 < (z + x)) by { // @tac 1728-1736
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1728-1736 exec 413)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-x + -z < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_29(x, y, z);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 413 1728-1736]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 416 1728-1736]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+19 more heads, ×23) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 416)]
    }
    // calc ( 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) ) ...  (carrier real from the Lean state; 1/2 steps typed)
    calc {
      ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)));
      >= {
        assert (((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x))) >= Real.div(9.0, (2.0 * ((x + y) + z)))) by {  // sub-goal before `have` (Lean state) // @tac 1960-2088 // @tac 2097-2627
          // have h₁₀₆ : 2 * ( x + y + z ) * ( 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) )   [type from Lean state]
          assert (((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= 9.0); // @tac 2060-2088
            // [TACTIC: simpa [ add_assoc ] using h₉]
            // UNCITED add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := x, b := y, c := z); (a := (x + y)⁻¹, b := (y + z)⁻¹, c := (z + x)⁻¹)
            // UNCITED-APPLIED internal ×14 [exec 438 2060-2088]: applications made inside the tactic's own automation, not stated — one_div ×3, add_assoc ×2; machinery/glue: congrArg ×4, congr ×3, Eq.trans ×2
          // calc ( 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) ) ...  (carrier real from the Lean state; 2/2 steps typed)
          calc {
            ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)));
            == {
              assert (((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x))) == Real.div(((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z)))) by {  // sub-goal before `field_simp` (Lean state) // @tac 2256-2401 // @tac 2256-2380 // @tac 2256-2320 // @tac 2256-2299
                // [TACTIC: «_<;>_» [ h₁₀₁.ne' , h₁₀₂.ne' ] field_simp [ h₁₀₁.ne' , h₁₀₂.ne' ] <;> ring <;> field_simp [ h₁₀₁.ne' , h₁₀₂.ne' ] field_simp [ h₁₀₁.ne' , h₁₀₂.ne' ] <;> ring]
                // [TACTIC: choice [ h₁₀₁.ne' , h₁₀₂.ne' ] field_simp [ h₁₀₁.ne' , h₁₀₂.ne' ]]
                assert (0.0 < ((x + y))) && (0.0 < ((y + z)));  // precondition of MulPos (Lean: mul_pos)
                MulPos((x + y), (y + z));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < ((((x + y) * (y + z)) * (z + x)))) && (0.0 < ((2.0 * ((x + y) + z))));  // precondition of MulPos (Lean: mul_pos)
                MulPos((((x + y) * (y + z)) * (z + x)), (2.0 * ((x + y) + z)));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < (((x + y) * (y + z)))) && (0.0 < ((z + x)));  // precondition of MulPos (Lean: mul_pos)
                MulPos(((x + y) * (y + z)), (z + x));  // cite: mul_pos [applied by the tactic, not named in it]
                if (0.0 < (2.0)) && (0.0 < (((x + y) + z))) { MulPos(2.0, ((x + y) + z)); }  // cite: mul_pos [applied by the tactic, not named in it]
                // UNCITED h₁₀₁.ne': a projection of the local hypothesis h₁₀₁ handed to the tactic; its fact is not stated here
                // UNCITED h₁₀₂.ne': a projection of the local hypothesis h₁₀₂ handed to the tactic; its fact is not stated here
                // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2256-2299 exec 459)
                if (0.0 < (x + y)) && (0.0 < (y + z)) { cert_piece_30(x, y, z); }  // cert: mul_pos
                if (0.0 < (((x + y) * (y + z)) * (z + x))) && (0.0 < (2.0 * ((x + y) + z))) { cert_piece_31(x, y, z); }  // cert: mul_pos
                if (0.0 < ((x + y) * (y + z))) && (0.0 < (z + x)) { cert_piece_32(x, y, z); }  // cert: mul_pos
                // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (x + y + z)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < ((x + y) + z))
                // UNCITED-APPLIED internal ×38 [exec 459 2256-2299]: applications made inside the tactic's own automation, not stated — ne_of_gt ×6, div_mul_eq_mul_div ×3, one_mul ×3, div_div ×3, add_div' ×2, div_add' ×2, mul_div_assoc' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×4])
                assert ((((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z))) * ((((x + y) * (y + z)) * (z + x)) * (2.0 * ((x + y) + z)))) == (((2.0 * ((x + y) + z)) * ((((y + z) + (x + y)) * (z + x)) + ((x + y) * (y + z)))) * (((x + y) * (y + z)) * (z + x))));  // sub-goal of `ring` (Lean state) // @tac 2316-2320
                // UNCITED-APPLIED internal ×146 [exec 472 2316-2320]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+20 more heads, ×114)
              }
            }
            Real.div(((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z)));
            >= {
              assert (Real.div(((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z))) >= Real.div(9.0, (2.0 * ((x + y) + z)))) by {  // sub-goal before `rw` (Lean state) // @tac 2527-2541
                // [TACTIC: rwSeq [ ge_iff_le ]]
                GeIffLe(Real.div(((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z))), Real.div(9.0, (2.0 * ((x + y) + z))));  // cite: ge_iff_le
                // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 493 2527-2541]
                assert (Real.div(9.0, (2.0 * ((x + y) + z))) <= Real.div(((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z)))) by {  // sub-goal before `rw` (Lean state) // @tac 2554-2605
                  assert (0.0 < (2.0 * ((x + y) + z))) by {  // sub-goal of `by` (Lean state) // @tac 2577-2587
                    // [TACTIC: Positivity]
                    // positivity proof (Lean execution 2577-2587 exec 531): nothing of it stated; Lean's records:
                    // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (x + y + z)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < ((x + y) + z))
                    // UNCITED-APPLIED internal ×2 [exec 531 2577-2587]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
                    assert (0.0 < (2.0)) && (0.0 < (((x + y) + z)));  // precondition of MulPos (Lean: mul_pos)
                    MulPos(2.0, ((x + y) + z));  // cite: mul_pos [applied by the tactic, not named in it]
                  }
                  assert (0.0 < (2.0 * ((x + y) + z))) by {  // sub-goal of `by` (Lean state) // @tac 2593-2603
                    // [TACTIC: Positivity]
                    // positivity proof (Lean execution 2593-2603 exec 536): nothing of it stated; Lean's records:
                    // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (x + y + z)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < ((x + y) + z))
                    // UNCITED-APPLIED internal ×2 [exec 536 2593-2603]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
                    assert (0.0 < (2.0)) && (0.0 < (((x + y) + z)));  // precondition of MulPos (Lean: mul_pos)
                    MulPos(2.0, ((x + y) + z));  // cite: mul_pos [applied by the tactic, not named in it]
                  }
                  // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
                  assert (0.0 < ((2.0 * ((x + y) + z)))) && (0.0 < ((2.0 * ((x + y) + z))));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
                  DivLeDivIff(9.0, (2.0 * ((x + y) + z)), ((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))), (2.0 * ((x + y) + z)));  // cite: div_le_div_iff
                  assert ((9.0 * (2.0 * ((x + y) + z))) <= (((2.0 * ((x + y) + z)) * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) * (2.0 * ((x + y) + z)))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2618-2627
                    // [TACTIC: «Nlinarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2618-2627 exec 561)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-x * ((1 : ℝ) * (9 : ℝ) - (1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * x + (1 : ℝ) * y + (1 : ℝ) * z) * ((1 : ℝ) * ((1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0); (2.0 > 0.0)
                    if (0.0 <= x) && (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0) { cert_piece_33(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-y * ((1 : ℝ) * (9 : ℝ) - (1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * x + (1 : ℝ) * y + (1 : ℝ) * z) * ((1 : ℝ) * ((1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((y * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0); (2.0 > 0.0)
                    if (0.0 <= y) && (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0) { cert_piece_34(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-z * ((1 : ℝ) * (9 : ℝ) - (1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * x + (1 : ℝ) * y + (1 : ℝ) * z) * ((1 : ℝ) * ((1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((z * ((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))))) <= 0.0); (2.0 > 0.0)
                    if (0.0 <= z) && (((1.0 * 9.0) - (((1.0 * 2.0) * (((1.0 * x) + (1.0 * y)) + (1.0 * z))) * (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x)))))) <= 0.0) { cert_piece_35(x, y, z); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * x + (1 : ℝ) * y + (1 : ℝ) * z) * ((1 : ℝ) * ((1 : ℝ) / (x + y)) + (1 : ℝ) * ((1 : ℝ) / (…`
                    cert_identity_36(x, y, z);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×27 [exec 561 2618-2627]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×4, CancelDenoms.add_subst ×4, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, neg_neg_of_pos ×3, le_of_not_gt ×1, sub_neg_of_lt ×1, CancelDenoms.sub_subst ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.without_one_mul ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×3])
                    // UNCITED-APPLIED internal ×207 [exec 572 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×175) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 562 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 563 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 564 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 565 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 566 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 567 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 568 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 569 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 570 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 571 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 574 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 575 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 562, 563, 564, 565, 566, 567 … / `ring1` exec 572)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 573, 574, 575 / `ring1` exec 572)]
                    if ((-(x)) < (0.0)) { LeOfLt(-(x), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                    if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                    if ((-(z)) < (0.0)) { LeOfLt(-(z), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                    // UNCITED-APPLIED internal ×5 [exec 573 2618-2627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  }
                  // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 524 2554-2605]
                }
              }
            }
            Real.div(9.0, (2.0 * ((x + y) + z)));
          }
        }
      }
      Real.div(9.0, (2.0 * ((x + y) + z)));
      == {
        assert (Real.div(9.0, (2.0 * ((x + y) + z))) == Real.div(9.0, (2.0 * ((x + y) + z)))) by {  // sub-goal before `rfl` (Lean state) // @tac 2666-2669
          // [TACTIC: Rfl]
        }
      }
      Real.div(9.0, (2.0 * ((x + y) + z)));
    }
  }
  // have h₁₁ : ( 2 / ( x + y ) + 2 / ( y + z ) + 2 / ( z + x ) ) >= 9 / ( x + y + z )  [type from Lean state]
  assert (((Real.div(2.0, (x + y)) + Real.div(2.0, (y + z))) + Real.div(2.0, (z + x))) >= Real.div(9.0, ((x + y) + z))) by { // @tac 2762-2884 // @tac 2889-2904
    // have h₁₁₁ : 2 / ( x + y ) + 2 / ( y + z ) + 2 / ( z + x ) == 2 * ( 1 / ( x + y ) +  [type from Lean state]
    assert (((Real.div(2.0, (x + y)) + Real.div(2.0, (y + z))) + Real.div(2.0, (z + x))) == (2.0 * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x))))) by { // @tac 2880-2884
      // [TACTIC: Ring]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 618)]
      // UNCITED-APPLIED internal ×76 [exec 618 2880-2884]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+14 more heads, ×47) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: rwSeq [ h₁₁₁ ]]
    // UNCITED-APPLIED congrArg((2 : ℝ) / (x + y) + (2 : ℝ) / (y + z) + (2 : ℝ) / (z + x), (2 : ℝ) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1 : ℝ) / (z + x)), fun (_a : ℝ) => _a ≥ (9 : ℝ) / (x + y + z)): no library counterpart (not stated) [exec 623 2889-2904]
    assert ((2.0 * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= Real.div(9.0, ((x + y) + z))) by {  // sub-goal before `have` (Lean state) // @tac 2909-3068 // @tac 3073-3088
      // have h₁₁₂ : 9 / ( x + y + z ) == 2 * ( 9 / ( 2 * ( x + y + z ) ) )  [type from Lean state]
      assert (Real.div(9.0, ((x + y) + z)) == (2.0 * Real.div(9.0, (2.0 * ((x + y) + z))))) by { // @tac 2985-3068 // @tac 2985-3053 // @tac 2985-3021 // @tac 2985-3006
        // [TACTIC: «_<;>_» [ h₄.ne' ] field_simp [ h₄.ne' ] <;> ring <;> field_simp [ h₄.ne' ] field_simp [ h₄.ne' ] <;> ring]
        // [TACTIC: choice [ h₄.ne' ] field_simp [ h₄.ne' ]]
        if (0.0 < (2.0)) && (0.0 < (((x + y) + z))) { MulPos(2.0, ((x + y) + z)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // UNCITED h₄.ne': a projection of the local hypothesis h₄ handed to the tactic; its fact is not stated here
        // `fieldSimp` step's recorded applications (Lean execution 2985-3006 exec 681): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (x + y + z)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < ((x + y) + z))
        // UNCITED-APPLIED internal ×9 [exec 681 2985-3006]: applications made inside the tactic's own automation, not stated — ne_of_gt ×2, mul_div_assoc' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_mul_eq_mul_div ×1; machinery/glue: congrArg ×2, Eq.trans ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
        assert ((9.0 * (2.0 * ((x + y) + z))) == ((2.0 * 9.0) * ((x + y) + z)));  // sub-goal of `ring` (Lean state) // @tac 3017-3021
        // UNCITED-APPLIED internal ×66 [exec 694 3017-3021]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+14 more heads, ×37)
      }
      // [TACTIC: rwSeq [ h₁₁₂ ]]
      // UNCITED-APPLIED congrArg((9 : ℝ) / (x + y + z), (2 : ℝ) * ((9 : ℝ) / ((2 : ℝ) * (x + y + z))), fun (_a : ℝ) => (2 : ℝ) * ((1 : ℝ) / (x + y) + (1 : ℝ) / (y + z) + (1…): no library counterpart (not stated) [exec 711 3073-3088]
      assert ((2.0 * ((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x)))) >= (2.0 * Real.div(9.0, (2.0 * ((x + y) + z))))) by {  // sub-goal before `have` (Lean state) // @tac 3093-3197 // @tac 3202-3211
        // have h₁₁₃ : 1 / ( x + y ) + 1 / ( y + z ) + 1 / ( z + x ) >= 9 / ( 2 * ( x + y + z  [type from Lean state]
        assert (((Real.div(1.0, (x + y)) + Real.div(1.0, (y + z))) + Real.div(1.0, (z + x))) >= Real.div(9.0, (2.0 * ((x + y) + z)))) by { // @tac 3189-3197
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3189-3197 exec 754)
          cert_identity_37(x, y, z);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×13 [exec 754 3189-3197]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.add_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
          // UNCITED-APPLIED internal ×123 [exec 759 3189-3197]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7 (+29 more heads, ×92) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 759)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 759)]
        }
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3202-3211 exec 760)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((1 : ℝ) * ((9 : ℝ) / ((2 : ℝ) * (x + y + z))) - ((1 : ℝ) * ((1 : ℝ) / (x + y)) + (1 : ℝ) * ((1 : ℝ) / (y + z…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * Real.div(9.0, (2.0 * ((x + y) + z)))) - (((1.0 * Real.div(1.0, (x + y))) + (1.0 * Real.div(1.0, (y + z)))) + (1.0 * Real.div(1.0, (z + x))))) <= 0.0); (2.0 > 0.0)
        cert_identity_38(x, y, z);  // cert: add_lt_of_le_of_neg
        // UNCITED-APPLIED internal ×16 [exec 760 3202-3211]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.add_subst ×2, CancelDenoms.mul_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
        // UNCITED-APPLIED internal ×136 [exec 767 3202-3211]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+31 more heads, ×104) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 761 3202-3211]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 762 3202-3211]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 761, 762 / `ring1` exec 767)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 768 / `ring1` exec 767)]
        // UNCITED-APPLIED internal ×5 [exec 768 3202-3211]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
  }
  // have h₁₂ : 9 / ( x + y + z ) <= 2 / ( x + y ) + 2 / ( y + z ) + 2 / ( z + x )  [type from Lean state]
  assert (Real.div(9.0, ((x + y) + z)) <= ((Real.div(2.0, (x + y)) + Real.div(2.0, (y + z))) + Real.div(2.0, (z + x)))) by { // @tac 3302-3310
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3302-3310 exec 785)
    cert_identity_39(x, y, z);  // cert: add_lt_of_le_of_neg
    // UNCITED-APPLIED internal ×13 [exec 785 3302-3310]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.add_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
    // UNCITED-APPLIED internal ×121 [exec 788 3302-3310]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.zero_mul ×8 (+29 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 788)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 788)]
  }
  // [TACTIC: exact h₁₂]
  assert (Real.div(9.0, ((x + y) + z)) <= ((Real.div(2.0, (x + y)) + Real.div(2.0, (y + z))) + Real.div(2.0, (z + x))));
}



// ===== closed lemma for line 471 (from closed/algebra_9onxpypzleqsum2onxpy-471.dfy) =====

lemma {:induction false} vc_algebra_9onxpypzleqsum2onxpy_L471(x: real, y: real, z: real)
  requires 0.0 < x
  requires 0.0 < y
  requires 0.0 < z
  requires 0.0 < x + y + z
  requires 0.0 < (x + y) * (y + z) * (z + x)
  ensures   2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) >= 9.0
{
  assert 2.0 * (x + y + z) * (Real.div(1.0, x + y) + Real.div(1.0, y + z) + Real.div(1.0, z + x)) == Real.div(2.0 * (x + y + z) * ((y + z + (x + y)) * (z + x) + (x + y) * (y + z)), (x + y) * (y + z) * (z + x));  // K2: field_simp normal form (before-goal LHS == after-goal LHS), checked  // [ADDED]
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

