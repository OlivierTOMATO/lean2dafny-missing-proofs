// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_amgm_sumasqdivbgeqsuma.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real, d: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real, d: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(a: real, b: real, c: real, d: real)
  requires (0.0 < (a * a))
  requires (0.0 < b)
  ensures (0.0 < Real.div((a * a), b))
{
  if a == 0.0 { assert a * a == 0.0; } SqDivPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(a: real, b: real, c: real, d: real)
  requires (0.0 < a)
  ensures (0.0 < (a * a))
{
  MulPos(a, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅/h₁₅₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(a: real, b: real, c: real, d: real)
  requires (0.0 < (a * a))
  requires (0.0 < b)
  ensures (0.0 < Real.div((a * a), b))
{
  if a == 0.0 { assert a * a == 0.0; } SqDivPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅/h₁₅₁`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6(a: real, b: real, c: real, d: real)
  requires (0.0 < a)
  ensures (0.0 < (a * a))
{
  MulPos(a, a);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₅/h₁₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, c: real, d: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅/h₁₅₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(a: real, b: real, c: real, d: real)
  requires (0.0 < Real.div((a * a), b))
  requires (0.0 < b)
  ensures (0.0 < (Real.div((a * a), b) * b))
{
  MulPos(Real.div((a * a), b), b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅/h₁₅₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(a: real, b: real, c: real, d: real)
  requires (0.0 < (a * a))
  requires (0.0 < b)
  ensures (0.0 < Real.div((a * a), b))
{
  if a == 0.0 { assert a * a == 0.0; } SqDivPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅/h₁₅₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, c: real, d: real)
  requires (0.0 < a)
  ensures (0.0 < (a * a))
{
  MulPos(a, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₅`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(a: real, b: real, c: real, d: real)
  requires (0.0 < b)
  requires ((((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a))) < 0.0)
  ensures ((b * (((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a)))) < 0.0)
{
  MulPos(b, -((((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a))))); MulNeg(b, (((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a)))); assert (b) * (-((((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a))))) == -((b) * ((((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, c: real, d: real)
  ensures ((-(((a - b) * (a - b))) + -((((1.0 * Real.div((a * a), b)) * (1.0 * b)) - (1.0 * ((1.0 * a) * (1.0 * a)))))) + (b * (((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, c: real, d: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, c: real, d: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(a: real, b: real, c: real, d: real)
  requires (0.0 < (b * b))
  requires (0.0 < c)
  ensures (0.0 < Real.div((b * b), c))
{
  if b == 0.0 { assert b * b == 0.0; } SqDivPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(a: real, b: real, c: real, d: real)
  requires (0.0 < b)
  ensures (0.0 < (b * b))
{
  MulPos(b, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅/h₂₅₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_17(a: real, b: real, c: real, d: real)
  requires (0.0 < (b * b))
  requires (0.0 < c)
  ensures (0.0 < Real.div((b * b), c))
{
  if b == 0.0 { assert b * b == 0.0; } SqDivPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅/h₂₅₁`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(a: real, b: real, c: real, d: real)
  requires (0.0 < b)
  ensures (0.0 < (b * b))
{
  MulPos(b, b);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅/h₂₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real, c: real, d: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅/h₂₅₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(a: real, b: real, c: real, d: real)
  requires (0.0 < Real.div((b * b), c))
  requires (0.0 < c)
  ensures (0.0 < (Real.div((b * b), c) * c))
{
  MulPos(Real.div((b * b), c), c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅/h₂₅₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_21(a: real, b: real, c: real, d: real)
  requires (0.0 < (b * b))
  requires (0.0 < c)
  ensures (0.0 < Real.div((b * b), c))
{
  if b == 0.0 { assert b * b == 0.0; } SqDivPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅/h₂₅₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_22(a: real, b: real, c: real, d: real)
  requires (0.0 < b)
  ensures (0.0 < (b * b))
{
  MulPos(b, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂/h₂₅`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(a: real, b: real, c: real, d: real)
  requires (0.0 < c)
  requires ((((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b))) < 0.0)
  ensures ((c * (((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b)))) < 0.0)
{
  MulPos(c, -((((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b))))); MulNeg(c, (((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b)))); assert (c) * (-((((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b))))) == -((c) * ((((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(a: real, b: real, c: real, d: real)
  ensures ((-(((b - c) * (b - c))) + -((((1.0 * Real.div((b * b), c)) * (1.0 * c)) - (1.0 * ((1.0 * b) * (1.0 * b)))))) + (c * (((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(a: real, b: real, c: real, d: real)
  ensures (-(d) + d) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(a: real, b: real, c: real, d: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_27(a: real, b: real, c: real, d: real)
  requires (0.0 < (c * c))
  requires (0.0 < d)
  ensures (0.0 < Real.div((c * c), d))
{
  if c == 0.0 { assert c * c == 0.0; } SqDivPos(c, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_28(a: real, b: real, c: real, d: real)
  requires (0.0 < c)
  ensures (0.0 < (c * c))
{
  MulPos(c, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅/h₃₅₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_29(a: real, b: real, c: real, d: real)
  requires (0.0 < (c * c))
  requires (0.0 < d)
  ensures (0.0 < Real.div((c * c), d))
{
  if c == 0.0 { assert c * c == 0.0; } SqDivPos(c, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅/h₃₅₁`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_30(a: real, b: real, c: real, d: real)
  requires (0.0 < c)
  ensures (0.0 < (c * c))
{
  MulPos(c, c);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(a: real, b: real, c: real, d: real)
  ensures (-(d) + d) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅/h₃₅₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_32(a: real, b: real, c: real, d: real)
  requires (0.0 < Real.div((c * c), d))
  requires (0.0 < d)
  ensures (0.0 < (Real.div((c * c), d) * d))
{
  MulPos(Real.div((c * c), d), d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅/h₃₅₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(a: real, b: real, c: real, d: real)
  requires (0.0 < (c * c))
  requires (0.0 < d)
  ensures (0.0 < Real.div((c * c), d))
{
  if c == 0.0 { assert c * c == 0.0; } SqDivPos(c, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅/h₃₅₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_34(a: real, b: real, c: real, d: real)
  requires (0.0 < c)
  ensures (0.0 < (c * c))
{
  MulPos(c, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₅`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_35(a: real, b: real, c: real, d: real)
  requires (0.0 < d)
  requires ((((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c))) < 0.0)
  ensures ((d * (((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c)))) < 0.0)
{
  MulPos(d, -((((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c))))); MulNeg(d, (((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c)))); assert (d) * (-((((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c))))) == -((d) * ((((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(a: real, b: real, c: real, d: real)
  ensures ((-(((d - c) * (d - c))) + -((((1.0 * Real.div((c * c), d)) * (1.0 * d)) - (1.0 * ((1.0 * c) * (1.0 * c)))))) + (d * (((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(a: real, b: real, c: real, d: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(a: real, b: real, c: real, d: real)
  ensures (-(d) + d) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_39(a: real, b: real, c: real, d: real)
  requires (0.0 < (d * d))
  requires (0.0 < a)
  ensures (0.0 < Real.div((d * d), a))
{
  if d == 0.0 { assert d * d == 0.0; } SqDivPos(d, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_40(a: real, b: real, c: real, d: real)
  requires (0.0 < d)
  ensures (0.0 < (d * d))
{
  MulPos(d, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅/h₄₅₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_41(a: real, b: real, c: real, d: real)
  requires (0.0 < (d * d))
  requires (0.0 < a)
  ensures (0.0 < Real.div((d * d), a))
{
  if d == 0.0 { assert d * d == 0.0; } SqDivPos(d, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅/h₄₅₁`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_42(a: real, b: real, c: real, d: real)
  requires (0.0 < d)
  ensures (0.0 < (d * d))
{
  MulPos(d, d);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₅/h₄₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_43(a: real, b: real, c: real, d: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅/h₄₅₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_44(a: real, b: real, c: real, d: real)
  requires (0.0 < Real.div((d * d), a))
  requires (0.0 < a)
  ensures (0.0 < (Real.div((d * d), a) * a))
{
  MulPos(Real.div((d * d), a), a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅/h₄₅₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_45(a: real, b: real, c: real, d: real)
  requires (0.0 < (d * d))
  requires (0.0 < a)
  ensures (0.0 < Real.div((d * d), a))
{
  if d == 0.0 { assert d * d == 0.0; } SqDivPos(d, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅/h₄₅₃`: pow_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_46(a: real, b: real, c: real, d: real)
  requires (0.0 < d)
  ensures (0.0 < (d * d))
{
  MulPos(d, d);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₅`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_47(a: real, b: real, c: real, d: real)
  requires (0.0 < a)
  requires ((((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d))) < 0.0)
  ensures ((a * (((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d)))) < 0.0)
{
  MulPos(a, -((((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d))))); MulNeg(a, (((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d)))); assert (a) * (-((((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d))))) == -((a) * ((((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_48(a: real, b: real, c: real, d: real)
  ensures ((-(((a - d) * (a - d))) + -((((1.0 * Real.div((d * d), a)) * (1.0 * a)) - (1.0 * ((1.0 * d) * (1.0 * d)))))) + (a * (((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_49(a: real, b: real, c: real, d: real)
  ensures (((((((1.0 * 2.0) * (1.0 * a)) - ((1.0 * Real.div((a * a), b)) + (1.0 * b))) + (((1.0 * 2.0) * (1.0 * b)) - ((1.0 * Real.div((b * b), c)) + (1.0 * c)))) + (((1.0 * 2.0) * (1.0 * c)) - ((1.0 * Real.div((c * c), d)) + (1.0 * d)))) + (((1.0 * 2.0) * (1.0 * d)) - ((1.0 * Real.div((d * d), a)) + (1.0 * a)))) + ((((((1.0 * Real.div((a * a), b)) + (1.0 * b)) + ((1.0 * Real.div((b * b), c)) + (1.0 * c))) + ((1.0 * Real.div((c * c), d)) + (1.0 * d))) + ((1.0 * Real.div((d * d), a)) + (1.0 * a))) - (((((1.0 * 2.0) * (1.0 * a)) + ((1.0 * 2.0) * (1.0 * b))) + ((1.0 * 2.0) * (1.0 * c))) + ((1.0 * 2.0) * (1.0 * d))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_50(a: real, b: real, c: real, d: real)
  ensures (((((((1.0 * 2.0) * (1.0 * a)) - ((1.0 * Real.div((a * a), b)) + (1.0 * b))) + (((1.0 * 2.0) * (1.0 * b)) - ((1.0 * Real.div((b * b), c)) + (1.0 * c)))) + (((1.0 * 2.0) * (1.0 * c)) - ((1.0 * Real.div((c * c), d)) + (1.0 * d)))) + (((1.0 * 2.0) * (1.0 * d)) - ((1.0 * Real.div((d * d), a)) + (1.0 * a)))) + (((((1.0 * Real.div((a * a), b)) + (1.0 * Real.div((b * b), c))) + (1.0 * Real.div((c * c), d))) + (1.0 * Real.div((d * d), a))) - ((((1.0 * a) + (1.0 * b)) + (1.0 * c)) + (1.0 * d)))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_amgm_sumasqdivbgeqsuma(a: real, b: real, c: real, d: real)
  requires ((0.0 < a) && ((0.0 < b) && ((0.0 < c) && (0.0 < d))))
  ensures ((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) >= (((a + b) + c) + d)) // @tac 395-1119 // @tac 1125-1849 // @tac 1855-2579 // @tac 2585-3309 // @tac 3315-3836 // @tac 3842-4170 // @tac 4176-4186
{
  // have h₁ : a ^ 2 / b + b >= 2 * a  [type from Lean state]
  assert ((Real.div((a * a), b) + b) >= (2.0 * a)) by { // @tac 441-476 // @tac 481-516 // @tac 521-566 // @tac 571-644 // @tac 649-1101 // @tac 1106-1119
    // have h₁₁ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 468-476
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 468-476 exec 36)
      cert_identity_1(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 36 468-476]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 37 468-476]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 37)]
    }
    // have h₁₂ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 508-516
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 508-516 exec 54)
      cert_identity_2(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 54 508-516]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 55 508-516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 55)]
    }
    // have h₁₃ : 0 < a ^ 2 / b  [type from Lean state]
    assert (0.0 < Real.div((a * a), b)) by { // @tac 556-566
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 556-566 exec 72)
      if (0.0 < a) { cert_piece_4(a, b, c, d); }  // cert: pow_pos
      if (0.0 < (a * a)) && (0.0 < b) { cert_piece_3(a, b, c, d); }  // cert: div_pos
      assert (0.0 < ((a * a))) && (0.0 < (b));  // precondition of DivPos (Lean: div_pos)
      DivPos((a * a), b);  // cite: div_pos [applied by the tactic, not named in it]
      assert (0.0 < (a));  // precondition of PowPos (Lean: pow_pos)
      PowPos(a, 2);  // cite: pow_pos [applied by the tactic, not named in it]
    }
    // have h₁₄ : a ^ 2 / b * b == a ^ 2  [type from Lean state]
    assert ((Real.div((a * a), b) * b) == (a * a)); // @tac 620-644
      // [TACTIC: «Field_simp[_]At___» [ h₁₁.ne' ]]
      // UNCITED h₁₁.ne': a projection of the local hypothesis h₁₁ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×10 [exec 89 620-644]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, LT.lt.ne' ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    // have h₁₅ : a ^ 2 / b + b >= 2 * a  [type from Lean state]
    assert ((Real.div((a * a), b) + b) >= (2.0 * a)) by { // @tac 766-814 // @tac 821-859 // @tac 866-918 // @tac 991-1101
      // have h₁₅₁ : 0 < a ^ 2 / b  [type from Lean state]
      assert (0.0 < Real.div((a * a), b)) by { // @tac 804-814
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 804-814 exec 122)
        if (0.0 < a) { cert_piece_6(a, b, c, d); }  // cert: pow_pos
        if (0.0 < (a * a)) && (0.0 < b) { cert_piece_5(a, b, c, d); }  // cert: div_pos
        assert (0.0 < ((a * a))) && (0.0 < (b));  // precondition of DivPos (Lean: div_pos)
        DivPos((a * a), b);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (a));  // precondition of PowPos (Lean: pow_pos)
        PowPos(a, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // have h₁₅₂ : 0 < b  [type from Lean state]
      assert (0.0 < b) by { // @tac 851-859
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 851-859 exec 139)
        cert_identity_7(a, b, c, d);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 139 851-859]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×20 [exec 142 851-859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 142)]
      }
      // have h₁₅₃ : 0 < a ^ 2 / b * b  [type from Lean state]
      assert (0.0 < (Real.div((a * a), b) * b)) by { // @tac 908-918
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 908-918 exec 159)
        if (0.0 < a) { cert_piece_10(a, b, c, d); }  // cert: pow_pos
        if (0.0 < Real.div((a * a), b)) && (0.0 < b) { cert_piece_8(a, b, c, d); }  // cert: mul_pos
        if (0.0 < (a * a)) && (0.0 < b) { cert_piece_9(a, b, c, d); }  // cert: div_pos
        assert (0.0 < (Real.div((a * a), b))) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
        MulPos(Real.div((a * a), b), b);  // cite: mul_pos [applied by the tactic, not named in it]
        assert (0.0 < ((a * a))) && (0.0 < (b));  // precondition of DivPos (Lean: div_pos)
        DivPos((a * a), b);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (a));  // precondition of PowPos (Lean: pow_pos)
        PowPos(a, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( a ^ 2 / b - b ) , sq_nonneg ( a ^ 2 / b - a ) , sq_nonneg ( b - a ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 991-1101 exec 160)
      SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
      if (0.0 < b) && ((((1.0 * Real.div((a * a), b)) + (1.0 * b)) - ((1.0 * 2.0) * (1.0 * a))) < 0.0) { cert_piece_11(a, b, c, d); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(a - b) ^ (2 : ℕ) + -((1 : ℝ) * (a ^ (2 : ℕ) / b) * ((1 : ℝ) * b) - (1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_12(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 160 991-1101]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, mul_pos_of_neg_of_neg ×1, CancelDenoms.add_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 163 991-1101]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 164 991-1101]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      SqNonneg((a - b));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 161, 163, 164 / `ring1` exec 167)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 167)]
      // NOT APPLIED `sq_nonneg ( a ^ 2 / b - b )`, `sq_nonneg ( a ^ 2 / b - a )`, `sq_nonneg ( b - a )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
      // UNCITED-APPLIED internal ×197 [exec 167 991-1101]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+54 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 161 991-1101]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: exact h₁₅]
    assert ((Real.div((a * a), b) + b) >= (2.0 * a));
  }
  // have h₂ : b ^ 2 / c + c >= 2 * b  [type from Lean state]
  assert ((Real.div((b * b), c) + c) >= (2.0 * b)) by { // @tac 1171-1206 // @tac 1211-1246 // @tac 1251-1296 // @tac 1301-1374 // @tac 1379-1831 // @tac 1836-1849
    // have h₂₁ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 1198-1206
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1198-1206 exec 201)
      cert_identity_13(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 201 1198-1206]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 203 1198-1206]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 203)]
    }
    // have h₂₂ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 1238-1246
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1238-1246 exec 220)
      cert_identity_14(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 220 1238-1246]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 222 1238-1246]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 222)]
    }
    // have h₂₃ : 0 < b ^ 2 / c  [type from Lean state]
    assert (0.0 < Real.div((b * b), c)) by { // @tac 1286-1296
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1286-1296 exec 239)
      if (0.0 < b) { cert_piece_16(a, b, c, d); }  // cert: pow_pos
      if (0.0 < (b * b)) && (0.0 < c) { cert_piece_15(a, b, c, d); }  // cert: div_pos
      assert (0.0 < ((b * b))) && (0.0 < (c));  // precondition of DivPos (Lean: div_pos)
      DivPos((b * b), c);  // cite: div_pos [applied by the tactic, not named in it]
      assert (0.0 < (b));  // precondition of PowPos (Lean: pow_pos)
      PowPos(b, 2);  // cite: pow_pos [applied by the tactic, not named in it]
    }
    // have h₂₄ : b ^ 2 / c * c == b ^ 2  [type from Lean state]
    assert ((Real.div((b * b), c) * c) == (b * b)); // @tac 1350-1374
      // [TACTIC: «Field_simp[_]At___» [ h₂₁.ne' ]]
      // UNCITED h₂₁.ne': a projection of the local hypothesis h₂₁ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×10 [exec 256 1350-1374]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, LT.lt.ne' ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    // have h₂₅ : b ^ 2 / c + c >= 2 * b  [type from Lean state]
    assert ((Real.div((b * b), c) + c) >= (2.0 * b)) by { // @tac 1496-1544 // @tac 1551-1589 // @tac 1596-1648 // @tac 1721-1831
      // have h₂₅₁ : 0 < b ^ 2 / c  [type from Lean state]
      assert (0.0 < Real.div((b * b), c)) by { // @tac 1534-1544
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1534-1544 exec 289)
        if (0.0 < b) { cert_piece_18(a, b, c, d); }  // cert: pow_pos
        if (0.0 < (b * b)) && (0.0 < c) { cert_piece_17(a, b, c, d); }  // cert: div_pos
        assert (0.0 < ((b * b))) && (0.0 < (c));  // precondition of DivPos (Lean: div_pos)
        DivPos((b * b), c);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (b));  // precondition of PowPos (Lean: pow_pos)
        PowPos(b, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // have h₂₅₂ : 0 < c  [type from Lean state]
      assert (0.0 < c) by { // @tac 1581-1589
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1581-1589 exec 306)
        cert_identity_19(a, b, c, d);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 306 1581-1589]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×20 [exec 310 1581-1589]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 310)]
      }
      // have h₂₅₃ : 0 < b ^ 2 / c * c  [type from Lean state]
      assert (0.0 < (Real.div((b * b), c) * c)) by { // @tac 1638-1648
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1638-1648 exec 327)
        if (0.0 < b) { cert_piece_22(a, b, c, d); }  // cert: pow_pos
        if (0.0 < Real.div((b * b), c)) && (0.0 < c) { cert_piece_20(a, b, c, d); }  // cert: mul_pos
        if (0.0 < (b * b)) && (0.0 < c) { cert_piece_21(a, b, c, d); }  // cert: div_pos
        assert (0.0 < (Real.div((b * b), c))) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
        MulPos(Real.div((b * b), c), c);  // cite: mul_pos [applied by the tactic, not named in it]
        assert (0.0 < ((b * b))) && (0.0 < (c));  // precondition of DivPos (Lean: div_pos)
        DivPos((b * b), c);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (b));  // precondition of PowPos (Lean: pow_pos)
        PowPos(b, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( b - c ) , sq_nonneg ( b ^ 2 / c - c ) , sq_nonneg ( b ^ 2 / c - b ) , sq_nonneg ( c - b ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1721-1831 exec 328)
      SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
      if (0.0 < c) && ((((1.0 * Real.div((b * b), c)) + (1.0 * c)) - ((1.0 * 2.0) * (1.0 * b))) < 0.0) { cert_piece_23(a, b, c, d); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(b - c) ^ (2 : ℕ) + -((1 : ℝ) * (b ^ (2 : ℕ) / c) * ((1 : ℝ) * c) - (1 : ℝ) * ((1 : ℝ) * b) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_24(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 328 1721-1831]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, mul_pos_of_neg_of_neg ×1, CancelDenoms.add_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 331 1721-1831]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 332 1721-1831]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      SqNonneg((b - c));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 329, 331, 332 / `ring1` exec 336)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 336)]
      // NOT APPLIED `sq_nonneg ( b ^ 2 / c - c )`, `sq_nonneg ( b ^ 2 / c - b )`, `sq_nonneg ( c - b )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
      // UNCITED-APPLIED internal ×197 [exec 336 1721-1831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+54 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 329 1721-1831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: exact h₂₅]
    assert ((Real.div((b * b), c) + c) >= (2.0 * b));
  }
  // have h₃ : c ^ 2 / d + d >= 2 * c  [type from Lean state]
  assert ((Real.div((c * c), d) + d) >= (2.0 * c)) by { // @tac 1901-1936 // @tac 1941-1976 // @tac 1981-2026 // @tac 2031-2104 // @tac 2109-2561 // @tac 2566-2579
    // have h₃₁ : 0 < d  [type from Lean state]
    assert (0.0 < d) by { // @tac 1928-1936
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1928-1936 exec 370)
      cert_identity_25(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 370 1928-1936]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 373 1928-1936]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 373)]
    }
    // have h₃₂ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 1968-1976
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1968-1976 exec 390)
      cert_identity_26(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 390 1968-1976]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 393 1968-1976]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 393)]
    }
    // have h₃₃ : 0 < c ^ 2 / d  [type from Lean state]
    assert (0.0 < Real.div((c * c), d)) by { // @tac 2016-2026
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2016-2026 exec 410)
      if (0.0 < c) { cert_piece_28(a, b, c, d); }  // cert: pow_pos
      if (0.0 < (c * c)) && (0.0 < d) { cert_piece_27(a, b, c, d); }  // cert: div_pos
      assert (0.0 < ((c * c))) && (0.0 < (d));  // precondition of DivPos (Lean: div_pos)
      DivPos((c * c), d);  // cite: div_pos [applied by the tactic, not named in it]
      assert (0.0 < (c));  // precondition of PowPos (Lean: pow_pos)
      PowPos(c, 2);  // cite: pow_pos [applied by the tactic, not named in it]
    }
    // have h₃₄ : c ^ 2 / d * d == c ^ 2  [type from Lean state]
    assert ((Real.div((c * c), d) * d) == (c * c)); // @tac 2080-2104
      // [TACTIC: «Field_simp[_]At___» [ h₃₁.ne' ]]
      // UNCITED h₃₁.ne': a projection of the local hypothesis h₃₁ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×10 [exec 427 2080-2104]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, LT.lt.ne' ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    // have h₃₅ : c ^ 2 / d + d >= 2 * c  [type from Lean state]
    assert ((Real.div((c * c), d) + d) >= (2.0 * c)) by { // @tac 2226-2274 // @tac 2281-2319 // @tac 2326-2378 // @tac 2451-2561
      // have h₃₅₁ : 0 < c ^ 2 / d  [type from Lean state]
      assert (0.0 < Real.div((c * c), d)) by { // @tac 2264-2274
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2264-2274 exec 460)
        if (0.0 < c) { cert_piece_30(a, b, c, d); }  // cert: pow_pos
        if (0.0 < (c * c)) && (0.0 < d) { cert_piece_29(a, b, c, d); }  // cert: div_pos
        assert (0.0 < ((c * c))) && (0.0 < (d));  // precondition of DivPos (Lean: div_pos)
        DivPos((c * c), d);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (c));  // precondition of PowPos (Lean: pow_pos)
        PowPos(c, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // have h₃₅₂ : 0 < d  [type from Lean state]
      assert (0.0 < d) by { // @tac 2311-2319
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2311-2319 exec 477)
        cert_identity_31(a, b, c, d);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 477 2311-2319]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×20 [exec 482 2311-2319]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 482)]
      }
      // have h₃₅₃ : 0 < c ^ 2 / d * d  [type from Lean state]
      assert (0.0 < (Real.div((c * c), d) * d)) by { // @tac 2368-2378
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2368-2378 exec 499)
        if (0.0 < c) { cert_piece_34(a, b, c, d); }  // cert: pow_pos
        if (0.0 < Real.div((c * c), d)) && (0.0 < d) { cert_piece_32(a, b, c, d); }  // cert: mul_pos
        if (0.0 < (c * c)) && (0.0 < d) { cert_piece_33(a, b, c, d); }  // cert: div_pos
        assert (0.0 < (Real.div((c * c), d))) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
        MulPos(Real.div((c * c), d), d);  // cite: mul_pos [applied by the tactic, not named in it]
        assert (0.0 < ((c * c))) && (0.0 < (d));  // precondition of DivPos (Lean: div_pos)
        DivPos((c * c), d);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (c));  // precondition of PowPos (Lean: pow_pos)
        PowPos(c, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( c - d ) , sq_nonneg ( c ^ 2 / d - d ) , sq_nonneg ( c ^ 2 / d - c ) , sq_nonneg ( d - c ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2451-2561 exec 500)
      SqNonneg((d - c)); assert (0.0 <= ((d - c) * (d - c)));  // cert: sq_nonneg
      if (0.0 < d) && ((((1.0 * Real.div((c * c), d)) + (1.0 * d)) - ((1.0 * 2.0) * (1.0 * c))) < 0.0) { cert_piece_35(a, b, c, d); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(d - c) ^ (2 : ℕ) + -((1 : ℝ) * (c ^ (2 : ℕ) / d) * ((1 : ℝ) * d) - (1 : ℝ) * ((1 : ℝ) * c) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_36(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 500 2451-2561]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, mul_pos_of_neg_of_neg ×1, CancelDenoms.add_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 503 2451-2561]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 504 2451-2561]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      SqNonneg((d - c));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 501, 503, 504 / `ring1` exec 509)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 509)]
      // NOT APPLIED `sq_nonneg ( c - d )`, `sq_nonneg ( c ^ 2 / d - d )`, `sq_nonneg ( c ^ 2 / d - c )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
      // UNCITED-APPLIED internal ×194 [exec 509 2451-2561]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.zero_mul ×8, Mathlib.Tactic.Ring.mul_congr ×8 (+54 more heads, ×162) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 501 2451-2561]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: exact h₃₅]
    assert ((Real.div((c * c), d) + d) >= (2.0 * c));
  }
  // have h₄ : d ^ 2 / a + a >= 2 * d  [type from Lean state]
  assert ((Real.div((d * d), a) + a) >= (2.0 * d)) by { // @tac 2631-2666 // @tac 2671-2706 // @tac 2711-2756 // @tac 2761-2834 // @tac 2839-3291 // @tac 3296-3309
    // have h₄₁ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 2658-2666
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2658-2666 exec 543)
      cert_identity_37(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 543 2658-2666]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 547 2658-2666]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 547)]
    }
    // have h₄₂ : 0 < d  [type from Lean state]
    assert (0.0 < d) by { // @tac 2698-2706
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2698-2706 exec 564)
      cert_identity_38(a, b, c, d);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 564 2698-2706]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 568 2698-2706]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 568)]
    }
    // have h₄₃ : 0 < d ^ 2 / a  [type from Lean state]
    assert (0.0 < Real.div((d * d), a)) by { // @tac 2746-2756
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2746-2756 exec 585)
      if (0.0 < d) { cert_piece_40(a, b, c, d); }  // cert: pow_pos
      if (0.0 < (d * d)) && (0.0 < a) { cert_piece_39(a, b, c, d); }  // cert: div_pos
      assert (0.0 < ((d * d))) && (0.0 < (a));  // precondition of DivPos (Lean: div_pos)
      DivPos((d * d), a);  // cite: div_pos [applied by the tactic, not named in it]
      assert (0.0 < (d));  // precondition of PowPos (Lean: pow_pos)
      PowPos(d, 2);  // cite: pow_pos [applied by the tactic, not named in it]
    }
    // have h₄₄ : d ^ 2 / a * a == d ^ 2  [type from Lean state]
    assert ((Real.div((d * d), a) * a) == (d * d)); // @tac 2810-2834
      // [TACTIC: «Field_simp[_]At___» [ h₄₁.ne' ]]
      // UNCITED h₄₁.ne': a projection of the local hypothesis h₄₁ handed to the tactic; its fact is not stated here
      // UNCITED-APPLIED internal ×10 [exec 602 2810-2834]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, LT.lt.ne' ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    // have h₄₅ : d ^ 2 / a + a >= 2 * d  [type from Lean state]
    assert ((Real.div((d * d), a) + a) >= (2.0 * d)) by { // @tac 2956-3004 // @tac 3011-3049 // @tac 3056-3108 // @tac 3181-3291
      // have h₄₅₁ : 0 < d ^ 2 / a  [type from Lean state]
      assert (0.0 < Real.div((d * d), a)) by { // @tac 2994-3004
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2994-3004 exec 635)
        if (0.0 < d) { cert_piece_42(a, b, c, d); }  // cert: pow_pos
        if (0.0 < (d * d)) && (0.0 < a) { cert_piece_41(a, b, c, d); }  // cert: div_pos
        assert (0.0 < ((d * d))) && (0.0 < (a));  // precondition of DivPos (Lean: div_pos)
        DivPos((d * d), a);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (d));  // precondition of PowPos (Lean: pow_pos)
        PowPos(d, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // have h₄₅₂ : 0 < a  [type from Lean state]
      assert (0.0 < a) by { // @tac 3041-3049
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3041-3049 exec 652)
        cert_identity_43(a, b, c, d);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 652 3041-3049]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×20 [exec 658 3041-3049]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 658)]
      }
      // have h₄₅₃ : 0 < d ^ 2 / a * a  [type from Lean state]
      assert (0.0 < (Real.div((d * d), a) * a)) by { // @tac 3098-3108
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 3098-3108 exec 675)
        if (0.0 < d) { cert_piece_46(a, b, c, d); }  // cert: pow_pos
        if (0.0 < Real.div((d * d), a)) && (0.0 < a) { cert_piece_44(a, b, c, d); }  // cert: mul_pos
        if (0.0 < (d * d)) && (0.0 < a) { cert_piece_45(a, b, c, d); }  // cert: div_pos
        assert (0.0 < (Real.div((d * d), a))) && (0.0 < (a));  // precondition of MulPos (Lean: mul_pos)
        MulPos(Real.div((d * d), a), a);  // cite: mul_pos [applied by the tactic, not named in it]
        assert (0.0 < ((d * d))) && (0.0 < (a));  // precondition of DivPos (Lean: div_pos)
        DivPos((d * d), a);  // cite: div_pos [applied by the tactic, not named in it]
        assert (0.0 < (d));  // precondition of PowPos (Lean: pow_pos)
        PowPos(d, 2);  // cite: pow_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( d - a ) , sq_nonneg ( d ^ 2 / a - a ) , sq_nonneg ( d ^ 2 / a - d ) , sq_nonneg ( a - d ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3181-3291 exec 676)
      vc_algebra_amgm_sumasqdivbgeqsuma_L845(a, b, c, d);  /* [IN-FILE CHECK] the closed lemma for line 845 */
      SqNonneg((a - d)); assert (0.0 <= ((a - d) * (a - d)));  // cert: sq_nonneg
      if (0.0 < a) && ((((1.0 * Real.div((d * d), a)) + (1.0 * a)) - ((1.0 * 2.0) * (1.0 * d))) < 0.0) { cert_piece_47(a, b, c, d); }  // cert: mul_pos_of_neg_of_neg
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(a - d) ^ (2 : ℕ) + -((1 : ℝ) * (d ^ (2 : ℕ) / a) * ((1 : ℝ) * a) - (1 : ℝ) * ((1 : ℝ) * d) ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_48(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×22 [exec 676 3181-3291]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, CancelDenoms.pow_subst ×1, sub_eq_zero_of_eq ×1, mul_pos_of_neg_of_neg ×1, CancelDenoms.add_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.le_of_le_of_eq ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 679 3181-3291]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 680 3181-3291]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      SqNonneg((a - d));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 677, 679, 680 / `ring1` exec 686)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 686)]
      // NOT APPLIED `sq_nonneg ( d - a )`, `sq_nonneg ( d ^ 2 / a - a )`, `sq_nonneg ( d ^ 2 / a - d )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
      // UNCITED-APPLIED internal ×194 [exec 686 3181-3291]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.zero_mul ×8, Mathlib.Tactic.Ring.mul_congr ×8 (+54 more heads, ×162) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 677 3181-3291]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: exact h₄₅]
    assert ((Real.div((d * d), a) + a) >= (2.0 * d));
  }
  // have h₅ : a ^ 2 / b + b ^ 2 / c + c ^ 2 / d + d ^ 2 / a + ( a + b + c + d ) >= 2  [type from Lean state]
  assert (((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) + (((a + b) + c) + d)) >= ((((2.0 * a) + (2.0 * b)) + (2.0 * c)) + (2.0 * d))) by { // @tac 3435-3481 // @tac 3486-3532 // @tac 3537-3583 // @tac 3588-3634 // @tac 3639-3806 // @tac 3811-3823
    // have h₅₁ : a ^ 2 / b + b >= 2 * a  [type from Lean state]
    assert ((Real.div((a * a), b) + b) >= (2.0 * a)) by {
      // [TACTIC: exact h₁]
      assert ((Real.div((a * a), b) + b) >= (2.0 * a));
    }
    // have h₅₂ : b ^ 2 / c + c >= 2 * b  [type from Lean state]
    assert ((Real.div((b * b), c) + c) >= (2.0 * b)) by {
      // [TACTIC: exact h₂]
      assert ((Real.div((b * b), c) + c) >= (2.0 * b));
    }
    // have h₅₃ : c ^ 2 / d + d >= 2 * c  [type from Lean state]
    assert ((Real.div((c * c), d) + d) >= (2.0 * c)) by {
      // [TACTIC: exact h₃]
      assert ((Real.div((c * c), d) + d) >= (2.0 * c));
    }
    // have h₅₄ : d ^ 2 / a + a >= 2 * d  [type from Lean state]
    assert ((Real.div((d * d), a) + a) >= (2.0 * d)) by {
      // [TACTIC: exact h₄]
      assert ((Real.div((d * d), a) + a) >= (2.0 * d));
    }
    // have h₅₅ : a ^ 2 / b + b ^ 2 / c + c ^ 2 / d + d ^ 2 / a + ( a + b + c + d ) == (  [type from Lean state]
    assert (((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) + (((a + b) + c) + d)) == ((((Real.div((a * a), b) + b) + (Real.div((b * b), c) + c)) + (Real.div((c * c), d) + d)) + (Real.div((d * d), a) + a))); // @tac 3802-3806
      // [TACTIC: Ring]
    // UNCITED-APPLIED internal ×122 [exec 772 3802-3806]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+27 more heads, ×90)
    // [TACTIC: rwSeq [ h₅₅ ]]
    // UNCITED-APPLIED congrArg(a ^ (2 : ℕ) / b + b ^ (2 : ℕ) / c + c ^ (2 : ℕ) / d + d ^ (2 : ℕ) / a…, a ^ (2 : ℕ) / b + b + (b ^ (2 : ℕ) / c + c) + (c ^ (2 : ℕ) / d + d) +…, fun (_a : ℝ) => _a ≥ (2 : ℝ) * a + (2 : ℝ) * b + (2 : ℝ) * c + (2 : ℝ…): no library counterpart (not stated) [exec 777 3811-3823]
    assert (((((Real.div((a * a), b) + b) + (Real.div((b * b), c) + c)) + (Real.div((c * c), d) + d)) + (Real.div((d * d), a) + a)) >= ((((2.0 * a) + (2.0 * b)) + (2.0 * c)) + (2.0 * d))) by {  // sub-goal before `linarith` (Lean state) // @tac 3828-3836
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3828-3836 exec 804)
      // UNCITED-APPLIED add_nonpos ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * a) - ((1 : ℝ) * (a ^ (2 : ℕ) / b) + (1 : ℝ) * b) + ((1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * b) - …`
      cert_identity_49(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×34 [exec 804 3828-3836]: applications made inside the tactic's own automation, not stated — CancelDenoms.add_subst ×8, CancelDenoms.sub_subst ×5, CancelDenoms.mul_subst ×4, sub_nonpos_of_le ×4, add_nonpos ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.without_one_mul ×4, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×220 [exec 817 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+45 more heads, ×188) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 805 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 806 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 807 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 808 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 809 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 810 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 811 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 812 3828-3836]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 805, 806, 807, 808, 809, 810 … / `ring1` exec 817)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 817)]
    }
  }
  // have h₆ : a ^ 2 / b + b ^ 2 / c + c ^ 2 / d + d ^ 2 / a >= a + b + c + d  [type from Lean state]
  assert ((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) >= (((a + b) + c) + d)) by { // @tac 3928-4048 // @tac 4053-4152 // @tac 4157-4170
    // have h₆₁ : a ^ 2 / b + b ^ 2 / c + c ^ 2 / d + d ^ 2 / a + ( a + b + c + d ) >= 2  [type from Lean state]
    assert (((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) + (((a + b) + c) + d)) >= ((((2.0 * a) + (2.0 * b)) + (2.0 * c)) + (2.0 * d))) by {
      // [TACTIC: exact h₅]
      assert (((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) + (((a + b) + c) + d)) >= ((((2.0 * a) + (2.0 * b)) + (2.0 * c)) + (2.0 * d)));
    }
    // have h₆₂ : a ^ 2 / b + b ^ 2 / c + c ^ 2 / d + d ^ 2 / a >= a + b + c + d  [type from Lean state]
    assert ((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) >= (((a + b) + c) + d)) by { // @tac 4144-4152
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4144-4152 exec 862)
      // UNCITED-APPLIED add_nonpos ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * a) - ((1 : ℝ) * (a ^ (2 : ℕ) / b) + (1 : ℝ) * b) + ((1 : ℝ) * (2 : ℝ) * ((1 : ℝ) * b) - …`
      cert_identity_50(a, b, c, d);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×36 [exec 862 4144-4152]: applications made inside the tactic's own automation, not stated — CancelDenoms.add_subst ×8, CancelDenoms.sub_subst ×5, CancelDenoms.mul_subst ×4, sub_nonpos_of_le ×4, add_nonpos ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×5, Linarith.without_one_mul ×5, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×210 [exec 875 4144-4152]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+45 more heads, ×178) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 863 4144-4152]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 864 4144-4152]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 865 4144-4152]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 866 4144-4152]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 863, 864, 865, 866 / `ring1` exec 875)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 875)]
    }
    // [TACTIC: exact h₆₂]
    assert ((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) >= (((a + b) + c) + d));
  }
  // [TACTIC: exact h₆]
  assert ((((Real.div((a * a), b) + Real.div((b * b), c)) + Real.div((c * c), d)) + Real.div((d * d), a)) >= (((a + b) + c) + d));
}



// ===== closed lemma for line 845 (from closed/algebra_amgm_sumasqdivbgeqsuma-845.dfy) =====

lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L845(a: real, b: real, c: real, d: real)
  ensures   0.0 <= (a - d) * (a - d)
{
  forall s: real {:trigger Real.div(s, 1.0)} | s == a - d  // [ADDED]
    ensures 0.0 <= s * s  // [ADDED]
  {
    SqNonneg(s);  // [ADDED]
  }
  assert Real.div(a - d, 1.0) == a - d;  // [ADDED]
  assert 0.0 <= (a - d) * (a - d);  // [ADDED]
}
