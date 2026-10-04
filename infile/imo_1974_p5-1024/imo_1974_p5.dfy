// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1974_p5.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate piece for `term1_pos`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_1(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < ((a + b) + d))
  ensures (0.0 < Real.div(a, ((a + b) + d)))
{
  DivPos(a, ((a + b) + d));
}

// ──────────────────────────────────────────────────
// certificate identity for `term1_less1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real, d: real, s: real)
  ensures ((-(b) + -(d)) + (((a + b) + d) - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term1_less1/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term1_less1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, c: real, d: real, s: real)
  ensures ((-(b) + -(d)) + (((a + b) + d) - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term1_less1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_pos/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_pos/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_pos/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_pos/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_pos`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `term2_pos`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < b)
  requires (0.0 < ((a + b) + c))
  ensures (0.0 < Real.div(b, ((a + b) + c)))
{
  DivPos(b, ((a + b) + c));
}

// ──────────────────────────────────────────────────
// certificate identity for `term2_less1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_less1/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_less1/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_less1/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term2_less1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real, c: real, d: real, s: real)
  ensures ((-(a) + -(c)) + (((a + b) + c) - b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(a: real, b: real, c: real, d: real, s: real)
  ensures ((((-(a) + -(b)) + -(c)) + -(d)) + (((a + b) + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_pos`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(a: real, b: real, c: real, d: real, s: real)
  ensures ((-(b) + -(d)) + (((b + c) + d) - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term3_less1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_pos/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(a: real, b: real, c: real, d: real, s: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_pos/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(a: real, b: real, c: real, d: real, s: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_pos/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(a: real, b: real, c: real, d: real, s: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_pos/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(a: real, b: real, c: real, d: real, s: real)
  ensures (-(d) + d) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `term4_pos/h₆`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < d)
  requires (0.0 < ((a + c) + d))
  ensures (0.0 < Real.div(d, ((a + c) + d)))
{
  DivPos(d, ((a + c) + d));
}

// ──────────────────────────────────────────────────
// certificate identity for `term4_pos`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(a: real, b: real, c: real, d: real, s: real)
  ensures (-((1.0 * Real.div(d, ((a + c) + d)))) + (1.0 * Real.div(d, ((a + c) + d)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_less1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_35(a: real, b: real, c: real, d: real, s: real)
  ensures ((-(a) + -(c)) + (((a + c) + d) - d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `term4_less1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `s_pos`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(a: real, b: real, c: real, d: real, s: real)
  ensures (((((-(((1.0 * s) - ((((1.0 * Real.div(a, ((a + b) + d))) + (1.0 * Real.div(b, ((a + b) + c)))) + (1.0 * Real.div(c, ((b + c) + d)))) + (1.0 * Real.div(d, ((a + c) + d)))))) + -((1.0 * Real.div(a, ((a + b) + d))))) + -((1.0 * Real.div(b, ((a + b) + c))))) + -((1.0 * Real.div(c, ((b + c) + d))))) + -((1.0 * Real.div(d, ((a + c) + d))))) + s) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_41(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_42(a: real, b: real, c: real, d: real, s: real)
  ensures ((((-(a) + -(b)) + -(c)) + -(d)) + (((a + b) + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_43(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((a + b) + d))
  requires (0.0 < ((a + b) + c))
  ensures (0.0 < (((a + b) + d) * ((a + b) + c)))
{
  MulPos(((a + b) + d), ((a + b) + c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_44(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (((a + b) + d) * ((a + b) + c)))
  requires (0.0 < ((b + c) + d))
  ensures (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
{
  MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_45(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
  requires (0.0 < ((a + c) + d))
  ensures (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))
{
  MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_46(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (((a + b) + d) * ((a + b) + c)))
  requires (0.0 < ((b + c) + d))
  ensures (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
{
  MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_47(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((a + b) + d))
  requires (0.0 < ((a + b) + c))
  ensures (0.0 < (((a + b) + d) * ((a + b) + c)))
{
  MulPos(((a + b) + d), ((a + b) + c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_48(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (d * d))
  ensures (0.0 <= ((b * b) * (d * d)))
{
  MulNonneg((b * b), (d * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_49(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((b * b) * (c * d)))
{
  MulNonneg((b * b), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_50(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < c)
  requires (0.0 < d)
  ensures (0.0 < (c * d))
{
  MulPos(c, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_51(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (a * d))
  ensures (0.0 <= ((b * b) * (a * d)))
{
  MulNonneg((b * b), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_52(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < d)
  ensures (0.0 < (a * d))
{
  MulPos(a, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_53(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (b * d))
  ensures (0.0 <= ((b * b) * (b * d)))
{
  MulNonneg((b * b), (b * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_54(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < b)
  requires (0.0 < d)
  ensures (0.0 < (b * d))
{
  MulPos(b, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_55(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (c * c))
  ensures (0.0 <= ((a * a) * (c * c)))
{
  MulNonneg((a * a), (c * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_56(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (b * c))
  ensures (0.0 <= ((a * a) * (b * c)))
{
  MulNonneg((a * a), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_57(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < b)
  requires (0.0 < c)
  ensures (0.0 < (b * c))
{
  MulPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_58(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((a * a) * (c * d)))
{
  MulNonneg((a * a), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_59(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (a * c))
  ensures (0.0 <= ((a * a) * (a * c)))
{
  MulNonneg((a * a), (a * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_60(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < c)
  ensures (0.0 < (a * c))
{
  MulPos(a, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_61(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((d * d) * (a * b)))
{
  MulNonneg((d * d), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_62(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < b)
  ensures (0.0 < (a * b))
{
  MulPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_63(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (b * c))
  ensures (0.0 <= ((d * d) * (b * c)))
{
  MulNonneg((d * d), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_64(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (b * d))
  ensures (0.0 <= ((d * d) * (b * d)))
{
  MulNonneg((d * d), (b * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_65(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((c * c) * (a * b)))
{
  MulNonneg((c * c), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_66(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (a * c))
  ensures (0.0 <= ((c * c) * (a * c)))
{
  MulNonneg((c * c), (a * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_67(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (a * d))
  ensures (0.0 <= ((c * c) * (a * d)))
{
  MulNonneg((c * c), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `lower_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_68(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (c * d))
  ensures (0.0 < ((a * b) * (c * d)))
{
  MulPos((a * b), (c * d));
}

// ──────────────────────────────────────────────────
// certificate identity for `lower_bound`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_69(a: real, b: real, c: real, d: real, s: real)
  ensures ((((((((((((((((((((((((((((((((((((((((((((((((((a * b) * d) * c) * 12.0) + (((a * b) * (d * d)) * 6.0)) + (((a * b) * (c * c)) * 6.0)) + (((a * (b * b)) * d) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 6.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + ((a * (c * c * c)) * 2.0)) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 6.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 6.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 4.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + (((a * a * a) * c) * 2.0)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 6.0)) + ((b * (d * d * d)) * 2.0)) + (b * (c * c * c))) + ((((b * b) * d) * c) * 6.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c)) - ((((((((((((((((((((((((((((((((((a * b) * d) * c) * 9.0) + (((a * b) * (d * d)) * 4.0)) + (((a * b) * (c * c)) * 4.0)) + (((a * (b * b)) * d) * 4.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 4.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + (a * (c * c * c))) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 2.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + ((a * a * a) * c)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 4.0)) + (b * (d * d * d))) + (b * (c * c * c))) + ((((b * b) * d) * c) * 4.0)) + (((b * b) * (d * d)) * 2.0)) + (((b * b) * (c * c)) * 2.0)) + ((b * b * b) * d)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c))) + -((2.0 * ((b * b) * (d * d))))) + -((2.0 * ((b * b) * (c * d))))) + -((2.0 * ((b * b) * (a * d))))) + -(((b * b) * (b * d)))) + -((2.0 * ((a * a) * (c * c))))) + -((2.0 * ((a * a) * (b * c))))) + -((2.0 * ((a * a) * (c * d))))) + -(((a * a) * (a * c)))) + -((2.0 * ((d * d) * (a * b))))) + -((2.0 * ((d * d) * (b * c))))) + -(((d * d) * (b * d)))) + -((2.0 * ((c * c) * (a * b))))) + -(((c * c) * (a * c)))) + -((2.0 * ((c * c) * (a * d))))) + -((3.0 * ((a * b) * (c * d))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_70(a: real, b: real, c: real, d: real, s: real)
  ensures ((((-(a) + -(b)) + -(c)) + -(d)) + (((a + b) + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_71(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(d)) + ((a + b) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_72(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(b)) + -(c)) + ((a + b) + c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_73(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(b) + -(c)) + -(d)) + ((b + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_74(a: real, b: real, c: real, d: real, s: real)
  ensures (((-(a) + -(c)) + -(d)) + ((a + c) + d)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_75(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((a + b) + d))
  requires (0.0 < ((a + b) + c))
  ensures (0.0 < (((a + b) + d) * ((a + b) + c)))
{
  MulPos(((a + b) + d), ((a + b) + c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_76(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (((a + b) + d) * ((a + b) + c)))
  requires (0.0 < ((b + c) + d))
  ensures (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
{
  MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_77(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))
  requires (0.0 < ((a + c) + d))
  ensures (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))
{
  MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_78(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (c * c))
  ensures (0.0 <= ((b * b) * (c * c)))
{
  MulNonneg((b * b), (c * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_79(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((b * b) * (a * b)))
{
  MulNonneg((b * b), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_80(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < b)
  ensures (0.0 < (a * b))
{
  MulPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_81(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (b * c))
  ensures (0.0 <= ((b * b) * (b * c)))
{
  MulNonneg((b * b), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_82(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < b)
  requires (0.0 < c)
  ensures (0.0 < (b * c))
{
  MulPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_83(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (b * b))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((b * b) * (c * d)))
{
  MulNonneg((b * b), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_84(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < c)
  requires (0.0 < d)
  ensures (0.0 < (c * d))
{
  MulPos(c, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_85(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (d * d))
  ensures (0.0 <= ((a * a) * (d * d)))
{
  MulNonneg((a * a), (d * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_86(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((a * a) * (a * b)))
{
  MulNonneg((a * a), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_87(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (a * d))
  ensures (0.0 <= ((a * a) * (a * d)))
{
  MulNonneg((a * a), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_88(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < d)
  ensures (0.0 < (a * d))
{
  MulPos(a, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_89(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (a * a))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((a * a) * (c * d)))
{
  MulNonneg((a * a), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_90(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (d * d))
  ensures (0.0 <= ((c * c) * (d * d)))
{
  MulNonneg((c * c), (d * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_91(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((c * c) * (a * b)))
{
  MulNonneg((c * c), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_92(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (a * d))
  ensures (0.0 <= ((c * c) * (a * d)))
{
  MulNonneg((c * c), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_93(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (b * c))
  ensures (0.0 <= ((c * c) * (b * c)))
{
  MulNonneg((c * c), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_94(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (b * d))
  ensures (0.0 <= ((c * c) * (b * d)))
{
  MulNonneg((c * c), (b * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_95(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < b)
  requires (0.0 < d)
  ensures (0.0 < (b * d))
{
  MulPos(b, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_96(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (c * c))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((c * c) * (c * d)))
{
  MulNonneg((c * c), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_97(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (a * b))
  ensures (0.0 <= ((d * d) * (a * b)))
{
  MulNonneg((d * d), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_98(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (a * c))
  ensures (0.0 <= ((d * d) * (a * c)))
{
  MulNonneg((d * d), (a * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_99(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < a)
  requires (0.0 < c)
  ensures (0.0 < (a * c))
{
  MulPos(a, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_100(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (a * d))
  ensures (0.0 <= ((d * d) * (a * d)))
{
  MulNonneg((d * d), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_101(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (b * c))
  ensures (0.0 <= ((d * d) * (b * c)))
{
  MulNonneg((d * d), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_102(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 <= (d * d))
  requires (0.0 <= (c * d))
  ensures (0.0 <= ((d * d) * (c * d)))
{
  MulNonneg((d * d), (c * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_103(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  ensures (0.0 < ((a * b) * (a * b)))
{
  MulPos((a * b), (a * b));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_104(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (a * c))
  ensures (0.0 < ((a * b) * (a * c)))
{
  MulPos((a * b), (a * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_105(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (a * d))
  ensures (0.0 < ((a * b) * (a * d)))
{
  assert 0.0 < a * b;  /* [IN-FILE CHECK] requires 1 of vc_imo_1974_p5_L1024 */
  assert 0.0 < a * d;  /* [IN-FILE CHECK] requires 2 of vc_imo_1974_p5_L1024 */
  vc_imo_1974_p5_L1024(a, b, d);  /* [IN-FILE CHECK] the closed lemma for line 1024 */
  MulPos((a * b), (a * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_106(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (b * c))
  ensures (0.0 < ((a * b) * (b * c)))
{
  MulPos((a * b), (b * c));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_107(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (b * d))
  ensures (0.0 < ((a * b) * (b * d)))
{
  MulPos((a * b), (b * d));
}

// ──────────────────────────────────────────────────
// certificate piece for `upper_bound`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_108(a: real, b: real, c: real, d: real, s: real)
  requires (0.0 < (a * b))
  requires (0.0 < (c * d))
  ensures (0.0 < ((a * b) * (c * d)))
{
  MulPos((a * b), (c * d));
}

// ──────────────────────────────────────────────────
// certificate identity for `upper_bound`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_109(a: real, b: real, c: real, d: real, s: real)
  ensures ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((a * b) * c) * d) * 18.0) + (((a * b) * (c * c)) * 8.0)) + (((a * b) * (d * d)) * 8.0)) + (((a * (b * b)) * c) * 8.0)) + (((a * (b * b)) * d) * 8.0)) + ((a * (b * b * b)) * 2.0)) + (((a * c) * (d * d)) * 8.0)) + (((a * (c * c)) * d) * 8.0)) + ((a * (c * c * c)) * 2.0)) + ((a * (d * d * d)) * 2.0)) + ((((a * a) * b) * c) * 8.0)) + ((((a * a) * b) * d) * 8.0)) + (((a * a) * (b * b)) * 4.0)) + ((((a * a) * c) * d) * 8.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 4.0)) + (((a * a * a) * b) * 2.0)) + (((a * a * a) * c) * 2.0)) + (((a * a * a) * d) * 2.0)) + (((b * c) * (d * d)) * 8.0)) + (((b * (c * c)) * d) * 8.0)) + ((b * (c * c * c)) * 2.0)) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 8.0)) + (((b * b) * (c * c)) * 4.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b * b) * c) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((c * (d * d * d)) * 2.0)) + (((c * c) * (d * d)) * 4.0)) + (((c * c * c) * d) * 2.0)) - ((((((((((((((((((((((((((((((((((a * b) * c) * d) * 12.0) + (((a * b) * (c * c)) * 6.0)) + (((a * b) * (d * d)) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (((a * (b * b)) * d) * 6.0)) + (a * (b * b * b))) + (((a * c) * (d * d)) * 4.0)) + (((a * (c * c)) * d) * 6.0)) + ((a * (c * c * c)) * 2.0)) + (a * (d * d * d))) + ((((a * a) * b) * c) * 6.0)) + ((((a * a) * b) * d) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * c) * d) * 6.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + ((a * a * a) * b)) + (((a * a * a) * c) * 2.0)) + ((a * a * a) * d)) + (((b * c) * (d * d)) * 6.0)) + (((b * (c * c)) * d) * 4.0)) + (b * (c * c * c))) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 6.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b) * (d * d)) * 4.0)) + ((b * b * b) * c)) + (((b * b * b) * d) * 2.0)) + (c * (d * d * d))) + (((c * c) * (d * d)) * 2.0)) + ((c * c * c) * d))) + -((2.0 * ((b * b) * (c * c))))) + -(((b * b) * (a * b)))) + -(((b * b) * (b * c)))) + -((2.0 * ((b * b) * (c * d))))) + -((2.0 * ((a * a) * (d * d))))) + -(((a * a) * (a * b)))) + -(((a * a) * (a * d)))) + -((2.0 * ((a * a) * (c * d))))) + -((2.0 * ((c * c) * (d * d))))) + -((2.0 * ((c * c) * (a * b))))) + -((2.0 * ((c * c) * (a * d))))) + -(((c * c) * (b * c)))) + -((4.0 * ((c * c) * (b * d))))) + -(((c * c) * (c * d)))) + -((2.0 * ((d * d) * (a * b))))) + -((4.0 * ((d * d) * (a * c))))) + -(((d * d) * (a * d)))) + -((2.0 * ((d * d) * (b * c))))) + -(((d * d) * (c * d)))) + -((2.0 * ((a * b) * (a * b))))) + -((2.0 * ((a * b) * (a * c))))) + -((4.0 * ((a * b) * (a * d))))) + -((4.0 * ((a * b) * (b * c))))) + -((2.0 * ((a * b) * (b * d))))) + -((6.0 * ((a * b) * (c * d))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1974_p5(a: real, b: real, c: real, d: real, s: real)
  requires ((0.0 < a) && ((0.0 < b) && ((0.0 < c) && (0.0 < d))))
  requires (s == (((Real.div(a, ((a + b) + d)) + Real.div(b, ((a + b) + c))) + Real.div(c, ((b + c) + d))) + Real.div(d, ((a + c) + d))))
  ensures ((1.0 < s) && (s < 2.0)) // @tac 455-840 // @tac 846-1117 // @tac 1123-1628 // @tac 1634-2658 // @tac 2664-3416 // @tac 3422-3845 // @tac 3851-4316 // @tac 4322-4875 // @tac 4881-5314 // @tac 5320-5947 // @tac 5953-6767 // @tac 6773-6784
{
  // have term1_pos : 0 < a / ( a + b + d )  [type from Lean state]
  assert (0.0 < Real.div(a, ((a + b) + d))) by { // @tac 502-521 // @tac 526-547 // @tac 552-575 // @tac 580-603 // @tac 608-625 // @tac 830-840
    // have h₂ :   [type from Lean state]
    assert (0.0 < a);
      // [TACTIC: exact h₀ . 1]
    // have h₃ :   [type from Lean state]
    assert (0.0 < b);
      // [TACTIC: exact h₀ . 2 . 1]
    // have h₄ :   [type from Lean state]
    assert (0.0 < c);
      // [TACTIC: exact h₀ . 2 . 2 . 1]
    // have h₅ :   [type from Lean state]
    assert (0.0 < d);
      // [TACTIC: exact h₀ . 2 . 2 . 2]
    // have h₆ :   [type from Lean state]
    assert (s == (((Real.div(a, ((a + b) + d)) + Real.div(b, ((a + b) + c))) + Real.div(c, ((b + c) + d))) + Real.div(d, ((a + c) + d)))) by {
      // [TACTIC: exact h₁]
      assert (s == (((Real.div(a, ((a + b) + d)) + Real.div(b, ((a + b) + c))) + Real.div(c, ((b + c) + d))) + Real.div(d, ((a + c) + d))));
    }
    // [TACTIC: Positivity]
    // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 830-840 exec 80)
    if (0.0 < a) && (0.0 < ((a + b) + d)) { cert_piece_1(a, b, c, d, s); }  // cert: div_pos
    // UNCITED-APPLIED internal ×2 [exec 80 830-840]: applications made inside the tactic's own automation, not stated — add_pos ×2 (cited in this block, not counted here: div_pos [Lean recorded ×1])
    assert (0.0 < (a)) && (0.0 < (((a + b) + d)));  // precondition of DivPos (Lean: div_pos)
    DivPos(a, ((a + b) + d));  // cite: div_pos [applied by the tactic, not named in it]
  }
  // have term1_less1 : a / ( a + b + d ) < 1  [type from Lean state]
  assert (Real.div(a, ((a + b) + d)) < 1.0) by { // @tac 999-1039 // @tac 1044-1084 // @tac 1089-1117 // @tac 1089-1104
    // have h₂ : a < a + b + d  [type from Lean state]
    assert (a < ((a + b) + d)) by { // @tac 1031-1039
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1031-1039 exec 113)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-b + -d < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_2(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 113 1031-1039]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 114 1031-1039]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+21 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 114)]
    }
    // have h₃ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 1076-1084
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1076-1084 exec 131)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_3(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 131 1076-1084]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 132 1076-1084]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 132)]
    }
    // [TACTIC: «_<;>_» [ div_lt_one ] rw [ div_lt_one ] <;> linarith linarith]
    // [TACTIC: choice [ div_lt_one ] rw [ div_lt_one ]]
    assert (0.0 < (((a + b) + d)));  // precondition of DivLtOne (Lean: div_lt_one)
    DivLtOne(a, ((a + b) + d));  // cite: div_lt_one
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 142 1089-1104]
    assert (a < ((a + b) + d)) by {  // sub-goal of `linarith` (Lean state) // @tac 1109-1117
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 178)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1109-1117 exec 177)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-b + -d < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_4(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 177 1109-1117]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 178 1109-1117]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+21 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    assert (0.0 < ((a + b) + d)) by {  // sub-goal of `linarith` (Lean state) // @tac 1109-1117
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 182)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1109-1117 exec 181)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_5(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 181 1109-1117]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 182 1109-1117]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
  // have term2_pos : 0 < b / ( a + b + c )  [type from Lean state]
  assert (0.0 < Real.div(b, ((a + b) + c))) by { // @tac 1170-1210 // @tac 1215-1255 // @tac 1260-1300 // @tac 1305-1345 // @tac 1592-1628
    // have h₂ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 1202-1210
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1202-1210 exec 215)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_6(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 215 1202-1210]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 216 1202-1210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 216)]
    }
    // have h₃ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 1247-1255
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1247-1255 exec 233)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_7(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 233 1247-1255]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 234 1247-1255]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 234)]
    }
    // have h₄ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 1292-1300
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1292-1300 exec 251)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_8(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 251 1292-1300]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 252 1292-1300]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 252)]
    }
    // have h₅ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 1337-1345
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1337-1345 exec 269)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_9(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 269 1337-1345]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 270 1337-1345]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 270)]
    }
    assert (0.0 < ((a + b) + c)) by {  // sub-goal of `by` (Lean state) // @tac 1619-1627
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1619-1627 exec 276)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_10(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 276 1619-1627]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 277 1619-1627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 277)]
    }
    // [TACTIC: exact div_pos h₀ . 2 . 1 ( by linarith linarith )]
    assert ((0.0 < a) && ((0.0 < b) && ((0.0 < c) && (0.0 < d))));
    // `exact` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 1592-1628 exec 271)
    if (0.0 < b) && (0.0 < ((a + b) + c)) { cert_piece_11(a, b, c, d, s); }  // cert: div_pos
    assert (0.0 < (b)) && (0.0 < (((a + b) + c)));  // precondition of DivPos (Lean: div_pos)
    DivPos(b, ((a + b) + c));  // cite: div_pos
  }
  // have term2_less1 : b / ( a + b + c ) < 1  [type from Lean state]
  assert (Real.div(b, ((a + b) + c)) < 1.0) by { // @tac 1732-1803 // @tac 1870-1941 // @tac 2008-2083 // @tac 2150-2223 // @tac 2385-2440
    // have h₂ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 1764-1803
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 1 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1764-1803 exec 310)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_12(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 310 1764-1803]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 311 1764-1803]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 311)]
    }
    // have h₃ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 1902-1941
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1902-1941 exec 328)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_13(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 328 1902-1941]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 329 1902-1941]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 329)]
    }
    // have h₄ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 2040-2083
      // [TACTIC: «Linarith[_]At___» [ h₀ . 2 . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2040-2083 exec 346)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_14(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 346 2040-2083]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 347 2040-2083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 347)]
    }
    // have h₅ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 2182-2223
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2182-2223 exec 364)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_15(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 364 2182-2223]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 365 2182-2223]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 365)]
    }
    // [TACTIC: rwSeq [ ← sub_pos ] at term1_pos term1_less1 term2_pos ⊢]
    SubPos(1.0, Real.div(b, ((a + b) + c)));  // cite: sub_pos
    SubPos(Real.div(a, ((a + b) + d)), 0.0);  // cite: sub_pos
    SubPos(1.0, Real.div(a, ((a + b) + d)));  // cite: sub_pos
    SubPos(Real.div(b, ((a + b) + c)), 0.0);  // cite: sub_pos
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 370 2385-2440]
    assert (0.0 < (Real.div(a, ((a + b) + d)) - 0.0));  // hypothesis term1_pos after `rw` (Lean state) // @tac-hyp 2385-2440
    assert (0.0 < (1.0 - Real.div(a, ((a + b) + d))));  // hypothesis term1_less1 after `rw` (Lean state) // @tac-hyp 2385-2440
    assert (0.0 < (Real.div(b, ((a + b) + c)) - 0.0));  // hypothesis term2_pos after `rw` (Lean state) // @tac-hyp 2385-2440
    assert (0.0 < (1.0 - Real.div(b, ((a + b) + c)))) by {  // sub-goal before `field_simp` (Lean state) // @tac 2445-2494
      // [TACTIC: «Field_simp[_]At___» at term1_pos term1_less1 term2_pos ⊢]
      // UNCITED-APPLIED internal ×22 [exec 397 2445-2494]: applications made inside the tactic's own automation, not stated — sub_div' ×2, ne_of_gt ×2, one_mul ×2, div_sub' ×2, sub_zero ×2; machinery/glue: congrArg ×8, Eq.trans ×4
      assert (0.0 < a);  // hypothesis term1_pos after `field_simp` (Lean state) // @tac-hyp 2445-2494
      assert (a < ((a + b) + d));  // hypothesis term1_less1 after `field_simp` (Lean state) // @tac-hyp 2445-2494
      assert (0.0 < b);  // hypothesis term2_pos after `field_simp` (Lean state) // @tac-hyp 2445-2494
      assert (b < ((a + b) + c)) by {  // sub-goal before `rw` (Lean state) // @tac 2499-2554
        // [TACTIC: rwSeq [ ← sub_pos ] at term1_pos term1_less1 term2_pos ⊢]
        SubPos(((a + b) + c), b);  // cite: sub_pos
        SubPos(a, 0.0);  // cite: sub_pos
        SubPos(((a + b) + d), a);  // cite: sub_pos
        SubPos(b, 0.0);  // cite: sub_pos
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 402 2499-2554]
        assert (0.0 < (a - 0.0));  // hypothesis term1_pos after `rw` (Lean state) // @tac-hyp 2499-2554
        assert (0.0 < (((a + b) + d) - a));  // hypothesis term1_less1 after `rw` (Lean state) // @tac-hyp 2499-2554
        assert (0.0 < (b - 0.0));  // hypothesis term2_pos after `rw` (Lean state) // @tac-hyp 2499-2554
        assert (0.0 < (((a + b) + c) - b)) by {  // sub-goal before `field_simp` (Lean state) // @tac 2559-2608
          // [TACTIC: «Field_simp[_]At___» at term1_pos term1_less1 term2_pos ⊢]
          // UNCITED-APPLIED internal ×4 [exec 429 2559-2608]: applications made inside the tactic's own automation, not stated — sub_zero ×2; machinery/glue: congrArg ×2
          assert (0.0 < a);  // hypothesis term1_pos after `field_simp` (Lean state) // @tac-hyp 2559-2608
          assert (a < ((a + b) + d));  // hypothesis term1_less1 after `field_simp` (Lean state) // @tac-hyp 2559-2608
          assert (0.0 < b);  // hypothesis term2_pos after `field_simp` (Lean state) // @tac-hyp 2559-2608
          assert (b < ((a + b) + c)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 2613-2658
            // [TACTIC: «Nlinarith[_]At___» [ term1_pos , term1_less1 , term2_pos ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2613-2658 exec 430)
            // UNCITED-APPLIED Left.add_neg: certificate sum `-a + -c < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_16(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×8 [exec 430 2613-2658]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×47 [exec 431 2613-2658]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+21 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 431)]
          }
        }
      }
    }
  }
  // have term3_pos : 0 < c / ( b + c + d )  [type from Lean state]
  assert (0.0 < Real.div(c, ((b + c) + d))) by { // @tac 2711-2732 // @tac 2737-2760 // @tac 2765-2788 // @tac 2793-2815 // @tac 2820-2844 // @tac 2849-2871 // @tac 2876-2900 // @tac 2905-2945 // @tac 2950-2993 // @tac 2998-3041 // @tac 3046-3089 // @tac 3094-3141 // @tac 3146-3183
    // have h₂ :   [type from Lean state]
    assert (0.0 < b);
      // [TACTIC: exact h₀ . 2 . 1]
    // have h₃ :   [type from Lean state]
    assert (0.0 < c);
      // [TACTIC: exact h₀ . 2 . 2 . 1]
    // have h₄ :   [type from Lean state]
    assert (0.0 < d);
      // [TACTIC: exact h₀ . 2 . 2 . 2]
    // have h₅ :   [type from Lean state]
    assert (0.0 < Real.div(a, ((a + b) + d)));
      // [TACTIC: exact term1_pos]
    // have h₆ :   [type from Lean state]
    assert (Real.div(a, ((a + b) + d)) < 1.0);
      // [TACTIC: exact term1_less1]
    // have h₇ :   [type from Lean state]
    assert (0.0 < Real.div(b, ((a + b) + c)));
      // [TACTIC: exact term2_pos]
    // have h₈ :   [type from Lean state]
    assert (Real.div(b, ((a + b) + c)) < 1.0);
      // [TACTIC: exact term2_less1]
    // have h₉ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 2937-2945
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2937-2945 exec 548)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_17(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 548 2937-2945]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 549 2937-2945]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 549)]
    }
    // have h₁₀ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 2985-2993
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2985-2993 exec 566)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_18(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 566 2985-2993]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 567 2985-2993]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 567)]
    }
    // have h₁₁ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 3033-3041
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3033-3041 exec 584)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_19(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 584 3033-3041]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 585 3033-3041]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 585)]
    }
    // have h₁₂ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 3081-3089
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3081-3089 exec 602)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_20(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 602 3081-3089]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 603 3081-3089]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 603)]
    }
    // have h₁₃ : 0 < a + b + c + d  [type from Lean state]
    assert (0.0 < (((a + b) + c) + d)) by { // @tac 3133-3141
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3133-3141 exec 620)
      // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c + -d < (0 : ℝ)`
      cert_identity_21(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 620 3133-3141]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×4, Left.add_neg ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×58 [exec 621 3133-3141]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_congr ×4 (+17 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 621)]
    }
    // [TACTIC: «Field_simp[_]At___» at h₅ h₆ h₇ h₈ ⊢]
    // UNCITED-APPLIED internal ×1 [exec 622 3146-3183]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
    assert (0.0 < a);  // hypothesis h₅ after `field_simp` (Lean state) // @tac-hyp 3146-3183
    assert (0.0 < ((a + b) + c));  // hypothesis h₇ after `field_simp` (Lean state) // @tac-hyp 3146-3183
    assert (0.0 < ((b + c) + d)) by {  // sub-goal before `refine'` (Lean state) // @tac 3188-3211
      // [TACTIC: refine' lt_of_sub_pos _]
      assert (0.0 < (((b + c) + d)) - (0.0));  // precondition of LtOfSubPosReal (Lean: lt_of_sub_pos)
      LtOfSubPosReal(((b + c) + d), 0.0);  // cite: lt_of_sub_pos
      assert (0.0 < (((b + c) + d) - 0.0)) by {  // sub-goal before `field_simp` (Lean state) // @tac 3216-3226
        // [TACTIC: «Field_simp[_]At___»]
        // UNCITED-APPLIED internal ×2 [exec 624 3216-3226]: applications made inside the tactic's own automation, not stated — sub_zero ×1; machinery/glue: congrArg ×1
        assert (0.0 < ((b + c) + d)) by {  // sub-goal before `ring_nf` (Lean state) // @tac 3231-3238 // @tac 3243-3416
          // [TACTIC: Ring_nfAt]
          // [TACTIC: «Nlinarith[_]At___» [ mul_pos h₂ h₃ , mul_pos h₂ h₄ , mul_pos h₃ h₄ , mul_pos ( sub_pos.mpr h₅ ) ( sub_pos.mpr h₆ ) , mul_pos ( sub_pos.mpr h₇ ) ( sub_pos.mpr h₈ ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3243-3416 exec 626)
          // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
          cert_identity_22(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×10 [exec 626 3243-3416]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // NOT APPLIED mul_pos: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          // NOT APPLIED sub_pos: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 629)]
          // UNCITED-APPLIED internal ×46 [exec 629 3243-3416]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
    }
  }
  // have term3_less1 : c / ( b + c + d ) < 1  [type from Lean state]
  assert (Real.div(c, ((b + c) + d)) < 1.0) by { // @tac 3565-3605 // @tac 3610-3650 // @tac 3655-3695 // @tac 3700-3740 // @tac 3745-3812 // @tac 3817-3845 // @tac 3817-3832
    // have h₂ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 3597-3605
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3597-3605 exec 662)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_23(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 662 3597-3605]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 663 3597-3605]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 663)]
    }
    // have h₃ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 3642-3650
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3642-3650 exec 680)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_24(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 680 3642-3650]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 681 3642-3650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 681)]
    }
    // have h₄ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 3687-3695
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3687-3695 exec 698)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_25(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 698 3687-3695]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 699 3687-3695]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 699)]
    }
    // have h₅ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 3732-3740
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3732-3740 exec 716)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_26(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 716 3732-3740]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 717 3732-3740]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 717)]
    }
    // [TACTIC: «Field_simp[_]At___» at term1_pos term1_less1 term2_pos term2_less1 term3_pos]
    assert (0.0 < a);  // hypothesis term1_pos after `field_simp` (Lean state) // @tac-hyp 3745-3812
    assert (0.0 < b);  // hypothesis term2_pos after `field_simp` (Lean state) // @tac-hyp 3745-3812
    assert (0.0 < c);  // hypothesis term3_pos after `field_simp` (Lean state) // @tac-hyp 3745-3812
    // [TACTIC: «_<;>_» [ div_lt_one ] rw [ div_lt_one ] <;> linarith linarith]
    // [TACTIC: choice [ div_lt_one ] rw [ div_lt_one ]]
    assert (0.0 < (((b + c) + d)));  // precondition of DivLtOne (Lean: div_lt_one)
    DivLtOne(c, ((b + c) + d));  // cite: div_lt_one
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 728 3817-3832]
    assert (c < ((b + c) + d)) by {  // sub-goal of `linarith` (Lean state) // @tac 3837-3845
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 764)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3837-3845 exec 763)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-b + -d < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_27(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 763 3837-3845]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×47 [exec 764 3837-3845]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+21 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    assert (0.0 < ((b + c) + d)) by {  // sub-goal of `linarith` (Lean state) // @tac 3837-3845
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 768)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3837-3845 exec 767)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_28(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 767 3837-3845]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 768 3837-3845]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
  // have term4_pos : 0 < d / ( a + c + d )  [type from Lean state]
  assert (0.0 < Real.div(d, ((a + c) + d))) by { // @tac 3973-4005 // @tac 4010-4042 // @tac 4047-4079 // @tac 4084-4116 // @tac 4176-4224 // @tac 4308-4316
    // have h₂ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 3997-4005
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3997-4005 exec 801)
      cert_identity_29(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 801 3997-4005]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 802 3997-4005]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 802)]
    }
    // have h₃ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 4034-4042
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4034-4042 exec 819)
      cert_identity_30(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 819 4034-4042]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 820 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 820)]
    }
    // have h₄ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 4071-4079
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4071-4079 exec 837)
      cert_identity_31(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 837 4071-4079]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 838 4071-4079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 838)]
    }
    // have h₅ : 0 < d  [type from Lean state]
    assert (0.0 < d) by { // @tac 4108-4116
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4108-4116 exec 855)
      cert_identity_32(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 855 4108-4116]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 856 4108-4116]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 856)]
    }
    // have h₆ : 0 < d / ( a + c + d )  [type from Lean state]
    assert (0.0 < Real.div(d, ((a + c) + d))) by { // @tac 4214-4224
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4214-4224 exec 873)
      if (0.0 < d) && (0.0 < ((a + c) + d)) { cert_piece_33(a, b, c, d, s); }  // cert: div_pos
      // UNCITED-APPLIED internal ×2 [exec 873 4214-4224]: applications made inside the tactic's own automation, not stated — add_pos ×2 (cited in this block, not counted here: div_pos [Lean recorded ×1])
      assert (0.0 < (d)) && (0.0 < (((a + c) + d)));  // precondition of DivPos (Lean: div_pos)
      DivPos(d, ((a + c) + d));  // cite: div_pos [applied by the tactic, not named in it]
    }
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4308-4316 exec 874)
    cert_identity_34(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×11 [exec 874 4308-4316]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.neg_subst ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
    // UNCITED-APPLIED internal ×49 [exec 875 4308-4316]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.add_pf_zero_add ×2 (+31 more heads, ×39) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 875)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 875)]
  }
  // have term4_less1 : d / ( a + c + d ) < 1  [type from Lean state]
  assert (Real.div(d, ((a + c) + d)) < 1.0) by { // @tac 4576-4795 // @tac 4865-4875
    // have h₂ : d / ( a + c + d ) < 1  [type from Lean state]
    assert (Real.div(d, ((a + c) + d)) < 1.0) by { // @tac 4712-4795 // @tac 4712-4727
      // [TACTIC: «_<;>_» [ div_lt_one ] rw [ div_lt_one ] <;> nlinarith [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 , term4_pos ] nlinarith [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 , term4_pos ]]
      // [TACTIC: choice [ div_lt_one ] rw [ div_lt_one ]]
      assert (0.0 < (((a + c) + d)));  // precondition of DivLtOne (Lean: div_lt_one)
      DivLtOne(d, ((a + c) + d));  // cite: div_lt_one
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 917 4712-4727]
      assert (d < ((a + c) + d)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4732-4795
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 953)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4732-4795 exec 952)
        // UNCITED-APPLIED Left.add_neg: certificate sum `-a + -c < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_35(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×8 [exec 952 4732-4795]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×47 [exec 953 4732-4795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.atom_pf ×3 (+19 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert (0.0 < ((a + c) + d)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4732-4795
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 957)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4732-4795 exec 956)
        // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
        cert_identity_36(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×10 [exec 956 4732-4795]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×46 [exec 957 4732-4795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₂]
    assert (Real.div(d, ((a + c) + d)) < 1.0);
  }
  // have s_pos : 0 < s  [type from Lean state]
  assert (0.0 < s) by { // @tac 4985-5029 // @tac 5034-5078 // @tac 5083-5127 // @tac 5132-5176 // @tac 5275-5314
    // have h₂ : 0 < a / ( a + b + d )  [type from Lean state]
    assert (0.0 < Real.div(a, ((a + b) + d)));
      // [TACTIC: exact term1_pos]
    // have h₃ : 0 < b / ( a + b + c )  [type from Lean state]
    assert (0.0 < Real.div(b, ((a + b) + c)));
      // [TACTIC: exact term2_pos]
    // have h₄ : 0 < c / ( b + c + d )  [type from Lean state]
    assert (0.0 < Real.div(c, ((b + c) + d)));
      // [TACTIC: exact term3_pos]
    // have h₅ : 0 < d / ( a + c + d )  [type from Lean state]
    assert (0.0 < Real.div(d, ((a + c) + d)));
      // [TACTIC: exact term4_pos]
    // [TACTIC: «Linarith[_]At___» [ h₁ , h₂ , h₃ , h₄ , h₅ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5275-5314 exec 1023)
    // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) * s - ((1 : ℝ) * (a / (a + b + d)) + (1 : ℝ) * (b / (a + b + c)) + (1 : ℝ) * (c / (b + c + d)) + (1 : ℝ) * (d…`
    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `-((1 : ℝ) * s - ((1 : ℝ) * (a / (a + b + d)) + (1 : ℝ) * (b / (a + b + c)) + (1 : ℝ) * (c / (b + c + d)) + (1 : ℝ) * (d…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_37(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×29 [exec 1023 5275-5314]: applications made inside the tactic's own automation, not stated — CancelDenoms.neg_subst ×4, neg_neg_of_pos ×4, CancelDenoms.add_subst ×3, lt_of_not_ge ×1, Left.add_neg ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, sub_eq_zero_of_eq ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×5, Linarith.without_one_mul ×5, Linarith.lt_irrefl ×1, Linarith.lt_of_eq_of_lt ×1
    // UNCITED-APPLIED internal ×130 [exec 1024 5275-5314]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.zero_mul ×8 (+30 more heads, ×98) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1024)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1024)]
  }
  // have lower_bound : 1 < s  [type from Lean state]
  assert (1.0 < s) by { // @tac 5355-5395 // @tac 5400-5440 // @tac 5445-5485 // @tac 5490-5530 // @tac 5535-5579 // @tac 5656-5703
    // have h₂ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 5387-5395
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5387-5395 exec 1057)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_38(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1057 5387-5395]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1058 5387-5395]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1058)]
    }
    // have h₃ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 5432-5440
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5432-5440 exec 1075)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_39(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1075 5432-5440]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1076 5432-5440]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1076)]
    }
    // have h₄ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 5477-5485
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5477-5485 exec 1093)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_40(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1093 5477-5485]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1094 5477-5485]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1094)]
    }
    // have h₅ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 5522-5530
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5522-5530 exec 1111)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_41(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1111 5522-5530]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1112 5522-5530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1112)]
    }
    // have h₆ : 0 < a + b + c + d  [type from Lean state]
    assert (0.0 < (((a + b) + c) + d)) by { // @tac 5571-5579
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5571-5579 exec 1129)
      // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c + -d < (0 : ℝ)`
      cert_identity_42(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1129 5571-5579]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×4, Left.add_neg ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×58 [exec 1130 5571-5579]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_congr ×4 (+17 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1130)]
    }
    // [TACTIC: «Field_simp[_]At___» [ h₁ , h₂ , h₃ , h₄ , h₅ , h₆ ]]
    assert (0.0 < (((a + b) + d))) && (0.0 < (((a + b) + c)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((a + b) + d), ((a + b) + c));  // cite: mul_pos [applied by the tactic, not named in it]
    assert (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));  // cite: mul_pos [applied by the tactic, not named in it]
    // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5656-5703 exec 1131)
    if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_43(a, b, c, d, s); }  // cert: mul_pos
    if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_44(a, b, c, d, s); }  // cert: mul_pos
    // UNCITED-APPLIED internal ×30 [exec 1131 5656-5703]: applications made inside the tactic's own automation, not stated — ne_of_gt ×6, add_div' ×3, div_mul_eq_mul_div ×3, div_add' ×3, div_div ×3; machinery/glue: Eq.trans ×6, congrArg ×6 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
    assert (1.0 < Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) by {  // sub-goal before `refine'` (Lean state) // @tac 5708-5731
      // [TACTIC: refine' lt_of_sub_pos _]
      assert (0.0 < (Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) - (1.0));  // precondition of LtOfSubPosReal (Lean: lt_of_sub_pos)
      LtOfSubPosReal(Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d))), 1.0);  // cite: lt_of_sub_pos
      assert (0.0 < (Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d))) - 1.0)) by {  // sub-goal before `field_simp` (Lean state) // @tac 5736-5746
        // [TACTIC: «Field_simp[_]At___»]
        if (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) && (0.0 < (((a + c) + d))) { MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
        if (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d))) { MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + d), ((a + b) + c));]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d))
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5736-5746 exec 1133)
        if (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))) && (0.0 < ((a + c) + d)) { cert_piece_45(a, b, c, d, s); }  // cert: mul_pos
        if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_46(a, b, c, d, s); }  // cert: mul_pos
        if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_47(a, b, c, d, s); }  // cert: mul_pos
        // UNCITED-APPLIED internal ×4 [exec 1133 5736-5746]: applications made inside the tactic's own automation, not stated — div_sub' ×1, ne_of_gt ×1, mul_one ×1; machinery/glue: Eq.trans ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
        assert ((((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)) < ((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 5751-5758
          // [TACTIC: Ring_nfAt]
          PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := b ^ (3 : ℕ)); (a := d ^ (3 : ℕ)); (a := c ^ (3 : ℕ)); (a := b); (a := d); (a := c)
          // UNCITED-APPLIED internal ×168 [exec 1134 5751-5758]: applications made inside the tactic's own automation, not stated — mul_one ×6, add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pp_pf_overlap ×8 (+23 more heads, ×129) (cited in this block, not counted here: pow_one [Lean recorded ×4])
          assert (((((((((((((((((((((((((((((((((((a * b) * d) * c) * 9.0) + (((a * b) * (d * d)) * 4.0)) + (((a * b) * (c * c)) * 4.0)) + (((a * (b * b)) * d) * 4.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 4.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + (a * (c * c * c))) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 2.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + ((a * a * a) * c)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 4.0)) + (b * (d * d * d))) + (b * (c * c * c))) + ((((b * b) * d) * c) * 4.0)) + (((b * b) * (d * d)) * 2.0)) + (((b * b) * (c * c)) * 2.0)) + ((b * b * b) * d)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c)) < ((((((((((((((((((((((((((((((((((a * b) * d) * c) * 12.0) + (((a * b) * (d * d)) * 6.0)) + (((a * b) * (c * c)) * 6.0)) + (((a * (b * b)) * d) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 6.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + ((a * (c * c * c)) * 2.0)) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 6.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 6.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 4.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + (((a * a * a) * c) * 2.0)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 6.0)) + ((b * (d * d * d)) * 2.0)) + (b * (c * c * c))) + ((((b * b) * d) * c) * 6.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 5763-5947
            // [TACTIC: «Nlinarith[_]At___» [ mul_pos h₀ . 1 h₀ . 2 . 1 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 2 . 2 . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 2 ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5763-5947 exec 1135)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (d * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (d * d)) { cert_piece_48(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            SqNonneg(b); assert (0.0 <= (b * b));  // cert: sq_nonneg
            SqNonneg(d); assert (0.0 <= (d * d));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (c * d)) { cert_piece_49(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < c) && (0.0 < d) { cert_piece_50(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (a * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (a * d)) { cert_piece_51(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < d) { cert_piece_52(a, b, c, d, s); }  // cert: mul_pos
            if (0.0 <= (b * b)) && (0.0 <= (b * d)) { cert_piece_53(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < b) && (0.0 < d) { cert_piece_54(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -c ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * c))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (c * c)) { cert_piece_55(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
            SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (b * c))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (b * c)) { cert_piece_56(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < b) && (0.0 < c) { cert_piece_57(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * d))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (c * d)) { cert_piece_58(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (a * a)) && (0.0 <= (a * c)) { cert_piece_59(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < c) { cert_piece_60(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * b))); (2.0 > 0.0)
            if (0.0 <= (d * d)) && (0.0 <= (a * b)) { cert_piece_61(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < b) { cert_piece_62(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (b * c))); (2.0 > 0.0)
            if (0.0 <= (d * d)) && (0.0 <= (b * c)) { cert_piece_63(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (d * d)) && (0.0 <= (b * d)) { cert_piece_64(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * b))); (2.0 > 0.0)
            if (0.0 <= (c * c)) && (0.0 <= (a * b)) { cert_piece_65(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (c * c)) && (0.0 <= (a * c)) { cert_piece_66(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * d))); (2.0 > 0.0)
            if (0.0 <= (c * c)) && (0.0 <= (a * d)) { cert_piece_67(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * -(-(a * b) * -(c * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (c * d))); (3.0 > 0.0)
            if (0.0 < (a * b)) && (0.0 < (c * d)) { cert_piece_68(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
            // UNCITED-APPLIED add_nonpos ×14: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * d * c * (12 : ℝ) + a * b * d ^ (2 : ℕ) * (6 : ℝ) + a * b * c ^ (2 : ℕ) * (6 : ℝ) + a * b ^ (2 : ℕ) * d * (6 : ℝ…`
            cert_identity_69(a, b, c, d, s);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×34 [exec 1135 5763-5947]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×7, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], mul_pos [Lean recorded ×6], sq_nonneg [Lean recorded ×4])
            // UNCITED-APPLIED internal ×237 [exec 1136 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×205) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1137 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1138 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1139 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1140 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1141 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1142 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1143 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1144 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1145 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1146 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1147 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1137, 1138, 1139, 1140, 1141, 1142 … / `ring1` exec 1136)]
            SqNonneg(b);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(d);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(a);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(c);  // cite: sq_nonneg [applied by the tactic, not named in it]
            if ((-((c * d))) < (0.0)) { LeOfLt(-((c * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * d))) < (0.0)) { LeOfLt(-((a * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((b * d))) < (0.0)) { LeOfLt(-((b * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * c))) < (0.0)) { LeOfLt(-((a * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, b);  // cite: mul_pos
            assert (0.0 < (a)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, c);  // cite: mul_pos
            assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
            MulPos(b, c);  // cite: mul_pos
            assert (0.0 < (b)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(b, d);  // cite: mul_pos
            assert (0.0 < (a)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, d);  // cite: mul_pos
            assert (0.0 < (c)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(c, d);  // cite: mul_pos
          }
        }
      }
    }
  }
  // have upper_bound : s < 2  [type from Lean state]
  assert (s < 2.0) by { // @tac 5988-6075 // @tac 6080-6151 // @tac 6156-6227 // @tac 6232-6307 // @tac 6312-6385 // @tac 6390-6516 // @tac 6521-6544
    // have h₂ : 0 < a + b + c + d  [type from Lean state]
    assert (0.0 < (((a + b) + c) + d)) by { // @tac 6024-6075
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6024-6075 exec 1180)
      // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c + -d < (0 : ℝ)`
      cert_identity_70(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1180 6024-6075]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×4, Left.add_neg ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×58 [exec 1181 6024-6075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_congr ×4 (+17 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1181)]
    }
    // have h₃ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 6112-6151
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 1 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6112-6151 exec 1198)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_71(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1198 6112-6151]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1199 6112-6151]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1199)]
    }
    // have h₄ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 6188-6227
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6188-6227 exec 1216)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_72(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1216 6188-6227]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1217 6188-6227]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1217)]
    }
    // have h₅ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 6264-6307
      // [TACTIC: «Linarith[_]At___» [ h₀ . 2 . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6264-6307 exec 1234)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_73(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1234 6264-6307]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1235 6264-6307]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1235)]
    }
    // have h₆ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 6344-6385
      // [TACTIC: «Linarith[_]At___» [ h₀ . 1 , h₀ . 2 . 2 . 1 , h₀ . 2 . 2 . 2 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6344-6385 exec 1252)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_74(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1252 6344-6385]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1253 6344-6385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1253)]
    }
    // [TACTIC: «Field_simp[_]At___» [ h₁ ] at term1_pos term1_less1 term2_pos term2_less1 term3_pos term3_less1 term4_pos term4_less1 s_pos lower_bound]
    assert (0.0 < (((a + b) + d))) && (0.0 < (((a + b) + c)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((a + b) + d), ((a + b) + c));  // cite: mul_pos [applied by the tactic, not named in it]
    assert (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));  // cite: mul_pos [applied by the tactic, not named in it]
    assert (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) && (0.0 < (((a + c) + d)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d));  // cite: mul_pos [applied by the tactic, not named in it]
    // `fieldSimp` step's recorded applications (Lean execution 6390-6516 exec 1254): nothing of it stated; Lean's records:
    // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (a + b + d) * (a + b + c)` not stated: its premise `(0 : ℝ) < a + b + d`, `(0 : ℝ) < a + b + c` has no Dafny rendering (the piece is stated with all of Lean's premises or not at all)
    // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (a + b + d) * (a + b + c) * (b + c + d)` not stated: its premise `(0 : ℝ) < b + c + d` has no Dafny rendering (the piece is stated with all of Lean's premises or not at all)
    // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)` not stated: its premise `(0 : ℝ) < a + c + d` has no Dafny rendering (the piece is stated with all of Lean's premises or not at all)
    // UNCITED-APPLIED internal ×30 [exec 1254 6390-6516]: applications made inside the tactic's own automation, not stated — ne_of_gt ×6, add_div' ×3, div_mul_eq_mul_div ×3, div_add' ×3, div_div ×3; machinery/glue: Eq.trans ×6, congrArg ×6 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
    assert (0.0 < a);  // hypothesis term1_pos after `field_simp` (Lean state) // @tac-hyp 6390-6516
    assert (0.0 < b);  // hypothesis term2_pos after `field_simp` (Lean state) // @tac-hyp 6390-6516
    assert (0.0 < c);  // hypothesis term3_pos after `field_simp` (Lean state) // @tac-hyp 6390-6516
    assert (0.0 < d);  // hypothesis term4_pos after `field_simp` (Lean state) // @tac-hyp 6390-6516
    assert (0.0 < ((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))));  // hypothesis s_pos after `field_simp` (Lean state) // @tac-hyp 6390-6516
    assert (1.0 < Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d))));  // hypothesis lower_bound after `field_simp` (Lean state) // @tac-hyp 6390-6516
    // [TACTIC: refine' lt_of_sub_pos _]
    assert (0.0 < (2.0) - (s));  // precondition of LtOfSubPosReal (Lean: lt_of_sub_pos)
    LtOfSubPosReal(2.0, s);  // cite: lt_of_sub_pos
    assert (0.0 < (2.0 - s)) by {  // sub-goal before `field_simp` (Lean state) // @tac 6549-6566
      // [TACTIC: «Field_simp[_]At___» [ h₁ ]]
      // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + d), ((a + b) + c));]
      if (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d))) { MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
      if (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) && (0.0 < (((a + c) + d))) { MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 6549-6566 exec 1256)
      if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_75(a, b, c, d, s); }  // cert: mul_pos
      if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_76(a, b, c, d, s); }  // cert: mul_pos
      if (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))) && (0.0 < ((a + c) + d)) { cert_piece_77(a, b, c, d, s); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×37 [exec 1256 6549-6566]: applications made inside the tactic's own automation, not stated — ne_of_gt ×7, add_pos ×7, add_div' ×3, div_mul_eq_mul_div ×3, div_add' ×3, div_div ×3, sub_div' ×1; machinery/glue: congrArg ×6, Eq.trans ×4 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
      assert (((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) < (2.0 * (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 6571-6578
        // [TACTIC: Ring_nfAt]
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := b ^ (3 : ℕ)); (a := d ^ (3 : ℕ)); (a := b); (a := d); (a := c ^ (3 : ℕ)); (a := c)
        // UNCITED-APPLIED internal ×176 [exec 1257 6571-6578]: applications made inside the tactic's own automation, not stated — mul_one ×6, add_zero ×2; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pp_pf_overlap ×8 (+26 more heads, ×136) (cited in this block, not counted here: pow_one [Lean recorded ×4])
        assert (((((((((((((((((((((((((((((((((((a * b) * c) * d) * 12.0) + (((a * b) * (c * c)) * 6.0)) + (((a * b) * (d * d)) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (((a * (b * b)) * d) * 6.0)) + (a * (b * b * b))) + (((a * c) * (d * d)) * 4.0)) + (((a * (c * c)) * d) * 6.0)) + ((a * (c * c * c)) * 2.0)) + (a * (d * d * d))) + ((((a * a) * b) * c) * 6.0)) + ((((a * a) * b) * d) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * c) * d) * 6.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + ((a * a * a) * b)) + (((a * a * a) * c) * 2.0)) + ((a * a * a) * d)) + (((b * c) * (d * d)) * 6.0)) + (((b * (c * c)) * d) * 4.0)) + (b * (c * c * c))) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 6.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b) * (d * d)) * 4.0)) + ((b * b * b) * c)) + (((b * b * b) * d) * 2.0)) + (c * (d * d * d))) + (((c * c) * (d * d)) * 2.0)) + ((c * c * c) * d)) < ((((((((((((((((((((((((((((((((((a * b) * c) * d) * 18.0) + (((a * b) * (c * c)) * 8.0)) + (((a * b) * (d * d)) * 8.0)) + (((a * (b * b)) * c) * 8.0)) + (((a * (b * b)) * d) * 8.0)) + ((a * (b * b * b)) * 2.0)) + (((a * c) * (d * d)) * 8.0)) + (((a * (c * c)) * d) * 8.0)) + ((a * (c * c * c)) * 2.0)) + ((a * (d * d * d)) * 2.0)) + ((((a * a) * b) * c) * 8.0)) + ((((a * a) * b) * d) * 8.0)) + (((a * a) * (b * b)) * 4.0)) + ((((a * a) * c) * d) * 8.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 4.0)) + (((a * a * a) * b) * 2.0)) + (((a * a * a) * c) * 2.0)) + (((a * a * a) * d) * 2.0)) + (((b * c) * (d * d)) * 8.0)) + (((b * (c * c)) * d) * 8.0)) + ((b * (c * c * c)) * 2.0)) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 8.0)) + (((b * b) * (c * c)) * 4.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b * b) * c) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((c * (d * d * d)) * 2.0)) + (((c * c) * (d * d)) * 4.0)) + (((c * c * c) * d) * 2.0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 6583-6767
          // [TACTIC: «Nlinarith[_]At___» [ mul_pos h₀ . 1 h₀ . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 2 . 1 h₀ . 2 . 2 . 2 ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6583-6767 exec 1258)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -c ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * c))); (2.0 > 0.0)
          if (0.0 <= (b * b)) && (0.0 <= (c * c)) { cert_piece_78(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg(b); assert (0.0 <= (b * b));  // cert: sq_nonneg
          SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
          if (0.0 <= (b * b)) && (0.0 <= (a * b)) { cert_piece_79(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < a) && (0.0 < b) { cert_piece_80(a, b, c, d, s); }  // cert: mul_pos
          if (0.0 <= (b * b)) && (0.0 <= (b * c)) { cert_piece_81(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < b) && (0.0 < c) { cert_piece_82(a, b, c, d, s); }  // cert: mul_pos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * d))); (2.0 > 0.0)
          if (0.0 <= (b * b)) && (0.0 <= (c * d)) { cert_piece_83(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < c) && (0.0 < d) { cert_piece_84(a, b, c, d, s); }  // cert: mul_pos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (d * d))); (2.0 > 0.0)
          if (0.0 <= (a * a)) && (0.0 <= (d * d)) { cert_piece_85(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
          SqNonneg(d); assert (0.0 <= (d * d));  // cert: sq_nonneg
          if (0.0 <= (a * a)) && (0.0 <= (a * b)) { cert_piece_86(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= (a * a)) && (0.0 <= (a * d)) { cert_piece_87(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < a) && (0.0 < d) { cert_piece_88(a, b, c, d, s); }  // cert: mul_pos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * d))); (2.0 > 0.0)
          if (0.0 <= (a * a)) && (0.0 <= (c * d)) { cert_piece_89(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (d * d))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (d * d)) { cert_piece_90(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * b))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (a * b)) { cert_piece_91(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * d))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (a * d)) { cert_piece_92(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= (c * c)) && (0.0 <= (b * c)) { cert_piece_93(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-c ^ (2 : ℕ) * -(b * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (b * d))); (4.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (b * d)) { cert_piece_94(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < b) && (0.0 < d) { cert_piece_95(a, b, c, d, s); }  // cert: mul_pos
          if (0.0 <= (c * c)) && (0.0 <= (c * d)) { cert_piece_96(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * b))); (2.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (a * b)) { cert_piece_97(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-d ^ (2 : ℕ) * -(a * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * c))); (4.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (a * c)) { cert_piece_98(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 < a) && (0.0 < c) { cert_piece_99(a, b, c, d, s); }  // cert: mul_pos
          if (0.0 <= (d * d)) && (0.0 <= (a * d)) { cert_piece_100(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (b * c))); (2.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (b * c)) { cert_piece_101(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= (d * d)) && (0.0 <= (c * d)) { cert_piece_102(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(a * b)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * b))); (2.0 > 0.0)
          if (0.0 < (a * b)) { cert_piece_103(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(a * c)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * c))); (2.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (a * c)) { cert_piece_104(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-(a * b) * -(a * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * d))); (4.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (a * d)) { cert_piece_105(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-(a * b) * -(b * c)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (b * c))); (4.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (b * c)) { cert_piece_106(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(b * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (b * d))); (2.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (b * d)) { cert_piece_107(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-(a * b) * -(c * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (c * d))); (6.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (c * d)) { cert_piece_108(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Left.add_neg ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…`
          // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_nonpos ×19: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…`
          cert_identity_109(a, b, c, d, s);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×45 [exec 1258 6583-6767]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×8, mul_pos_of_neg_of_neg ×6; machinery/glue: Linarith.mul_nonpos ×8, Linarith.mul_neg ×6, Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], mul_pos [Lean recorded ×6], sq_nonneg [Lean recorded ×4])
          // UNCITED-APPLIED internal ×5 [exec 1261 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1262 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1263 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1264 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1265 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1266 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1267 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1268 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1269 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1270 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1271 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1272 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1273 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1274 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1275 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1276 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
          MulPos(a, b);  // cite: mul_pos
          assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
          MulPos(b, c);  // cite: mul_pos
          assert (0.0 < (c)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
          MulPos(c, d);  // cite: mul_pos
          assert (0.0 < (a)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
          MulPos(a, d);  // cite: mul_pos
          assert (0.0 < (b)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
          MulPos(b, d);  // cite: mul_pos
          assert (0.0 < (a)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
          MulPos(a, c);  // cite: mul_pos
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1260, 1261, 1262, 1263, 1264, 1265 … / `ring1` exec 1259)]
          SqNonneg(b);  // cite: sq_nonneg [applied by the tactic, not named in it]
          SqNonneg(c);  // cite: sq_nonneg [applied by the tactic, not named in it]
          SqNonneg(a);  // cite: sq_nonneg [applied by the tactic, not named in it]
          SqNonneg(d);  // cite: sq_nonneg [applied by the tactic, not named in it]
          if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((c * d))) < (0.0)) { LeOfLt(-((c * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((a * d))) < (0.0)) { LeOfLt(-((a * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((b * d))) < (0.0)) { LeOfLt(-((b * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((a * c))) < (0.0)) { LeOfLt(-((a * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×253 [exec 1259 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+34 more heads, ×221) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1260 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
    }
  }
  // [TACTIC: constructor]
  // `constructor`: 2 cases (Lean states); 2 branch bodies
  assert (1.0 < s) by {  // sub-goal of `constructor` (Lean state) // @tac 6849-6866
    // [TACTIC: exact lower_bound]
  }
  assert (s < 2.0) by {  // sub-goal of `constructor` (Lean state) // @tac 6931-6948
    // [TACTIC: exact upper_bound]
  }
}



// ===== closed lemma for line 1024 (from closed/imo_1974_p5-1024.dfy) =====

lemma {:induction false} vc_imo_1974_p5_L1024(a: real, b: real, d: real)
  requires 0.0 < a * b
  requires 0.0 < a * d
  ensures   0.0 < a * b * (a * d)
{
  var x := (a * b);  // [ADDED]
  var y := (a * d);  // [ADDED]
  MulPos(x, y);  // [ADDED]
  assert 0.0 < x * y;  // [ADDED]
  assert x * y == a * b * (a * d);  // [ADDED]
}

