// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1992_p1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + (p - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(p: int, q: int, r: int)
  ensures (((-((2 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + (q - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(p: int, q: int, r: int)
  ensures ((((-((3 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + (r - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_17(p: int, q: int, r: int)
  requires (0 < ((p - 1) * (q - 1)))
  requires ((r - 1) > 0)
  ensures (0 < (((p - 1) * (q - 1)) * (r - 1)))
{
  MulPosInt(((p - 1) * (q - 1)), (r - 1));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(p: int, q: int, r: int)
  requires ((p - 1) > 0)
  requires ((q - 1) > 0)
  ensures (0 < ((p - 1) * (q - 1)))
{
  MulPosInt((p - 1), (q - 1));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(p: int, q: int, r: int, k: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - ((((p - 1) * (q - 1)) * (r - 1)) * k)))) + (((((p * q) * r) - 1) + 1) - (k * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(p: int, q: int, r: int, k: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - ((((p - 1) * (q - 1)) * (r - 1)) * k))) + (((k * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(p: int, q: int, r: int, k: int)
  ensures ((-(1) + k) + ((0 + 1) - k)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_22(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (q - 3))
  ensures (0 <= ((p - 2) * (q - 3)))
{
  MulNonnegInt((p - 2), (q - 3));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (r - 4))
  ensures (0 <= ((p - 2) * (r - 4)))
{
  MulNonnegInt((p - 2), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(p: int, q: int, r: int)
  requires (0 <= (q - 3))
  requires (0 <= (r - 4))
  ensures (0 <= ((q - 3) * (r - 4)))
{
  MulNonnegInt((q - 3), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_25(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (0 <= ((q - 3) * (r - 4)))
  ensures ((((1 + 1) - p) * ((q - 3) * (r - 4))) <= 0)
{
  MulNonnegInt(-(((1 + 1) - p)), ((q - 3) * (r - 4)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_26(p: int, q: int, r: int, k: int)
  requires (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) <= 0)
  requires (k <= 0)
  ensures (0 <= (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) * k))
{
  MulNonnegInt(-(((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))), -(k));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(p: int, q: int, r: int, k: int)
  ensures ((((((((((-((23 * 1)) + (26 * ((1 + 1) - p))) + (14 * ((p + 1) - q))) + (6 * ((q + 1) - r))) + ((((p * q) * r) - 1) - (k * (((p - 1) * (q - 1)) * (r - 1))))) + k) + -((4 * ((p - 2) * (q - 3))))) + -((3 * ((p - 2) * (r - 4))))) + -((2 * ((q - 3) * (r - 4))))) + (((1 + 1) - p) * ((q - 3) * (r - 4)))) + -((((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) * k))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(p: int, q: int, r: int)
  ensures ((-(1) + (((p * q) * r) - 1)) + ((1 + 1) - ((p * q) * r))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈/h₁₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_32(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈/h₁₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₈/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(p: int, q: int, r: int)
  ensures (((((-(1) + (5 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + (((p * q) + 1) - (2 * 3))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_35(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_36(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_37(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((p + 1) - q) * ((p + 1) - q)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₁/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_38(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((p + 1) - q) * ((q + 1) - r)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(p: int, q: int, r: int)
  ensures (((((((((-((18 * 1)) + (3 * ((p + 1) - q))) + (4 * ((q + 1) - r))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + (((p * q) * r) - 1)) + (3 * ((2 * 3) - (p * q)))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((2 * (((1 + 1) - p) * ((q + 1) - r))))) + -((((p + 1) - q) * ((p + 1) - q)))) + -((((p + 1) - q) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(p: int, q: int, r: int)
  ensures ((-((23 * 1)) + (((p * q) * r) - 1)) + (((2 * 3) * 4) - ((p * q) * r))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_41(p: int, q: int, r: int, k: int)
  ensures ((-(1) + ((3 + 1) - k)) + ((k + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_42(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + (((p - 1) + 1) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_43(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + (((q - 1) + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_44(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + (((r - 1) + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_45(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_46(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_47(p: int, q: int, r: int)
  ensures (((((-(1) + (3 * ((1 + 1) - p))) + ((p + 1) - q)) + ((((p - 1) * (q - 1)) + 1) - 2)) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_48(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((2 - ((p - 1) * (q - 1))) <= 0)
  ensures (0 <= (((1 + 1) - p) * (2 - ((p - 1) * (q - 1)))))
{
  MulNonnegInt(-(((1 + 1) - p)), -((2 - ((p - 1) * (q - 1)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_49(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires ((2 - ((p - 1) * (q - 1))) <= 0)
  ensures (0 <= (((p + 1) - q) * (2 - ((p - 1) * (q - 1)))))
{
  MulNonnegInt(-(((p + 1) - q)), -((2 - ((p - 1) * (q - 1)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_50(p: int, q: int, r: int)
  requires (((q + 1) - r) <= 0)
  requires ((2 - ((p - 1) * (q - 1))) <= 0)
  ensures (0 <= (((q + 1) - r) * (2 - ((p - 1) * (q - 1)))))
{
  MulNonnegInt(-(((q + 1) - r)), -((2 - ((p - 1) * (q - 1)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_51(p: int, q: int, r: int)
  ensures ((((((((-(1) + (2 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + (3 * (2 - ((p - 1) * (q - 1))))) + (((((p - 1) * (q - 1)) * (r - 1)) + 1) - 6)) + -((((1 + 1) - p) * (2 - ((p - 1) * (q - 1)))))) + -((((p + 1) - q) * (2 - ((p - 1) * (q - 1)))))) + -((((q + 1) - r) * (2 - ((p - 1) * (q - 1)))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₁₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_52(p: int, q: int, r: int, k: int)
  requires (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) <= 0)
  requires (((3 + 1) - k) <= 0)
  ensures (0 <= (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) * ((3 + 1) - k)))
{
  MulNonnegInt(-(((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))), -(((3 + 1) - k)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_53(p: int, q: int, r: int, k: int)
  ensures (((-(1) + ((3 + 1) - k)) + (((k * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (4 * (((p - 1) * (q - 1)) * (r - 1))))) + -((((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) * ((3 + 1) - k)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_54(p: int, q: int, r: int, k: int)
  ensures (((-(1) + -(((((p * q) * r) - 1) - (k * (((p - 1) * (q - 1)) * (r - 1)))))) + ((4 * (((p - 1) * (q - 1)) * (r - 1))) - (k * (((p - 1) * (q - 1)) * (r - 1))))) + (((((p * q) * r) - 1) + 1) - (4 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₂₁/h₂₂`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_55(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (q - 3))
  ensures (0 <= ((p - 2) * (q - 3)))
{
  MulNonnegInt((p - 2), (q - 3));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₂₁/h₂₂`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_56(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (r - 4))
  ensures (0 <= ((p - 2) * (r - 4)))
{
  MulNonnegInt((p - 2), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₂₁/h₂₂`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_57(p: int, q: int, r: int)
  requires (0 <= (q - 3))
  requires (0 <= (r - 4))
  ensures (0 <= ((q - 3) * (r - 4)))
{
  MulNonnegInt((q - 3), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₂/h₂₁/h₂₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_58(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (0 <= ((q - 3) * (r - 4)))
  ensures ((((1 + 1) - p) * ((q - 3) * (r - 4))) <= 0)
{
  MulNonnegInt(-(((1 + 1) - p)), ((q - 3) * (r - 4)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₂₁/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_59(p: int, q: int, r: int, k: int)
  ensures (((((((((-(1) + (4 * ((1 + 1) - p))) + -(((((p * q) * r) - 1) - (k * (((p - 1) * (q - 1)) * (r - 1)))))) + (2 - ((p - 1) * (q - 1)))) + (6 - (((p - 1) * (q - 1)) * (r - 1)))) + ((4 * (((p - 1) * (q - 1)) * (r - 1))) - (k * (((p - 1) * (q - 1)) * (r - 1))))) + -((4 * ((p - 2) * (q - 3))))) + -((3 * ((p - 2) * (r - 4))))) + -(((q - 3) * (r - 4)))) + (2 * (((1 + 1) - p) * ((q - 3) * (r - 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_60(p: int, q: int, r: int, k: int)
  ensures (((-(1) + -(((((p * q) * r) - 1) - (k * (((p - 1) * (q - 1)) * (r - 1)))))) + ((4 * (((p - 1) * (q - 1)) * (r - 1))) - (k * (((p - 1) * (q - 1)) * (r - 1))))) + ((((p * q) * r) + 1) - ((4 * (((p - 1) * (q - 1)) * (r - 1))) + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_61(p: int, q: int, r: int, k: int)
  ensures (((-(1) + -(((((p * q) * r) - 1) - (k * (((p - 1) * (q - 1)) * (r - 1)))))) + ((4 * (((p - 1) * (q - 1)) * (r - 1))) - (k * (((p - 1) * (q - 1)) * (r - 1))))) + (((((p * q) * r) - 1) + 1) - (4 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_62(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((p * q) * r)) - ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r)))) + (((-(1) + ((p * q) * r)) + 1) - ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_63(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((p * q) * r)) - ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r))) + ((((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r) + 1) - (-(1) + ((p * q) * r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_64(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (((p - 1) * (q - 1)) * (r - 1)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_65(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (((((p - 1) * (q - 1)) * (r - 1)) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_66(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) + (p * r)) + (q * r)) + 1) - ((p + q) + r))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_67(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + ((((p + q) + r) + 1) - (((p * q) + (p * r)) + (q * r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_68(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - 3)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_69(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_70(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - 3)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_71(p: int, q: int, r: int)
  ensures (((-((2 * 1)) + ((p + 1) - q)) + (3 - p)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_72(p: int, q: int, r: int)
  ensures ((((-((2 * 1)) + ((p + 1) - q)) + ((q + 1) - r)) + (3 - p)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_73(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_74(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_75(p: int, q: int, r: int)
  ensures (((((-((3 * 1)) + (2 * ((p + 1) - q))) + (5 * (3 - p))) + (((p * q) + 1) - (3 * 3))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_76(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_77(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_78(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_79(p: int, q: int, r: int)
  ensures (((((((-((3 * 1)) + (2 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + (6 * (3 - p))) + (((p * r) + 1) - (3 * 4))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_80(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_81(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_82(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((3 - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * (3 - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -((3 - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_83(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((3 * 3) - (p * q)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((3 * 3) - (p * q))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((3 * 3) - (p * q))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_84(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((3 * 4) - (p * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((3 * 4) - (p * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((3 * 4) - (p * r))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_85(p: int, q: int, r: int)
  ensures (((((((((((-((41 * 1)) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (29 * (3 - p))) + -((2 * (((1 + 1) - p) * ((p + 1) - q))))) + -((((1 + 1) - p) * ((q + 1) - r)))) + -((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))))) + -((((1 + 1) - p) * (3 - p)))) + -((((1 + 1) - p) * ((3 * 3) - (p * q))))) + -((((1 + 1) - p) * ((3 * 4) - (p * r))))) == 0
{
  vc_imo_1992_p1_L780(p, q, r);  /* [IN-FILE CHECK] the closed lemma for line 780 */
  }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_86(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_87(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_88(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_89(p: int, q: int, r: int)
  ensures ((((((((-((25 * 1)) + (2 * ((p + 1) - q))) + ((q + 1) - r)) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (8 * (3 - p))) + ((3 * 4) - (q * r))) + -((2 * (((1 + 1) - p) * ((1 + 1) - p))))) + -((2 * (((1 + 1) - p) * ((p + 1) - q))))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_90(p: int, q: int, r: int)
  ensures ((-(1) + ((q + 1) - 4)) + ((3 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_91(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_92(p: int, q: int, r: int)
  ensures ((-(1) + ((q + 1) - 4)) + ((3 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_93(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_94(p: int, q: int, r: int)
  ensures ((-(1) + (p - 2)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_95(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_96(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_97(p: int, q: int, r: int)
  ensures (((((-(1) + (3 * ((1 + 1) - p))) + (2 * (4 - q))) + (((p * q) + 1) - (2 * 4))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_98(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_99(p: int, q: int, r: int)
  ensures (((((-((3 * 1)) + ((1 + 1) - p)) + (2 * ((q + 1) - r))) + ((2 * 4) - (p * q))) + (((p * r) + 1) - (2 * 4))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_100(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_101(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_102(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((2 * 4) - (p * q)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((2 * 4) - (p * q))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((2 * 4) - (p * q))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_103(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((2 * 4) - (p * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((2 * 4) - (p * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((2 * 4) - (p * r))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_104(p: int, q: int, r: int)
  ensures (((((((((((-((16 * 1)) + (16 * ((1 + 1) - p))) + (2 * ((q + 1) - r))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (2 * (4 - q))) + ((2 * 4) - (p * q))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * ((q + 1) - r)))) + -((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))))) + -((((1 + 1) - p) * ((2 * 4) - (p * q))))) + -((((1 + 1) - p) * ((2 * 4) - (p * r))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_105(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_106(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_107(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_108(p: int, q: int, r: int)
  ensures ((((((((-((23 * 1)) + (3 * ((1 + 1) - p))) + ((q + 1) - r)) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + ((2 * 4) - (p * q))) + ((4 * 4) - (q * r))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₁₉/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_109(p: int, q: int, r: int)
  ensures ((-(1) + ((r + 1) - 5)) + ((4 + 1) - r)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₁₉/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_110(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₁₉/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_111(p: int, q: int, r: int)
  ensures ((-(1) + ((r + 1) - 5)) + ((4 + 1) - r)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_112(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_113(p: int, q: int, r: int)
  ensures ((-(1) + (p - 2)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_114(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_115(p: int, q: int, r: int)
  ensures ((-(1) + (q - 3)) + ((3 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_116(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_117(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_118(p: int, q: int, r: int)
  ensures (((((-(1) + (5 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + (((p * q) + 1) - (2 * 3))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_119(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_120(p: int, q: int, r: int)
  ensures ((((((-(1) + ((1 + 1) - p)) + (2 * (q - 3))) + (2 * (5 - r))) + ((2 * 3) - (p * q))) + (((p * r) + 1) - (2 * 5))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_121(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_122(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((2 * 3) - (p * q)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((2 * 3) - (p * q))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((2 * 3) - (p * q))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_123(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((2 * 5) - (p * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((2 * 5) - (p * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((2 * 5) - (p * r))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_124(p: int, q: int, r: int)
  ensures (((((((((-((14 * 1)) + (17 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + ((2 * 5) - (p * r))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))))) + -((((1 + 1) - p) * ((2 * 3) - (p * q))))) + -((((1 + 1) - p) * ((2 * 5) - (p * r))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_125(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_126(p: int, q: int, r: int)
  ensures (((((((-((42 * 1)) + (2 * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))))) + (p - 2)) + (4 * (q - 3))) + (3 * ((2 * 3) - (p * q)))) + ((2 * 5) - (p * r))) + (2 * ((3 * 5) - (q * r)))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_127(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((p * q) * r)) - ((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2))))) + (((-(1) + ((p * q) * r)) + 1) - ((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_128(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((p * q) * r)) - ((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2)))) + ((((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2)) + 1) - (-(1) + ((p * q) * r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_129(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - 4)) + ((3 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_130(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_131(p: int, q: int, r: int)
  ensures ((((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - r)) + ((r + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_132(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_133(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_134(p: int, q: int, r: int)
  ensures (((((-(1) + (5 * ((1 + 1) - p))) + (2 * ((p + 1) - q))) + (((p * q) + 1) - (2 * 3))) + -((((1 + 1) - p) * ((1 + 1) - p)))) + -((((1 + 1) - p) * ((p + 1) - q)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_135(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_136(p: int, q: int, r: int)
  ensures (((((-(1) + ((1 + 1) - p)) + (2 * ((q + 1) - r))) + ((2 * 3) - (p * q))) + (((p * r) + 1) - (2 * 4))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_137(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_138(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_139(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_140(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((((q * r) + 1) - (3 * 4)) <= 0)
  ensures (0 <= (((1 + 1) - p) * (((q * r) + 1) - (3 * 4))))
{
  MulNonnegInt(-(((1 + 1) - p)), -((((q * r) + 1) - (3 * 4))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_141(p: int, q: int, r: int)
  ensures ((((((((-((11 * 1)) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (6 * (p - 2))) + ((2 * 3) - (p * q))) + ((2 * 4) - (p * r))) + -((2 * (((1 + 1) - p) * ((1 + 1) - p))))) + -((2 * (((1 + 1) - p) * ((p + 1) - q))))) + -((((1 + 1) - p) * ((q + 1) - r)))) + -((((1 + 1) - p) * (((q * r) + 1) - (3 * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_142(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((1 + 1) - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((1 + 1) - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_143(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₁₇/h₂₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_144(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_145(p: int, q: int, r: int)
  ensures (((((((((-((12 * 1)) + (5 * ((1 + 1) - p))) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + ((2 * 3) - (p * q))) + ((2 * 4) - (p * r))) + (2 * ((3 * 4) - (q * r)))) + ((((p * q) * r) + 1) - ((2 * 3) * 4))) + -((2 * (((1 + 1) - p) * ((1 + 1) - p))))) + -((2 * (((1 + 1) - p) * ((p + 1) - q))))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_146(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_147(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_148(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_149(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_150(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_151(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_152(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_153(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_154(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((-(1) + ((q * r) * 2)) - ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_155(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((-(1) + ((q * r) * 2)) - ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_156(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_157(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_158(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₄₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_159(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_160(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₇/h₃₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_161(p: int, q: int, r: int)
  ensures ((((-((11 * 1)) + (4 * ((1 + 1) - p))) + (4 * ((p + 1) - q))) + (2 * ((q + 1) - r))) + ((((2 * q) * r) - 1) - (2 * ((1 * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_162(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_163(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((4 - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * (4 - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_164(p: int, q: int, r: int)
  ensures (((((-(1) + (2 * ((p + 1) - q))) + (7 * (4 - p))) + (((p * q) + 1) - (4 * 5))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * (4 - p)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_165(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_166(p: int, q: int, r: int)
  ensures (((((-(1) + (2 * ((q + 1) - r))) + (4 - p)) + ((4 * 5) - (p * q))) + (((p * r) + 1) - (4 * 6))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_167(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_168(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_169(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((4 - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * (4 - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_170(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((((q * r) + 1) - (5 * 6)) <= 0)
  ensures (0 <= (((1 + 1) - p) * (((q * r) + 1) - (5 * 6))))
{
  MulNonnegInt(-(((1 + 1) - p)), -((((q * r) + 1) - (5 * 6))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_171(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((p + 1) - q) * ((p + 1) - q)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_172(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((p + 1) - q) * ((q + 1) - r)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_173(p: int, q: int, r: int)
  ensures ((((((((((-((14 * 1)) + (71 * ((p + 1) - q))) + (33 * ((q + 1) - r))) + (9 * ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (5 * (((q * r) + 1) - (5 * 6)))) + -((46 * (((1 + 1) - p) * ((p + 1) - q))))) + -((23 * (((1 + 1) - p) * ((q + 1) - r))))) + -((41 * (((1 + 1) - p) * (4 - p))))) + -((9 * (((1 + 1) - p) * (((q * r) + 1) - (5 * 6)))))) + -((5 * (((p + 1) - q) * ((p + 1) - q))))) + -((5 * (((p + 1) - q) * ((q + 1) - r))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_174(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((5 * 6) - (q * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((5 * 6) - (q * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((5 * 6) - (q * r))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_175(p: int, q: int, r: int)
  ensures ((((-(1) + (30 * (4 - p))) + (2 * ((5 * 6) - (q * r)))) + ((((p * q) * r) + 1) - ((4 * 5) * 6))) + -((((1 + 1) - p) * ((5 * 6) - (q * r))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_176(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_177(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_178(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_179(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_180(p: int, q: int, r: int)
  requires (0 <= ((p - 2) * (p - 2)))
  requires (((p + 1) - q) <= 0)
  ensures ((((p - 2) * (p - 2)) * ((p + 1) - q)) <= 0)
{
  MulNonnegInt(((p - 2) * (p - 2)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_181(p: int, q: int, r: int)
  requires (0 <= ((p - 2) * (p - 2)))
  requires (((q + 1) - r) <= 0)
  ensures ((((p - 2) * (p - 2)) * ((q + 1) - r)) <= 0)
{
  MulNonnegInt(((p - 2) * (p - 2)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_182(p: int, q: int, r: int)
  requires (0 <= ((p - 2) * (p - 2)))
  requires ((4 - p) <= 0)
  ensures ((((p - 2) * (p - 2)) * (4 - p)) <= 0)
{
  MulNonnegInt(((p - 2) * (p - 2)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_183(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_184(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((4 - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * (4 - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_185(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires ((4 - p) <= 0)
  ensures (0 <= (((p + 1) - q) * (4 - p)))
{
  MulNonnegInt(-(((p + 1) - q)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_186(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires (0 <= ((p - 2) * (r - 4)))
  ensures ((((p + 1) - q) * ((p - 2) * (r - 4))) <= 0)
{
  MulNonnegInt(-(((p + 1) - q)), ((p - 2) * (r - 4)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_187(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (r - 4))
  ensures (0 <= ((p - 2) * (r - 4)))
{
  MulNonnegInt((p - 2), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_188(p: int, q: int, r: int)
  requires (((q + 1) - r) <= 0)
  requires ((4 - p) <= 0)
  ensures (0 <= (((q + 1) - r) * (4 - p)))
{
  MulNonnegInt(-(((q + 1) - r)), -((4 - p)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_189(p: int, q: int, r: int)
  ensures ((((((((((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (6 * (4 - p))) + (((p - 2) * (p - 2)) * ((p + 1) - q))) + (((p - 2) * (p - 2)) * ((q + 1) - r))) + (((p - 2) * (p - 2)) * (4 - p))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((5 * (((1 + 1) - p) * (4 - p))))) + -((2 * (((p + 1) - q) * (4 - p))))) + (((p + 1) - q) * ((p - 2) * (r - 4)))) + -((((q + 1) - r) * (4 - p)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_190(p: int, q: int, r: int)
  ensures ((-(1) + -((p - 3))) + ((p + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_191(p: int, q: int, r: int)
  ensures ((-(1) + (p - 3)) + ((3 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_192(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_193(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_194(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_195(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_196(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_197(p: int, q: int, r: int)
  ensures ((-(1) + ((q + 1) - r)) + ((r + 1) - (q + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_198(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_199(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_200(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_201(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((q * r) * 3)) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))))) + (((-(1) + ((q * r) * 3)) + 1) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_202(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((q * r) * 3)) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) + ((((4 - (q * 4)) + (((q * r) * 4) - (r * 4))) + 1) - (-(1) + ((q * r) * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_203(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((q * r) * 3)) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))))) + (((-(1) + ((q * r) * 3)) + 1) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_204(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((q * r) * 3)) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) + ((((4 - (q * 4)) + (((q * r) * 4) - (r * 4))) + 1) - (-(1) + ((q * r) * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_205(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + (((-(1) + ((q * r) * 3)) + 1) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_206(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((4 - (q * 4)) + (((q * r) * 4) - (r * 4))) + 1) - (-(1) + ((q * r) * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_207(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + (((-(1) + ((q * r) * 3)) + 1) - ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_208(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((4 - (q * 4)) + (((q * r) * 4) - (r * 4))) + 1) - (-(1) + ((q * r) * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_209(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((0 + 1) - ((-(5) + ((q * 4) - (q * r))) + (r * 4)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_210(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + (((-(5) + ((q * 4) - (q * r))) + (r * 4)) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_211(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + ((0 + 1) - ((5 - (q * 4)) + ((q * r) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_212(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + (((5 - (q * 4)) + ((q * r) - (r * 4))) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_213(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + ((11 + 1) - ((16 - (q * 4)) + ((q * r) - (r * 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_214(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((16 - (q * 4)) + ((q * r) - (r * 4))) + 1) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₃/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_215(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + ((11 + 1) - ((q - 4) * (r - 4)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₃/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_216(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((q - 4) * (r - 4)) + 1) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_217(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + ((11 + 1) - ((q - 4) * (r - 4)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_218(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((q - 4) * (r - 4)) + 1) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_219(p: int, q: int, r: int)
  ensures ((-(1) + -(((1 * (r - 4)) - 11))) + (((r - 4) + 1) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_220(p: int, q: int, r: int)
  ensures ((-(1) + ((1 * (r - 4)) - 11)) + ((11 + 1) - (r - 4))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_221(p: int, q: int, r: int)
  ensures ((-(1) + -(((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1)))))) + ((11 + 1) - ((q - 4) * (r - 4)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_222(p: int, q: int, r: int)
  ensures ((-(1) + ((((3 * q) * r) - 1) - (2 * ((2 * (q - 1)) * (r - 1))))) + ((((q - 4) * (r - 4)) + 1) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_223(p: int, q: int, r: int)
  ensures (((-((121 * 1)) + (11 * ((q + 1) - r))) + -((11 * ((q - 4) - 11)))) + ((11 * (r - 4)) - 11)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_224(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_225(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_226(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_227(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_228(p: int, q: int, r: int)
  ensures ((-(1) + -(((q - 4) - 1))) + ((q + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_229(p: int, q: int, r: int)
  ensures ((-(1) + ((q - 4) - 1)) + ((5 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_230(p: int, q: int, r: int)
  ensures ((-(1) + -(((r - 4) - 11))) + ((r + 1) - 15)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_231(p: int, q: int, r: int)
  ensures ((-(1) + ((r - 4) - 11)) + ((15 + 1) - r)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_232(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((q + 1) - r)) + -(((q - 4) - 11))) + ((r - 4) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_233(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((q + 1) - r)) + -(((q - 4) - 11))) + ((r - 4) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_234(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((q + 1) - r)) + -(((q - 4) - 11))) + ((r - 4) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_235(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((q + 1) - r)) + -(((q - 4) - 11))) + ((r - 4) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_236(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_237(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_238(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_239(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_240(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_241(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_242(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_243(p: int, q: int, r: int)
  ensures (((-((11 * 1)) + ((p + 1) - q)) + -((p - 3))) + ((q - 4) - -(11))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_244(p: int, q: int, r: int)
  ensures ((-(1) + -((p - 3))) + ((p + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_245(p: int, q: int, r: int)
  ensures ((-(1) + (p - 3)) + ((3 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_246(p: int, q: int, r: int)
  ensures ((-(1) + -((q - 5))) + ((q + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_247(p: int, q: int, r: int)
  ensures ((-(1) + (q - 5)) + ((5 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_248(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_249(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1))))) + (((2 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_250(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((p * q) * r)) - ((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3))))) + (((-(1) + ((p * q) * r)) + 1) - ((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_251(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((p * q) * r)) - ((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3)))) + ((((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3)) + 1) - (-(1) + ((p * q) * r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₆/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_252(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - 3)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_253(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_254(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - 3)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_255(p: int, q: int, r: int)
  ensures ((-(1) + ((p + 1) - q)) + ((q + 1) - (p + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_256(p: int, q: int, r: int)
  ensures ((-(1) + ((q + 1) - r)) + ((r + 1) - (q + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_257(p: int, q: int, r: int)
  ensures ((-(1) + (3 - p)) + ((p + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_258(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + (3 - p)) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_259(p: int, q: int, r: int)
  ensures ((((-(1) + ((p + 1) - q)) + ((q + 1) - r)) + (3 - p)) + ((r + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_260(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_261(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires ((3 - p) <= 0)
  ensures (0 <= (((1 + 1) - p) * (3 - p)))
{
  MulNonnegInt(-(((1 + 1) - p)), -((3 - p)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_262(p: int, q: int, r: int)
  ensures (((((-(1) + (2 * ((p + 1) - q))) + (6 * (3 - p))) + (((p * q) + 1) - (3 * 4))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * (3 - p)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_263(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((q + 1) - r)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_264(p: int, q: int, r: int)
  ensures (((((-(1) + (2 * ((q + 1) - r))) + (3 - p)) + ((3 * 4) - (p * q))) + (((p * r) + 1) - (3 * 5))) + -((((1 + 1) - p) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_265(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((p + 1) - q)))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_266(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  ensures (0 <= (((p + 1) - q) * ((p + 1) - q)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((p + 1) - q)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_267(p: int, q: int, r: int)
  requires (((p + 1) - q) <= 0)
  requires (((q + 1) - r) <= 0)
  ensures (0 <= (((p + 1) - q) * ((q + 1) - r)))
{
  MulNonnegInt(-(((p + 1) - q)), -(((q + 1) - r)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_268(p: int, q: int, r: int)
  ensures ((((((((-(1) + (5 * ((p + 1) - q))) + ((q + 1) - r)) + (3 - p)) + ((3 * 5) - (p * r))) + (((q * r) + 1) - (4 * 5))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((p + 1) - q) * ((p + 1) - q)))) + -((((p + 1) - q) * ((q + 1) - r)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_269(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((4 * 5) - (q * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((4 * 5) - (q * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((4 * 5) - (q * r))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_270(p: int, q: int, r: int)
  ensures ((((-(1) + (20 * (3 - p))) + (2 * ((4 * 5) - (q * r)))) + ((((p * q) * r) + 1) - ((3 * 4) * 5))) + -((((1 + 1) - p) * ((4 * 5) - (q * r))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_271(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_272(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) + (((3 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_273(p: int, q: int, r: int)
  ensures ((-(1) + (3 - p)) + ((p + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_274(p: int, q: int, r: int)
  ensures (((-(1) + ((p + 1) - q)) + (3 - p)) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_275(p: int, q: int, r: int)
  ensures ((((-(1) + ((p + 1) - q)) + ((q + 1) - r)) + (3 - p)) + ((r + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_276(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_277(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) + (((3 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_278(p: int, q: int, r: int)
  requires (0 <= (p - 2))
  requires (0 <= (q - 3))
  ensures (0 <= ((p - 2) * (q - 3)))
{
  MulNonnegInt((p - 2), (q - 3));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_279(p: int, q: int, r: int)
  requires (0 <= (q - 3))
  requires (0 <= (r - 4))
  ensures (0 <= ((q - 3) * (r - 4)))
{
  MulNonnegInt((q - 3), (r - 4));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_280(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (((4 * 5) - (q * r)) <= 0)
  ensures (0 <= (((1 + 1) - p) * ((4 * 5) - (q * r))))
{
  MulNonnegInt(-(((1 + 1) - p)), -(((4 * 5) - (q * r))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₁₅/h₃₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_281(p: int, q: int, r: int)
  requires (((1 + 1) - p) <= 0)
  requires (0 <= ((q - 3) * (r - 4)))
  ensures ((((1 + 1) - p) * ((q - 3) * (r - 4))) <= 0)
{
  MulNonnegInt(-(((1 + 1) - p)), ((q - 3) * (r - 4)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₅/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_282(p: int, q: int, r: int)
  ensures (((((((-((21 * 1)) + -((2 * ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))))) + (25 * (3 - p))) + ((3 * 4) - (p * q))) + -(((p - 2) * (q - 3)))) + -((2 * ((q - 3) * (r - 4))))) + -((2 * (((1 + 1) - p) * ((4 * 5) - (q * r)))))) + (2 * (((1 + 1) - p) * ((q - 3) * (r - 4))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_283(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_284(p: int, q: int, r: int)
  ensures ((-(1) + (p - 2)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_285(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_286(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) + (((3 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_287(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_288(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₀/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_289(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_290(p: int, q: int, r: int)
  ensures ((-(1) + ((q + 1) - r)) + ((r + 1) - (q + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_291(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q + 1) - 3)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_292(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_293(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) + (((3 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_294(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((q * r) * 2)) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))))) + (((-(1) + ((q * r) * 2)) + 1) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_295(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((q * r) * 2)) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) + ((((3 - (q * 3)) + (((q * r) * 3) - (r * 3))) + 1) - (-(1) + ((q * r) * 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_296(p: int, q: int, r: int)
  ensures ((-(1) + -(((-(1) + ((q * r) * 2)) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))))) + (((-(1) + ((q * r) * 2)) + 1) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_297(p: int, q: int, r: int)
  ensures ((-(1) + ((-(1) + ((q * r) * 2)) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) + ((((3 - (q * 3)) + (((q * r) * 3) - (r * 3))) + 1) - (-(1) + ((q * r) * 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_298(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + (((-(1) + ((q * r) * 2)) + 1) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_299(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((3 - (q * 3)) + (((q * r) * 3) - (r * 3))) + 1) - (-(1) + ((q * r) * 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_300(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + (((-(1) + ((q * r) * 2)) + 1) - ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_301(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((3 - (q * 3)) + (((q * r) * 3) - (r * 3))) + 1) - (-(1) + ((q * r) * 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_302(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((0 + 1) - ((-(4) + ((q * 3) - (q * r))) + (r * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₂₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_303(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + (((-(4) + ((q * 3) - (q * r))) + (r * 3)) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_304(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + ((0 + 1) - ((4 - (q * 3)) + ((q * r) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_305(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + (((4 - (q * 3)) + ((q * r) - (r * 3))) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_306(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + ((5 + 1) - ((9 - (q * 3)) + ((q * r) - (r * 3))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_307(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((9 - (q * 3)) + ((q * r) - (r * 3))) + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₃/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_308(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + ((5 + 1) - ((q - 3) * (r - 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₃/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_309(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((q - 3) * (r - 3)) + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_310(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + ((5 + 1) - ((q - 3) * (r - 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_311(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((q - 3) * (r - 3)) + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_312(p: int, q: int, r: int)
  ensures ((-(1) + -(((1 * (r - 3)) - 5))) + (((r - 3) + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_313(p: int, q: int, r: int)
  ensures ((-(1) + ((1 * (r - 3)) - 5)) + ((5 + 1) - (r - 3))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_314(p: int, q: int, r: int)
  ensures ((-(1) + -(((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1)))))) + ((5 + 1) - ((q - 3) * (r - 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_315(p: int, q: int, r: int)
  ensures ((-(1) + ((((2 * q) * r) - 1) - (3 * ((1 * (q - 1)) * (r - 1))))) + ((((q - 3) * (r - 3)) + 1) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_316(p: int, q: int, r: int)
  ensures (((-((25 * 1)) + (5 * ((q + 1) - r))) + -((5 * ((q - 3) - 5)))) + ((5 * (r - 3)) - 5)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_317(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_318(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_319(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₂/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_320(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_321(p: int, q: int, r: int)
  ensures ((-(1) + -(((q - 3) - 1))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_322(p: int, q: int, r: int)
  ensures ((-(1) + ((q - 3) - 1)) + ((4 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_323(p: int, q: int, r: int)
  ensures ((-(1) + -(((r - 3) - 5))) + ((r + 1) - 8)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_324(p: int, q: int, r: int)
  ensures ((-(1) + ((r - 3) - 5)) + ((8 + 1) - r)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_325(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((q + 1) - r)) + -(((q - 3) - 5))) + ((r - 3) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_326(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((q + 1) - r)) + -(((q - 3) - 5))) + ((r - 3) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_327(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((q + 1) - r)) + -(((q - 3) - 5))) + ((r - 3) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_328(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((q + 1) - r)) + -(((q - 3) - 5))) + ((r - 3) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_329(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_330(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_331(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_332(p: int, q: int, r: int)
  ensures (((-(1) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_333(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_334(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆/h₃₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_335(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_336(p: int, q: int, r: int)
  ensures (((-((5 * 1)) + ((1 + 1) - p)) + ((p + 1) - q)) + ((q - 3) - -(5))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_337(p: int, q: int, r: int)
  ensures ((-(1) + ((1 + 1) - p)) + ((p + 1) - 2)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_338(p: int, q: int, r: int)
  ensures ((-(1) + (p - 2)) + ((2 + 1) - p)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_339(p: int, q: int, r: int)
  ensures ((-(1) + -((q - 4))) + ((q + 1) - 4)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_340(p: int, q: int, r: int)
  ensures ((-(1) + (q - 4)) + ((4 + 1) - q)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_341(p: int, q: int, r: int)
  ensures ((-(1) + -(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1)))))) + (((((p * q) * r) - 1) + 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₁₇/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_342(p: int, q: int, r: int)
  ensures ((-(1) + ((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) + (((3 * (((p - 1) * (q - 1)) * (r - 1))) + 1) - (((p * q) * r) - 1))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1992_p1(p: int, q: int, r: int)
  requires ((1 < p) && ((p < q) && (q < r)))
  requires IntDvd((((p - 1) * (q - 1)) * (r - 1)), (((p * q) * r) - 1))
  ensures (((p == 2) && (q == 4) && (r == 8)) || ((p == 3) && (q == 5) && (r == 15))) // @tac 459-506 // @tac 510-786 // @tac 790-1064 // @tac 1068-27414 // @tac 27417-27427
{
  // have h₂ : p >= 2  [type from Lean state]
  assert (p >= 2) by { // @tac 489-506
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 489-506 exec 20)
    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_1(p, q, r);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×11 [exec 20 489-506]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×56 [exec 21 489-506]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
    // [TACTIC: linarith [ h₀ . 1 ]]  (not lowered)
  }
  // have h₃ : q >= 3  [type from Lean state]
  assert (q >= 3) by { // @tac 540-551
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 45 540-551]
    // by_contra h
    if !((q >= 3)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 556-590 // @tac 595-640 // @tac 645-677 // @tac 682-725 // @tac 730-773 // @tac 778-786
        // have h₄ : q <= 2  [type from Lean state]
        assert (q <= 2) by { // @tac 582-590
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 582-590 exec 62)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_2(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×15 [exec 62 582-590]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 63 582-590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₅ : q >= 2  [type from Lean state]
        assert (q >= 2) by { // @tac 621-640
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 621-640 exec 80)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_3(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×15 [exec 80 621-640]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 81 621-640]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith [ h₀ . 2 . 1 ]]  (not lowered)
        }
        // have h₆ : q == 2  [type from Lean state]
        assert (q == 2) by { // @tac 669-677
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 669-677 exec 98)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_4(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×16 [exec 98 669-677]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 99 669-677]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // UNCITED-APPLIED internal ×74 [exec 100 669-677]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₇ : p < 2  [type from Lean state]
        assert (p < 2) by { // @tac 706-725
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 706-725 exec 117)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_5(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×15 [exec 117 706-725]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, lt_of_not_ge ×2, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 118 706-725]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith [ h₀ . 2 . 1 ]]  (not lowered)
        }
        // have h₈ : p >= 2  [type from Lean state]
        assert (p >= 2) by { // @tac 756-773
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 756-773 exec 135)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_6(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×15 [exec 135 756-773]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 136 756-773]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith [ h₀ . 1 ]]  (not lowered)
        }
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 778-786 exec 137)
        // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
        cert_identity_7(p, q, r);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×14 [exec 137 778-786]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×74 [exec 138 778-786]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
        // [TACTIC: linarith]  (not lowered)
      }
      assert false;
    }
  }
  // have h₄ : r >= 4  [type from Lean state]
  assert (r >= 4) by { // @tac 820-831
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 162 820-831]
    // by_contra h
    if !((r >= 4)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 836-870 // @tac 875-920 // @tac 925-957 // @tac 962-1005 // @tac 1010-1051 // @tac 1056-1064
        // have h₅ : r <= 3  [type from Lean state]
        assert (r <= 3) by { // @tac 862-870
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 862-870 exec 179)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
          cert_identity_8(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 179 862-870]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×93 [exec 180 862-870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₆ : r >= 3  [type from Lean state]
        assert (r >= 3) by { // @tac 901-920
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 901-920 exec 197)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
          cert_identity_9(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 197 901-920]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×93 [exec 198 901-920]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // [TACTIC: linarith [ h₀ . 2 . 2 ]]  (not lowered)
        }
        // have h₇ : r == 3  [type from Lean state]
        assert (r == 3) by { // @tac 949-957
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 949-957 exec 215)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
          cert_identity_10(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×19 [exec 215 949-957]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×93 [exec 216 949-957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // UNCITED-APPLIED internal ×93 [exec 217 949-957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₈ : q < 3  [type from Lean state]
        assert (q < 3) by { // @tac 986-1005
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 986-1005 exec 234)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
          cert_identity_11(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 234 986-1005]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, lt_of_not_ge ×2, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×93 [exec 235 986-1005]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // [TACTIC: linarith [ h₀ . 2 . 2 ]]  (not lowered)
        }
        // have h₉ : q >= 3  [type from Lean state]
        assert (q >= 3) by { // @tac 1036-1051
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1036-1051 exec 252)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
          cert_identity_12(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 252 1036-1051]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×93 [exec 253 1036-1051]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
          // [TACTIC: linarith [ h₃ ]]  (not lowered)
        }
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1056-1064 exec 254)
        // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
        cert_identity_13(p, q, r);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×17 [exec 254 1056-1064]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×93 [exec 255 1056-1064]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
        // [TACTIC: linarith]  (not lowered)
      }
      assert false;
    }
  }
  // have h₅ : ( p , q , r ) == ( 2 , 4 , 8 ) || ( p , q , r ) == ( 3 , 5 , 15 )  [type from Lean state]
  assert ((((p == 2) && (q == 4)) && (r == 8)) || (((p == 3) && (q == 5)) && (r == 15))) by { // @tac 1139-1189 // @tac 1194-1244 // @tac 1249-1299 // @tac 1304-1382 // @tac 1387-1571 // @tac 1576-1605 // @tac 1610-2337 // @tac 2342-3544 // @tac 3549-3607 // @tac 3663-3700
    // have h₆ : p - 1 > 0  [type from Lean state]
    assert ((p - 1) > 0) by { // @tac 1181-1189
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1181-1189 exec 288)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_14(p, q, r);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 288 1181-1189]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×45 [exec 289 1181-1189]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+25 more heads, ×34)
      // [TACTIC: linarith]  (not lowered)
    }
    // have h₇ : q - 1 > 0  [type from Lean state]
    assert ((q - 1) > 0) by { // @tac 1236-1244
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1236-1244 exec 306)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
      cert_identity_15(p, q, r);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×14 [exec 306 1236-1244]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×70 [exec 307 1236-1244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+30 more heads, ×55)
      // UNCITED-APPLIED internal ×5 [exec 308 1236-1244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // [TACTIC: linarith]  (not lowered)
    }
    // have h₈ : r - 1 > 0  [type from Lean state]
    assert ((r - 1) > 0) by { // @tac 1291-1299
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1291-1299 exec 325)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (3 > 0)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
      cert_identity_16(p, q, r);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×17 [exec 325 1291-1299]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×87 [exec 326 1291-1299]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×5, Mathlib.Tactic.Ring.neg_add ×4 (+30 more heads, ×66)
      // UNCITED-APPLIED internal ×5 [exec 327 1291-1299]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // [TACTIC: linarith]  (not lowered)
    }
    // have h₉ : p - 1 * q - 1 * r - 1 > 0  [type from Lean state]
    assert ((((p - 1) * (q - 1)) * (r - 1)) > 0) by { // @tac 1372-1382
      assert (0 < (((p - 1) * (q - 1)))) && (0 < ((r - 1)));  // precondition of MulPosInt (Lean: mul_pos)
      MulPosInt(((p - 1) * (q - 1)), (r - 1));  // cite: mul_pos [applied by the tactic, not named in it]
      assert (0 < ((p - 1))) && (0 < ((q - 1)));  // precondition of MulPosInt (Lean: mul_pos)
      MulPosInt((p - 1), (q - 1));  // cite: mul_pos [applied by the tactic, not named in it]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1372-1382 exec 344)
      if (0 < ((p - 1) * (q - 1))) && ((r - 1) > 0) { cert_piece_17(p, q, r); }  // cert: mul_pos
      if ((p - 1) > 0) && ((q - 1) > 0) { cert_piece_18(p, q, r); }  // cert: mul_pos
      // [TACTIC: positivity]  (not lowered)
    }
    // have h₁₀ : ∃ ( k : ℤ ) , ( p * q * r - 1 : ℤ ) = k * ( ( p - 1 : ℤ ) * ( q - 1 :   [type from Lean state]
    assert (exists k: int :: ((((p * q) * r) - 1) == (k * (((p - 1) * (q - 1)) * (r - 1))))) by { // @tac 1505-1531
      // obtain ⟨k, hk⟩ := h₁
      assert exists k: int :: ((((p * q) * r) - 1)) == ((((p - 1) * (q - 1)) * (r - 1))) * k by {  // the ∃ of `(((p - 1) * (q - 1)) * (r - 1)) ∣ (((p * q) * r) - 1)` (Dvd.dvd unfolded)
        if ((((p - 1) * (q - 1)) * (r - 1))) == 0 { assert ((((p * q) * r) - 1)) == ((((p - 1) * (q - 1)) * (r - 1))) * 0; }
        else { assert ((((p * q) * r) - 1)) == ((((p - 1) * (q - 1)) * (r - 1))) * (((((p * q) * r) - 1)) / ((((p - 1) * (q - 1)) * (r - 1)))); }
      }
      var k: int :| ((((p * q) * r) - 1)) == ((((p - 1) * (q - 1)) * (r - 1))) * k;  // obtain: hk : (((p * q) * r) - 1) = (((p - 1) * (q - 1)) * (r - 1)) * k  (Lean's ∣ witness equation; k arbitrary)
      if (((((p * q) * r) - 1) == ((((p - 1) * (q - 1)) * (r - 1)) * k))) {  // sub-goal before `refine'` (Lean state)
        // [TACTIC: refine' ⟨ k , _ ⟩]
        assert ((((p * q) * r) - 1) == (k * (((p - 1) * (q - 1)) * (r - 1)))) by {  // sub-goal of `refine'` (Lean state) // @tac 1563-1571
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1563-1571 exec 363)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)) * k) < (0 : ℤ)`
          cert_identity_19(p, q, r, k);  // cert: add_lt_of_neg_of_le
          cert_identity_20(p, q, r, k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 363 1563-1571]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×138 [exec 364 1563-1571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×106)
          // UNCITED-APPLIED internal ×146 [exec 365 1563-1571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×114)
          // [TACTIC: linarith]  (not lowered)
        }
        assert (exists k: int :: ((((p * q) * r) - 1) == (k * (((p - 1) * (q - 1)) * (r - 1)))));  // sub-goal before `refine'` (Lean state) // @tac 1538-1556
      }
    }
    // obtain ⟨k, hk⟩ := h₁₀
    assert exists k: int :: ((((p * q) * r) - 1) == (k * (((p - 1) * (q - 1)) * (r - 1))));
    var k: int :| ((((p * q) * r) - 1) == (k * (((p - 1) * (q - 1)) * (r - 1))));
    // have h₁₁ : k > 0  [type from Lean state]
    assert (k > 0) by { // @tac 1643-1660
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 390 1643-1660]
      // by_contra h
      if !((k > 0)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 1667-1704 // @tac 1711-1966 // @tac 1973-2026 // @tac 2033-2078 // @tac 2085-2130 // @tac 2137-2182 // @tac 2189-2322 // @tac 2329-2337
          // have h₁₂ : k <= 0  [type from Lean state]
          assert (k <= 0) by { // @tac 1696-1704
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1696-1704 exec 407)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + k < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_21(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×9 [exec 407 1696-1704]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×35 [exec 408 1696-1704]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×24)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₃ : p * q * r - 1 <= 0  [type from Lean state]
          assert ((((p * q) * r) - 1) <= 0) by { // @tac 1768-1966
            SubNonnegInt(p, 2);  // cite: sub_nonneg
            SubNonnegInt(q, 3);  // cite: sub_nonneg
            SubNonnegInt(r, 4);  // cite: sub_nonneg
            assert (0 <= ((q - 3))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
            IntMulNonneg((q - 3), (r - 4));  // cite: mul_nonneg
            assert (0 <= ((p - 2))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
            IntMulNonneg((p - 2), (r - 4));  // cite: mul_nonneg
            assert (0 <= ((p - 2))) && (0 <= ((q - 3)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
            IntMulNonneg((p - 2), (q - 3));  // cite: mul_nonneg
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1768-1966 exec 425)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(23 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (23 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(26 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (26 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(14 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (14 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (6 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * -((p - (2 : ℤ)) * (q - (3 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((p - 2) * (q - 3))); (4 > 0)
            if (0 <= (p - 2)) && (0 <= (q - 3)) { cert_piece_22(p, q, r); }  // cert: mul_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * -((p - (2 : ℤ)) * (r - (4 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((p - 2) * (r - 4))); (3 > 0)
            if (0 <= (p - 2)) && (0 <= (r - 4)) { cert_piece_23(p, q, r); }  // cert: mul_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -((q - (3 : ℤ)) * (r - (4 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((q - 3) * (r - 4))); (2 > 0)
            if (0 <= (q - 3)) && (0 <= (r - 4)) { cert_piece_24(p, q, r); }  // cert: mul_nonneg
            if (((1 + 1) - p) <= 0) && (0 <= ((q - 3) * (r - 4))) { cert_piece_25(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) <= 0) && (k <= 0) { cert_piece_26(p, q, r, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(23 : ℤ) * (-1 : ℤ) + (26 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (14 : ℤ) * (p + (1 : ℤ) - q) + (6 : ℤ) * (q + (1 : ℤ) - r) +…`
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(23 : ℤ) * (-1 : ℤ) + (26 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (14 : ℤ) * (p + (1 : ℤ) - q) + (6 : ℤ) * (q + (1 : ℤ) - r) +…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_27(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×33 [exec 425 1768-1966]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×5, add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×2, mul_nonneg_of_nonpos_of_nonpos ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×6, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: mul_nonneg [Lean recorded ×3], sub_nonneg [Lean recorded ×3])
            // UNCITED-APPLIED internal ×244 [exec 426 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×212)
            // UNCITED-APPLIED internal ×5 [exec 427 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 428 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 429 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 430 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 431 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 432 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 433 1768-1966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith [ mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₃ ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₄ ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₄ ) ]]  (not lowered)
          }
          // have h₁₄ : p * q * r <= 1  [type from Lean state]
          assert (((p * q) * r) <= 1) by { // @tac 2018-2026
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2018-2026 exec 450)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p * q * r - (1 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_28(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×9 [exec 450 2018-2026]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×69 [exec 451 2018-2026]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.mul_pf_left ×3, Mathlib.Meta.NormNum.isInt_add ×3 (+33 more heads, ×57)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₅ :  >= 2  [type from Lean state]
          assert (p >= 2) by { // @tac 2070-2078
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2070-2078 exec 468)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_29(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×11 [exec 468 2070-2078]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×56 [exec 469 2070-2078]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₆ :  >= 3  [type from Lean state]
          assert (q >= 3) by { // @tac 2122-2130
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2122-2130 exec 486)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_30(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×14 [exec 486 2122-2130]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×74 [exec 487 2122-2130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₇ :  >= 4  [type from Lean state]
          assert (r >= 4) by { // @tac 2174-2182
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2174-2182 exec 504)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
            cert_identity_31(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 504 2174-2182]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×93 [exec 505 2174-2182]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₈ : p * q * r >= 2 * 3 * 4  [type from Lean state]
          assert (((p * q) * r) >= ((2 * 3) * 4)) by { // @tac 2250-2304 // @tac 2313-2322
            // have h₁₉ :  * q >= 2 * 3  [type from Lean state]
            assert ((p * q) >= (2 * 3)) by { // @tac 2295-2304
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2295-2304 exec 538)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (5 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) { cert_piece_32(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_33(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + (p * q + (1 : ℤ) - (2 : ℤ) * (3 : ℤ)) + -(…`
              cert_identity_34(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×22 [exec 538 2295-2304]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×215 [exec 539 2295-2304]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+37 more heads, ×183)
              // UNCITED-APPLIED internal ×5 [exec 540 2295-2304]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 541 2295-2304]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2313-2322 exec 542)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(18 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (18 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (3 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (4 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((2 : ℤ) * (3 : ℤ) - p * q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2 * 3) - (p * q)) <= 0); (3 > 0)
            if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_35(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (q + (1 : ℤ) - r)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((q + 1) - r))); (2 > 0)
            if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_36(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((p + 1) - q) <= 0) { cert_piece_37(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            if (((p + 1) - q) <= 0) && (((q + 1) - r) <= 0) { cert_piece_38(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(18 : ℤ) * (-1 : ℤ) + (3 : ℤ) * (p + (1 : ℤ) - q) + (4 : ℤ) * (q + (1 : ℤ) - r) + ((0 : ℤ) + (1 : ℤ) - (p - (1 : ℤ)) * …`
            cert_identity_39(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×31 [exec 542 2313-2322]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×4, mul_nonneg_of_nonpos_of_nonpos ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×237 [exec 543 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×205)
            // UNCITED-APPLIED internal ×5 [exec 544 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 545 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 546 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 547 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 548 2313-2322]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2329-2337 exec 549)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(23 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (23 > 0)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(23 : ℤ) * (-1 : ℤ) + (p * q * r - (1 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_40(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×8 [exec 549 2329-2337]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
          // UNCITED-APPLIED internal ×104 [exec 550 2329-2337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Tactic.Ring.cast_pos ×5 (+33 more heads, ×81)
          // UNCITED-APPLIED internal ×5 [exec 551 2329-2337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // [TACTIC: linarith]  (not lowered)
        }
        assert false;
      }
    }
    // have h₁₂ : k <= 3  [type from Lean state]
    assert (k <= 3) by { // @tac 2377-2394
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 575 2377-2394]
      // by_contra h
      if !((k <= 3)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 2401-2438 // @tac 2445-2502 // @tac 2509-2566 // @tac 2573-2630 // @tac 2637-2711 // @tac 2718-2808 // @tac 2815-2969 // @tac 2976-3091 // @tac 3098-3529 // @tac 3536-3544
          // have h₁₃ : k >= 4  [type from Lean state]
          assert (k >= 4) by { // @tac 2430-2438
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2430-2438 exec 592)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) + (1 : ℤ) - k) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_41(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×12 [exec 592 2430-2438]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×61 [exec 593 2430-2438]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.cast_pos ×3 (+25 more heads, ×46)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₄ : p - 1 >= 1  [type from Lean state]
          assert ((p - 1) >= 1) by { // @tac 2494-2502
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2494-2502 exec 610)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_42(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×11 [exec 610 2494-2502]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×48 [exec 611 2494-2502]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3 (+25 more heads, ×35)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₅ : q - 1 >= 2  [type from Lean state]
          assert ((q - 1) >= 2) by { // @tac 2558-2566
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2558-2566 exec 628)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_43(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×14 [exec 628 2558-2566]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×72 [exec 629 2558-2566]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.sub_pf ×4 (+25 more heads, ×54)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₆ : r - 1 >= 3  [type from Lean state]
          assert ((r - 1) >= 3) by { // @tac 2622-2630
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2622-2630 exec 646)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
            cert_identity_44(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 646 2622-2630]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×91 [exec 647 2622-2630]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×5, Mathlib.Tactic.Ring.sub_pf ×5 (+25 more heads, ×68)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₁₇ : p - 1 * q - 1 >= 2  [type from Lean state]
          assert (((p - 1) * (q - 1)) >= 2) by { // @tac 2702-2711
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2702-2711 exec 664)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (3 > 0)
            if (((1 + 1) - p) <= 0) { cert_piece_45(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_46(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + ((p - (1 : ℤ)) * (q - (1 : ℤ)) + (1 : ℤ) - (2 : ℤ)) …`
            cert_identity_47(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×21 [exec 664 2702-2711]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
            // UNCITED-APPLIED internal ×211 [exec 665 2702-2711]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+37 more heads, ×179)
            // UNCITED-APPLIED internal ×5 [exec 666 2702-2711]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          // have h₁₈ : p - 1 * q - 1 * r - 1 >= 6  [type from Lean state]
          assert ((((p - 1) * (q - 1)) * (r - 1)) >= 6) by { // @tac 2799-2808
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2799-2808 exec 683)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (2 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((2 : ℤ) - (p - (1 : ℤ)) * (q - (1 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((2 - ((p - 1) * (q - 1))) <= 0); (3 > 0)
            if (((1 + 1) - p) <= 0) && ((2 - ((p - 1) * (q - 1))) <= 0) { cert_piece_48(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((p + 1) - q) <= 0) && ((2 - ((p - 1) * (q - 1))) <= 0) { cert_piece_49(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((q + 1) - r) <= 0) && ((2 - ((p - 1) * (q - 1))) <= 0) { cert_piece_50(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) + (3 : ℤ) * ((…`
            cert_identity_51(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×29 [exec 683 2799-2808]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×6, sub_nonpos_of_le ×5, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1
            // UNCITED-APPLIED internal ×238 [exec 684 2799-2808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×206)
            // UNCITED-APPLIED internal ×5 [exec 685 2799-2808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 686 2799-2808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 687 2799-2808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 688 2799-2808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          // have h₁₉ :  * ( p - 1 * q - 1 * r - 1 ) >= 4 * ( p - 1 * q - 1 * r - 1 )  [type from Lean state]
          assert ((k * (((p - 1) * (q - 1)) * (r - 1))) >= (4 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 2960-2969
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2960-2969 exec 705)
            if (((0 + 1) - (((p - 1) * (q - 1)) * (r - 1))) <= 0) && (((3 + 1) - k) <= 0) { cert_piece_52(p, q, r, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((3 : ℤ) + (1 : ℤ) - k) + (k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ))) + (1 : ℤ) - (4 : ℤ) * ((p - (…`
            cert_identity_53(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×16 [exec 705 2960-2969]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1
            // UNCITED-APPLIED internal ×182 [exec 706 2960-2969]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+34 more heads, ×150)
            // [TACTIC: nlinarith]  (not lowered)
          }
          // have h₂₀ : p * q * r - 1 >= 4 * ( p - 1 * q - 1 * r - 1 )  [type from Lean state]
          assert ((((p * q) * r) - 1) >= (4 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 3083-3091
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3083-3091 exec 723)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + ((4 : ℤ) * ((p - (1 : ℤ)) * (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_54(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×12 [exec 723 3083-3091]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×171 [exec 724 3083-3091]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+33 more heads, ×139)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₂₁ : p * q * r - 1 < 4 * ( p - 1 * q - 1 * r - 1 )  [type from Lean state]
          assert ((((p * q) * r) - 1) < (4 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 3203-3512 // @tac 3521-3529
            // have h₂₂ :  * q * r < 4 * ( p - 1 * q - 1 * r - 1 ) + 1  [type from Lean state]
            assert (((p * q) * r) < ((4 * (((p - 1) * (q - 1)) * (r - 1))) + 1)) by { // @tac 3310-3512
              SubNonnegInt(p, 2);  // cite: sub_nonneg
              SubNonnegInt(q, 3);  // cite: sub_nonneg
              SubNonnegInt(r, 4);  // cite: sub_nonneg
              assert (0 <= ((q - 3))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((q - 3), (r - 4));  // cite: mul_nonneg
              assert (0 <= ((p - 2))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((p - 2), (r - 4));  // cite: mul_nonneg
              assert (0 <= ((p - 2))) && (0 <= ((q - 3)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((p - 2), (q - 3));  // cite: mul_nonneg
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3310-3512 exec 757)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * -((p - (2 : ℤ)) * (q - (3 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((p - 2) * (q - 3))); (4 > 0)
              if (0 <= (p - 2)) && (0 <= (q - 3)) { cert_piece_55(p, q, r); }  // cert: mul_nonneg
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * -((p - (2 : ℤ)) * (r - (4 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((p - 2) * (r - 4))); (3 > 0)
              if (0 <= (p - 2)) && (0 <= (r - 4)) { cert_piece_56(p, q, r); }  // cert: mul_nonneg
              if (0 <= (q - 3)) && (0 <= (r - 4)) { cert_piece_57(p, q, r); }  // cert: mul_nonneg
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * -((q - (3 : ℤ)) * (r - (4 : ℤ)))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1 + 1) - p) * ((q - 3) * (r - 4))) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (0 <= ((q - 3) * (r - 4))) { cert_piece_58(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_59(p, q, r, k);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×24 [exec 757 3310-3512]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×4, neg_nonpos_of_nonneg ×4, add_lt_of_neg_of_le ×3, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (cited in this block, not counted here: mul_nonneg [Lean recorded ×3], sub_nonneg [Lean recorded ×3])
              // UNCITED-APPLIED internal ×233 [exec 758 3310-3512]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.isNat_add ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_mul ×8 (+34 more heads, ×201)
              // UNCITED-APPLIED internal ×5 [exec 759 3310-3512]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 760 3310-3512]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 761 3310-3512]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 762 3310-3512]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith [ mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₃ ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₄ ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₄ ) ]]  (not lowered)
            }
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3521-3529 exec 763)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + ((4 : ℤ) * ((p - (1 : ℤ)) * (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_60(p, q, r, k);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×12 [exec 763 3521-3529]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×179 [exec 764 3521-3529]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+34 more heads, ×147)
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3536-3544 exec 765)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + ((4 : ℤ) * ((p - (1 : ℤ)) * (…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - k * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_61(p, q, r, k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×11 [exec 765 3536-3544]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×171 [exec 766 3536-3544]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+33 more heads, ×139)
          // [TACTIC: linarith]  (not lowered)
        }
        assert false;
      }
    }
    // have h₁₃ : k == 1 || k == 2 || k == 3  [type from Lean state]
    assert ((k == 1) || ((k == 2) || (k == 3))); // @tac 3602-3607
      // [TACTIC: omega]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED internal ×69 [exec 783 3602-3607]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×7, Int.lt_or_gt_of_ne ×3; machinery/glue: Eq.symm ×10, Lean.Omega.Constraint.addInequality_sat ×8, Lean.Omega.LinearCombo.sub_eval ×8, Lean.Omega.Constraint.combine_sat' ×5 (+10 more heads, ×20)
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // `rcases`: 3 cases (Lean states); 3 branch bodies
    if (k == 1) && (((((p * q) * r) - 1) == (1 * (((p - 1) * (q - 1)) * (r - 1))))) && ((1 > 0)) && ((1 <= 3)) {  // sub-goal of `rcases` (Lean state)
      // have h₁₄ : p * q * r - 1 == ( p - 1 ) * ( q - 1 ) * ( r - 1 )  [type from Lean state]
      assert ((((p * q) * r) - 1) == (((p - 1) * (q - 1)) * (r - 1))) by { // @tac 3801-3839 // @tac 3801-3818
        // [TACTIC: «_<;>_» at hk ⊢ <;> linarith]
        // [TACTIC: ringNF at hk ⊢]
        IntPowOne(p);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r); (a := p); (a := q)
        // UNCITED-APPLIED internal ×143 [exec 810 3801-3818]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×106) (cited in this block, not counted here: pow_one [Lean recorded ×3])
        assert ((-(1) + ((p * q) * r)) == ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r));  // hypothesis hk after `ring_nf` (Lean state) // @tac-hyp 3801-3818
        assert ((-(1) + ((p * q) * r)) == ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r)) by {  // sub-goal of `linarith` (Lean state) // @tac 3831-3839
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(p);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
          // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r); (a := p); (a := q)
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3831-3839 exec 819)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + p * q * r - ((-1 : ℤ) + (p - p * q) + (p * q * r - p * r) + (q - q * r) + r)) < (0 : ℤ)`
          cert_identity_62(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_63(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×161 [exec 819 3831-3839]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×114) (cited in this block, not counted here: pow_one [Lean recorded ×3])
          // UNCITED-APPLIED internal ×110 [exec 820 3831-3839]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_overlap_pf_zero ×8 (+30 more heads, ×78)
          // UNCITED-APPLIED internal ×107 [exec 821 3831-3839]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_overlap_pf_zero ×7 (+30 more heads, ×76)
        }
      }
      // have h₁₅ : p * q + p * r + q * r == p + q + r  [type from Lean state]
      assert ((((p * q) + (p * r)) + (q * r)) == ((p + q) + r)) by { // @tac 3909-3985 // @tac 3994-4019 // @tac 4028-4037
        // have h₁₅₁ : p * q * r - 1 == ( p - 1 ) * ( q - 1 ) * ( r - 1 )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (((p - 1) * (q - 1)) * (r - 1))) by { // @tac 3977-3985
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3977-3985 exec 854)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_64(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_65(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 854 3977-3985]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×142 [exec 855 3977-3985]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×110)
          // UNCITED-APPLIED internal ×138 [exec 856 3977-3985]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×106)
          // [TACTIC: linarith]  (not lowered)
        }
        // [TACTIC: ringNF at h₁₅₁ ⊢]  (not lowered)
        assert ((-(1) + ((p * q) * r)) == ((((-(1) + (p - (p * q))) + (((p * q) * r) - (p * r))) + (q - (q * r))) + r));  // hypothesis h₁₅₁ after `ring_nf` (Lean state) // @tac-hyp 3994-4019
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4028-4037 exec 858)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
        cert_identity_66(p, q, r);  // cert: add_lt_of_neg_of_le
        cert_identity_67(p, q, r);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×17 [exec 858 4028-4037]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×151 [exec 859 4028-4037]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×119)
        // UNCITED-APPLIED internal ×149 [exec 860 4028-4037]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+32 more heads, ×117)
        // [TACTIC: nlinarith]  (not lowered)
      }
      // have h₁₆ : p == 2  [type from Lean state]
      assert (p == 2) by { // @tac 4079-4096
        // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 884 4079-4096]
        // by_contra h
        if !((p == 2)) {
          assert false by {  // sub-goal before `have` (Lean state) // @tac 4105-4279 // @tac 4288-4325 // @tac 4334-4371 // @tac 4380-4444 // @tac 4453-4517 // @tac 4526-4590 // @tac 4599-4608
            // have h₁₇ : p >= 3  [type from Lean state]
            assert (p >= 3) by { // @tac 4144-4161
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 908 4144-4161]
              // by_contra h
              if !((p >= 3)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 4172-4209 // @tac 4220-4255 // @tac 4266-4279
                  // have h₁₈ : p <= 2  [type from Lean state]
                  assert (p <= 2) by { // @tac 4201-4209
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4201-4209 exec 925)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_68(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×12 [exec 925 4201-4209]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×60 [exec 926 4201-4209]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₁₉ : p == 2  [type from Lean state]
                  assert (p == 2) by { // @tac 4247-4255
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4247-4255 exec 943)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)`
                    cert_identity_69(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_70(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×20 [exec 943 4247-4255]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
                    // UNCITED-APPLIED internal ×56 [exec 944 4247-4255]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
                    // UNCITED-APPLIED internal ×60 [exec 945 4247-4255]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: contradiction]
                }
                assert false;
              }
            }
            // have h₂₀ : q >= 3  [type from Lean state]
            assert (q >= 3) by { // @tac 4317-4325
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4317-4325 exec 963)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_71(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×14 [exec 963 4317-4325]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×86 [exec 964 4317-4325]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+29 more heads, ×66)
              // UNCITED-APPLIED internal ×5 [exec 965 4317-4325]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₁ : r >= 4  [type from Lean state]
            assert (r >= 4) by { // @tac 4363-4371
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4363-4371 exec 982)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_72(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×17 [exec 982 4363-4371]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×104 [exec 983 4363-4371]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5 (+28 more heads, ×81)
              // UNCITED-APPLIED internal ×5 [exec 984 4363-4371]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₂ :  * q >= 3 * 3  [type from Lean state]
            assert ((p * q) >= (3 * 3)) by { // @tac 4435-4444
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4435-4444 exec 1001)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (3 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (5 > 0)
              if (((1 + 1) - p) <= 0) { cert_piece_73(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_74(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (5 : ℤ) * ((3 : ℤ) - p) + (p * q + (1 : ℤ) - (3 : ℤ) * (3 : ℤ)) + -(…`
              cert_identity_75(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×24 [exec 1001 4435-4444]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×221 [exec 1002 4435-4444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+37 more heads, ×189)
              // UNCITED-APPLIED internal ×5 [exec 1003 4435-4444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1004 4435-4444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1005 4435-4444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₃ :  * r >= 3 * 4  [type from Lean state]
            assert ((p * r) >= (3 * 4)) by { // @tac 4508-4517
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4508-4517 exec 1022)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (3 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (6 > 0)
              if (((1 + 1) - p) <= 0) { cert_piece_76(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_77(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_78(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×6: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) + (6 : ℤ) * ((3 : ℤ) - p) + (p * r + (1 …`
              cert_identity_79(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×29 [exec 1022 4508-4517]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×6, sub_nonpos_of_le ×5, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×239 [exec 1023 4508-4517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+36 more heads, ×207)
              // UNCITED-APPLIED internal ×5 [exec 1024 4508-4517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1025 4508-4517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1026 4508-4517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1027 4508-4517]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₄ :  * r >= 3 * 4  [type from Lean state]
            assert ((q * r) >= (3 * 4)) by { // @tac 4581-4590
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4581-4590 exec 1044)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(41 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (41 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(29 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (29 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((p + 1) - q))); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_80(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_81(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))) == 0) { assert ((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) == 0); }  // cert: Linarith.mul_zero_eq
              if (((1 + 1) - p) <= 0) && ((3 - p) <= 0) { cert_piece_82(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((3 * 3) - (p * q)) <= 0) { cert_piece_83(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((3 * 4) - (p * r)) <= 0) { cert_piece_84(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(41 : ℤ) * (-1 : ℤ) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((0 : ℤ) + (1 : ℤ) - (p - (1 : ℤ)) * …`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(41 : ℤ) * (-1 : ℤ) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((0 : ℤ) + (1 : ℤ) - (p - (1 : ℤ)) * …`
              cert_identity_85(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×36 [exec 1044 4581-4590]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×7, neg_nonpos_of_nonneg ×5, mul_nonneg_of_nonpos_of_nonpos ×5, Int.add_one_le_iff ×4, add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×242 [exec 1045 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×210)
              // UNCITED-APPLIED internal ×5 [exec 1046 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1047 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1048 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1049 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1050 4581-4590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4599-4608 exec 1051)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (25 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(8 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (8 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((1 : ℤ) + (1 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((1 + 1) - p))); (2 > 0)
            if (((1 + 1) - p) <= 0) { cert_piece_86(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((p + 1) - q))); (2 > 0)
            if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_87(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_88(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×6: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(25 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ))…`
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(25 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_89(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×29 [exec 1051 4599-4608]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×242 [exec 1052 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×210)
            // UNCITED-APPLIED internal ×5 [exec 1053 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1054 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1055 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1056 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1057 4599-4608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          assert false;
        }
      }
      // have h₁₇ : q == 3  [type from Lean state]
      assert (q == 3) by { // @tac 4650-4667
        // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1081 4650-4667]
        // by_contra h
        if !((q == 3)) {
          assert false by {  // sub-goal before `have` (Lean state) // @tac 4676-4850 // @tac 4859-4894 // @tac 4903-4967 // @tac 4976-5040 // @tac 5049-5113 // @tac 5122-5131
            // have h₁₈ : q >= 4  [type from Lean state]
            assert (q >= 4) by { // @tac 4715-4732
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1105 4715-4732]
              // by_contra h
              if !((q >= 4)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 4743-4780 // @tac 4791-4826 // @tac 4837-4850
                  // have h₁₉ : q <= 3  [type from Lean state]
                  assert (q <= 3) by { // @tac 4772-4780
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4772-4780 exec 1122)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (q + (1 : ℤ) - (4 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_90(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×12 [exec 1122 4772-4780]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×60 [exec 1123 4772-4780]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₂₀ : q == 3  [type from Lean state]
                  assert (q == 3) by { // @tac 4818-4826
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4818-4826 exec 1140)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                    cert_identity_91(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_92(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×23 [exec 1140 4818-4826]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×5, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
                    // UNCITED-APPLIED internal ×74 [exec 1141 4818-4826]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                    // UNCITED-APPLIED internal ×60 [exec 1142 4818-4826]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: contradiction]
                }
                assert false;
              }
            }
            // have h₂₁ : p == 2  [type from Lean state]
            assert (p == 2) by { // @tac 4886-4894
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4886-4894 exec 1160)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p - (2 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_93(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_94(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×18 [exec 1160 4886-4894]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×56 [exec 1161 4886-4894]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
              // UNCITED-APPLIED internal ×55 [exec 1162 4886-4894]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₂ :  * q >= 2 * 4  [type from Lean state]
            assert ((p * q) >= (2 * 4)) by { // @tac 4958-4967
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4958-4967 exec 1179)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (3 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((4 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((4 - q) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) { cert_piece_95(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_96(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * ((4 : ℤ) - q) + (p * q + (1 : ℤ) - (2 : ℤ) * (4 : ℤ)) + -(((1 …`
              cert_identity_97(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×23 [exec 1179 4958-4967]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×217 [exec 1180 4958-4967]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+37 more heads, ×185)
              // UNCITED-APPLIED internal ×5 [exec 1181 4958-4967]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1182 4958-4967]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₃ :  * r >= 2 * 4  [type from Lean state]
            assert ((p * r) >= (2 * 4)) by { // @tac 5031-5040
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5031-5040 exec 1199)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (3 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_98(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((2 : ℤ) * (4 : ℤ) - p * q) + (p * r + (1 …`
              cert_identity_99(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×21 [exec 1199 5031-5040]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
              // UNCITED-APPLIED internal ×200 [exec 1200 5031-5040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×168)
              // UNCITED-APPLIED internal ×5 [exec 1201 5031-5040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1202 5031-5040]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₄ :  * r >= 4 * 4  [type from Lean state]
            assert ((q * r) >= (4 * 4)) by { // @tac 5104-5113
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5104-5113 exec 1219)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(16 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (16 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(16 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (16 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((4 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((4 - q) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_100(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_101(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))) == 0) { assert ((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) == 0); }  // cert: Linarith.mul_zero_eq
              if (((1 + 1) - p) <= 0) && (((2 * 4) - (p * q)) <= 0) { cert_piece_102(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((2 * 4) - (p * r)) <= 0) { cert_piece_103(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(16 : ℤ) * (-1 : ℤ) + (16 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((0 : ℤ) + (1 : ℤ) - (p - (1 :…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(16 : ℤ) * (-1 : ℤ) + (16 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((0 : ℤ) + (1 : ℤ) - (p - (1 :…`
              cert_identity_104(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×33 [exec 1219 5104-5113]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×7, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×4, mul_nonneg_of_nonpos_of_nonpos ×4, add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×229 [exec 1220 5104-5113]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×197)
              // UNCITED-APPLIED internal ×5 [exec 1221 5104-5113]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1222 5104-5113]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1223 5104-5113]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1224 5104-5113]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5122-5131 exec 1225)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(23 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (23 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (3 > 0)
            if (((1 + 1) - p) <= 0) { cert_piece_105(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_106(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_107(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×6: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(23 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (q + (1 : ℤ) - r) + (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1…`
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(23 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (q + (1 : ℤ) - r) + (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_108(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×26 [exec 1225 5122-5131]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
            // UNCITED-APPLIED internal ×232 [exec 1226 5122-5131]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×200)
            // UNCITED-APPLIED internal ×5 [exec 1227 5122-5131]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1228 5122-5131]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          assert false;
        }
      }
      // have h₁₈ : r == 4  [type from Lean state]
      assert (r == 4) by { // @tac 5173-5190
        // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1252 5173-5190]
        // by_contra h
        if !((r == 4)) {
          assert false by {  // sub-goal before `have` (Lean state) // @tac 5199-5373 // @tac 5382-5417 // @tac 5426-5461 // @tac 5470-5534 // @tac 5543-5607 // @tac 5616-5680 // @tac 5689-5698
            // have h₁₉ : r >= 5  [type from Lean state]
            assert (r >= 5) by { // @tac 5238-5255
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1276 5238-5255]
              // by_contra h
              if !((r >= 5)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 5266-5303 // @tac 5314-5349 // @tac 5360-5373
                  // have h₂₀ : r <= 4  [type from Lean state]
                  assert (r <= 4) by { // @tac 5295-5303
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5295-5303 exec 1293)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (r + (1 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_109(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×12 [exec 1293 5295-5303]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×60 [exec 1294 5295-5303]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₂₁ : r == 4  [type from Lean state]
                  assert (r == 4) by { // @tac 5341-5349
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5341-5349 exec 1311)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
                    cert_identity_110(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_111(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×26 [exec 1311 5341-5349]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×6, sub_nonpos_of_le ×6, Int.add_one_le_iff ×6, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
                    // UNCITED-APPLIED internal ×93 [exec 1312 5341-5349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
                    // UNCITED-APPLIED internal ×60 [exec 1313 5341-5349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: contradiction]
                }
                assert false;
              }
            }
            // have h₂₂ : p == 2  [type from Lean state]
            assert (p == 2) by { // @tac 5409-5417
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5409-5417 exec 1331)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p - (2 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_112(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_113(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×18 [exec 1331 5409-5417]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×56 [exec 1332 5409-5417]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
              // UNCITED-APPLIED internal ×55 [exec 1333 5409-5417]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₃ : q == 3  [type from Lean state]
            assert (q == 3) by { // @tac 5453-5461
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5453-5461 exec 1350)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (q - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_114(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_115(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×21 [exec 1350 5453-5461]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×74 [exec 1351 5453-5461]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
              // UNCITED-APPLIED internal ×55 [exec 1352 5453-5461]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₄ :  * q >= 2 * 3  [type from Lean state]
            assert ((p * q) >= (2 * 3)) by { // @tac 5525-5534
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5525-5534 exec 1369)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (5 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) { cert_piece_116(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_117(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + (p * q + (1 : ℤ) - (2 : ℤ) * (3 : ℤ)) + -(…`
              cert_identity_118(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×22 [exec 1369 5525-5534]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×215 [exec 1370 5525-5534]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+37 more heads, ×183)
              // UNCITED-APPLIED internal ×5 [exec 1371 5525-5534]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1372 5525-5534]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₅ :  * r >= 2 * 5  [type from Lean state]
            assert ((p * r) >= (2 * 5)) by { // @tac 5598-5607
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5598-5607 exec 1389)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℤ) * (q - (3 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((q - 3) == 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((5 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((5 - r) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_119(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q - (3 : ℤ)) + (2 : ℤ) * ((5 : ℤ) - r) + ((2 : ℤ) * (3 : ℤ) - p * q) + …`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_120(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×24 [exec 1389 5598-5607]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_eq ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×217 [exec 1390 5598-5607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×8 (+35 more heads, ×185)
              // UNCITED-APPLIED internal ×5 [exec 1391 5598-5607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1392 5598-5607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₆ :  * r >= 3 * 5  [type from Lean state]
            assert ((q * r) >= (3 * 5)) by { // @tac 5671-5680
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5671-5680 exec 1409)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(14 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (14 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(17 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (17 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_121(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))) == 0) { assert ((((1 + 1) - p) * ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) == 0); }  // cert: Linarith.mul_zero_eq
              if (((1 + 1) - p) <= 0) && (((2 * 3) - (p * q)) <= 0) { cert_piece_122(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((2 * 5) - (p * r)) <= 0) { cert_piece_123(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×6: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(14 : ℤ) * (-1 : ℤ) + (17 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + ((0 : ℤ) + (1 : ℤ) - (p - (1 :…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(14 : ℤ) * (-1 : ℤ) + (17 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + ((0 : ℤ) + (1 : ℤ) - (p - (1 :…`
              cert_identity_124(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×28 [exec 1409 5671-5680]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×5, add_lt_of_neg_of_le ×3, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×238 [exec 1410 5671-5680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×206)
              // UNCITED-APPLIED internal ×5 [exec 1411 5671-5680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1412 5671-5680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 1413 5671-5680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5689-5698 exec 1414)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(42 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (42 > 0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℤ) * (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1)))) == 0); (2 > 0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℤ) * (q - (3 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((q - 3) == 0); (4 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((2 : ℤ) * (3 : ℤ) - p * q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2 * 3) - (p * q)) <= 0); (3 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((3 : ℤ) * (5 : ℤ) - q * r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((3 * 5) - (q * r)) <= 0); (2 > 0)
            if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_125(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(42 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (p …`
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(42 : ℤ) * (-1 : ℤ) + (2 : ℤ) * (p * q * r - (1 : ℤ) - (1 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (p …`
            cert_identity_126(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×25 [exec 1414 5689-5698]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×5, sub_eq_zero_of_eq ×3, add_lt_of_neg_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×3, Linarith.mul_eq ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×234 [exec 1415 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+35 more heads, ×202)
            // UNCITED-APPLIED internal ×5 [exec 1416 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1417 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1418 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1419 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 1420 5689-5698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: nlinarith]  (not lowered)
          }
          assert false;
        }
      }
      // [TACTIC: Exfalso]
      assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 5719-5799 // @tac 5719-5786
        // [TACTIC: «_<;>_» [ h₁₆ , h₁₇ , h₁₈ ] at h₁₄ h₁₅ hk h₀ ⊢ <;> linarith]
        // [TACTIC: normNum [ h₁₆ , h₁₇ , h₁₈ ] at h₁₄ h₁₅ hk h₀ ⊢]
        // UNCITED-APPLIED internal ×52 [exec 1428 5719-5786]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Eq.trans ×7, Mathlib.Meta.NormNum.IsNat.to_eq ×6 (+7 more heads, ×22)
        // `norm_num` closed the goal; the rest of the chain did not run
      }
      assert ((((p == 2) && (q == 4)) && (r == 8)) || (((p == 3) && (q == 5)) && (r == 15)));  // sub-goal of `rcases` (Lean state) // @tac 3705-5799 // @tac 3728-3839 // @tac 3846-4037 // @tac 4044-4608 // @tac 4615-5131 // @tac 5138-5698 // @tac 5705-5712
    }
    if (k == 2) && (((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1))))) && ((2 > 0)) && ((2 <= 3)) {  // sub-goal of `rcases` (Lean state)
      // have h₁₄ : p * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
      assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 5906-5944 // @tac 5906-5923
        // [TACTIC: «_<;>_» at hk ⊢ <;> linarith]
        // [TACTIC: ringNF at hk ⊢]
        IntPowOne(p);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
        // UNCITED-APPLIED internal ×157 [exec 1460 5906-5923]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×122) (cited in this block, not counted here: pow_one [Lean recorded ×3])
        assert ((-(1) + ((p * q) * r)) == ((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2)));  // hypothesis hk after `ring_nf` (Lean state) // @tac-hyp 5906-5923
        assert ((-(1) + ((p * q) * r)) == ((((-(2) + ((p * 2) - ((p * q) * 2))) + ((((p * q) * r) * 2) - ((p * r) * 2))) + ((q * 2) - ((q * r) * 2))) + (r * 2))) by {  // sub-goal of `linarith` (Lean state) // @tac 5936-5944
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(p);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5936-5944 exec 1469)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + p * q * r - ((-2 : ℤ) + (p * (2 : ℤ) - p * q * (2 : ℤ)) + (p * q * r * (2 : ℤ) - p * r * (2 : ℤ…`
          cert_identity_127(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_128(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×171 [exec 1469 5936-5944]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, mul_one ×1; machinery/glue: Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×126) (cited in this block, not counted here: pow_one [Lean recorded ×3])
          // UNCITED-APPLIED internal ×160 [exec 1470 5936-5944]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×128)
          // UNCITED-APPLIED internal ×163 [exec 1471 5936-5944]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×131)
        }
      }
      // have h₁₅ : p == 3  [type from Lean state]
      assert (p == 3) by { // @tac 5986-6003
        // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1495 5986-6003]
        // by_contra h
        if !((p == 3)) {
          assert false by {  // sub-goal before `have` (Lean state) // @tac 6012-6046 // @tac 6114-8641 // @tac 8650-8688 // @tac 8697-8735 // @tac 8744-8786 // @tac 8795-8837 // @tac 8846-8888 // @tac 8897-8951 // @tac 8960-9014 // @tac 9023-9077 // @tac 9086-9148 // @tac 9157-9244 // @tac 9253-9295 // @tac 9304-9346 // @tac 9355-9397 // @tac 9406-9493 // @tac 9502-9834 // @tac 9843-9856
            // have h₁₆ : p != 3  [type from Lean state]
            assert (p != 3); // @tac 6041-6046
              // [TACTIC: tauto]  (not lowered)
            // have h₁₇ : p >= 4  [type from Lean state]
            assert (p >= 4) by { // @tac 6153-6170
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1538 6153-6170]
              // by_contra h
              if !((p >= 4)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 6181-6218 // @tac 6229-6403 // @tac 6414-6446 // @tac 6457-6494 // @tac 6505-6542 // @tac 6553-6607 // @tac 6618-6672 // @tac 6683-6737 // @tac 6748-6810 // @tac 6821-6908 // @tac 6919-6959 // @tac 6970-7012 // @tac 7023-7065 // @tac 7076-7163 // @tac 7174-7214 // @tac 7225-7267 // @tac 7278-7320 // @tac 7331-7418 // @tac 7429-8617 // @tac 8628-8641
                  // have h₁₈ : p <= 3  [type from Lean state]
                  assert (p <= 3) by { // @tac 6210-6218
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6210-6218 exec 1555)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - (4 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_129(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×12 [exec 1555 6210-6218]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×60 [exec 1556 6210-6218]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₁₉ : p == 2  [type from Lean state]
                  assert (p == 2) by { // @tac 6268-6285
                    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1580 6268-6285]
                    // by_contra h
                    if !((p == 2)) {
                      assert false by {  // sub-goal before `have` (Lean state) // @tac 6298-6332 // @tac 6345-6377 // @tac 6390-6403
                        // have h₂₀ : p >= 3  [type from Lean state]
                        assert (p >= 3); // @tac 6327-6332
                          // [TACTIC: omega]
                          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                          // UNCITED-APPLIED internal ×53 [exec 1597 6327-6332]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×5, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×5, Int.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×7, Lean.Omega.Constraint.addInequality_sat ×5, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+10 more heads, ×15)
                        // have h₂₁ : p == 3  [type from Lean state]
                        assert (p == 3); // @tac 6372-6377
                          // [TACTIC: omega]
                          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                          // UNCITED-APPLIED internal ×50 [exec 1614 6372-6377]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×5, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×4, Int.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×7, Lean.Omega.Constraint.addInequality_sat ×5, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+10 more heads, ×13)
                        // [TACTIC: contradiction]
                      }
                      assert false;
                    }
                  }
                  // have h₂₂ : p == 2  [type from Lean state]
                  assert (p == 2); // @tac 6441-6446
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×33 [exec 1632 6441-6446]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×6, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3, Lean.Omega.combo_sat' ×2 (+10 more heads, ×11)
                  // have h₂₃ : q >= 3  [type from Lean state]
                  assert (q >= 3) by { // @tac 6486-6494
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6486-6494 exec 1649)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                    cert_identity_130(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×14 [exec 1649 6486-6494]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×74 [exec 1650 6486-6494]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₂₄ : r >= 4  [type from Lean state]
                  assert (r >= 4) by { // @tac 6534-6542
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6534-6542 exec 1667)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) < (0 : ℤ)`
                    cert_identity_131(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×17 [exec 1667 6534-6542]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×93 [exec 1668 6534-6542]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_overlap ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+25 more heads, ×70)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₂₅ :  * q >= 2 * 3  [type from Lean state]
                  assert ((p * q) >= (2 * 3)) by { // @tac 6598-6607
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6598-6607 exec 1685)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (5 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
                    if (((1 + 1) - p) <= 0) { cert_piece_132(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                    if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_133(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (p + (1 : ℤ) - q) + (p * q + (1 : ℤ) - (2 : ℤ) * (3 : ℤ)) + -(…`
                    cert_identity_134(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×22 [exec 1685 6598-6607]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×215 [exec 1686 6598-6607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+37 more heads, ×183)
                    // UNCITED-APPLIED internal ×5 [exec 1687 6598-6607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1688 6598-6607]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: nlinarith]  (not lowered)
                  }
                  // have h₂₆ :  * r >= 2 * 4  [type from Lean state]
                  assert ((p * r) >= (2 * 4)) by { // @tac 6663-6672
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6663-6672 exec 1705)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                    if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_135(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((2 : ℤ) * (3 : ℤ) - p * q) + (p * r + (1 : ℤ) - (2 …`
                    cert_identity_136(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×20 [exec 1705 6663-6672]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
                    // UNCITED-APPLIED internal ×199 [exec 1706 6663-6672]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+35 more heads, ×167)
                    // UNCITED-APPLIED internal ×5 [exec 1707 6663-6672]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: nlinarith]  (not lowered)
                  }
                  // have h₂₇ :  * r >= 3 * 4  [type from Lean state]
                  assert ((q * r) >= (3 * 4)) by { // @tac 6728-6737
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6728-6737 exec 1724)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℤ) * (p - (2 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((p - 2) == 0); (6 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((1 : ℤ) + (1 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((1 + 1) - p))); (2 > 0)
                    if (((1 + 1) - p) <= 0) { cert_piece_137(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((p + 1) - q))); (2 > 0)
                    if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_138(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_139(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    if (((1 + 1) - p) <= 0) && ((((q * r) + 1) - (3 * 4)) <= 0) { cert_piece_140(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×5: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (6 : ℤ) * (p …`
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (6 : ℤ) * (p …`
                    cert_identity_141(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×33 [exec 1724 6728-6737]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×6, neg_nonpos_of_nonneg ×4, mul_nonneg_of_nonpos_of_nonpos ×4, Int.add_one_le_iff ×4, add_lt_of_neg_of_le ×3, sub_eq_zero_of_eq ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×237 [exec 1725 6728-6737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+35 more heads, ×205)
                    // UNCITED-APPLIED internal ×5 [exec 1726 6728-6737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1727 6728-6737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1728 6728-6737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1729 6728-6737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: nlinarith]  (not lowered)
                  }
                  // have h₂₈ :  * q * r >= 2 * 3 * 4  [type from Lean state]
                  assert (((p * q) * r) >= ((2 * 3) * 4)) by { // @tac 6801-6810
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6801-6810 exec 1746)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (12 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (5 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((3 : ℤ) * (4 : ℤ) - q * r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((3 * 4) - (q * r)) <= 0); (2 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((1 : ℤ) + (1 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((1 + 1) - p))); (2 > 0)
                    if (((1 + 1) - p) <= 0) { cert_piece_142(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((p + 1) - q))); (2 > 0)
                    if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_143(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_144(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(12 : ℤ) * (-1 : ℤ) + (5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ…`
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(12 : ℤ) * (-1 : ℤ) + (5 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_145(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×32 [exec 1746 6801-6810]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×7, add_lt_of_neg_of_le ×4, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
                    // UNCITED-APPLIED internal ×243 [exec 1747 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×211)
                    // UNCITED-APPLIED internal ×5 [exec 1748 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1749 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1750 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1751 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 1752 6801-6810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: nlinarith]  (not lowered)
                  }
                  // have h₂₉ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                  assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 6900-6908
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6900-6908 exec 1769)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                    cert_identity_146(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_147(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×17 [exec 1769 6900-6908]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×169 [exec 1770 6900-6908]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
                    // UNCITED-APPLIED internal ×172 [exec 1771 6900-6908]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₃₀ :  == 2  [type from Lean state]
                  assert (p == 2); // @tac 6954-6959
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×33 [exec 1788 6954-6959]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×6, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3, Lean.Omega.combo_sat' ×2 (+10 more heads, ×11)
                  // have h₃₁ :  >= 3  [type from Lean state]
                  assert (q >= 3); // @tac 7007-7012
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×21 [exec 1805 7007-7012]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                  // have h₃₂ :  >= 4  [type from Lean state]
                  assert (r >= 4); // @tac 7060-7065
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×21 [exec 1822 7060-7065]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                  // have h₃₃ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                  assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 7155-7163
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7155-7163 exec 1839)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                    cert_identity_148(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_149(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×17 [exec 1839 7155-7163]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×169 [exec 1840 7155-7163]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
                    // UNCITED-APPLIED internal ×172 [exec 1841 7155-7163]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₃₄ :  == 2  [type from Lean state]
                  assert (p == 2); // @tac 7209-7214
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×33 [exec 1858 7209-7214]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×6, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3, Lean.Omega.combo_sat' ×2 (+10 more heads, ×11)
                  // have h₃₅ :  >= 3  [type from Lean state]
                  assert (q >= 3); // @tac 7262-7267
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×21 [exec 1875 7262-7267]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                  // have h₃₆ :  >= 4  [type from Lean state]
                  assert (r >= 4); // @tac 7315-7320
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×21 [exec 1892 7315-7320]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                  // have h₃₇ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                  assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 7410-7418
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7410-7418 exec 1909)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                    cert_identity_150(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_151(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×17 [exec 1909 7410-7418]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×169 [exec 1910 7410-7418]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
                    // UNCITED-APPLIED internal ×172 [exec 1911 7410-7418]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₃₈ : False  [type from Lean state]
                  assert false by { // @tac 7468-7508 // @tac 7521-7563 // @tac 7576-7618 // @tac 7631-7718 // @tac 7731-7893 // @tac 7906-8016 // @tac 8029-8139 // @tac 8152-8268 // @tac 8281-8348 // @tac 8361-8408 // @tac 8421-8463 // @tac 8476-8518 // @tac 8531-8596 // @tac 8609-8617
                    // have h₃₉ :  == 2  [type from Lean state]
                    assert (p == 2); // @tac 7503-7508
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×33 [exec 1944 7503-7508]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×6, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3, Lean.Omega.combo_sat' ×2 (+10 more heads, ×11)
                    // have h₄₀ :  >= 3  [type from Lean state]
                    assert (q >= 3); // @tac 7558-7563
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×21 [exec 1961 7558-7563]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                    // have h₄₁ :  >= 4  [type from Lean state]
                    assert (r >= 4); // @tac 7613-7618
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×21 [exec 1978 7613-7618]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
                    // have h₄₂ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                    assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 7710-7718
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7710-7718 exec 1995)
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                      cert_identity_152(p, q, r);  // cert: add_lt_of_neg_of_le
                      cert_identity_153(p, q, r);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×17 [exec 1995 7710-7718]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                      // UNCITED-APPLIED internal ×169 [exec 1996 7710-7718]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
                      // UNCITED-APPLIED internal ×172 [exec 1997 7710-7718]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
                      // [TACTIC: linarith]  (not lowered)
                    }
                    // have h₄₃ : 2 * q * r - 1 == 2 * ( 1 * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                    assert ((((2 * q) * r) - 1) == (2 * ((1 * (q - 1)) * (r - 1)))) by { // @tac 7810-7893 // @tac 7810-7880 // @tac 7810-7839
                      // [TACTIC: «_<;>_» [ h₃₉ ] at h₄₂ ⊢ <;> ring_nf at h₄₂ ⊢ <;> linarith]
                      // [TACTIC: simp [ h₃₉ ] at h₄₂ ⊢]
                      // UNCITED-APPLIED internal ×2 [exec 2024 7810-7839]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×1
                      assert ((((2 * q) * r) - 1) == (2 * ((q - 1) * (r - 1))));  // hypothesis h₄₂ after `simp` (Lean state) // @tac-hyp 7810-7839
                      assert ((((2 * q) * r) - 1) == (2 * ((q - 1) * (r - 1)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 7858-7880
                        IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
                        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
                        assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))));  // hypothesis h₄₂ after `ring_nf` (Lean state) // @tac-hyp 7858-7880
                        assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2)))) by {  // sub-goal of `linarith` (Lean state) // @tac 7885-7893
                          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
                          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7885-7893 exec 2042)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                          // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                          cert_identity_154(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                          // UNCITED-APPLIED internal ×146 [exec 2042 7885-7893]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, add_zero ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, one_mul ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+39 more heads, ×99) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                          // UNCITED-APPLIED internal ×202 [exec 2043 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+36 more heads, ×170)
                          // UNCITED-APPLIED internal ×5 [exec 2044 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2045 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2046 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2047 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×202 [exec 2048 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+36 more heads, ×170)
                          // UNCITED-APPLIED internal ×5 [exec 2049 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2050 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2051 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×5 [exec 2052 7885-7893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        }
                        // UNCITED-APPLIED internal ×124 [exec 2033 7858-7880]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+33 more heads, ×90) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                      }
                    }
                    // have h₄₄ : 2 * q * r - 1 == 2 * ( ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
                    assert ((((2 * q) * r) - 1) == (2 * ((q - 1) * (r - 1)))) by { // @tac 7981-8016 // @tac 7981-8003
                      // [TACTIC: «_<;>_» at h₄₃ ⊢ <;> linarith]
                      // [TACTIC: ringNF at h₄₃ ⊢]
                      IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
                      IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×124 [exec 2074 7981-8003]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+33 more heads, ×90) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))));  // hypothesis h₄₃ after `ring_nf` (Lean state) // @tac-hyp 7981-8003
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2)))) by {  // sub-goal of `linarith` (Lean state) // @tac 8008-8016
                        // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
                        // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8008-8016 exec 2083)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                        // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                        cert_identity_155(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                        // UNCITED-APPLIED internal ×151 [exec 2083 8008-8016]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, add_zero ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+39 more heads, ×105) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                        // UNCITED-APPLIED internal ×202 [exec 2084 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+36 more heads, ×170)
                        // UNCITED-APPLIED internal ×5 [exec 2085 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2086 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2087 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2088 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×202 [exec 2089 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+36 more heads, ×170)
                        // UNCITED-APPLIED internal ×5 [exec 2090 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2091 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2092 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2093 8008-8016]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      }
                    }
                    // have h₄₅ : 2 * q * r - 1 == 2 * ( q * r - q - r + 1 )  [type from Lean state]
                    assert ((((2 * q) * r) - 1) == (2 * ((((q * r) - q) - r) + 1))) by { // @tac 8104-8139 // @tac 8104-8126
                      // [TACTIC: «_<;>_» at h₄₄ ⊢ <;> linarith]
                      // [TACTIC: ringNF at h₄₄ ⊢]
                      IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
                      IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×112 [exec 2115 8104-8126]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×7, Mathlib.Tactic.Ring.mul_add ×7 (+33 more heads, ×80) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))));  // hypothesis h₄₄ after `ring_nf` (Lean state) // @tac-hyp 8104-8126
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2)))) by {  // sub-goal of `linarith` (Lean state) // @tac 8131-8139
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8131-8139 exec 2124)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                        // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                        cert_identity_156(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                        // UNCITED-APPLIED internal ×21 [exec 2124 8131-8139]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
                        // UNCITED-APPLIED internal ×215 [exec 2125 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                        // UNCITED-APPLIED internal ×5 [exec 2126 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2127 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2128 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2129 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×215 [exec 2130 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                        // UNCITED-APPLIED internal ×5 [exec 2131 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2132 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2133 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2134 8131-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      }
                    }
                    // have h₄₆ : 2 * q * r - 1 == 2 * q * r - 2 * q - 2 * r + 2  [type from Lean state]
                    assert ((((2 * q) * r) - 1) == (((((2 * q) * r) - (2 * q)) - (2 * r)) + 2)) by { // @tac 8233-8268 // @tac 8233-8255
                      // [TACTIC: «_<;>_» at h₄₅ ⊢ <;> linarith]
                      // [TACTIC: ringNF at h₄₅ ⊢]
                      IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
                      IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×91 [exec 2156 8233-8255]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×62) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2))));  // hypothesis h₄₅ after `ring_nf` (Lean state) // @tac-hyp 8233-8255
                      assert ((-(1) + ((q * r) * 2)) == ((2 - (q * 2)) + (((q * r) * 2) - (r * 2)))) by {  // sub-goal of `linarith` (Lean state) // @tac 8260-8268
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8260-8268 exec 2165)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                        // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                        cert_identity_157(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                        // UNCITED-APPLIED internal ×21 [exec 2165 8260-8268]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
                        // UNCITED-APPLIED internal ×215 [exec 2166 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                        // UNCITED-APPLIED internal ×5 [exec 2167 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2168 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2169 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2170 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×215 [exec 2171 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                        // UNCITED-APPLIED internal ×5 [exec 2172 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2173 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2174 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×5 [exec 2175 8260-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      }
                    }
                    // have h₄₇ : - 1 == - 2 * q - 2 * r + 2  [type from Lean state]
                    assert (-(1) == (((-(2) * q) - (2 * r)) + 2)) by { // @tac 8340-8348
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8340-8348 exec 2192)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                      cert_identity_158(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                      // UNCITED-APPLIED internal ×21 [exec 2192 8340-8348]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
                      // UNCITED-APPLIED internal ×215 [exec 2193 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                      // UNCITED-APPLIED internal ×5 [exec 2194 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2195 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2196 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2197 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×215 [exec 2198 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                      // UNCITED-APPLIED internal ×5 [exec 2199 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2200 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2201 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2202 8340-8348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // [TACTIC: linarith]  (not lowered)
                    }
                    // have h₄₈ : 2 * q + 2 * r == 3  [type from Lean state]
                    assert (((2 * q) + (2 * r)) == 3) by { // @tac 8400-8408
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8400-8408 exec 2219)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                      cert_identity_159(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                      // UNCITED-APPLIED internal ×21 [exec 2219 8400-8408]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
                      // UNCITED-APPLIED internal ×215 [exec 2220 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                      // UNCITED-APPLIED internal ×5 [exec 2221 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2222 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2223 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2224 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×215 [exec 2225 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                      // UNCITED-APPLIED internal ×5 [exec 2226 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2227 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2228 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2229 8400-8408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // [TACTIC: linarith]  (not lowered)
                    }
                    // have h₄₉ :  >= 3  [type from Lean state]
                    assert (q >= 3); // @tac 8458-8463
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×34 [exec 2246 8458-8463]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×4; machinery/glue: Eq.symm ×26, Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.LinearCombo.coordinate_eval_9 ×1 (+1 more heads, ×1)
                    // have h₅₀ :  >= 4  [type from Lean state]
                    assert (r >= 4); // @tac 8513-8518
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×34 [exec 2263 8513-8518]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×4; machinery/glue: Eq.symm ×26, Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.LinearCombo.coordinate_eval_9 ×1 (+1 more heads, ×1)
                    // have h₅₁ : 2 * q + 2 * r >= 14  [type from Lean state]
                    assert (((2 * q) + (2 * r)) >= 14) by { // @tac 8587-8596
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8587-8596 exec 2280)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                      cert_identity_160(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                      // UNCITED-APPLIED internal ×20 [exec 2280 8587-8596]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (+1 more heads, ×1)
                      // UNCITED-APPLIED internal ×215 [exec 2281 8587-8596]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                      // UNCITED-APPLIED internal ×5 [exec 2282 8587-8596]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2283 8587-8596]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2284 8587-8596]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 2285 8587-8596]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // [TACTIC: nlinarith]  (not lowered)
                    }
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8609-8617 exec 2286)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1 + 1) - p) <= 0); (4 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (4 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(11 : ℤ) * (-1 : ℤ) + (4 : ℤ) * ((1 : ℤ) + (1 : ℤ) - p) + (4 : ℤ) * (p + (1 : ℤ) - q) + (2 : ℤ) * (q + (1 : ℤ) - r) < (…`
                    cert_identity_161(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×19 [exec 2286 8609-8617]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×215 [exec 2287 8609-8617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.add_mul ×8 (+36 more heads, ×183)
                    // UNCITED-APPLIED internal ×5 [exec 2288 8609-8617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 2289 8609-8617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 2290 8609-8617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 2291 8609-8617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: exact h₃₈]
                  assert false;
                }
                assert false;
              }
            }
            // have h₁₉ : q >= p + 1  [type from Lean state]
            assert (q >= (p + 1)); // @tac 8683-8688
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×30 [exec 2309 8683-8688]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×6, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.Int.add_congr ×2 (+10 more heads, ×12)
            // have h₂₀ : r >= q + 1  [type from Lean state]
            assert (r >= (q + 1)); // @tac 8730-8735
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×30 [exec 2326 8730-8735]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×6, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.Int.add_congr ×2 (+10 more heads, ×12)
            // have h₂₁ :  >= 4  [type from Lean state]
            assert (p >= 4); // @tac 8781-8786
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×24 [exec 2343 8781-8786]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+9 more heads, ×9)
            // have h₂₂ :  >= 5  [type from Lean state]
            assert (q >= 5); // @tac 8832-8837
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×45 [exec 2360 8832-8837]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×8, Lean.Omega.Constraint.addInequality_sat ×4, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+11 more heads, ×15)
            // have h₂₃ :  >= 6  [type from Lean state]
            assert (r >= 6); // @tac 8883-8888
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×45 [exec 2377 8883-8888]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×8, Lean.Omega.Constraint.addInequality_sat ×4, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+11 more heads, ×15)
            // have h₂₄ :  * q >= 4 * 5  [type from Lean state]
            assert ((p * q) >= (4 * 5)) by { // @tac 8942-8951
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8942-8951 exec 2394)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(7 : ℤ) * ((4 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((4 - p) <= 0); (7 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_162(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && ((4 - p) <= 0) { cert_piece_163(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (7 : ℤ) * ((4 : ℤ) - p) + (p * q + (1 : ℤ) - (4 : ℤ) * (5 : ℤ)) + -(((1 : ℤ) +…`
              cert_identity_164(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×23 [exec 2394 8942-8951]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×217 [exec 2395 8942-8951]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+37 more heads, ×185)
              // UNCITED-APPLIED internal ×5 [exec 2396 8942-8951]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2397 8942-8951]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₅ :  * r >= 4 * 6  [type from Lean state]
            assert ((p * r) >= (4 * 6)) by { // @tac 9005-9014
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9005-9014 exec 2414)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_165(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((4 : ℤ) - p) + ((4 : ℤ) * (5 : ℤ) - p * q) + (p * r + (1 : ℤ) - (4 : ℤ) * (6 …`
              cert_identity_166(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×21 [exec 2414 9005-9014]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
              // UNCITED-APPLIED internal ×200 [exec 2415 9005-9014]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_mul ×8 (+35 more heads, ×168)
              // UNCITED-APPLIED internal ×5 [exec 2416 9005-9014]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₆ :  * r >= 5 * 6  [type from Lean state]
            assert ((q * r) >= (5 * 6)) by { // @tac 9068-9077
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9068-9077 exec 2433)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(14 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (14 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(71 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (71 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(33 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (33 > 0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℤ) * (p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))) == 0); (9 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * (q * r + (1 : ℤ) - (5 : ℤ) * (6 : ℤ)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((q * r) + 1) - (5 * 6)) <= 0); (5 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(46 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((p + 1) - q))); (46 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_167(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(23 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (q + (1 : ℤ) - r)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((q + 1) - r))); (23 > 0)
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_168(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(41 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((4 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * (4 - p))); (41 > 0)
              if (((1 + 1) - p) <= 0) && ((4 - p) <= 0) { cert_piece_169(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * (q * r + (1 : ℤ) - (5 : ℤ) * (6 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * (((q * r) + 1) - (5 * 6)))); (9 > 0)
              if (((1 + 1) - p) <= 0) && ((((q * r) + 1) - (5 * 6)) <= 0) { cert_piece_170(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * -((p + (1 : ℤ) - q) * (p + (1 : ℤ) - q)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((p + 1) - q) * ((p + 1) - q))); (5 > 0)
              if (((p + 1) - q) <= 0) { cert_piece_171(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * -((p + (1 : ℤ) - q) * (q + (1 : ℤ) - r)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((p + 1) - q) * ((q + 1) - r))); (5 > 0)
              if (((p + 1) - q) <= 0) && (((q + 1) - r) <= 0) { cert_piece_172(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(14 : ℤ) * (-1 : ℤ) + (71 : ℤ) * (p + (1 : ℤ) - q) + (33 : ℤ) * (q + (1 : ℤ) - r) + (9 : ℤ) * (p * q * r - (1 : ℤ) - (2…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(14 : ℤ) * (-1 : ℤ) + (71 : ℤ) * (p + (1 : ℤ) - q) + (33 : ℤ) * (q + (1 : ℤ) - r) + (9 : ℤ) * (p * q * r - (1 : ℤ) - (2…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_173(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×39 [exec 2433 9068-9077]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×6, mul_nonneg_of_nonpos_of_nonpos ×6, sub_nonpos_of_le ×5, Int.add_one_le_iff ×4, add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×263 [exec 2434 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×231)
              // UNCITED-APPLIED internal ×5 [exec 2435 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2436 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2437 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2438 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2439 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2440 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2441 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2442 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2443 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2444 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2445 9068-9077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₇ :  * q * r >= 4 * 5 * 6  [type from Lean state]
            assert (((p * q) * r) >= ((4 * 5) * 6)) by { // @tac 9139-9148
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9139-9148 exec 2462)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(30 : ℤ) * ((4 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((4 - p) <= 0); (30 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((5 : ℤ) * (6 : ℤ) - q * r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5 * 6) - (q * r)) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((5 * 6) - (q * r)) <= 0) { cert_piece_174(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (30 : ℤ) * ((4 : ℤ) - p) + (2 : ℤ) * ((5 : ℤ) * (6 : ℤ) - q * r) + (p * q * r + (1 : ℤ) - (4 : ℤ) * (5 : ℤ) …`
              cert_identity_175(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×19 [exec 2462 9139-9148]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×210 [exec 2463 9139-9148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.mul_congr ×8 (+34 more heads, ×178)
              // UNCITED-APPLIED internal ×5 [exec 2464 9139-9148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2465 9139-9148]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₈ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
            assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 9236-9244
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9236-9244 exec 2482)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
              cert_identity_176(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_177(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×17 [exec 2482 9236-9244]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×169 [exec 2483 9236-9244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
              // UNCITED-APPLIED internal ×172 [exec 2484 9236-9244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₉ :  >= 4  [type from Lean state]
            assert (p >= 4); // @tac 9290-9295
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×24 [exec 2501 9290-9295]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+9 more heads, ×9)
            // have h₃₀ :  >= 5  [type from Lean state]
            assert (q >= 5); // @tac 9341-9346
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×21 [exec 2518 9341-9346]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
            // have h₃₁ :  >= 6  [type from Lean state]
            assert (r >= 6); // @tac 9392-9397
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×21 [exec 2535 9392-9397]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+9 more heads, ×9)
            // have h₃₂ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
            assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 9485-9493
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9485-9493 exec 2552)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
              cert_identity_178(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_179(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×17 [exec 2552 9485-9493]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×169 [exec 2553 9485-9493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
              // UNCITED-APPLIED internal ×172 [exec 2554 9485-9493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₃₃ : False  [type from Lean state]
            assert false by { // @tac 9539-9834
              SqNonnegInt((p - 2));  // cite: sq_nonneg
              SubNonnegInt(p, 2);  // cite: sub_nonneg
              SubNonnegInt(r, 4);  // cite: sub_nonneg
              // NOT APPLIED `sq_nonneg ( ( q : ℤ ) - 2 )`, `sq_nonneg ( ( r : ℤ ) - 2 )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 3 named instances match a recorded application)
              // NOT APPLIED 2 of the 3 named instances of mul_nonneg: Lean's records at this tactic hold only 1 distinct application of it (which named ones: not identified)
              assert (0 <= ((p - 2))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((p - 2), (r - 4));  // cite: mul_nonneg
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9539-9834 exec 2571)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℤ) * ((4 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((4 - p) <= 0); (6 > 0)
              if (0 <= ((p - 2) * (p - 2))) && (((p + 1) - q) <= 0) { cert_piece_180(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED sq_nonneg: certificate piece `(0 : ℤ) ≤ (p - (2 : ℤ)) ^ (2 : ℕ)` not stated: its argument is not a rendered real term (the library lemma is over real)
              if (0 <= ((p - 2) * (p - 2))) && (((q + 1) - r) <= 0) { cert_piece_181(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (0 <= ((p - 2) * (p - 2))) && ((4 - p) <= 0) { cert_piece_182(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_183(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((4 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * (4 - p))); (5 > 0)
              if (((1 + 1) - p) <= 0) && ((4 - p) <= 0) { cert_piece_184(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -((p + (1 : ℤ) - q) * ((4 : ℤ) - p)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((p + 1) - q) * (4 - p))); (2 > 0)
              if (((p + 1) - q) <= 0) && ((4 - p) <= 0) { cert_piece_185(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((p + 1) - q) <= 0) && (0 <= ((p - 2) * (r - 4))) { cert_piece_186(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (0 <= (p - 2)) && (0 <= (r - 4)) { cert_piece_187(p, q, r); }  // cert: mul_nonneg
              if (((q + 1) - r) <= 0) && ((4 - p) <= 0) { cert_piece_188(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×8: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (6 : ℤ) * ((4 : ℤ) - p)…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_189(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×34 [exec 2571 9539-9834]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, add_lt_of_neg_of_le ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.mul_nonpos ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (cited in this block, not counted here: mul_nonneg [Lean recorded ×1], sq_nonneg [Lean recorded ×1], sub_nonneg [Lean recorded ×2])
              // UNCITED-APPLIED internal ×257 [exec 2572 9539-9834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+43 more heads, ×225)
              // UNCITED-APPLIED internal ×5 [exec 2573 9539-9834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2574 9539-9834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 2575 9539-9834]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith [ sq_nonneg ( ( p : ℤ ) - 2 ) , sq_nonneg ( ( q : ℤ ) - 2 ) , sq_nonneg ( ( r : ℤ ) - 2 ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₃ ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₄ ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₄ ) ]]  (not lowered)
            }
            // [TACTIC: exact h₃₃]
            assert false;
          }
          assert false;
        }
      }
      // have h₁₆ : q == 5  [type from Lean state]
      assert (q == 5) by { // @tac 9898-9933 // @tac 9942-10029 // @tac 10038-10091 // @tac 10100-10715 // @tac 10724-10773 // @tac 10782-10827 // @tac 10836-10889 // @tac 10898-10985 // @tac 10994-11161 // @tac 11170-11287 // @tac 11296-11413 // @tac 11422-11545 // @tac 11554-11663 // @tac 11672-11787 // @tac 11796-11908 // @tac 11917-16152 // @tac 16161-16280
        // have h₁₇ : p == 3  [type from Lean state]
        assert (p == 3) by { // @tac 9925-9933
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9925-9933 exec 2609)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p - (3 : ℤ)) < (0 : ℤ)`
          cert_identity_190(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_191(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 2609 9925-9933]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×61 [exec 2610 9925-9933]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3 (+23 more heads, ×46)
          // UNCITED-APPLIED internal ×55 [exec 2611 9925-9933]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₈ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 10021-10029
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10021-10029 exec 2628)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_192(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_193(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 2628 10021-10029]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×169 [exec 2629 10021-10029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
          // UNCITED-APPLIED internal ×172 [exec 2630 10021-10029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₉ :  == 3  [type from Lean state]
        assert (p == 3); // @tac 10073-10091
          // UNCITED-APPLIED internal ×5 [exec 2647 10073-10091]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
        // have h₂₀ :  >= 4  [type from Lean state]
        assert (q >= 4) by { // @tac 10147-10164
          // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 2671 10147-10164]
          // by_contra h
          if !((q >= 4)) {
            assert false by {  // sub-goal before `have` (Lean state) // @tac 10175-10212 // @tac 10223-10258 // @tac 10269-10322 // @tac 10333-10386 // @tac 10397-10442 // @tac 10453-10715 // @tac 10453-10579 // @tac 10453-10547 // @tac 10453-10509 // @tac 10537-10546 // @tac 10541-10546
              // have h₂₁ : q <= 3  [type from Lean state]
              assert (q <= 3) by { // @tac 10204-10212
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10204-10212 exec 2688)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_194(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 2688 10204-10212]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
                // UNCITED-APPLIED internal ×82 [exec 2689 10204-10212]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+24 more heads, ×63)
                // [TACTIC: linarith]  (not lowered)
              }
              // have h₂₂ : q == 3  [type from Lean state]
              assert (q == 3) by { // @tac 10250-10258
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10250-10258 exec 2706)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_195(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×16 [exec 2706 10250-10258]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, lt_of_not_ge ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×82 [exec 2707 10250-10258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+24 more heads, ×63)
                // UNCITED-APPLIED internal ×82 [exec 2708 10250-10258]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+24 more heads, ×63)
                // [TACTIC: linarith]  (not lowered)
              }
              // have h₂₃ :  == 3  [type from Lean state]
              assert (p == 3); // @tac 10304-10322
                // UNCITED-APPLIED internal ×5 [exec 2725 10304-10322]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
              // have h₂₄ :  == 3  [type from Lean state]
              assert (q == 3); // @tac 10368-10386
                // UNCITED-APPLIED internal ×5 [exec 2742 10368-10386]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                // [TACTIC: normNum [ h₂₂ ]]  (not lowered)
              // have h₂₅ :  >= 4  [type from Lean state]
              assert (r >= 4) by { // @tac 10434-10442
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10434-10442 exec 2759)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_196(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 2759 10434-10442]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
                // UNCITED-APPLIED internal ×82 [exec 2760 10434-10442]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+24 more heads, ×63)
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: «_<;>_» [ h₁₇ , h₂₂ , h₂₃ , h₂₄ ] at h₁₈ <;> ( try omega ) <;> ( try nlinarith ) <;> ( try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] } )]
              // [TACTIC: normNum [ h₁₇ , h₂₂ , h₂₃ , h₂₄ ] at h₁₈]
              assert (((9 * r) - 1) == (2 * (4 * (r - 1))));  // hypothesis h₁₈ after `norm_num` (Lean state) // @tac-hyp 10453-10509
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×39 [exec 2792 10541-10546]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×8, Lean.Omega.tidy_sat ×3, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+12 more heads, ×15)
              // [TACTIC: try nlinarith]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try nlinarith )]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] }]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] } )]  NOT RUN in Lean (no execution recorded)
            }
            assert false;
          }
        }
        // have h₂₁ :  >= q + 1  [type from Lean state]
        assert (r >= (q + 1)) by { // @tac 10765-10773
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10765-10773 exec 2821)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_197(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×11 [exec 2821 10765-10773]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×49 [exec 2822 10765-10773]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3 (+22 more heads, ×34)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₂ :  >= 4  [type from Lean state]
        assert (q >= 4) by { // @tac 10819-10827
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10819-10827 exec 2839)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_198(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×14 [exec 2839 10819-10827]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×82 [exec 2840 10819-10827]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+24 more heads, ×63)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₃ :  == 3  [type from Lean state]
        assert (p == 3); // @tac 10871-10889
          // UNCITED-APPLIED internal ×5 [exec 2857 10871-10889]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
        // have h₂₄ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 10977-10985
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10977-10985 exec 2874)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_199(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_200(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 2874 10977-10985]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×169 [exec 2875 10977-10985]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
          // UNCITED-APPLIED internal ×172 [exec 2876 10977-10985]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₅ : 3 * q * r - 1 == 2 * ( 2 * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((3 * q) * r) - 1) == (2 * ((2 * (q - 1)) * (r - 1)))) by { // @tac 11069-11161 // @tac 11069-11148 // @tac 11069-11111 // @tac 11126-11148
          // [TACTIC: «_<;>_» [ h₁₇ , h₁₉ ] at h₂₄ ⊢ <;> ring_nf at h₂₄ ⊢ <;> linarith]
          // [TACTIC: normNum [ h₁₇ , h₁₉ ] at h₂₄ ⊢]
          assert ((((3 * q) * r) - 1) == (2 * ((2 * (q - 1)) * (r - 1))));  // hypothesis h₂₄ after `norm_num` (Lean state) // @tac-hyp 11069-11111
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))));  // hypothesis h₂₄ after `ring_nf` (Lean state) // @tac-hyp 11126-11148
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))) by {  // sub-goal of `linarith` (Lean state) // @tac 11153-11161
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11153-11161 exec 2921)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + q * r * (3 : ℤ) - ((4 : ℤ) - q * (4 : ℤ) + (q * r * (4 : ℤ) - r * (4 : ℤ)))) < (0 : ℤ)`
            cert_identity_201(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_202(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×159 [exec 2921 11153-11161]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+39 more heads, ×115) (cited in this block, not counted here: pow_one [Lean recorded ×2])
            // UNCITED-APPLIED internal ×150 [exec 2922 11153-11161]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_isNat ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+33 more heads, ×120)
            // UNCITED-APPLIED internal ×161 [exec 2923 11153-11161]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+34 more heads, ×132)
          }
          // UNCITED-APPLIED internal ×139 [exec 2912 11126-11148]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+33 more heads, ×105) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        }
        // have h₂₆ : 3 * q * r - 1 == 4 * ( ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((3 * q) * r) - 1) == (4 * ((q - 1) * (r - 1)))) by { // @tac 11241-11287 // @tac 11241-11263
          // [TACTIC: «_<;>_» at h₂₅ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₅ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×131 [exec 2945 11241-11263]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+33 more heads, ×97) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))));  // hypothesis h₂₅ after `ring_nf` (Lean state) // @tac-hyp 11241-11263
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11278-11287
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11278-11287 exec 2954)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + q * r * (3 : ℤ) - ((4 : ℤ) - q * (4 : ℤ) + (q * r * (4 : ℤ) - r * (4 : ℤ)))) < (0 : ℤ)`
            cert_identity_203(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_204(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×154 [exec 2954 11278-11287]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+37 more heads, ×110) (cited in this block, not counted here: pow_one [Lean recorded ×2])
            // UNCITED-APPLIED internal ×150 [exec 2955 11278-11287]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_isNat ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+33 more heads, ×120)
            // UNCITED-APPLIED internal ×161 [exec 2956 11278-11287]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+34 more heads, ×132)
          }
        }
        // have h₂₇ : 3 * q * r - 1 == 4 * ( q * r - q - r + 1 )  [type from Lean state]
        assert ((((3 * q) * r) - 1) == (4 * ((((q * r) - q) - r) + 1))) by { // @tac 11367-11413 // @tac 11367-11389
          // [TACTIC: «_<;>_» at h₂₆ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₆ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×119 [exec 2978 11367-11389]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×7 (+33 more heads, ×86) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))));  // hypothesis h₂₆ after `ring_nf` (Lean state) // @tac-hyp 11367-11389
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11404-11413
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11404-11413 exec 2987)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_205(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_206(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 2987 11404-11413]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×210 [exec 2988 11404-11413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×178)
            // UNCITED-APPLIED internal ×217 [exec 2989 11404-11413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×185)
          }
        }
        // have h₂₈ : 3 * q * r - 1 == 4 * q * r - 4 * q - 4 * r + 4  [type from Lean state]
        assert ((((3 * q) * r) - 1) == (((((4 * q) * r) - (4 * q)) - (4 * r)) + 4)) by { // @tac 11499-11545 // @tac 11499-11521
          // [TACTIC: «_<;>_» at h₂₇ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₇ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×109 [exec 3011 11499-11521]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+32 more heads, ×77) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))));  // hypothesis h₂₇ after `ring_nf` (Lean state) // @tac-hyp 11499-11521
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11536-11545
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11536-11545 exec 3020)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_207(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_208(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 3020 11536-11545]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×210 [exec 3021 11536-11545]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×178)
            // UNCITED-APPLIED internal ×217 [exec 3022 11536-11545]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×185)
          }
        }
        // have h₂₉ : - q * r + 4 * q + 4 * r - 5 == 0  [type from Lean state]
        assert (((((-(q) * r) + (4 * q)) + (4 * r)) - 5) == 0) by { // @tac 11617-11663 // @tac 11617-11639
          // [TACTIC: «_<;>_» at h₂₈ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₈ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×85 [exec 3044 11617-11639]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×58) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 3)) == ((4 - (q * 4)) + (((q * r) * 4) - (r * 4))));  // hypothesis h₂₈ after `ring_nf` (Lean state) // @tac-hyp 11617-11639
          assert (((-(5) + ((q * 4) - (q * r))) + (r * 4)) == 0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11654-11663
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11654-11663 exec 3053)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_209(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_210(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×16 [exec 3053 11654-11663]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×205 [exec 3054 11654-11663]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×173)
            // UNCITED-APPLIED internal ×208 [exec 3055 11654-11663]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×176)
          }
        }
        // have h₃₀ :  * r - 4 * q - 4 * r + 5 == 0  [type from Lean state]
        assert (((((q * r) - (4 * q)) - (4 * r)) + 5) == 0) by { // @tac 11741-11787 // @tac 11741-11763
          // [TACTIC: «_<;>_» at h₂₉ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₉ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×81 [exec 3077 11741-11763]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert (((-(5) + ((q * 4) - (q * r))) + (r * 4)) == 0);  // hypothesis h₂₉ after `ring_nf` (Lean state) // @tac-hyp 11741-11763
          assert (((5 - (q * 4)) + ((q * r) - (r * 4))) == 0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11778-11787
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11778-11787 exec 3086)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_211(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_212(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×16 [exec 3086 11778-11787]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×194 [exec 3087 11778-11787]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×162)
            // UNCITED-APPLIED internal ×207 [exec 3088 11778-11787]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×175)
          }
        }
        // have h₃₁ : q - 4 * r - 4 == 11  [type from Lean state]
        assert (((q - 4) * (r - 4)) == 11) by { // @tac 11862-11908 // @tac 11862-11884
          // [TACTIC: «_<;>_» at h₃₀ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₃₀ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×82 [exec 3110 11862-11884]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+32 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert (((5 - (q * 4)) + ((q * r) - (r * 4))) == 0);  // hypothesis h₃₀ after `ring_nf` (Lean state) // @tac-hyp 11862-11884
          assert (((16 - (q * 4)) + ((q * r) - (r * 4))) == 11) by {  // sub-goal of `nlinarith` (Lean state) // @tac 11899-11908
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11899-11908 exec 3119)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_213(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_214(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 3119 11899-11908]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×208 [exec 3120 11899-11908]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×176)
            // UNCITED-APPLIED internal ×216 [exec 3121 11899-11908]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+36 more heads, ×184)
          }
        }
        // have h₃₂ :  - 4 == 1 &&  - 4 == 11 ||  - 4 == 11 &&  - 4 == 1 ||  - 4 == - 1 &&    [type from Lean state]
        assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1)))))) by { // @tac 12128-14502 // @tac 14513-16152
          // have h₃₃ :  - 4 == 1 ||  - 4 == 11 ||  - 4 == - 1 ||  - 4 == - 11  [type from Lean state]
          assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11))))) by { // @tac 12249-12345 // @tac 12358-14476 // @tac 14489-14502
            // have h₃₄ : ( q : ℤ ) - 4 ∣ 11  [type from Lean state]
            assert IntDvd((q - 4), 11) by { // @tac 12305-12322
              // [TACTIC: use ( r : ℤ ) - 4]
              assert (11 == ((q - 4) * (r - 4))) by {  // sub-goal of `use` (Lean state) // @tac 12337-12345
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 12337-12345 exec 3189)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                cert_identity_215(p, q, r);  // cert: add_lt_of_neg_of_le
                cert_identity_216(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×17 [exec 3189 12337-12345]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×213 [exec 3190 12337-12345]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×181)
                // UNCITED-APPLIED internal ×205 [exec 3191 12337-12345]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×173)
                // [TACTIC: linarith]  (not lowered)
              }
            }
            // have h₃₅ :  - 4 == 1 ||  - 4 == 11 ||  - 4 == - 1 ||  - 4 == - 11  [type from Lean state]
            assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11))))) by { // @tac 12481-14448 // @tac 14463-14476
              // have h₃₆ :  - 4 == 1 ||  - 4 == 11 ||  - 4 == - 1 ||  - 4 == - 11  [type from Lean state]
              assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11))))) by { // @tac 12606-12647 // @tac 12767-12868 // @tac 12971-13318 // @tac 13335-14448
                // [TACTIC: rwSeq [ ← Int.natAbs_dvd_natAbs ] at h₃₄]
                // UNCITED Int.natAbs_dvd_natAbs: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                assert NatDvd(IntAbs((q - 4)), IntAbs(11));  // hypothesis h₃₄ after `rw` (Lean state) // @tac-hyp 12606-12647
                // have h₃₇ : ( ( q : ℤ ) - 4 ) . natAbs ∣ 11  [type from Lean state]
                assert NatDvd(IntAbs((q - 4)), 11) by { // @tac 12836-12868
                  // [TACTIC: simpa [ Int.natAbs ] using h₃₄]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  IntNatAbsDvdNatAbs((q - 4), 11);  // cite: Int.natAbs_dvd_natAbs [applied by the tactic, not named in it]
                  // UNCITED Int.natAbs: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                  // UNCITED-APPLIED internal ×2 [exec 3271 12836-12868]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1, Eq.symm ×1 (cited in this block, not counted here: Int.natAbs_dvd_natAbs [Lean recorded ×1])
                }
                // have h₃₈ : ( ( q : ℤ ) - 4 ) . natAbs == 1 || ( ( q : ℤ ) - 4 ) . natAbs == 11  [type from Lean state]
                assert ((IntAbs((q - 4)) == 1) || (IntAbs((q - 4)) == 11)) by { // @tac 13069-13124 // @tac 13143-13224 // @tac 13243-13318 // @tac 13243-13308 // @tac 13243-13280
                  // have h₃₉ : ( ( q : ℤ ) - 4 ) . natAbs ∣ 11  [type from Lean state]
                  assert NatDvd(IntAbs((q - 4)), 11) by {
                    // [TACTIC: exact h₃₇]
                    assert NatDvd(IntAbs((q - 4)), 11);
                  }
                  // have h₄₀ : ( ( q : ℤ ) - 4 ) . natAbs <= 11  [type from Lean state]
                  assert (IntAbs((q - 4)) <= 11) by {
                    assert (0 < 11) by {  // sub-goal of `by` (Lean state) // @tac 13209-13215
                      // [TACTIC: decide]
                      // UNCITED-APPLIED internal ×1 [exec 3314 13209-13215]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                    }
                    // [TACTIC: exact Nat.le_of_dvd ( ( by decide ) , h₃₉ )]
                    assert (0 < (11)) && (NatDvd((IntAbs((q - 4))), (11)));  // precondition of NatLeOfDvd (Lean: Nat.le_of_dvd)
                    NatLeOfDvd(IntAbs((q - 4)), 11);  // cite: Nat.le_of_dvd
                  }
                  // [TACTIC: «_<;>_» ( ( q : ℤ ) - 4 ) . natAbs <;> norm_num at h₃₉ ⊢ <;> omega]
                  // [TACTIC: intervalCases ( ( q : ℤ ) - 4 ) . natAbs]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  IntNatAbsDvdNatAbs((q - 4), 11);  // cite: Int.natAbs_dvd_natAbs [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×34 [exec 3327 13243-13280]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Nat.ge_of_not_lt ×8, Nat.zero_le ×1; machinery/glue: Eq.symm ×13, Mathlib.Tactic.IntervalCases.of_le_right ×1, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Int.natAbs_dvd_natAbs [Lean recorded ×1])
                  if (NatDvd(0, IntAbs(11))) && (NatDvd(0, 11)) && ((0 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((0 == 1) || (0 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3336 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(1, IntAbs(11))) && (NatDvd(1, 11)) && ((1 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((1 == 1) || (1 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×11 [exec 3339 13285-13308]: applications made inside the tactic's own automation, not stated — or_false ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+5 more heads, ×5)
                  }
                  if (NatDvd(2, IntAbs(11))) && (NatDvd(2, 11)) && ((2 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((2 == 1) || (2 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3342 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(3, IntAbs(11))) && (NatDvd(3, 11)) && ((3 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((3 == 1) || (3 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3345 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(4, IntAbs(11))) && (NatDvd(4, 11)) && ((4 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((4 == 1) || (4 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3348 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(5, IntAbs(11))) && (NatDvd(5, 11)) && ((5 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((5 == 1) || (5 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3351 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(6, IntAbs(11))) && (NatDvd(6, 11)) && ((6 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((6 == 1) || (6 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3354 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(7, IntAbs(11))) && (NatDvd(7, 11)) && ((7 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((7 == 1) || (7 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3357 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(8, IntAbs(11))) && (NatDvd(8, 11)) && ((8 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((8 == 1) || (8 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3360 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(9, IntAbs(11))) && (NatDvd(9, 11)) && ((9 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((9 == 1) || (9 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3363 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(10, IntAbs(11))) && (NatDvd(10, 11)) && ((10 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((10 == 1) || (10 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×4 [exec 3366 13285-13308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(11, IntAbs(11))) && (NatDvd(11, 11)) && ((11 <= 11)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((11 == 1) || (11 == 11));  // sub-goal of `norm_num` (Lean state) // @tac 13285-13308
                    // UNCITED-APPLIED internal ×11 [exec 3369 13285-13308]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+5 more heads, ×5)
                  }
                }
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((IntAbs((q - 4)) == 1)) {  // sub-goal of `cases` (Lean state)
                  // have h₄₁ :  - 4 == 1 ||  - 4 == - 1  [type from Lean state]
                  assert (((q - 4) == 1) || ((q - 4) == -(1))) by { // @tac 13487-13539 // @tac 13560-13705 // @tac 13726-13739
                    // have h₄₂ : ( ( q : ℤ ) - 4 ) . natAbs == 1  [type from Lean state]
                    assert (IntAbs((q - 4)) == 1) by {
                      // [TACTIC: exact h₃₈]
                      assert (IntAbs((q - 4)) == 1);
                    }
                    // have h₄₃ :  - 4 == 1 ||  - 4 == - 1  [type from Lean state]
                    assert (((q - 4) == 1) || ((q - 4) == -(1))) by { // @tac 13644-13677 // @tac 13700-13705
                      // [TACTIC: rwSeq [ Int.natAbs_eq_iff ] at h₄₂]
                      // UNCITED Int.natAbs_eq_iff: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                      assert (((q - 4) == (1 as int)) || ((q - 4) == -((1 as int))));  // hypothesis h₄₂ after `rw` (Lean state) // @tac-hyp 13644-13677
                      IntNatAbsEqIff((q - 4), 1);  // cite: Int.natAbs_eq_iff [applied by the tactic, not named in it: inside its internal steps (`assumption` exec 3458)]
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 3458 13700-13705]
                      // [TACTIC: tauto]  (not lowered)
                    }
                    // [TACTIC: exact h₄₃]
                    assert (((q - 4) == 1) || ((q - 4) == -(1)));
                  }
                  // `cases`: 2 cases (Lean states); 2 branch bodies
                  if (((q - 4) == 1)) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 3469 13832-13837]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 13832-13837
                  }
                  if (((q - 4) == -(1))) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 3479 13893-13898]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 13893-13898
                  }
                  assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 13405-13739 // @tac 13758-13898
                }
                if ((IntAbs((q - 4)) == 11)) {  // sub-goal of `cases` (Lean state)
                  // have h₄₁ :  - 4 == 11 ||  - 4 == - 11  [type from Lean state]
                  assert (((q - 4) == 11) || ((q - 4) == -(11))) by { // @tac 14034-14087 // @tac 14108-14255 // @tac 14276-14289
                    // have h₄₂ : ( ( q : ℤ ) - 4 ) . natAbs == 11  [type from Lean state]
                    assert (IntAbs((q - 4)) == 11) by {
                      // [TACTIC: exact h₃₈]
                      assert (IntAbs((q - 4)) == 11);
                    }
                    // have h₄₃ :  - 4 == 11 ||  - 4 == - 11  [type from Lean state]
                    assert (((q - 4) == 11) || ((q - 4) == -(11))) by { // @tac 14194-14227 // @tac 14250-14255
                      // [TACTIC: rwSeq [ Int.natAbs_eq_iff ] at h₄₂]
                      // UNCITED Int.natAbs_eq_iff: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                      assert (((q - 4) == (11 as int)) || ((q - 4) == -((11 as int))));  // hypothesis h₄₂ after `rw` (Lean state) // @tac-hyp 14194-14227
                      IntNatAbsEqIff((q - 4), 11);  // cite: Int.natAbs_eq_iff [applied by the tactic, not named in it: inside its internal steps (`assumption` exec 3568)]
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 3568 14250-14255]
                      // [TACTIC: tauto]  (not lowered)
                    }
                    // [TACTIC: exact h₄₃]
                    assert (((q - 4) == 11) || ((q - 4) == -(11)));
                  }
                  // `cases`: 2 cases (Lean states); 2 branch bodies
                  if (((q - 4) == 11)) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 3579 14382-14387]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 14382-14387
                  }
                  if (((q - 4) == -(11))) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 3592 14443-14448]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 14443-14448
                  }
                  assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));  // sub-goal of `cases` (Lean state) // @tac 13950-14289 // @tac 14308-14448
                }
              }
              // [TACTIC: exact h₃₆]
              assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));
            }
            // [TACTIC: exact h₃₅]
            assert (((q - 4) == 1) || (((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11)))));
          }
          // `cases`: 2 cases (Lean states); 2 branch bodies
          if (((q - 4) == 1)) {  // sub-goal of `cases` (Lean state)
            // have h₃₄ :  - 4 == 1  [type from Lean state]
            assert ((q - 4) == 1) by {
              // [TACTIC: exact h₃₃]
              assert ((q - 4) == 1);
            }
            // have h₃₅ :  - 4 == 11  [type from Lean state]
            assert ((r - 4) == 11) by { // @tac 14681-14765 // @tac 14780-14803 // @tac 14818-14826
              // have h₃₆ : (  - 4 ) * (  - 4 ) == 11  [type from Lean state]
              assert (((q - 4) * (r - 4)) == 11) by { // @tac 14757-14765
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 14757-14765 exec 3651)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                cert_identity_217(p, q, r);  // cert: add_lt_of_neg_of_le
                cert_identity_218(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×17 [exec 3651 14757-14765]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×205 [exec 3652 14757-14765]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×173)
                // UNCITED-APPLIED internal ×213 [exec 3653 14757-14765]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×181)
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
              assert ((1 * (r - 4)) == 11);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 14780-14803
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 14818-14826 exec 3685)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((1 : ℤ) * (r - (4 : ℤ)) - (11 : ℤ)) < (0 : ℤ)`
              cert_identity_219(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_220(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×18 [exec 3685 14818-14826]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×93 [exec 3686 14818-14826]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6, Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Tactic.Ring.neg_add ×5 (+31 more heads, ×70)
              // UNCITED-APPLIED internal ×89 [exec 3687 14818-14826]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+32 more heads, ×69)
              // [TACTIC: linarith]  (not lowered)
            }
            // [TACTIC: exact Or.inl ⟨ h₃₄ , h₃₅ ⟩]
            // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inl`: its statement (the premise of Or.inl it proves) is not recorded, not stated
            // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
            assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 14571-14614 // @tac 14627-14826 // @tac 14839-14874
          }
          if ((((q - 4) == 11) || (((q - 4) == -(1)) || ((q - 4) == -(11))))) {  // sub-goal of `cases` (Lean state)
            // `cases`: 2 cases (Lean states); 2 branch bodies
            if (((q - 4) == 11)) {  // sub-goal of `cases` (Lean state)
              // have h₃₄ :  - 4 == 11  [type from Lean state]
              assert ((q - 4) == 11) by {
                // [TACTIC: exact h₃₃]
                assert ((q - 4) == 11);
              }
              // have h₃₅ :  - 4 == 1  [type from Lean state]
              assert ((r - 4) == 1) by { // @tac 15090-15176 // @tac 15193-15216 // @tac 15233-15241
                // have h₃₆ : (  - 4 ) * (  - 4 ) == 11  [type from Lean state]
                assert (((q - 4) * (r - 4)) == 11) by { // @tac 15168-15176
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 15168-15176 exec 3741)
                  // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) * q * r - (1 : ℤ) - (2 : ℤ) * ((2 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                  cert_identity_221(p, q, r);  // cert: add_lt_of_neg_of_le
                  cert_identity_222(p, q, r);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×17 [exec 3741 15168-15176]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×205 [exec 3742 15168-15176]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×173)
                  // UNCITED-APPLIED internal ×213 [exec 3743 15168-15176]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×181)
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                assert ((11 * (r - 4)) == 11);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 15193-15216
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 15233-15241 exec 3775)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(121 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (121 > 0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(11 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (11 > 0)
                // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(11 : ℤ) * -(q - (4 : ℤ) - (11 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((q - 4) - 11)) == 0); (11 > 0)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(121 : ℤ) * (-1 : ℤ) + (11 : ℤ) * (q + (1 : ℤ) - r) + (11 : ℤ) * -(q - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(121 : ℤ) * (-1 : ℤ) + (11 : ℤ) * (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_223(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                // UNCITED-APPLIED internal ×18 [exec 3775 15233-15241]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+4 more heads, ×4)
                // UNCITED-APPLIED internal ×153 [exec 3776 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+32 more heads, ×121)
                // UNCITED-APPLIED internal ×5 [exec 3777 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 3778 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 3779 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×153 [exec 3780 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+32 more heads, ×121)
                // UNCITED-APPLIED internal ×5 [exec 3781 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 3782 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 3783 15233-15241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: exact Or.inr ( Or.inl ⟨ h₃₄ , h₃₅ ⟩ )]
              // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
              // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
              assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 14976-15020 // @tac 15035-15241 // @tac 15256-15300
            }
            if ((((q - 4) == -(1)) || ((q - 4) == -(11)))) {  // sub-goal of `cases` (Lean state)
              // `cases`: 2 cases (Lean states); 2 branch bodies
              if (((q - 4) == -(1))) {  // sub-goal of `cases` (Lean state)
                // have h₃₄ :  - 4 == - 1  [type from Lean state]
                assert ((q - 4) == -(1)) by {
                  // [TACTIC: exact h₃₃]
                  assert ((q - 4) == -(1));
                }
                // have h₃₅ :  - 4 == - 11  [type from Lean state]
                assert ((r - 4) == -(11)) by { // @tac 15530-15618 // @tac 15637-15660 // @tac 15679-15687
                  // have h₃₆ : (  - 4 ) * (  - 4 ) == 11  [type from Lean state]
                  assert (((q - 4) * (r - 4)) == 11) by { // @tac 15610-15618
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 15610-15618 exec 3837)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_224(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×14 [exec 3837 15610-15618]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×88 [exec 3838 15610-15618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
                    // UNCITED-APPLIED internal ×88 [exec 3839 15610-15618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                  assert ((-(1) * (r - 4)) == 11);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 15637-15660
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 15679-15687 exec 3871)
                  // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  cert_identity_225(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                  // UNCITED-APPLIED internal ×14 [exec 3871 15679-15687]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×88 [exec 3872 15679-15687]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
                  // UNCITED-APPLIED internal ×88 [exec 3873 15679-15687]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: exact Or.inr ( Or.inr ( Or.inl ⟨ h₃₄ , h₃₅ ⟩ ) )]
                // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
                assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 15410-15454 // @tac 15471-15687 // @tac 15704-15757
              }
              if (((q - 4) == -(11))) {  // sub-goal of `cases` (Lean state)
                // have h₃₄ :  - 4 == - 11  [type from Lean state]
                assert ((q - 4) == -(11)) by {
                  // [TACTIC: exact h₃₃]
                  assert ((q - 4) == -(11));
                }
                // have h₃₅ :  - 4 == - 1  [type from Lean state]
                assert ((r - 4) == -(1)) by { // @tac 15925-16013 // @tac 16032-16055 // @tac 16074-16082
                  // have h₃₆ : (  - 4 ) * (  - 4 ) == 11  [type from Lean state]
                  assert (((q - 4) * (r - 4)) == 11) by { // @tac 16005-16013
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16005-16013 exec 3922)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_226(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×15 [exec 3922 16005-16013]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
                    // UNCITED-APPLIED internal ×115 [exec 3923 16005-16013]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
                    // UNCITED-APPLIED internal ×5 [exec 3924 16005-16013]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×115 [exec 3925 16005-16013]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
                    // UNCITED-APPLIED internal ×5 [exec 3926 16005-16013]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                  assert ((-(11) * (r - 4)) == 11);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 16032-16055
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16074-16082 exec 3958)
                  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
                  // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  cert_identity_227(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                  // UNCITED-APPLIED internal ×15 [exec 3958 16074-16082]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
                  // UNCITED-APPLIED internal ×115 [exec 3959 16074-16082]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
                  // UNCITED-APPLIED internal ×5 [exec 3960 16074-16082]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // UNCITED-APPLIED internal ×115 [exec 3961 16074-16082]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
                  // UNCITED-APPLIED internal ×5 [exec 3962 16074-16082]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: exact Or.inr ( Or.inr ( Or.inr ⟨ h₃₄ , h₃₅ ⟩ ) )]
                // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
                assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 15805-15850 // @tac 15867-16082 // @tac 16099-16152
              }
              assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 15344-16152
            }
            assert ((((q - 4) == 1) && ((r - 4) == 11)) || ((((q - 4) == 11) && ((r - 4) == 1)) || ((((q - 4) == -(1)) && ((r - 4) == -(11))) || (((q - 4) == -(11)) && ((r - 4) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 14914-16152
          }
        }
        // `rcases`: 4 cases (Lean states); 4 branch bodies
        if (((q - 4) == 1)) && (((r - 4) == 11)) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 5  [type from Lean state]
          assert (q == 5) by { // @tac 16377-16385
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16377-16385 exec 3985)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(q - (4 : ℤ) - (1 : ℤ)) < (0 : ℤ)`
            cert_identity_228(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_229(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 3985 16377-16385]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×72 [exec 3986 16377-16385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_add ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+23 more heads, ×53)
            // UNCITED-APPLIED internal ×64 [exec 3987 16377-16385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.IsInt.of_raw ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4 (+25 more heads, ×48)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 15  [type from Lean state]
          assert (r == 15) by { // @tac 16436-16444
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16436-16444 exec 4004)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(r - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)`
            cert_identity_230(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_231(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 4004 16436-16444]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×84 [exec 4005 16436-16444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_one_mul ×5 (+23 more heads, ×62)
            // UNCITED-APPLIED internal ×73 [exec 4006 16436-16444]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+25 more heads, ×53)
            // [TACTIC: linarith]  (not lowered)
          }
          // [TACTIC: «_<;>_» [ h₃₄ , h₃₅ , h₁₅ ] <;> norm_num <;> omega]
          // [TACTIC: simp [ h₃₄ , h₃₅ , h₁₅ ]]
          // UNCITED-APPLIED internal ×4 [exec 4017 16455-16487]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
          // `simp` closed the goal; the rest of the chain did not run
          assert (q == 5);  // sub-goal of `rcases` (Lean state) // @tac 16289-16520 // @tac 16338-16385 // @tac 16396-16444 // @tac 16455-16520 // @tac 16455-16510 // @tac 16455-16487
        }
        if (((q - 4) == 11)) && (((r - 4) == 1)) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 15  [type from Lean state]
          assert (q == 15) by { // @tac 16618-16626
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16618-16626 exec 4050)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_232(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 4050 16618-16626]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×108 [exec 4051 16618-16626]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 4052 16618-16626]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×108 [exec 4053 16618-16626]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 4054 16618-16626]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 5  [type from Lean state]
          assert (r == 5) by { // @tac 16676-16684
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16676-16684 exec 4071)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_233(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 4071 16676-16684]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×108 [exec 4072 16676-16684]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 4073 16676-16684]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×108 [exec 4074 16676-16684]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 4075 16676-16684]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 16734-16742
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16734-16742 exec 4092)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_234(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 4092 16734-16742]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×108 [exec 4093 16734-16742]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 4094 16734-16742]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16753-16761 exec 4095)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (4 : ℤ) - (11 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_235(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×15 [exec 4095 16753-16761]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
          // UNCITED-APPLIED internal ×108 [exec 4096 16753-16761]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
          // UNCITED-APPLIED internal ×5 [exec 4097 16753-16761]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // UNCITED-APPLIED internal ×108 [exec 4098 16753-16761]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+29 more heads, ×82)
          // UNCITED-APPLIED internal ×5 [exec 4099 16753-16761]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // [TACTIC: linarith]  (not lowered)
          assert (q == 5);  // sub-goal of `rcases` (Lean state) // @tac 16529-16761 // @tac 16578-16626 // @tac 16637-16684 // @tac 16695-16742 // @tac 16753-16761
        }
        if (((q - 4) == -(1))) && (((r - 4) == -(11))) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 3  [type from Lean state]
          assert (q == 3) by { // @tac 16860-16868
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16860-16868 exec 4120)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_236(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 4120 16860-16868]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×88 [exec 4121 16860-16868]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
            // UNCITED-APPLIED internal ×88 [exec 4122 16860-16868]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == - 7  [type from Lean state]
          assert (r == -(7)) by { // @tac 16919-16927
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16919-16927 exec 4139)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_237(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 4139 16919-16927]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×88 [exec 4140 16919-16927]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
            // UNCITED-APPLIED internal ×88 [exec 4141 16919-16927]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 16977-16985
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16977-16985 exec 4158)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_238(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×13 [exec 4158 16977-16985]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×88 [exec 4159 16977-16985]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 16996-17004 exec 4160)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_239(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×14 [exec 4160 16996-17004]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×88 [exec 4161 16996-17004]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
          // UNCITED-APPLIED internal ×88 [exec 4162 16996-17004]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+24 more heads, ×66)
          // [TACTIC: linarith]  (not lowered)
          assert (q == 5);  // sub-goal of `rcases` (Lean state) // @tac 16770-17004 // @tac 16821-16868 // @tac 16879-16927 // @tac 16938-16985 // @tac 16996-17004
        }
        if (((q - 4) == -(11))) && (((r - 4) == -(1))) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == - 7  [type from Lean state]
          assert (q == -(7)) by { // @tac 17104-17112
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17104-17112 exec 4183)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_240(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 4183 17104-17112]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×115 [exec 4184 17104-17112]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
            // UNCITED-APPLIED internal ×5 [exec 4185 17104-17112]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×115 [exec 4186 17104-17112]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
            // UNCITED-APPLIED internal ×5 [exec 4187 17104-17112]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 3  [type from Lean state]
          assert (r == 3) by { // @tac 17162-17170
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17162-17170 exec 4204)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_241(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 4204 17162-17170]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×115 [exec 4205 17162-17170]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
            // UNCITED-APPLIED internal ×5 [exec 4206 17162-17170]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×115 [exec 4207 17162-17170]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
            // UNCITED-APPLIED internal ×5 [exec 4208 17162-17170]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 17220-17228
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17220-17228 exec 4225)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_242(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 4225 17220-17228]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×115 [exec 4226 17220-17228]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
            // UNCITED-APPLIED internal ×5 [exec 4227 17220-17228]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17239-17247 exec 4228)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(11 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (11 > 0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) + -(p - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(11 : ℤ) * (-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_243(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×15 [exec 4228 17239-17247]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
          // UNCITED-APPLIED internal ×115 [exec 4229 17239-17247]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
          // UNCITED-APPLIED internal ×5 [exec 4230 17239-17247]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // UNCITED-APPLIED internal ×115 [exec 4231 17239-17247]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+29 more heads, ×87)
          // UNCITED-APPLIED internal ×5 [exec 4232 17239-17247]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // [TACTIC: linarith]  (not lowered)
          assert (q == 5);  // sub-goal of `rcases` (Lean state) // @tac 17013-17247 // @tac 17064-17112 // @tac 17123-17170 // @tac 17181-17228 // @tac 17239-17247
        }
      }
      // have h₁₇ : r == 15  [type from Lean state]
      assert (r == 15) by { // @tac 17290-17325 // @tac 17334-17369 // @tac 17378-17465 // @tac 17474-17527 // @tac 17536-17589 // @tac 17598-17699 // @tac 17598-17689 // @tac 17598-17654 // @tac 17667-17689 // @tac 17694-17699
        // have h₁₈ : p == 3  [type from Lean state]
        assert (p == 3) by { // @tac 17317-17325
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17317-17325 exec 4265)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p - (3 : ℤ)) < (0 : ℤ)`
          cert_identity_244(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_245(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 4265 17317-17325]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×61 [exec 4266 17317-17325]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3 (+23 more heads, ×46)
          // UNCITED-APPLIED internal ×55 [exec 4267 17317-17325]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₉ : q == 5  [type from Lean state]
        assert (q == 5) by { // @tac 17361-17369
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17361-17369 exec 4284)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(q - (5 : ℤ)) < (0 : ℤ)`
          cert_identity_246(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_247(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 4284 17361-17369]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×61 [exec 4285 17361-17369]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3 (+23 more heads, ×46)
          // UNCITED-APPLIED internal ×55 [exec 4286 17361-17369]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₀ :  * q * r - 1 == 2 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (2 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 17457-17465
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17457-17465 exec 4303)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (2 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_248(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_249(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 4303 17457-17465]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×169 [exec 4304 17457-17465]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×137)
          // UNCITED-APPLIED internal ×172 [exec 4305 17457-17465]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×140)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₁ :  == 3  [type from Lean state]
        assert (p == 3); // @tac 17509-17527
          // UNCITED-APPLIED internal ×5 [exec 4322 17509-17527]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₈ ]]  (not lowered)
        // have h₂₂ :  == 5  [type from Lean state]
        assert (q == 5); // @tac 17571-17589
          // UNCITED-APPLIED internal ×5 [exec 4339 17571-17589]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₉ ]]  (not lowered)
        // [TACTIC: «_<;>_» [ h₁₈ , h₁₉ , h₂₁ , h₂₂ ] at h₂₀ <;> ring_nf at h₂₀ ⊢ <;> omega]
        // [TACTIC: normNum [ h₁₈ , h₁₉ , h₂₁ , h₂₂ ] at h₂₀]
        assert (((15 * r) - 1) == (2 * (8 * (r - 1))));  // hypothesis h₂₀ after `norm_num` (Lean state) // @tac-hyp 17598-17654
        assert ((-(1) + (r * 15)) == (-(16) + (r * 16)));  // hypothesis h₂₀ after `ring_nf` (Lean state) // @tac-hyp 17667-17689
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×148 [exec 4368 17694-17699]: applications made inside the tactic's own automation, not stated — add_zero ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×10, congrArg ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7, congr ×6 (+45 more heads, ×107) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      }
      // have h₁₈ : ( p , q , r ) == ( 3 , 5 , 15 )  [type from Lean state]
      assert (((p == 3) && (q == 5)) && (r == 15)); // @tac 17758-17815 // @tac 17758-17802 // @tac 17758-17781
        // [TACTIC: «_<;>_» [ Prod.ext_iff ] <;> norm_num <;> linarith]
        // [TACTIC: simpAll [ Prod.ext_iff ]]
        // UNCITED Prod.ext_iff: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
        // UNCITED-APPLIED internal ×8 [exec 4395 17758-17781]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, congr ×2, of_eq_true ×1, Eq.trans ×1 (+1 more heads, ×1)
        // `simp_all` closed the goal; the rest of the chain did not run
      // [TACTIC: exact Or.inr h₁₈]
      assert (((p == 3) && (q == 5)) && (r == 15));
      assert ((((p == 2) && (q == 4)) && (r == 8)) || (((p == 3) && (q == 5)) && (r == 15)));  // sub-goal of `rcases` (Lean state) // @tac 5804-17842 // @tac 5827-5944 // @tac 5951-9856 // @tac 9863-17247 // @tac 17254-17699 // @tac 17706-17815 // @tac 17822-17842
    }
    if (k == 3) && (((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1))))) && ((3 > 0)) && ((3 <= 3)) {  // sub-goal of `rcases` (Lean state)
      // have h₁₄ : p * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
      assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 17949-17987 // @tac 17949-17966
        // [TACTIC: «_<;>_» at hk ⊢ <;> linarith]
        // [TACTIC: ringNF at hk ⊢]
        IntPowOne(p);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
        // UNCITED-APPLIED internal ×157 [exec 4434 17949-17966]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×122) (cited in this block, not counted here: pow_one [Lean recorded ×3])
        assert ((-(1) + ((p * q) * r)) == ((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3)));  // hypothesis hk after `ring_nf` (Lean state) // @tac-hyp 17949-17966
        assert ((-(1) + ((p * q) * r)) == ((((-(3) + ((p * 3) - ((p * q) * 3))) + ((((p * q) * r) * 3) - ((p * r) * 3))) + ((q * 3) - ((q * r) * 3))) + (r * 3))) by {  // sub-goal of `linarith` (Lean state) // @tac 17979-17987
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(p);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
          // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 17979-17987 exec 4443)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + p * q * r - ((-3 : ℤ) + (p * (3 : ℤ) - p * q * (3 : ℤ)) + (p * q * r * (3 : ℤ) - p * r * (3 : ℤ…`
          cert_identity_250(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_251(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×171 [exec 4443 17979-17987]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, mul_one ×1; machinery/glue: Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×126) (cited in this block, not counted here: pow_one [Lean recorded ×3])
          // UNCITED-APPLIED internal ×166 [exec 4444 17979-17987]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×134)
          // UNCITED-APPLIED internal ×171 [exec 4445 17979-17987]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×139)
        }
      }
      // have h₁₅ : p == 2  [type from Lean state]
      assert (p == 2) by { // @tac 18029-18046
        // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 4469 18029-18046]
        // by_contra h
        if !((p == 2)) {
          assert false by {  // sub-goal before `have` (Lean state) // @tac 18055-18229 // @tac 18238-18279 // @tac 18288-18329 // @tac 18338-18383 // @tac 18392-18437 // @tac 18446-18491 // @tac 18500-18554 // @tac 18563-18617 // @tac 18626-18680 // @tac 18689-18751 // @tac 18760-18847 // @tac 18856-18901 // @tac 18910-18955 // @tac 18964-19009 // @tac 19018-19105 // @tac 19114-19446 // @tac 19455-19468
            // have h₁₆ : p >= 3  [type from Lean state]
            assert (p >= 3) by { // @tac 18094-18111
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 4493 18094-18111]
              // by_contra h
              if !((p >= 3)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 18122-18159 // @tac 18170-18205 // @tac 18216-18229
                  // have h₁₇ : p <= 2  [type from Lean state]
                  assert (p <= 2) by { // @tac 18151-18159
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18151-18159 exec 4510)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - (3 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_252(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×12 [exec 4510 18151-18159]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×60 [exec 4511 18151-18159]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // have h₁₈ : p == 2  [type from Lean state]
                  assert (p == 2) by { // @tac 18197-18205
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18197-18205 exec 4528)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)`
                    cert_identity_253(p, q, r);  // cert: add_lt_of_neg_of_le
                    cert_identity_254(p, q, r);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×20 [exec 4528 18197-18205]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×4, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
                    // UNCITED-APPLIED internal ×56 [exec 4529 18197-18205]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
                    // UNCITED-APPLIED internal ×60 [exec 4530 18197-18205]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: contradiction]
                }
                assert false;
              }
            }
            // have h₁₉ : q >= p + 1  [type from Lean state]
            assert (q >= (p + 1)) by { // @tac 18271-18279
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18271-18279 exec 4548)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (p + (1 : ℤ) - q) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_255(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×11 [exec 4548 18271-18279]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×49 [exec 4549 18271-18279]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3 (+22 more heads, ×34)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₀ : r >= q + 1  [type from Lean state]
            assert (r >= (q + 1)) by { // @tac 18321-18329
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18321-18329 exec 4566)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_256(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×11 [exec 4566 18321-18329]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×49 [exec 4567 18321-18329]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3 (+22 more heads, ×34)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₁ :  >= 3  [type from Lean state]
            assert (p >= 3) by { // @tac 18375-18383
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18375-18383 exec 4584)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_257(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×10 [exec 4584 18375-18383]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×55 [exec 4585 18375-18383]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+24 more heads, ×42)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₂ :  >= 4  [type from Lean state]
            assert (q >= 4) by { // @tac 18429-18437
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18429-18437 exec 4602)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (p + (1 : ℤ) - q) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_258(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×13 [exec 4602 18429-18437]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×73 [exec 4603 18429-18437]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4 (+23 more heads, ×56)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₃ :  >= 5  [type from Lean state]
            assert (r >= 5) by { // @tac 18483-18491
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18483-18491 exec 4620)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_259(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×16 [exec 4620 18483-18491]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×92 [exec 4621 18483-18491]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5 (+25 more heads, ×69)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₄ :  * q >= 3 * 4  [type from Lean state]
            assert ((p * q) >= (3 * 4)) by { // @tac 18545-18554
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18545-18554 exec 4638)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(6 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (6 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_260(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((1 + 1) - p) <= 0) && ((3 - p) <= 0) { cert_piece_261(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * (p + (1 : ℤ) - q) + (6 : ℤ) * ((3 : ℤ) - p) + (p * q + (1 : ℤ) - (3 : ℤ) * (4 : ℤ)) + -(((1 : ℤ) +…`
              cert_identity_262(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×23 [exec 4638 18545-18554]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×217 [exec 4639 18545-18554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+37 more heads, ×185)
              // UNCITED-APPLIED internal ×5 [exec 4640 18545-18554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4641 18545-18554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₅ :  * r >= 3 * 5  [type from Lean state]
            assert ((p * r) >= (3 * 5)) by { // @tac 18608-18617
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18608-18617 exec 4658)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((q + 1) - r) <= 0) { cert_piece_263(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * (q + (1 : ℤ) - r) + ((3 : ℤ) - p) + ((3 : ℤ) * (4 : ℤ) - p * q) + (p * r + (1 : ℤ) - (3 : ℤ) * (5 …`
              cert_identity_264(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×21 [exec 4658 18608-18617]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, sub_nonpos_of_le ×5, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_nonpos ×1
              // UNCITED-APPLIED internal ×200 [exec 4659 18608-18617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_mul ×8 (+35 more heads, ×168)
              // UNCITED-APPLIED internal ×5 [exec 4660 18608-18617]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₆ :  * r >= 4 * 5  [type from Lean state]
            assert ((q * r) >= (4 * 5)) by { // @tac 18671-18680
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18671-18680 exec 4677)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * (p + (1 : ℤ) - q) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((p + 1) - q) <= 0); (5 > 0)
              if (((1 + 1) - p) <= 0) && (((p + 1) - q) <= 0) { cert_piece_265(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              if (((p + 1) - q) <= 0) { cert_piece_266(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
              if (((p + 1) - q) <= 0) && (((q + 1) - r) <= 0) { cert_piece_267(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×7: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (5 : ℤ) * (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + ((3 : ℤ) - p) + ((3 : ℤ) * (5 : ℤ) - p * r) + (q * r + (1 …`
              cert_identity_268(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×28 [exec 4677 18671-18680]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×7, sub_nonpos_of_le ×6, Int.add_one_le_iff ×4, neg_nonpos_of_nonneg ×3, mul_nonneg_of_nonpos_of_nonpos ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
              // UNCITED-APPLIED internal ×240 [exec 4678 18671-18680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+36 more heads, ×208)
              // UNCITED-APPLIED internal ×5 [exec 4679 18671-18680]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₇ :  * q * r >= 3 * 4 * 5  [type from Lean state]
            assert (((p * q) * r) >= ((3 * 4) * 5)) by { // @tac 18742-18751
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18742-18751 exec 4696)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(20 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (20 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((4 : ℤ) * (5 : ℤ) - q * r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((4 * 5) - (q * r)) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((4 * 5) - (q * r)) <= 0) { cert_piece_269(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (20 : ℤ) * ((3 : ℤ) - p) + (2 : ℤ) * ((4 : ℤ) * (5 : ℤ) - q * r) + (p * q * r + (1 : ℤ) - (3 : ℤ) * (4 : ℤ) …`
              cert_identity_270(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×19 [exec 4696 18742-18751]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×210 [exec 4697 18742-18751]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.mul_congr ×8 (+34 more heads, ×178)
              // UNCITED-APPLIED internal ×5 [exec 4698 18742-18751]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4699 18742-18751]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith]  (not lowered)
            }
            // have h₂₈ :  * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
            assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 18839-18847
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18839-18847 exec 4716)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
              cert_identity_271(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_272(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×17 [exec 4716 18839-18847]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×178 [exec 4717 18839-18847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×146)
              // UNCITED-APPLIED internal ×179 [exec 4718 18839-18847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×147)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₂₉ :  >= 3  [type from Lean state]
            assert (p >= 3) by { // @tac 18893-18901
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18893-18901 exec 4735)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_273(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×10 [exec 4735 18893-18901]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×55 [exec 4736 18893-18901]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+24 more heads, ×42)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₃₀ :  >= 4  [type from Lean state]
            assert (q >= 4) by { // @tac 18947-18955
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 18947-18955 exec 4753)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (p + (1 : ℤ) - q) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_274(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×13 [exec 4753 18947-18955]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×73 [exec 4754 18947-18955]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4 (+23 more heads, ×56)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₃₁ :  >= 5  [type from Lean state]
            assert (r >= 5) by { // @tac 19001-19009
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19001-19009 exec 4771)
              // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (p + (1 : ℤ) - q) + (q + (1 : ℤ) - r) + ((3 : ℤ) - p) < (0 : ℤ)`
              cert_identity_275(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×16 [exec 4771 19001-19009]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×92 [exec 4772 19001-19009]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5 (+25 more heads, ×69)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₃₂ :  * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
            assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 19097-19105
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19097-19105 exec 4789)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
              cert_identity_276(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_277(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×17 [exec 4789 19097-19105]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×178 [exec 4790 19097-19105]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×146)
              // UNCITED-APPLIED internal ×179 [exec 4791 19097-19105]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×147)
              // [TACTIC: linarith]  (not lowered)
            }
            // have h₃₃ : False  [type from Lean state]
            assert false by { // @tac 19151-19446
              // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              SubNonnegInt(p, 2);  // cite: sub_nonneg
              SubNonnegInt(q, 3);  // cite: sub_nonneg
              SubNonnegInt(r, 4);  // cite: sub_nonneg
              // NOT APPLIED 1 of the 3 named instances of mul_nonneg: Lean's records at this tactic hold only 2 distinct applications of it (which named ones: not identified)
              assert (0 <= ((q - 3))) && (0 <= ((r - 4)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((q - 3), (r - 4));  // cite: mul_nonneg
              assert (0 <= ((p - 2))) && (0 <= ((q - 3)));  // precondition of IntMulNonneg (Lean: mul_nonneg)
              IntMulNonneg((p - 2), (q - 3));  // cite: mul_nonneg
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19151-19446 exec 4808)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(21 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (21 > 0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℤ) * -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((p * q) * r) - 1) - (3 * (((p - 1) * (q - 1)) * (r - 1))))) == 0); (2 > 0)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(25 : ℤ) * ((3 : ℤ) - p) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3 - p) <= 0); (25 > 0)
              if (0 <= (p - 2)) && (0 <= (q - 3)) { cert_piece_278(p, q, r); }  // cert: mul_nonneg
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -((q - (3 : ℤ)) * (r - (4 : ℤ))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= ((q - 3) * (r - 4))); (2 > 0)
              if (0 <= (q - 3)) && (0 <= (r - 4)) { cert_piece_279(p, q, r); }  // cert: mul_nonneg
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * ((4 : ℤ) * (5 : ℤ) - q * r)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 <= (((1 + 1) - p) * ((4 * 5) - (q * r)))); (2 > 0)
              if (((1 + 1) - p) <= 0) && (((4 * 5) - (q * r)) <= 0) { cert_piece_280(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * -(((1 : ℤ) + (1 : ℤ) - p) * -((q - (3 : ℤ)) * (r - (4 : ℤ)))) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1 + 1) - p) * ((q - 3) * (r - 4))) <= 0); (2 > 0)
              if (((1 + 1) - p) <= 0) && (0 <= ((q - 3) * (r - 4))) { cert_piece_281(p, q, r); }  // cert: mul_nonneg_of_nonpos_of_nonpos
              // UNCITED-APPLIED add_lt_of_neg_of_le ×5: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(21 : ℤ) * (-1 : ℤ) + (2 : ℤ) * -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) + (2…`
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(21 : ℤ) * (-1 : ℤ) + (2 : ℤ) * -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_282(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×27 [exec 4808 19151-19446]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, neg_nonpos_of_nonneg ×4, mul_nonneg_of_nonpos_of_nonpos ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.mul_nonpos ×4, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1) (cited in this block, not counted here: mul_nonneg [Lean recorded ×2], sub_nonneg [Lean recorded ×3])
              // UNCITED-APPLIED internal ×238 [exec 4809 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×206)
              // UNCITED-APPLIED internal ×5 [exec 4810 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4811 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4812 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4813 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4814 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×5 [exec 4815 19151-19446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: nlinarith [ sq_nonneg ( ( p : ℤ ) - 2 ) , sq_nonneg ( ( q : ℤ ) - 2 ) , sq_nonneg ( ( r : ℤ ) - 2 ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₃ ) , mul_nonneg ( sub_nonneg.mpr h₂ ) ( sub_nonneg.mpr h₄ ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₄ ) ]]  (not lowered)
            }
            // [TACTIC: exact h₃₃]
            assert false;
          }
          assert false;
        }
      }
      // have h₁₆ : q == 4  [type from Lean state]
      assert (q == 4) by { // @tac 19510-19545 // @tac 19554-19641 // @tac 19650-19703 // @tac 19712-20327 // @tac 20336-20385 // @tac 20394-20439 // @tac 20448-20501 // @tac 20510-20597 // @tac 20606-20773 // @tac 20782-20899 // @tac 20908-21025 // @tac 21034-21157 // @tac 21166-21275 // @tac 21284-21399 // @tac 21408-21519 // @tac 21528-25732 // @tac 25741-25860
        // have h₁₇ : p == 2  [type from Lean state]
        assert (p == 2) by { // @tac 19537-19545
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19537-19545 exec 4849)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p - (2 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_283(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_284(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 4849 19537-19545]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×56 [exec 4850 19537-19545]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
          // UNCITED-APPLIED internal ×55 [exec 4851 19537-19545]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₈ :  * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 19633-19641
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19633-19641 exec 4868)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_285(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_286(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 4868 19633-19641]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×178 [exec 4869 19633-19641]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×146)
          // UNCITED-APPLIED internal ×179 [exec 4870 19633-19641]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×147)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₉ :  == 2  [type from Lean state]
        assert (p == 2); // @tac 19685-19703
          // UNCITED-APPLIED internal ×5 [exec 4887 19685-19703]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
        // have h₂₀ :  >= 3  [type from Lean state]
        assert (q >= 3) by { // @tac 19759-19776
          // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 4911 19759-19776]
          // by_contra h
          if !((q >= 3)) {
            assert false by {  // sub-goal before `have` (Lean state) // @tac 19787-19824 // @tac 19835-19870 // @tac 19881-19934 // @tac 19945-19998 // @tac 20009-20054 // @tac 20065-20327 // @tac 20065-20191 // @tac 20065-20159 // @tac 20065-20121 // @tac 20149-20158 // @tac 20153-20158
              // have h₂₁ : q <= 2  [type from Lean state]
              assert (q <= 2) by { // @tac 19816-19824
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19816-19824 exec 4928)
                // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                cert_identity_287(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 4928 19816-19824]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // UNCITED-APPLIED internal ×74 [exec 4929 19816-19824]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                // [TACTIC: linarith]  (not lowered)
              }
              // have h₂₂ : q == 2  [type from Lean state]
              assert (q == 2) by { // @tac 19862-19870
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 19862-19870 exec 4946)
                // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                cert_identity_288(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×16 [exec 4946 19862-19870]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1
                // UNCITED-APPLIED internal ×74 [exec 4947 19862-19870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                // UNCITED-APPLIED internal ×74 [exec 4948 19862-19870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                // [TACTIC: linarith]  (not lowered)
              }
              // have h₂₃ :  == 2  [type from Lean state]
              assert (p == 2); // @tac 19916-19934
                // UNCITED-APPLIED internal ×5 [exec 4965 19916-19934]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
              // have h₂₄ :  == 2  [type from Lean state]
              assert (q == 2); // @tac 19980-19998
                // UNCITED-APPLIED internal ×5 [exec 4982 19980-19998]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                // [TACTIC: normNum [ h₂₂ ]]  (not lowered)
              // have h₂₅ :  >= 3  [type from Lean state]
              assert (r >= 3) by { // @tac 20046-20054
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20046-20054 exec 4999)
                // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                cert_identity_289(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 4999 20046-20054]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                // UNCITED-APPLIED internal ×74 [exec 5000 20046-20054]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: «_<;>_» [ h₁₇ , h₂₂ , h₂₃ , h₂₄ ] at h₁₈ <;> ( try omega ) <;> ( try nlinarith ) <;> ( try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] } )]
              // [TACTIC: normNum [ h₁₇ , h₂₂ , h₂₃ , h₂₄ ] at h₁₈]
              assert (((4 * r) - 1) == (3 * (r - 1)));  // hypothesis h₁₈ after `norm_num` (Lean state) // @tac-hyp 20065-20121
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×23 [exec 5032 20153-20158]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+8 more heads, ×8)
              // [TACTIC: try nlinarith]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try nlinarith )]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] }]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try { nlinarith [ mul_pos ( sub_pos.mpr h₀ . 2 . 1 ) ( sub_pos.mpr h₀ . 2 . 2 ) ] } )]  NOT RUN in Lean (no execution recorded)
            }
            assert false;
          }
        }
        // have h₂₁ :  >= q + 1  [type from Lean state]
        assert (r >= (q + 1)) by { // @tac 20377-20385
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20377-20385 exec 5061)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_290(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×11 [exec 5061 20377-20385]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×49 [exec 5062 20377-20385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3 (+22 more heads, ×34)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₂ :  >= 3  [type from Lean state]
        assert (q >= 3) by { // @tac 20431-20439
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20431-20439 exec 5079)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_291(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×14 [exec 5079 20431-20439]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×74 [exec 5080 20431-20439]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×56)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₃ :  == 2  [type from Lean state]
        assert (p == 2); // @tac 20483-20501
          // UNCITED-APPLIED internal ×5 [exec 5097 20483-20501]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₇ ]]  (not lowered)
        // have h₂₄ :  * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 20589-20597
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20589-20597 exec 5114)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_292(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_293(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 5114 20589-20597]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×178 [exec 5115 20589-20597]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×146)
          // UNCITED-APPLIED internal ×179 [exec 5116 20589-20597]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×147)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₅ : 2 * q * r - 1 == 3 * ( 1 * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((2 * q) * r) - 1) == (3 * ((1 * (q - 1)) * (r - 1)))) by { // @tac 20681-20773 // @tac 20681-20760 // @tac 20681-20723
          // [TACTIC: «_<;>_» [ h₁₇ , h₁₉ ] at h₂₄ ⊢ <;> ring_nf at h₂₄ ⊢ <;> linarith]
          // [TACTIC: normNum [ h₁₇ , h₁₉ ] at h₂₄ ⊢]
          // UNCITED-APPLIED internal ×2 [exec 5143 20681-20723]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×1
          assert ((((2 * q) * r) - 1) == (3 * ((q - 1) * (r - 1))));  // hypothesis h₂₄ after `norm_num` (Lean state) // @tac-hyp 20681-20723
          assert ((((2 * q) * r) - 1) == (3 * ((q - 1) * (r - 1)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 20738-20760
            IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
            IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
            assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))));  // hypothesis h₂₄ after `ring_nf` (Lean state) // @tac-hyp 20738-20760
            assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))) by {  // sub-goal of `linarith` (Lean state) // @tac 20765-20773
              // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
              // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20765-20773 exec 5161)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + q * r * (2 : ℤ) - ((3 : ℤ) - q * (3 : ℤ) + (q * r * (3 : ℤ) - r * (3 : ℤ)))) < (0 : ℤ)`
              cert_identity_294(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_295(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×152 [exec 5161 20765-20773]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, one_mul ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+39 more heads, ×107) (cited in this block, not counted here: pow_one [Lean recorded ×2])
              // UNCITED-APPLIED internal ×150 [exec 5162 20765-20773]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_isNat ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+33 more heads, ×120)
              // UNCITED-APPLIED internal ×161 [exec 5163 20765-20773]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+34 more heads, ×132)
            }
            // UNCITED-APPLIED internal ×131 [exec 5152 20738-20760]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+33 more heads, ×97) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
        }
        // have h₂₆ : 2 * q * r - 1 == 3 * ( ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((2 * q) * r) - 1) == (3 * ((q - 1) * (r - 1)))) by { // @tac 20853-20899 // @tac 20853-20875
          // [TACTIC: «_<;>_» at h₂₅ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₅ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×131 [exec 5185 20853-20875]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+33 more heads, ×97) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))));  // hypothesis h₂₅ after `ring_nf` (Lean state) // @tac-hyp 20853-20875
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 20890-20899
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(q);]
            // cite: pow_one [same instance stated in an enclosing scope: IntPowOne(r);]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 20890-20899 exec 5194)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((-1 : ℤ) + q * r * (2 : ℤ) - ((3 : ℤ) - q * (3 : ℤ) + (q * r * (3 : ℤ) - r * (3 : ℤ)))) < (0 : ℤ)`
            cert_identity_296(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_297(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×152 [exec 5194 20890-20899]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×8 (+37 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×2])
            // UNCITED-APPLIED internal ×150 [exec 5195 20890-20899]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_isNat ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+33 more heads, ×120)
            // UNCITED-APPLIED internal ×161 [exec 5196 20890-20899]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+34 more heads, ×132)
          }
        }
        // have h₂₇ : 2 * q * r - 1 == 3 * ( q * r - q - r + 1 )  [type from Lean state]
        assert ((((2 * q) * r) - 1) == (3 * ((((q * r) - q) - r) + 1))) by { // @tac 20979-21025 // @tac 20979-21001
          // [TACTIC: «_<;>_» at h₂₆ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₆ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×119 [exec 5218 20979-21001]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_add ×7 (+33 more heads, ×86) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))));  // hypothesis h₂₆ after `ring_nf` (Lean state) // @tac-hyp 20979-21001
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 21016-21025
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21016-21025 exec 5227)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_298(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_299(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 5227 21016-21025]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×200 [exec 5228 21016-21025]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×168)
            // UNCITED-APPLIED internal ×209 [exec 5229 21016-21025]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×177)
          }
        }
        // have h₂₈ : 2 * q * r - 1 == 3 * q * r - 3 * q - 3 * r + 3  [type from Lean state]
        assert ((((2 * q) * r) - 1) == (((((3 * q) * r) - (3 * q)) - (3 * r)) + 3)) by { // @tac 21111-21157 // @tac 21111-21133
          // [TACTIC: «_<;>_» at h₂₇ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₇ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×109 [exec 5251 21111-21133]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+32 more heads, ×77) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))));  // hypothesis h₂₇ after `ring_nf` (Lean state) // @tac-hyp 21111-21133
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 21148-21157
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21148-21157 exec 5260)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_300(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_301(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 5260 21148-21157]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×200 [exec 5261 21148-21157]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×168)
            // UNCITED-APPLIED internal ×209 [exec 5262 21148-21157]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×177)
          }
        }
        // have h₂₉ : - q * r + 3 * q + 3 * r - 4 == 0  [type from Lean state]
        assert (((((-(q) * r) + (3 * q)) + (3 * r)) - 4) == 0) by { // @tac 21229-21275 // @tac 21229-21251
          // [TACTIC: «_<;>_» at h₂₈ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₈ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×85 [exec 5284 21229-21251]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×58) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert ((-(1) + ((q * r) * 2)) == ((3 - (q * 3)) + (((q * r) * 3) - (r * 3))));  // hypothesis h₂₈ after `ring_nf` (Lean state) // @tac-hyp 21229-21251
          assert (((-(4) + ((q * 3) - (q * r))) + (r * 3)) == 0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 21266-21275
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21266-21275 exec 5293)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_302(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_303(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×16 [exec 5293 21266-21275]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×195 [exec 5294 21266-21275]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×163)
            // UNCITED-APPLIED internal ×200 [exec 5295 21266-21275]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×168)
          }
        }
        // have h₃₀ :  * r - 3 * q - 3 * r + 4 == 0  [type from Lean state]
        assert (((((q * r) - (3 * q)) - (3 * r)) + 4) == 0) by { // @tac 21353-21399 // @tac 21353-21375
          // [TACTIC: «_<;>_» at h₂₉ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₂₉ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×81 [exec 5317 21353-21375]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+32 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert (((-(4) + ((q * 3) - (q * r))) + (r * 3)) == 0);  // hypothesis h₂₉ after `ring_nf` (Lean state) // @tac-hyp 21353-21375
          assert (((4 - (q * 3)) + ((q * r) - (r * 3))) == 0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 21390-21399
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21390-21399 exec 5326)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_304(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_305(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×16 [exec 5326 21390-21399]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×185 [exec 5327 21390-21399]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×153)
            // UNCITED-APPLIED internal ×197 [exec 5328 21390-21399]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×165)
          }
        }
        // have h₃₁ : q - 3 * r - 3 == 5  [type from Lean state]
        assert (((q - 3) * (r - 3)) == 5) by { // @tac 21473-21519 // @tac 21473-21495
          // [TACTIC: «_<;>_» at h₃₀ ⊢ <;> nlinarith]
          // [TACTIC: ringNF at h₃₀ ⊢]
          IntPowOne(q);  // cite: pow_one [applied by the tactic, not named in it]
          IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := r)
          // UNCITED-APPLIED internal ×82 [exec 5350 21473-21495]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+32 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          assert (((4 - (q * 3)) + ((q * r) - (r * 3))) == 0);  // hypothesis h₃₀ after `ring_nf` (Lean state) // @tac-hyp 21473-21495
          assert (((9 - (q * 3)) + ((q * r) - (r * 3))) == 5) by {  // sub-goal of `nlinarith` (Lean state) // @tac 21510-21519
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21510-21519 exec 5359)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
            cert_identity_306(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_307(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 5359 21510-21519]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×199 [exec 5360 21510-21519]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×167)
            // UNCITED-APPLIED internal ×208 [exec 5361 21510-21519]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+35 more heads, ×176)
          }
        }
        // have h₃₂ :  - 3 == 1 &&  - 3 == 5 ||  - 3 == 5 &&  - 3 == 1 ||  - 3 == - 1 &&  -   [type from Lean state]
        assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1)))))) by { // @tac 21735-24090 // @tac 24101-25732
          // have h₃₃ :  - 3 == 1 ||  - 3 == 5 ||  - 3 == - 1 ||  - 3 == - 5  [type from Lean state]
          assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5))))) by { // @tac 21854-21949 // @tac 21962-24064 // @tac 24077-24090
            // have h₃₄ : ( q : ℤ ) - 3 ∣ 5  [type from Lean state]
            assert IntDvd((q - 3), 5) by { // @tac 21909-21926
              // [TACTIC: use ( r : ℤ ) - 3]
              assert (5 == ((q - 3) * (r - 3))) by {  // sub-goal of `use` (Lean state) // @tac 21941-21949
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 21941-21949 exec 5429)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                cert_identity_308(p, q, r);  // cert: add_lt_of_neg_of_le
                cert_identity_309(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×17 [exec 5429 21941-21949]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×206 [exec 5430 21941-21949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×174)
                // UNCITED-APPLIED internal ×197 [exec 5431 21941-21949]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×165)
                // [TACTIC: linarith]  (not lowered)
              }
            }
            // have h₃₅ :  - 3 == 1 ||  - 3 == 5 ||  - 3 == - 1 ||  - 3 == - 5  [type from Lean state]
            assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5))))) by { // @tac 22083-24036 // @tac 24051-24064
              // have h₃₆ :  - 3 == 1 ||  - 3 == 5 ||  - 3 == - 1 ||  - 3 == - 5  [type from Lean state]
              assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5))))) by { // @tac 22206-22247 // @tac 22366-22466 // @tac 22567-22911 // @tac 22928-24036
                // [TACTIC: rwSeq [ ← Int.natAbs_dvd_natAbs ] at h₃₄]
                // UNCITED Int.natAbs_dvd_natAbs: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                assert NatDvd(IntAbs((q - 3)), IntAbs(5));  // hypothesis h₃₄ after `rw` (Lean state) // @tac-hyp 22206-22247
                // have h₃₇ : ( ( q : ℤ ) - 3 ) . natAbs ∣ 5  [type from Lean state]
                assert NatDvd(IntAbs((q - 3)), 5) by { // @tac 22434-22466
                  // [TACTIC: simpa [ Int.natAbs ] using h₃₄]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  IntNatAbsDvdNatAbs((q - 3), 5);  // cite: Int.natAbs_dvd_natAbs [applied by the tactic, not named in it]
                  // UNCITED Int.natAbs: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                  // UNCITED-APPLIED internal ×2 [exec 5511 22434-22466]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1, Eq.symm ×1 (cited in this block, not counted here: Int.natAbs_dvd_natAbs [Lean recorded ×1])
                }
                // have h₃₈ : ( ( q : ℤ ) - 3 ) . natAbs == 1 || ( ( q : ℤ ) - 3 ) . natAbs == 5  [type from Lean state]
                assert ((IntAbs((q - 3)) == 1) || (IntAbs((q - 3)) == 5)) by { // @tac 22664-22718 // @tac 22737-22817 // @tac 22836-22911 // @tac 22836-22901 // @tac 22836-22873
                  // have h₃₉ : ( ( q : ℤ ) - 3 ) . natAbs ∣ 5  [type from Lean state]
                  assert NatDvd(IntAbs((q - 3)), 5) by {
                    // [TACTIC: exact h₃₇]
                    assert NatDvd(IntAbs((q - 3)), 5);
                  }
                  // have h₄₀ : ( ( q : ℤ ) - 3 ) . natAbs <= 5  [type from Lean state]
                  assert (IntAbs((q - 3)) <= 5) by {
                    assert (0 < 5) by {  // sub-goal of `by` (Lean state) // @tac 22802-22808
                      // [TACTIC: decide]
                      // UNCITED-APPLIED internal ×1 [exec 5554 22802-22808]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                    }
                    // [TACTIC: exact Nat.le_of_dvd ( ( by decide ) , h₃₉ )]
                    assert (0 < (5)) && (NatDvd((IntAbs((q - 3))), (5)));  // precondition of NatLeOfDvd (Lean: Nat.le_of_dvd)
                    NatLeOfDvd(IntAbs((q - 3)), 5);  // cite: Nat.le_of_dvd
                  }
                  // [TACTIC: «_<;>_» ( ( q : ℤ ) - 3 ) . natAbs <;> norm_num at h₃₉ ⊢ <;> omega]
                  // [TACTIC: intervalCases ( ( q : ℤ ) - 3 ) . natAbs]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  IntNatAbsDvdNatAbs((q - 3), 5);  // cite: Int.natAbs_dvd_natAbs [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×23 [exec 5567 22836-22873]: applications made inside the tactic's own automation, not stated — le_antisymm ×6, Nat.ge_of_not_lt ×5, Nat.zero_le ×1; machinery/glue: Eq.symm ×7, Mathlib.Tactic.IntervalCases.of_le_right ×1, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Int.natAbs_dvd_natAbs [Lean recorded ×1])
                  if (NatDvd(0, IntAbs(5))) && (NatDvd(0, 5)) && ((0 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((0 == 1) || (0 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×4 [exec 5576 22878-22901]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(1, IntAbs(5))) && (NatDvd(1, 5)) && ((1 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((1 == 1) || (1 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×11 [exec 5579 22878-22901]: applications made inside the tactic's own automation, not stated — or_false ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+5 more heads, ×5)
                  }
                  if (NatDvd(2, IntAbs(5))) && (NatDvd(2, 5)) && ((2 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((2 == 1) || (2 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×4 [exec 5582 22878-22901]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(3, IntAbs(5))) && (NatDvd(3, 5)) && ((3 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((3 == 1) || (3 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×4 [exec 5585 22878-22901]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(4, IntAbs(5))) && (NatDvd(4, 5)) && ((4 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((4 == 1) || (4 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×4 [exec 5588 22878-22901]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_dvd_false ×1
                  }
                  if (NatDvd(5, IntAbs(5))) && (NatDvd(5, 5)) && ((5 <= 5)) {  // sub-goal of `norm_num` (Lean state)
                    assert ((5 == 1) || (5 == 5));  // sub-goal of `norm_num` (Lean state) // @tac 22878-22901
                    // UNCITED-APPLIED internal ×11 [exec 5591 22878-22901]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+5 more heads, ×5)
                  }
                }
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((IntAbs((q - 3)) == 1)) {  // sub-goal of `cases` (Lean state)
                  // have h₄₁ :  - 3 == 1 ||  - 3 == - 1  [type from Lean state]
                  assert (((q - 3) == 1) || ((q - 3) == -(1))) by { // @tac 23080-23132 // @tac 23153-23298 // @tac 23319-23332
                    // have h₄₂ : ( ( q : ℤ ) - 3 ) . natAbs == 1  [type from Lean state]
                    assert (IntAbs((q - 3)) == 1) by {
                      // [TACTIC: exact h₃₈]
                      assert (IntAbs((q - 3)) == 1);
                    }
                    // have h₄₃ :  - 3 == 1 ||  - 3 == - 1  [type from Lean state]
                    assert (((q - 3) == 1) || ((q - 3) == -(1))) by { // @tac 23237-23270 // @tac 23293-23298
                      // [TACTIC: rwSeq [ Int.natAbs_eq_iff ] at h₄₂]
                      // UNCITED Int.natAbs_eq_iff: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                      assert (((q - 3) == (1 as int)) || ((q - 3) == -((1 as int))));  // hypothesis h₄₂ after `rw` (Lean state) // @tac-hyp 23237-23270
                      IntNatAbsEqIff((q - 3), 1);  // cite: Int.natAbs_eq_iff [applied by the tactic, not named in it: inside its internal steps (`assumption` exec 5680)]
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 5680 23293-23298]
                      // [TACTIC: tauto]  (not lowered)
                    }
                    // [TACTIC: exact h₄₃]
                    assert (((q - 3) == 1) || ((q - 3) == -(1)));
                  }
                  // `cases`: 2 cases (Lean states); 2 branch bodies
                  if (((q - 3) == 1)) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 5691 23425-23430]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 23425-23430
                  }
                  if (((q - 3) == -(1))) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 5701 23486-23491]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 23486-23491
                  }
                  assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 22998-23332 // @tac 23351-23491
                }
                if ((IntAbs((q - 3)) == 5)) {  // sub-goal of `cases` (Lean state)
                  // have h₄₁ :  - 3 == 5 ||  - 3 == - 5  [type from Lean state]
                  assert (((q - 3) == 5) || ((q - 3) == -(5))) by { // @tac 23625-23677 // @tac 23698-23843 // @tac 23864-23877
                    // have h₄₂ : ( ( q : ℤ ) - 3 ) . natAbs == 5  [type from Lean state]
                    assert (IntAbs((q - 3)) == 5) by {
                      // [TACTIC: exact h₃₈]
                      assert (IntAbs((q - 3)) == 5);
                    }
                    // have h₄₃ :  - 3 == 5 ||  - 3 == - 5  [type from Lean state]
                    assert (((q - 3) == 5) || ((q - 3) == -(5))) by { // @tac 23782-23815 // @tac 23838-23843
                      // [TACTIC: rwSeq [ Int.natAbs_eq_iff ] at h₄₂]
                      // UNCITED Int.natAbs_eq_iff: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                      assert (((q - 3) == (5 as int)) || ((q - 3) == -((5 as int))));  // hypothesis h₄₂ after `rw` (Lean state) // @tac-hyp 23782-23815
                      IntNatAbsEqIff((q - 3), 5);  // cite: Int.natAbs_eq_iff [applied by the tactic, not named in it: inside its internal steps (`assumption` exec 5790)]
                      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 5790 23838-23843]
                      // [TACTIC: tauto]  (not lowered)
                    }
                    // [TACTIC: exact h₄₃]
                    assert (((q - 3) == 5) || ((q - 3) == -(5)));
                  }
                  // `cases`: 2 cases (Lean states); 2 branch bodies
                  if (((q - 3) == 5)) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 5801 23970-23975]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 23970-23975
                  }
                  if (((q - 3) == -(5))) {  // sub-goal of `cases` (Lean state)
                    // UNCITED-APPLIED Classical.or_iff_not_imp_left: library counterpart OrIffNotImpLeft (as `or_iff_not_imp_left`) exists, but the translation of this tactic states no such instance [exec 5814 24031-24036]
                    // [TACTIC: tauto]  (not lowered)
                    assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 24031-24036
                  }
                  assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));  // sub-goal of `cases` (Lean state) // @tac 23543-23877 // @tac 23896-24036
                }
              }
              // [TACTIC: exact h₃₆]
              assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));
            }
            // [TACTIC: exact h₃₅]
            assert (((q - 3) == 1) || (((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5)))));
          }
          // `cases`: 2 cases (Lean states); 2 branch bodies
          if (((q - 3) == 1)) {  // sub-goal of `cases` (Lean state)
            // have h₃₄ :  - 3 == 1  [type from Lean state]
            assert ((q - 3) == 1) by {
              // [TACTIC: exact h₃₃]
              assert ((q - 3) == 1);
            }
            // have h₃₅ :  - 3 == 5  [type from Lean state]
            assert ((r - 3) == 5) by { // @tac 24268-24351 // @tac 24366-24389 // @tac 24404-24412
              // have h₃₆ : (  - 3 ) * (  - 3 ) == 5  [type from Lean state]
              assert (((q - 3) * (r - 3)) == 5) by { // @tac 24343-24351
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 24343-24351 exec 5873)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                cert_identity_310(p, q, r);  // cert: add_lt_of_neg_of_le
                cert_identity_311(p, q, r);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×17 [exec 5873 24343-24351]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×197 [exec 5874 24343-24351]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×165)
                // UNCITED-APPLIED internal ×206 [exec 5875 24343-24351]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×174)
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
              assert ((1 * (r - 3)) == 5);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 24366-24389
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 24404-24412 exec 5907)
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((1 : ℤ) * (r - (3 : ℤ)) - (5 : ℤ)) < (0 : ℤ)`
              cert_identity_312(p, q, r);  // cert: add_lt_of_neg_of_le
              cert_identity_313(p, q, r);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×18 [exec 5907 24404-24412]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×93 [exec 5908 24404-24412]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6, Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Tactic.Ring.neg_add ×5 (+31 more heads, ×70)
              // UNCITED-APPLIED internal ×89 [exec 5909 24404-24412]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+32 more heads, ×69)
              // [TACTIC: linarith]  (not lowered)
            }
            // [TACTIC: exact Or.inl ⟨ h₃₄ , h₃₅ ⟩]
            // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inl`: its statement (the premise of Or.inl it proves) is not recorded, not stated
            // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
            assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 24159-24202 // @tac 24215-24412 // @tac 24425-24460
          }
          if ((((q - 3) == 5) || (((q - 3) == -(1)) || ((q - 3) == -(5))))) {  // sub-goal of `cases` (Lean state)
            // `cases`: 2 cases (Lean states); 2 branch bodies
            if (((q - 3) == 5)) {  // sub-goal of `cases` (Lean state)
              // have h₃₄ :  - 3 == 5  [type from Lean state]
              assert ((q - 3) == 5) by {
                // [TACTIC: exact h₃₃]
                assert ((q - 3) == 5);
              }
              // have h₃₅ :  - 3 == 1  [type from Lean state]
              assert ((r - 3) == 1) by { // @tac 24675-24760 // @tac 24777-24800 // @tac 24817-24825
                // have h₃₆ : (  - 3 ) * (  - 3 ) == 5  [type from Lean state]
                assert (((q - 3) * (r - 3)) == 5) by { // @tac 24752-24760
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 24752-24760 exec 5963)
                  // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((2 : ℤ) * q * r - (1 : ℤ) - (3 : ℤ) * ((1 : ℤ) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
                  cert_identity_314(p, q, r);  // cert: add_lt_of_neg_of_le
                  cert_identity_315(p, q, r);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×17 [exec 5963 24752-24760]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×197 [exec 5964 24752-24760]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+35 more heads, ×165)
                  // UNCITED-APPLIED internal ×206 [exec 5965 24752-24760]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×174)
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                assert ((5 * (r - 3)) == 5);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 24777-24800
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 24817-24825 exec 5997)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (25 > 0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(5 : ℤ) * (q + (1 : ℤ) - r) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((q + 1) - r) <= 0); (5 > 0)
                // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℤ) * -(q - (3 : ℤ) - (5 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((q - 3) - 5)) == 0); (5 > 0)
                // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(25 : ℤ) * (-1 : ℤ) + (5 : ℤ) * (q + (1 : ℤ) - r) + (5 : ℤ) * -(q - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(25 : ℤ) * (-1 : ℤ) + (5 : ℤ) * (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_316(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                // UNCITED-APPLIED internal ×18 [exec 5997 24817-24825]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+4 more heads, ×4)
                // UNCITED-APPLIED internal ×152 [exec 5998 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isInt_mul ×7 (+32 more heads, ×121)
                // UNCITED-APPLIED internal ×5 [exec 5999 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 6000 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 6001 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×152 [exec 6002 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isInt_mul ×7 (+32 more heads, ×121)
                // UNCITED-APPLIED internal ×5 [exec 6003 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 6004 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 6005 24817-24825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // [TACTIC: linarith]  (not lowered)
              }
              // [TACTIC: exact Or.inr ( Or.inl ⟨ h₃₄ , h₃₅ ⟩ )]
              // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
              // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
              assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 24562-24605 // @tac 24620-24825 // @tac 24840-24884
            }
            if ((((q - 3) == -(1)) || ((q - 3) == -(5)))) {  // sub-goal of `cases` (Lean state)
              // `cases`: 2 cases (Lean states); 2 branch bodies
              if (((q - 3) == -(1))) {  // sub-goal of `cases` (Lean state)
                // have h₃₄ :  - 3 == - 1  [type from Lean state]
                assert ((q - 3) == -(1)) by {
                  // [TACTIC: exact h₃₃]
                  assert ((q - 3) == -(1));
                }
                // have h₃₅ :  - 3 == - 5  [type from Lean state]
                assert ((r - 3) == -(5)) by { // @tac 25113-25200 // @tac 25219-25242 // @tac 25261-25269
                  // have h₃₆ : (  - 3 ) * (  - 3 ) == 5  [type from Lean state]
                  assert (((q - 3) * (r - 3)) == 5) by { // @tac 25192-25200
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 25192-25200 exec 6059)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                    cert_identity_317(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×14 [exec 6059 25192-25200]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×80 [exec 6060 25192-25200]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
                    // UNCITED-APPLIED internal ×80 [exec 6061 25192-25200]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                  assert ((-(1) * (r - 3)) == 5);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 25219-25242
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 25261-25269 exec 6093)
                  // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                  cert_identity_318(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                  // UNCITED-APPLIED internal ×14 [exec 6093 25261-25269]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×80 [exec 6094 25261-25269]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
                  // UNCITED-APPLIED internal ×80 [exec 6095 25261-25269]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: exact Or.inr ( Or.inr ( Or.inl ⟨ h₃₄ , h₃₅ ⟩ ) )]
                // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
                assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 24994-25038 // @tac 25055-25269 // @tac 25286-25339
              }
              if (((q - 3) == -(5))) {  // sub-goal of `cases` (Lean state)
                // have h₃₄ :  - 3 == - 5  [type from Lean state]
                assert ((q - 3) == -(5)) by {
                  // [TACTIC: exact h₃₃]
                  assert ((q - 3) == -(5));
                }
                // have h₃₅ :  - 3 == - 1  [type from Lean state]
                assert ((r - 3) == -(1)) by { // @tac 25506-25593 // @tac 25612-25635 // @tac 25654-25662
                  // have h₃₆ : (  - 3 ) * (  - 3 ) == 5  [type from Lean state]
                  assert (((q - 3) * (r - 3)) == 5) by { // @tac 25585-25593
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 25585-25593 exec 6144)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
                    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                    cert_identity_319(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×15 [exec 6144 25585-25593]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
                    // UNCITED-APPLIED internal ×100 [exec 6145 25585-25593]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
                    // UNCITED-APPLIED internal ×5 [exec 6146 25585-25593]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×100 [exec 6147 25585-25593]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
                    // UNCITED-APPLIED internal ×5 [exec 6148 25585-25593]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // [TACTIC: linarith]  (not lowered)
                  }
                  // [TACTIC: rwSeq [ h₃₄ ] at h₃₆]
                  assert ((-(5) * (r - 3)) == 5);  // hypothesis h₃₆ after `rw` (Lean state) // @tac-hyp 25612-25635
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 25654-25662 exec 6180)
                  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
                  // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
                  cert_identity_320(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
                  // UNCITED-APPLIED internal ×15 [exec 6180 25654-25662]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
                  // UNCITED-APPLIED internal ×100 [exec 6181 25654-25662]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
                  // UNCITED-APPLIED internal ×5 [exec 6182 25654-25662]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // UNCITED-APPLIED internal ×100 [exec 6183 25654-25662]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
                  // UNCITED-APPLIED internal ×5 [exec 6184 25654-25662]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // [TACTIC: linarith]  (not lowered)
                }
                // [TACTIC: exact Or.inr ( Or.inr ( Or.inr ⟨ h₃₄ , h₃₅ ⟩ ) )]
                // GAP: the anonymous constructor ⟨…⟩ passed to `Or.inr`: its statement (the premise of Or.inr it proves) is not recorded, not stated
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
                assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 25387-25431 // @tac 25448-25662 // @tac 25679-25732
              }
              assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 24928-25732
            }
            assert ((((q - 3) == 1) && ((r - 3) == 5)) || ((((q - 3) == 5) && ((r - 3) == 1)) || ((((q - 3) == -(1)) && ((r - 3) == -(5))) || (((q - 3) == -(5)) && ((r - 3) == -(1))))));  // sub-goal of `cases` (Lean state) // @tac 24500-25732
          }
        }
        // `rcases`: 4 cases (Lean states); 4 branch bodies
        if (((q - 3) == 1)) && (((r - 3) == 5)) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 4  [type from Lean state]
          assert (q == 4) by { // @tac 25956-25964
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 25956-25964 exec 6207)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(q - (3 : ℤ) - (1 : ℤ)) < (0 : ℤ)`
            cert_identity_321(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_322(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 6207 25956-25964]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×72 [exec 6208 25956-25964]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_add ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+23 more heads, ×53)
            // UNCITED-APPLIED internal ×64 [exec 6209 25956-25964]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.IsInt.of_raw ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4 (+25 more heads, ×48)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 8  [type from Lean state]
          assert (r == 8) by { // @tac 26014-26022
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26014-26022 exec 6226)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(r - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)`
            cert_identity_323(p, q, r);  // cert: add_lt_of_neg_of_le
            cert_identity_324(p, q, r);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 6226 26014-26022]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×84 [exec 6227 26014-26022]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_one_mul ×5 (+23 more heads, ×62)
            // UNCITED-APPLIED internal ×73 [exec 6228 26014-26022]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+25 more heads, ×53)
            // [TACTIC: linarith]  (not lowered)
          }
          // [TACTIC: «_<;>_» [ h₃₄ , h₃₅ , h₁₅ ] <;> norm_num <;> omega]
          // [TACTIC: simp [ h₃₄ , h₃₅ , h₁₅ ]]
          // UNCITED-APPLIED internal ×4 [exec 6239 26033-26065]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
          // `simp` closed the goal; the rest of the chain did not run
          assert (q == 4);  // sub-goal of `rcases` (Lean state) // @tac 25869-26098 // @tac 25917-25964 // @tac 25975-26022 // @tac 26033-26098 // @tac 26033-26088 // @tac 26033-26065
        }
        if (((q - 3) == 5)) && (((r - 3) == 1)) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 8  [type from Lean state]
          assert (q == 8) by { // @tac 26194-26202
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26194-26202 exec 6272)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_325(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 6272 26194-26202]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×107 [exec 6273 26194-26202]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 6274 26194-26202]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×107 [exec 6275 26194-26202]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 6276 26194-26202]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 4  [type from Lean state]
          assert (r == 4) by { // @tac 26252-26260
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26252-26260 exec 6293)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_326(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 6293 26252-26260]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×107 [exec 6294 26252-26260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 6295 26252-26260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×107 [exec 6296 26252-26260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 6297 26252-26260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 26310-26318
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26310-26318 exec 6314)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_327(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 6314 26310-26318]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×107 [exec 6315 26310-26318]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
            // UNCITED-APPLIED internal ×5 [exec 6316 26310-26318]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26329-26337 exec 6317)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) + -(q - (3 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(5 : ℤ) * (-1 : ℤ) + (q + (1 : ℤ) - r) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_328(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×15 [exec 6317 26329-26337]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+2 more heads, ×2)
          // UNCITED-APPLIED internal ×107 [exec 6318 26329-26337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
          // UNCITED-APPLIED internal ×5 [exec 6319 26329-26337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // UNCITED-APPLIED internal ×107 [exec 6320 26329-26337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.isInt_add ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.isInt_mul ×5 (+29 more heads, ×82)
          // UNCITED-APPLIED internal ×5 [exec 6321 26329-26337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // [TACTIC: linarith]  (not lowered)
          assert (q == 4);  // sub-goal of `rcases` (Lean state) // @tac 26107-26337 // @tac 26155-26202 // @tac 26213-26260 // @tac 26271-26318 // @tac 26329-26337
        }
        if (((q - 3) == -(1))) && (((r - 3) == -(5))) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == 2  [type from Lean state]
          assert (q == 2) by { // @tac 26435-26443
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26435-26443 exec 6342)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_329(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 6342 26435-26443]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×80 [exec 6343 26435-26443]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
            // UNCITED-APPLIED internal ×80 [exec 6344 26435-26443]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == - 2  [type from Lean state]
          assert (r == -(2)) by { // @tac 26494-26502
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26494-26502 exec 6361)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_330(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 6361 26494-26502]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×80 [exec 6362 26494-26502]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
            // UNCITED-APPLIED internal ×80 [exec 6363 26494-26502]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 26552-26560
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26552-26560 exec 6380)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_331(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×13 [exec 6380 26552-26560]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×80 [exec 6381 26552-26560]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26571-26579 exec 6382)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_332(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×14 [exec 6382 26571-26579]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×80 [exec 6383 26571-26579]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
          // UNCITED-APPLIED internal ×80 [exec 6384 26571-26579]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Tactic.Ring.add_pf_add_overlap ×4 (+25 more heads, ×62)
          // [TACTIC: linarith]  (not lowered)
          assert (q == 4);  // sub-goal of `rcases` (Lean state) // @tac 26346-26579 // @tac 26396-26443 // @tac 26454-26502 // @tac 26513-26560 // @tac 26571-26579
        }
        if (((q - 3) == -(5))) && (((r - 3) == -(1))) {  // sub-goal of `rcases` (Lean state)
          // have h₃₄ : q == - 2  [type from Lean state]
          assert (q == -(2)) by { // @tac 26678-26686
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26678-26686 exec 6405)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_333(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 6405 26678-26686]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×100 [exec 6406 26678-26686]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
            // UNCITED-APPLIED internal ×5 [exec 6407 26678-26686]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×100 [exec 6408 26678-26686]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
            // UNCITED-APPLIED internal ×5 [exec 6409 26678-26686]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₅ : r == 2  [type from Lean state]
          assert (r == 2) by { // @tac 26736-26744
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26736-26744 exec 6426)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_334(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×15 [exec 6426 26736-26744]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×100 [exec 6427 26736-26744]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
            // UNCITED-APPLIED internal ×5 [exec 6428 26736-26744]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×100 [exec 6429 26736-26744]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
            // UNCITED-APPLIED internal ×5 [exec 6430 26736-26744]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // have h₃₆ : r > q  [type from Lean state]
          assert (r > q) by { // @tac 26794-26802
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26794-26802 exec 6447)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
            cert_identity_335(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×14 [exec 6447 26794-26802]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×100 [exec 6448 26794-26802]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
            // UNCITED-APPLIED internal ×5 [exec 6449 26794-26802]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // [TACTIC: linarith]  (not lowered)
          }
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26813-26821 exec 6450)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (5 > 0)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(5 : ℤ) * (-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) + (p + (1 : ℤ) - q) < (0 : ℤ)`
          cert_identity_336(p, q, r);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×15 [exec 6450 26813-26821]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
          // UNCITED-APPLIED internal ×100 [exec 6451 26813-26821]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
          // UNCITED-APPLIED internal ×5 [exec 6452 26813-26821]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // UNCITED-APPLIED internal ×100 [exec 6453 26813-26821]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+30 more heads, ×78)
          // UNCITED-APPLIED internal ×5 [exec 6454 26813-26821]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // [TACTIC: linarith]  (not lowered)
          assert (q == 4);  // sub-goal of `rcases` (Lean state) // @tac 26588-26821 // @tac 26638-26686 // @tac 26697-26744 // @tac 26755-26802 // @tac 26813-26821
        }
      }
      // have h₁₇ : r == 8  [type from Lean state]
      assert (r == 8) by { // @tac 26863-26898 // @tac 26907-26942 // @tac 26951-27038 // @tac 27047-27100 // @tac 27109-27162 // @tac 27171-27272 // @tac 27171-27262 // @tac 27171-27227 // @tac 27240-27262 // @tac 27267-27272
        // have h₁₈ : p == 2  [type from Lean state]
        assert (p == 2) by { // @tac 26890-26898
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26890-26898 exec 6487)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - p) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (p - (2 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_337(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_338(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×18 [exec 6487 26890-26898]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×56 [exec 6488 26890-26898]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3 (+25 more heads, ×42)
          // UNCITED-APPLIED internal ×55 [exec 6489 26890-26898]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₁₉ : q == 4  [type from Lean state]
        assert (q == 4) by { // @tac 26934-26942
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 26934-26942 exec 6506)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(q - (4 : ℤ)) < (0 : ℤ)`
          cert_identity_339(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_340(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 6506 26934-26942]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×61 [exec 6507 26934-26942]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.add_congr ×3 (+23 more heads, ×46)
          // UNCITED-APPLIED internal ×55 [exec 6508 26934-26942]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3 (+25 more heads, ×43)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₀ :  * q * r - 1 == 3 * ( ( p - 1 ) * ( q - 1 ) * ( r - 1 ) )  [type from Lean state]
        assert ((((p * q) * r) - 1) == (3 * (((p - 1) * (q - 1)) * (r - 1)))) by { // @tac 27030-27038
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 27030-27038 exec 6525)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(p * q * r - (1 : ℤ) - (3 : ℤ) * ((p - (1 : ℤ)) * (q - (1 : ℤ)) * (r - (1 : ℤ)))) < (0 : ℤ)`
          cert_identity_341(p, q, r);  // cert: add_lt_of_neg_of_le
          cert_identity_342(p, q, r);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×17 [exec 6525 27030-27038]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×178 [exec 6526 27030-27038]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+34 more heads, ×146)
          // UNCITED-APPLIED internal ×179 [exec 6527 27030-27038]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+33 more heads, ×147)
          // [TACTIC: linarith]  (not lowered)
        }
        // have h₂₁ :  == 2  [type from Lean state]
        assert (p == 2); // @tac 27082-27100
          // UNCITED-APPLIED internal ×5 [exec 6544 27082-27100]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₈ ]]  (not lowered)
        // have h₂₂ :  == 4  [type from Lean state]
        assert (q == 4); // @tac 27144-27162
          // UNCITED-APPLIED internal ×5 [exec 6561 27144-27162]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
          // [TACTIC: normNum [ h₁₉ ]]  (not lowered)
        // [TACTIC: «_<;>_» [ h₁₈ , h₁₉ , h₂₁ , h₂₂ ] at h₂₀ <;> ring_nf at h₂₀ ⊢ <;> omega]
        // [TACTIC: normNum [ h₁₈ , h₁₉ , h₂₁ , h₂₂ ] at h₂₀]
        assert (((8 * r) - 1) == (3 * (3 * (r - 1))));  // hypothesis h₂₀ after `norm_num` (Lean state) // @tac-hyp 27171-27227
        assert ((-(1) + (r * 8)) == (-(9) + (r * 9)));  // hypothesis h₂₀ after `ring_nf` (Lean state) // @tac-hyp 27240-27262
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        IntPowOne(r);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×141 [exec 6590 27267-27272]: applications made inside the tactic's own automation, not stated — add_zero ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, one_mul ×1; machinery/glue: Eq.symm ×10, congrArg ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+45 more heads, ×100) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      }
      // have h₁₈ : ( p , q , r ) == ( 2 , 4 , 8 )  [type from Lean state]
      assert (((p == 2) && (q == 4)) && (r == 8)); // @tac 27330-27387 // @tac 27330-27374 // @tac 27330-27353
        // [TACTIC: «_<;>_» [ Prod.ext_iff ] <;> norm_num <;> linarith]
        // [TACTIC: simpAll [ Prod.ext_iff ]]
        // UNCITED Prod.ext_iff: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
        // UNCITED-APPLIED internal ×8 [exec 6617 27330-27353]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, congr ×2, of_eq_true ×1, Eq.trans ×1 (+1 more heads, ×1)
        // `simp_all` closed the goal; the rest of the chain did not run
      // [TACTIC: exact Or.inl h₁₈]
      assert (((p == 2) && (q == 4)) && (r == 8));
      assert ((((p == 2) && (q == 4)) && (r == 8)) || (((p == 3) && (q == 5)) && (r == 15)));  // sub-goal of `rcases` (Lean state) // @tac 17847-27414 // @tac 17870-17987 // @tac 17994-19468 // @tac 19475-26821 // @tac 26828-27272 // @tac 27279-27387 // @tac 27394-27414
    }
  }
  // [TACTIC: exact h₅]
  assert ((((p == 2) && (q == 4)) && (r == 8)) || (((p == 3) && (q == 5)) && (r == 15)));
}



// ===== closed lemma for line 780 (from closed/imo_1992_p1-780.dfy) =====

lemma {:induction false} vc_imo_1992_p1_L780(p: int, q: int, r: int)
  ensures   0 - 41 * 1 + 4 * (p + 1 - q) + 2 * (q + 1 - r) + (0 + 1 - (p - 1) * (q - 1) * (r - 1)) + (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) + 29 * (3 - p) + (0 - 2 * ((1 + 1 - p) * (p + 1 - q))) + (0 - (1 + 1 - p) * (q + 1 - r)) + (0 - (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1)))) + (0 - (1 + 1 - p) * (3 - p)) + (0 - (1 + 1 - p) * (3 * 3 - p * q)) + (0 - (1 + 1 - p) * (3 * 4 - p * r)) == 0
{
  assert (p - 1) * (q - 1) * (r - 1) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1;  // [ADDED]
  assert 1 * ((p - 1) * (q - 1) * (r - 1)) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1;  // [ADDED]
  assert 2 * ((1 + 1 - p) * (p + 1 - q)) == -2 * p * p + 2 * p * q + 2 * p + -4 * q + 4;  // [ADDED]
  assert (1 + 1 - p) * (q + 1 - r) == (0 - p * q) + p * r - (p) + 2 * q + -2 * r + 2;  // [ADDED]
  assert (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) == (0 - p * p * q) - (p * p * r) + p * p - (p * q * r) + 3 * p * q + 3 * p * r + -2 * p + 2 * q * r + -2 * q + -2 * r;  // [ADDED]
  assert (1 + 1 - p) * (3 - p) == p * p + -5 * p + 6;  // [ADDED]
  assert (1 + 1 - p) * (3 * 3 - p * q) == p * p * q + -2 * p * q + -9 * p + 18;  // [ADDED]
  assert (1 + 1 - p) * (3 * 4 - p * r) == p * p * r + -2 * p * r + -12 * p + 24;  // [ADDED]
}

