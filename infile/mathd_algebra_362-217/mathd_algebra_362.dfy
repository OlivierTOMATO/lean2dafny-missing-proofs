// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_362.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `a_eq/h₃/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real)
  ensures (-(((a * 4.0) - (27.0 * (b * b * b)))) + ((a * 4.0) - (27.0 * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `a_eq/h₃/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real)
  ensures (((a * 4.0) - (27.0 * (b * b * b))) + ((27.0 * (b * b * b)) - (a * 4.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b9_eq/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real)
  ensures (-((((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (16.0 * 32.0))) + (((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (16.0 * 32.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b9_eq/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real)
  ensures ((((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (16.0 * 32.0)) + ((16.0 * 32.0) - ((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b9_eq/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real)
  ensures (-((((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (16.0 * 32.0))) + ((19683.0 * Real.pow((1.0 * b), 9)) - (1.0 * 512.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b9_eq/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real)
  ensures ((((1.0 * (((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) * ((1.0 * 27.0) * (1.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (16.0 * 32.0)) + ((1.0 * 512.0) - (19683.0 * Real.pow((1.0 * b), 9)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁/h₁₃/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁/h₁₃/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁/h₁₃/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁/h₁₃/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real)
  ensures (b + -(b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real)
  ensures (b + -(b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₄/h₆/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real)
  ensures (b + -(b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈/h₁₀/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real)
  ensures (((1.0 * 2.0) - (3.0 * b)) + ((3.0 * b) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real)
  ensures (((1.0 * 2.0) - (3.0 * b)) + ((3.0 * b) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₈/h₁₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_17(a: real, b: real)
  requires (0.0 < 2.0)
  requires (0.0 < 3.0)
  ensures (0.0 < (2.0 / 3.0))
{
  DivPos(2.0, 3.0);
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(a: real, b: real)
  ensures (((19683.0 * Real.pow((1.0 * b), 9)) - (1.0 * Real.pow((1.0 * 2.0), 9))) + ((1.0 * Real.pow((1.0 * 2.0), 9)) - (19683.0 * Real.pow((1.0 * b), 9)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈/h₁₀/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real)
  ensures (((3.0 * b) - (1.0 * 2.0)) + ((1.0 * 2.0) - (3.0 * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₈/h₁₀/h₁₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(a: real, b: real)
  requires (0.0 < 2.0)
  requires (0.0 < 3.0)
  ensures (0.0 < (2.0 / 3.0))
{
  DivPos(2.0, 3.0);
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(a: real, b: real)
  ensures (((3.0 * b) - (1.0 * 2.0)) + ((1.0 * 2.0) - (3.0 * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(a: real, b: real)
  ensures (-(((19683.0 * Real.pow((1.0 * b), 9)) - (1.0 * Real.pow((1.0 * 2.0), 9)))) + ((19683.0 * Real.pow((1.0 * b), 9)) - (1.0 * Real.pow((1.0 * 2.0), 9)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₃`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(a: real, b: real)
  requires (b < 0.0)
  ensures (0.0 < (b * b))
{
  MulPos(-(b), -(b)); MulNeg(-(b), b); assert (-(b)) * (-(b)) == -((-(b)) * (b)); assert (-(b)) * (b) == -((b) * (b));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(a: real, b: real)
  ensures ((b * b) + -((b * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₄`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_25(a: real, b: real)
  requires (b < 0.0)
  requires (0.0 < (b * b))
  ensures ((b * (b * b)) < 0.0)
{
  assert b < 0.0;  /* [IN-FILE CHECK] requires 1 of vc_mathd_algebra_362_L217 */
  assert 0.0 < b * b;  /* [IN-FILE CHECK] requires 2 of vc_mathd_algebra_362_L217 */
  vc_mathd_algebra_362_L217(b);  /* [IN-FILE CHECK] the closed lemma for line 217 */
  MulPos(-(b), (b * b)); MulNeg((b * b), b); assert (-(b)) * ((b * b)) == -(((b * b)) * (b));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(a: real, b: real)
  ensures (-((b * b * b)) + (b * (b * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_27(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_29(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_31(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₈`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_33(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₉`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_35(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₂₀`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_37(a: real, b: real)
  requires (0.0 <= ((1.0 * a) * (1.0 * a)))
  requires ((b * b * b) <= 0.0)
  ensures ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0)
{
  MulNonneg(((1.0 * a) * (1.0 * a)), -((b * b * b))); MulNeg(((1.0 * a) * (1.0 * a)), (b * b * b)); assert (((1.0 * a) * (1.0 * a))) * (-((b * b * b))) == -((((1.0 * a) * (1.0 * a))) * ((b * b * b)));
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃/h₆/h₇/h₉/h₁₀/h₁₂/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(a: real, b: real)
  ensures ((-((32.0 * 1.0)) + -((((1.0 * ((1.0 * a) * (1.0 * a))) * (27.0 * ((1.0 * b) * (1.0 * b) * (1.0 * b)))) - (1.0 * 32.0)))) + (27.0 * (((1.0 * a) * (1.0 * a)) * (b * b * b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `b_eq/h₃/h₇`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_39(a: real, b: real)
  requires (0.0 < 2.0)
  requires (0.0 < 3.0)
  ensures (0.0 < (2.0 / 3.0))
{
  DivPos(2.0, 3.0);
}

// ──────────────────────────────────────────────────
// certificate identity for `b_eq/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(a: real, b: real)
  ensures ((-((512.0 * 1.0)) + -(((19683.0 * Real.pow((1.0 * b), 9)) - (1.0 * Real.pow((1.0 * 2.0), 9))))) + (19683.0 * Real.pow(b, 9))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_362(a: real, b: real)
  requires (((a * a) * (b * b * b)) == (32.0 / 27.0))
  requires (Real.div(a, (b * b * b)) == (27.0 / 4.0))
  ensures ((a + b) == (8.0 / 3.0)) // @tac 362-580 // @tac 586-1224 // @tac 1230-1861 // @tac 1867-6520 // @tac 6526-6657 // @tac 6663-6734 // @tac 6740-6750
{
  // have hb3 : b != 0  [type from Lean state]
  assert (b != 0.0) by { // @tac 391-402
    // by_contra h
    if !((b != 0.0)) {
      if ((b == 0.0)) {  // sub-goal before `have` (Lean state)
        // have h₂ : b == 0  [type from Lean state]
        assert (b == 0.0); // @tac 431-444
          // [TACTIC: simpa using h]
        // [TACTIC: rwSeq [ h₂ ] at h₁]
        // UNCITED-APPLIED congrArg(b, (0 : ℝ), fun (_a : ℝ) => a / _a ^ (3 : ℕ) = (27 / 4 : ℝ)): no library counterpart (not stated) [exec 48 449-466]
        assert (Real.div(a, (0.0 * 0.0 * 0.0)) == (27.0 / 4.0));  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 449-466
        // [TACTIC: «_<;>_» at h₁ ⊢ <;> simp_all [ pow_three ] simp_all [ pow_three ] simp_all [ pow_three ] <;> ring_nf at * <;> norm_num at * <;> linarith linarith]
        // [TACTIC: «Norm_num[_]At___» at h₁ ⊢]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×22 [exec 95 471-491]: applications made inside the tactic's own automation, not stated — div_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Eq.trans ×2, congrArg ×2 (+10 more heads, ×10) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // `norm_num` closed the goal; the rest of the chain did not run
        assert false;  // sub-goal before `have` (Lean state) // @tac 407-444 // @tac 449-466 // @tac 471-580 // @tac 471-563 // @tac 471-541 // @tac 471-520 // @tac 471-491
      }
      assert false;
    }
  }
  // have a_eq : a == 27 / 4 * b ^ 3  [type from Lean state]
  assert (a == ((27.0 / 4.0) * (b * b * b))) by { // @tac 635-681 // @tac 751-1209 // @tac 1214-1224
    // have h₂ : b ^ 3 != 0  [type from Lean state]
    assert ((b * b * b) != 0.0) by { // @tac 671-681
      // [TACTIC: Positivity]
      assert ((b) != 0.0);  // precondition of PowNeZero (Lean: pow_ne_zero)
      PowNeZero(3, b);  // cite: pow_ne_zero [applied by the tactic, not named in it]
    }
    // have h₃ : a == 27 / 4 * b ^ 3  [type from Lean state]
    assert (a == ((27.0 / 4.0) * (b * b * b))) by { // @tac 863-901 // @tac 974-1134 // @tac 1199-1209
      // have h₄ : a / b ^ 3 == 27 / 4  [type from Lean state]
      assert (Real.div(a, (b * b * b)) == (27.0 / 4.0)) by {
        // [TACTIC: exact h₁]
        assert (Real.div(a, (b * b * b)) == (27.0 / 4.0));
      }
      // have h₅ : a == 27 / 4 * b ^ 3  [type from Lean state]
      assert (a == ((27.0 / 4.0) * (b * b * b))) by { // @tac 1027-1134 // @tac 1027-1049
        // [TACTIC: «_<;>_» at h₄ ⊢ <;> nlinarith [ sq_pos_of_ne_zero hb3 , sq_pos_of_ne_zero ( pow_ne_zero 3 hb3 ) ] nlinarith [ sq_pos_of_ne_zero hb3 , sq_pos_of_ne_zero ( pow_ne_zero 3 hb3 ) ]]
        // [TACTIC: «Field_simp[_]At___» at h₄ ⊢]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×8 [exec 202 1027-1049]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2; machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        assert ((a * 4.0) == (27.0 * (b * b * b)));  // hypothesis h₄ after `field_simp` (Lean state) // @tac-hyp 1027-1049
        assert ((a * 4.0) == (27.0 * (b * b * b))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1062-1134
          // UNCITED sq_pos_of_ne_zero: no Lean instance recorded (arguments unknown), not guessed
          // NOT APPLIED pow_ne_zero: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          // cite: Nat.cast_zero [same instance stated in an enclosing scope: NatCastZero();]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1062-1134 exec 211)
          cert_identity_1(a, b);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_2(a, b);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 211 1062-1134]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×80 [exec 221 1062-1134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3 (+37 more heads, ×67) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×76 [exec 231 1062-1134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3 (+36 more heads, ×63) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      // [TACTIC: exact h₅]
      assert (a == ((27.0 / 4.0) * (b * b * b)));
    }
    // [TACTIC: exact h₃]
    assert (a == ((27.0 / 4.0) * (b * b * b)));
  }
  // have b9_eq : b ^ 9 == 2 / 3 ^ 9  [type from Lean state]
  assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9)) by { // @tac 1279-1325 // @tac 1330-1347 // @tac 1352-1431 // @tac 1436-1846 // @tac 1851-1861
    // have h₂ : a == 27 / 4 * b ^ 3  [type from Lean state]
    assert (a == ((27.0 / 4.0) * (b * b * b)));
      // [TACTIC: exact a_eq]
    // [TACTIC: rwSeq [ h₂ ] at h₀]
    // UNCITED-APPLIED congrArg(a, (27 / 4 : ℝ) * b ^ (3 : ℕ), fun (_a : ℝ) => _a ^ (2 : ℕ) * b ^ (3 : ℕ) = (32 / 27 : ℝ)): no library counterpart (not stated) [exec 266 1330-1347]
    assert (((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b)) == (32.0 / 27.0));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 1330-1347
    // have h₃ : ( 27 / 4 * b ^ 3 ) ^ 2 * b ^ 3 == 32 / 27  [type from Lean state]
    assert (((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b)) == (32.0 / 27.0)) by { // @tac 1423-1431
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1423-1431 exec 309)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(432 : ℝ) * (((27 / 4 : ℝ) * b ^ (3 : ℕ)) ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (432.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(432 : ℝ) * (((27 / 4 : ℝ) * b ^ (3 : ℕ)) ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b)) - (32.0 / 27.0)) < 0.0); (432.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(432 : ℝ) * ((32 / 27 : ℝ) - ((27 / 4 : ℝ) * b ^ (3 : ℕ)) ^ (2 : ℕ) * b ^ (3 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((32.0 / 27.0) - ((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b))) < 0.0); (432.0 > 0.0)
      cert_identity_3(a, b);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_4(a, b);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×24 [exec 309 1423-1431]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×3, CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, CancelDenoms.div_subst ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×134 [exec 343 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7 (+42 more heads, ×103) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 310 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 311 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 312 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 313 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×11 [exec 314 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×9 [exec 315 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 316 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×14 [exec 317 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 318 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×14 [exec 320 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 321 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 322 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 323 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×11 [exec 337 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×9 [exec 338 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 339 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×14 [exec 340 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 341 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×5 [exec 342 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×132 [exec 377 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7 (+42 more heads, ×101) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 325 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 326 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 327 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 328 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×11 [exec 350 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×9 [exec 351 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 345 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×14 [exec 344 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 352 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×5 [exec 353 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 374 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 373 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×14 [exec 330 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 331 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×8 [exec 335 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 336 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×11 [exec 371 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×9 [exec 372 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×7 [exec 375 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×5 [exec 376 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 310, 311, 312, 313, 314, 315 … / `ring1` exec 343, 377)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 319, 342, 353, 376 / `ring1` exec 343, 377)]
      // UNCITED-APPLIED internal ×5 [exec 319 1423-1431]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₄ : b ^ 9 == 2 / 3 ^ 9  [type from Lean state]
    assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9)) by { // @tac 1486-1846 // @tac 1486-1505
      // [TACTIC: «_<;>_» at h₃ ⊢ <;> nlinarith [ sq_pos_of_ne_zero hb3 , sq_pos_of_ne_zero ( pow_ne_zero 3 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 2 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 5 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 6 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 7 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 8 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 9 hb3 ) ] nlinarith [ sq_pos_of_ne_zero hb3 , sq_pos_of_ne_zero ( pow_ne_zero 3 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 2 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 5 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 6 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 7 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 8 hb3 ) , sq_pos_of_ne_zero ( pow_ne_zero 9 hb3 ) ]]
      // [TACTIC: Ring_nfAt at h₃ ⊢]
      // UNCITED-APPLIED internal ×141 [exec 399 1486-1505]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7 (+38 more heads, ×111)
      assert ((Real.pow(b, 9) * (729.0 / 16.0)) == (32.0 / 27.0));  // hypothesis h₃ after `ring_nf` (Lean state) // @tac-hyp 1486-1505
      assert (Real.pow(b, 9) == (512.0 / 19683.0)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1516-1846
        // UNCITED sq_pos_of_ne_zero: no Lean instance recorded (arguments unknown), not guessed
        // NOT APPLIED pow_ne_zero: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 409, 410, 411, 420, 421, 422 … / `ring1` exec 443, 478)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 412, 419, 442, 447 / `ring1` exec 443, 478)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1516-1846 exec 408)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(432 : ℝ) * (((27 / 4 : ℝ) * b ^ (3 : ℕ)) ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((((27.0 / 4.0) * (b * b * b)) * ((27.0 / 4.0) * (b * b * b))) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (432.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(19683 : ℝ) * (b ^ (9 : ℕ) - (512 / 19683 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(b, 9) - (512.0 / 19683.0)) < 0.0); (19683.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(19683 : ℝ) * ((512 / 19683 : ℝ) - b ^ (9 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((512.0 / 19683.0) - Real.pow(b, 9)) < 0.0); (19683.0 > 0.0)
        cert_identity_5(a, b);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_6(a, b);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×29 [exec 408 1516-1846]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×4, CancelDenoms.sub_subst ×3, CancelDenoms.div_subst ×3, CancelDenoms.mul_subst ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×5, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
        // UNCITED-APPLIED internal ×151 [exec 443 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+43 more heads, ×119) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 420 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 421 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×8 [exec 422 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 423 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×11 [exec 437 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 438 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×7 [exec 418 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×14 [exec 440 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×7 [exec 439 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×5 [exec 419 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 409 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 410 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 411 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 412 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×148 [exec 478 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+43 more heads, ×116) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 425 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 426 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×8 [exec 427 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 428 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×11 [exec 472 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 473 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×7 [exec 441 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×14 [exec 475 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×7 [exec 453 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×5 [exec 442 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 444 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 445 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 446 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 447 1516-1846]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₄]
    assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9));
  }
  // have b_eq : b == 2 / 3  [type from Lean state]
  assert (b == (2.0 / 3.0)) by { // @tac 1899-1945 // @tac 1950-6505 // @tac 6510-6520
    // have h₂ : b ^ 9 == 2 / 3 ^ 9  [type from Lean state]
    assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9));
      // [TACTIC: exact b9_eq]
    // have h₃ : b == 2 / 3  [type from Lean state]
    assert (b == (2.0 / 3.0)) by { // @tac 1984-3358 // @tac 3365-6505
      // have h₄ : b > 0 || b < 0  [type from Lean state]
      assert ((b > 0.0) || (b < 0.0)) by { // @tac 2026-2047
        // by_cases h₅ : b > 0
        if (b > 0.0) {
          assert ((b > 0.0) || (b < 0.0)) by {  // sub-goal before `exact` (Lean state) // @tac 2059-2076 // @tac 2056-2076
            // [TACTIC: exact Or.inl h₅]
            assert (b > 0.0);
          }
        } else {
          assert ((b > 0.0) || (b < 0.0)) by {  // sub-goal before `have` (Lean state) // @tac 2088-3330 // @tac 2085-3358 // @tac 3341-3358
            // have h₆ : b < 0  [type from Lean state]
            assert (b < 0.0) by { // @tac 2124-2138
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 577 2124-2138]
              // by_contra h
              if !((b < 0.0)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 2151-2185 // @tac 2198-3309 // @tac 3322-3330
                  // have h₈ : b >= 0  [type from Lean state]
                  assert (b >= 0.0) by { // @tac 2177-2185
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2177-2185 exec 594)
                    cert_identity_7(a, b);  // cert: add_lt_of_le_of_neg
                    // UNCITED-APPLIED internal ×6 [exec 594 2177-2185]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×20 [exec 619 2177-2185]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 619)]
                  }
                  // have h₉ : b == 0  [type from Lean state]
                  assert (b == 0.0) by { // @tac 2236-2253
                    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 643 2236-2253]
                    // by_contra h
                    if !((b == 0.0)) {
                      assert false by {  // sub-goal before `have` (Lean state) // @tac 2268-2881 // @tac 2896-2928 // @tac 2943-2992 // @tac 3007-3053 // @tac 3068-3109 // @tac 3124-3309
                        // have h₁₁ : b > 0  [type from Lean state]
                        assert (b > 0.0) by { // @tac 2311-2335
                          // by_cases h₁₂ : b > 0
                          if (b > 0.0) {
                            assert (b > 0.0) by {  // sub-goal before `exact` (Lean state) // @tac 2355-2368 // @tac 2352-2368
                              // [TACTIC: exact h₁₂]
                              assert (b > 0.0);
                            }
                          } else {
                            assert (b > 0.0) by {  // sub-goal before `exfalso` (Lean state) // @tac 2388-2395 // @tac 2385-2881
                              // [TACTIC: Exfalso]
                              assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 2414-2854 // @tac 2873-2881
                                // have h₁₃ : b < 0  [type from Lean state]
                                assert (b < 0.0) by { // @tac 2461-2478
                                  // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 699 2461-2478]
                                  // by_contra h
                                  if !((b < 0.0)) {
                                    assert false by {  // sub-goal before `have` (Lean state) // @tac 2499-2536 // @tac 2557-2591 // @tac 2612-2825 // @tac 2846-2854
                                      // have h₁₅ : b >= 0  [type from Lean state]
                                      assert (b >= 0.0) by { // @tac 2528-2536
                                        // [TACTIC: «Linarith[_]At___»]
                                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2528-2536 exec 716)
                                        cert_identity_8(a, b);  // cert: add_lt_of_le_of_neg
                                        // UNCITED-APPLIED internal ×6 [exec 716 2528-2536]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                        // UNCITED-APPLIED internal ×20 [exec 741 2528-2536]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 741)]
                                      }
                                      // have h₁₆ : b != 0  [type from Lean state]
                                      assert (b != 0.0); // @tac 2586-2591
                                        // [TACTIC: Tauto]
                                      // have h₁₇ : b > 0  [type from Lean state]
                                      assert (b > 0.0) by { // @tac 2661-2681
                                        // [TACTIC: apply lt_of_le_of_ne]
                                        // UNCITED lt_of_le_of_ne: applied by `apply` here; no library counterpart, its instance is not stated
                                        // `apply`: 2 cases (Lean states); 2 branch bodies
                                        assert (0.0 <= b) by {  // sub-goal of `apply` (Lean state) // @tac 2707-2715 // @tac 2704-2715
                                          // [TACTIC: «Linarith[_]At___»]
                                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2707-2715 exec 782)
                                          cert_identity_9(a, b);  // cert: add_lt_of_le_of_neg
                                          // UNCITED-APPLIED internal ×6 [exec 782 2707-2715]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                          // UNCITED-APPLIED internal ×20 [exec 807 2707-2715]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 807)]
                                        }
                                        assert (0.0 != b) by {  // sub-goal of `apply` (Lean state) // @tac 2741-2754 // @tac 2738-2825
                                          // intro h₁₈ (hypothesis and goal from the Lean state)
                                          if (0.0 == b) {
                                            // [TACTIC: apply h₁₆]
                                            assert (b == 0.0) by {  // sub-goal before `linarith` (Lean state) // @tac 2817-2825
                                              // [TACTIC: «Linarith[_]At___»]
                                              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2817-2825 exec 814)
                                              cert_identity_10(a, b);  // cert: add_lt_of_le_of_neg
                                              cert_identity_11(a, b);  // cert: add_lt_of_le_of_neg
                                              // UNCITED-APPLIED internal ×11 [exec 814 2817-2825]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×2, le_of_not_gt ×2, neg_nonpos_of_nonneg ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
                                              // UNCITED-APPLIED internal ×20 [exec 839 2817-2825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                              // UNCITED-APPLIED internal ×20 [exec 864 2817-2825]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 839, 864)]
                                            }
                                            assert false;  // goal after intro (Lean state) // @tac 2779-2792
                                          }
                                        }
                                      }
                                      // [TACTIC: «Linarith[_]At___»]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2846-2854 exec 865)
                                      cert_identity_12(a, b);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×5 [exec 865 2846-2854]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                      // UNCITED-APPLIED internal ×20 [exec 890 2846-2854]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 890)]
                                    }
                                    assert false;
                                  }
                                }
                                // [TACTIC: «Linarith[_]At___»]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2873-2881 exec 891)
                                cert_identity_13(a, b);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×5 [exec 891 2873-2881]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, le_of_not_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                // UNCITED-APPLIED internal ×20 [exec 916 2873-2881]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 916)]
                              }
                            }
                          }
                        }
                        // have h₁₂ : b > 0  [type from Lean state]
                        assert (b > 0.0); // @tac 2923-2928
                          // [TACTIC: Tauto]
                        // have h₁₃ : a == 27 / 4 * b ^ 3  [type from Lean state]
                        assert (a == ((27.0 / 4.0) * (b * b * b)));
                          // [TACTIC: exact a_eq]
                        // have h₁₄ : a ^ 2 * b ^ 3 == 32 / 27  [type from Lean state]
                        assert (((a * a) * (b * b * b)) == (32.0 / 27.0)) by {
                          // [TACTIC: exact h₀]
                          assert (((a * a) * (b * b * b)) == (32.0 / 27.0));
                        }
                        // have h₁₅ : a / b ^ 3 == 27 / 4  [type from Lean state]
                        assert (Real.div(a, (b * b * b)) == (27.0 / 4.0)) by {
                          // [TACTIC: exact h₁]
                          assert (Real.div(a, (b * b * b)) == (27.0 / 4.0));
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ sq_pos_of_pos h₁₁ , pow_pos h₁₁ 2 , pow_pos h₁₁ 3 , pow_pos h₁₁ 4 , pow_pos h₁₁ 5 , pow_pos h₁₁ 6 , pow_pos h₁₁ 7 , pow_pos h₁₁ 8 , pow_pos h₁₁ 9 ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3124-3309 exec 972)
                        cert_identity_14(a, b);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×5 [exec 972 3124-3309]: applications made inside the tactic's own automation, not stated — add_lt_of_le_of_neg ×1, le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED sq_pos_of_pos: no Lean instance recorded (arguments unknown), not guessed
                        // NOT APPLIED pow_pos: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1011)]
                        // UNCITED-APPLIED internal ×20 [exec 1011 3124-3309]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert false;
                    }
                  }
                  // [TACTIC: simpAll]
                  // UNCITED-APPLIED internal ×20 [exec 1012 3322-3330]: applications made inside the tactic's own automation, not stated — zero_pow ×2; machinery/glue: Eq.trans ×7, congrArg ×7, congr ×2, of_eq_true ×1 (+1 more heads, ×1)
                }
                assert false;
              }
            }
            // [TACTIC: exact Or.inr h₆]
            assert (b < 0.0);
          }
        }
      }
      // `cases`: 2 cases (Lean states); 2 branch bodies
      if ((b > 0.0)) {  // sub-goal of `cases` (Lean state)
        // have h₅ : b > 0  [type from Lean state]
        assert (b > 0.0) by {
          // [TACTIC: exact h₄]
          assert (b > 0.0);
        }
        // have h₆ : b == 2 / 3  [type from Lean state]
        assert (b == (2.0 / 3.0)) by { // @tac 3589-3634 // @tac 3645-4984 // @tac 4995-5005
          // have h₇ : b ^ 9 == 2 / 3 ^ 9  [type from Lean state]
          assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9)) by {
            // [TACTIC: exact h₂]
            assert (Real.pow(b, 9) == Real.pow((2.0 / 3.0), 9));
          }
          // have h₈ : b == 2 / 3  [type from Lean state]
          assert (b == (2.0 / 3.0)) by { // @tac 3751-3768
            // [TACTIC: apply le_antisymm]
            // UNCITED le_antisymm: applied by `apply` here; no library counterpart, its instance is not stated
            // `apply`: 2 cases (Lean states); 2 branch bodies
            assert (b <= (2.0 / 3.0)) by {  // sub-goal of `apply` (Lean state) // @tac 3818-3832 // @tac 3781-4376
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1087 3818-3832]
              // by_contra h
              if !((b <= (2.0 / 3.0))) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 3847-4210 // @tac 4225-4353 // @tac 4368-4376
                  // have h₁₀ : b > 2 / 3  [type from Lean state]
                  assert (b > (2.0 / 3.0)) by { // @tac 3894-3922
                    // by_cases h₁₁ : b > 2 / 3
                    if (b > (2.0 / 3.0)) {
                      assert (b > (2.0 / 3.0)) by {  // sub-goal before `exact` (Lean state) // @tac 3942-3955 // @tac 3939-3955
                        // [TACTIC: exact h₁₁]
                        assert (b > (2.0 / 3.0));
                      }
                    } else {
                      assert (b > (2.0 / 3.0)) by {  // sub-goal before `exfalso` (Lean state) // @tac 3975-3982 // @tac 3972-4210
                        // [TACTIC: Exfalso]
                        assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 4001-4042 // @tac 4061-4183 // @tac 4202-4210
                          // have h₁₂ : b <= 2 / 3  [type from Lean state]
                          assert (b <= (2.0 / 3.0)) by { // @tac 4034-4042
                            // [TACTIC: «Linarith[_]At___»]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4034-4042 exec 1136)
                            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((2 / 3 : ℝ) - b) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 / 3.0) - b) < 0.0); (3.0 > 0.0)
                            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (b - (2 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - (2.0 / 3.0)) <= 0.0); (3.0 > 0.0)
                            cert_identity_15(a, b);  // cert: add_lt_of_neg_of_le
                            // UNCITED-APPLIED internal ×14 [exec 1136 4034-4042]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                            // UNCITED-APPLIED internal ×58 [exec 1175 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+29 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×14 [exec 1137 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×6 [exec 1138 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×14 [exec 1140 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×6 [exec 1141 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1142 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1137, 1138, 1140, 1141 / `ring1` exec 1175)]
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1139, 1142 / `ring1` exec 1175)]
                            // UNCITED-APPLIED internal ×5 [exec 1139 4034-4042]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          }
                          // have h₁₃ : b ^ 9 <= 2 / 3 ^ 9  [type from Lean state]
                          assert (Real.pow(b, 9) <= Real.pow((2.0 / 3.0), 9)) by { // @tac 4130-4183
                            assert (0.0 <= b) by {  // sub-goal of `by` (Lean state) // @tac 4162-4172
                              // [TACTIC: Positivity]
                              assert ((0.0) < (b));  // precondition of LeOfLt (Lean: le_of_lt)
                              LeOfLt(0.0, b);  // cite: le_of_lt [applied by the tactic, not named in it]
                            }
                            // [TACTIC: exact pow_le_pow_of_le_left ( by positivity ) h₁₂ 9]
                            assert (b <= (2.0 / 3.0));
                            assert (0.0 <= (b)) && ((b) <= ((2.0 / 3.0)));  // precondition of PowLePowOfLeLeft (Lean: pow_le_pow_of_le_left)
                            PowLePowOfLeLeft(b, (2.0 / 3.0), 9);  // cite: pow_le_pow_of_le_left
                          }
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4202-4210 exec 1198)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((2 / 3 : ℝ) - b) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 / 3.0) - b) < 0.0); (3.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (b - (2 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - (2.0 / 3.0)) <= 0.0); (3.0 > 0.0)
                          cert_identity_16(a, b);  // cert: add_lt_of_neg_of_le
                          // UNCITED-APPLIED internal ×14 [exec 1198 4202-4210]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1, le_of_not_gt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                          // UNCITED-APPLIED internal ×58 [exec 1242 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+29 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 1200 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 1201 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 1204 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 1205 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1209 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1200, 1201, 1204, 1205 / `ring1` exec 1242)]
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1206, 1209 / `ring1` exec 1242)]
                          // UNCITED-APPLIED internal ×5 [exec 1206 4202-4210]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        }
                      }
                    }
                  }
                  // have h₁₁ : b ^ 9 > 2 / 3 ^ 9  [type from Lean state]
                  assert (Real.pow(b, 9) > Real.pow((2.0 / 3.0), 9)) by { // @tac 4288-4353
                    assert (0.0 <= (2.0 / 3.0)) by {  // sub-goal of `by` (Lean state) // @tac 4328-4338
                      // [TACTIC: Positivity]
                      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4328-4338 exec 1264)
                      if (0.0 < 2.0) && (0.0 < 3.0) { cert_piece_17(a, b); }  // cert: div_pos
                      // UNCITED-APPLIED internal ×4 [exec 1264 4328-4338]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1])
                      assert ((0.0) < ((2.0 / 3.0)));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt(0.0, (2.0 / 3.0));  // cite: le_of_lt [applied by the tactic, not named in it]
                      assert (0.0 < (2.0)) && (0.0 < (3.0));  // precondition of DivPos (Lean: div_pos)
                      DivPos(2.0, 3.0);  // cite: div_pos [applied by the tactic, not named in it]
                    }
                    assert (9 != 0) by {  // sub-goal of `by` (Lean state) // @tac 4344-4352
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 1269 4344-4352]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1
                    }
                    // [TACTIC: exact pow_lt_pow_of_lt_left h₁₀ ( by positivity ) ( by norm_num norm_num )]
                    assert (b > (2.0 / 3.0));
                    assert (((2.0 / 3.0)) < (b)) && (0.0 <= ((2.0 / 3.0))) && ((9) != 0);  // precondition of PowLtPowOfLtLeft (Lean: pow_lt_pow_of_lt_left)
                    PowLtPowOfLtLeft((2.0 / 3.0), b, 9);  // cite: pow_lt_pow_of_lt_left
                  }
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4368-4376 exec 1270)
                  // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(19683 : ℝ) * (b ^ (9 : ℕ) - (2 / 3 : ℝ) ^ (9 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(b, 9) - Real.pow((2.0 / 3.0), 9)) == 0.0); (19683.0 > 0.0)
                  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(19683 : ℝ) * ((2 / 3 : ℝ) ^ (9 : ℕ) - b ^ (9 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow((2.0 / 3.0), 9) - Real.pow(b, 9)) < 0.0); (19683.0 > 0.0)
                  cert_identity_18(a, b);  // cert: Linarith.lt_of_eq_of_lt
                  // UNCITED-APPLIED internal ×14 [exec 1270 4368-4376]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.pow_subst ×2, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_eq_of_lt ×1, Linarith.mul_eq ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×104 [exec 1311 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+42 more heads, ×82) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×9 [exec 1274 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 1271 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 1272 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×15 [exec 1273 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 1276 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 1277 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×15 [exec 1285 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×9 [exec 1282 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 1286 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1271, 1272, 1273, 1274, 1276, 1277 … / `ring1` exec 1311)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1275, 1286 / `ring1` exec 1311)]
                  // UNCITED-APPLIED internal ×5 [exec 1275 4368-4376]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                }
                assert false;
              }
            }
            assert ((2.0 / 3.0) <= b) by {  // sub-goal of `apply` (Lean state) // @tac 4426-4440 // @tac 4389-4984
              // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1323 4426-4440]
              // by_contra h
              if !(((2.0 / 3.0) <= b)) {
                assert false by {  // sub-goal before `have` (Lean state) // @tac 4455-4818 // @tac 4833-4961 // @tac 4976-4984
                  // have h₁₀ : b < 2 / 3  [type from Lean state]
                  assert (b < (2.0 / 3.0)) by { // @tac 4502-4530
                    // by_cases h₁₁ : b < 2 / 3
                    if (b < (2.0 / 3.0)) {
                      assert (b < (2.0 / 3.0)) by {  // sub-goal before `exact` (Lean state) // @tac 4550-4563 // @tac 4547-4563
                        // [TACTIC: exact h₁₁]
                        assert (b < (2.0 / 3.0));
                      }
                    } else {
                      assert (b < (2.0 / 3.0)) by {  // sub-goal before `exfalso` (Lean state) // @tac 4583-4590 // @tac 4580-4818
                        // [TACTIC: Exfalso]
                        assert false by {  // sub-goal of `exfalso` (Lean state) // @tac 4609-4650 // @tac 4669-4791 // @tac 4810-4818
                          // have h₁₂ : b >= 2 / 3  [type from Lean state]
                          assert (b >= (2.0 / 3.0)) by { // @tac 4642-4650
                            // [TACTIC: «Linarith[_]At___»]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4642-4650 exec 1372)
                            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (b - (2 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - (2.0 / 3.0)) < 0.0); (3.0 > 0.0)
                            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * ((2 / 3 : ℝ) - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 / 3.0) - b) <= 0.0); (3.0 > 0.0)
                            cert_identity_19(a, b);  // cert: add_lt_of_neg_of_le
                            // UNCITED-APPLIED internal ×14 [exec 1372 4642-4650]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                            // UNCITED-APPLIED internal ×58 [exec 1411 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+29 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×14 [exec 1373 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×6 [exec 1374 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×14 [exec 1376 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×6 [exec 1377 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1378 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1373, 1374, 1376, 1377 / `ring1` exec 1411)]
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1375, 1378 / `ring1` exec 1411)]
                            // UNCITED-APPLIED internal ×5 [exec 1375 4642-4650]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          }
                          // have h₁₃ : b ^ 9 >= 2 / 3 ^ 9  [type from Lean state]
                          assert (Real.pow(b, 9) >= Real.pow((2.0 / 3.0), 9)) by { // @tac 4738-4791
                            assert (0.0 <= (2.0 / 3.0)) by {  // sub-goal of `by` (Lean state) // @tac 4770-4780
                              // [TACTIC: Positivity]
                              // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4770-4780 exec 1433)
                              if (0.0 < 2.0) && (0.0 < 3.0) { cert_piece_20(a, b); }  // cert: div_pos
                              // UNCITED-APPLIED internal ×4 [exec 1433 4770-4780]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1])
                              assert ((0.0) < ((2.0 / 3.0)));  // precondition of LeOfLt (Lean: le_of_lt)
                              LeOfLt(0.0, (2.0 / 3.0));  // cite: le_of_lt [applied by the tactic, not named in it]
                              assert (0.0 < (2.0)) && (0.0 < (3.0));  // precondition of DivPos (Lean: div_pos)
                              DivPos(2.0, 3.0);  // cite: div_pos [applied by the tactic, not named in it]
                            }
                            // [TACTIC: exact pow_le_pow_of_le_left ( by positivity ) h₁₂ 9]
                            assert (b >= (2.0 / 3.0));
                            assert (0.0 <= ((2.0 / 3.0))) && (((2.0 / 3.0)) <= (b));  // precondition of PowLePowOfLeLeft (Lean: pow_le_pow_of_le_left)
                            PowLePowOfLeLeft((2.0 / 3.0), b, 9);  // cite: pow_le_pow_of_le_left
                          }
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4810-4818 exec 1434)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (b - (2 / 3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b - (2.0 / 3.0)) < 0.0); (3.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * ((2 / 3 : ℝ) - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 / 3.0) - b) <= 0.0); (3.0 > 0.0)
                          cert_identity_21(a, b);  // cert: add_lt_of_neg_of_le
                          // UNCITED-APPLIED internal ×14 [exec 1434 4810-4818]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, add_lt_of_neg_of_le ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1, le_of_not_gt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                          // UNCITED-APPLIED internal ×58 [exec 1478 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+29 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 1435 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 1436 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 1440 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 1441 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1445 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1435, 1436, 1440, 1441 / `ring1` exec 1478)]
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1442, 1445 / `ring1` exec 1478)]
                          // UNCITED-APPLIED internal ×5 [exec 1442 4810-4818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        }
                      }
                    }
                  }
                  // have h₁₁ : b ^ 9 < 2 / 3 ^ 9  [type from Lean state]
                  assert (Real.pow(b, 9) < Real.pow((2.0 / 3.0), 9)) by { // @tac 4896-4961
                    assert (0.0 <= b) by {  // sub-goal of `by` (Lean state) // @tac 4936-4946
                      // [TACTIC: Positivity]
                    }
                    assert (9 != 0) by {  // sub-goal of `by` (Lean state) // @tac 4952-4960
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 1505 4952-4960]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1
                    }
                    // [TACTIC: exact pow_lt_pow_of_lt_left h₁₀ ( by positivity ) ( by norm_num norm_num )]
                    assert (b < (2.0 / 3.0));
                    assert ((0.0) < (b));  // precondition of LeOfLt (Lean: le_of_lt)
                    LeOfLt(0.0, b);  // cite: le_of_lt [applied by the tactic, not named in it]
                    assert ((b) < ((2.0 / 3.0))) && (0.0 <= (b)) && ((9) != 0);  // precondition of PowLtPowOfLtLeft (Lean: pow_lt_pow_of_lt_left)
                    PowLtPowOfLtLeft(b, (2.0 / 3.0), 9);  // cite: pow_lt_pow_of_lt_left
                  }
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4976-4984 exec 1506)
                  // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(19683 : ℝ) * (b ^ (9 : ℕ) - (2 / 3 : ℝ) ^ (9 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(b, 9) - Real.pow((2.0 / 3.0), 9)) == 0.0); (19683.0 > 0.0)
                  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(19683 : ℝ) * (b ^ (9 : ℕ) - (2 / 3 : ℝ) ^ (9 : ℕ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(b, 9) - Real.pow((2.0 / 3.0), 9)) < 0.0); (19683.0 > 0.0)
                  cert_identity_22(a, b);  // cert: Linarith.lt_of_eq_of_lt
                  // UNCITED-APPLIED internal ×14 [exec 1506 4976-4984]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_eq_of_lt ×1, Linarith.mul_eq ×1 (+1 more heads, ×1)
                  // UNCITED-APPLIED internal ×106 [exec 1547 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+42 more heads, ×84) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×9 [exec 1507 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 1508 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 1509 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×15 [exec 1510 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×9 [exec 1518 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 1512 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 1513 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×15 [exec 1521 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 1522 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1507, 1508, 1509, 1510, 1512, 1513 … / `ring1` exec 1547)]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1511, 1522 / `ring1` exec 1547)]
                  // UNCITED-APPLIED internal ×5 [exec 1511 4976-4984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                }
                assert false;
              }
            }
          }
          // [TACTIC: exact h₈]
          assert (b == (2.0 / 3.0));
        }
        // [TACTIC: exact h₆]
        assert (b == (2.0 / 3.0));
        assert (b == (2.0 / 3.0));  // sub-goal of `cases` (Lean state) // @tac 3432-3457 // @tac 3466-5005 // @tac 5014-5024
      }
      if ((b < 0.0)) {  // sub-goal of `cases` (Lean state)
        // have h₅ : b < 0  [type from Lean state]
        assert (b < 0.0) by {
          // [TACTIC: exact h₄]
          assert (b < 0.0);
        }
        // have h₆ : b ^ 9 < 0  [type from Lean state]
        assert (Real.pow(b, 9) < 0.0) by { // @tac 5203-6408 // @tac 6419-6429
          // have h₇ : b ^ 9 < 0  [type from Lean state]
          assert (Real.pow(b, 9) < 0.0) by { // @tac 5243-6408
            assert (Real.pow(b, 9) < 0.0) by {  // sub-goal before `have` (Lean state) // @tac 5362-5387 // @tac 5402-6358 // @tac 6373-6408 // @tac 6373-6383
              // have h₈ : b < 0  [type from Lean state]
              assert (b < 0.0) by {
                // [TACTIC: exact h₅]
                assert (b < 0.0);
              }
              // have h₉ : b ^ 9 < 0  [type from Lean state]
              assert (Real.pow(b, 9) < 0.0) by { // @tac 5446-6328 // @tac 6345-6358
                // have h₁₀ : b ^ 9 < 0  [type from Lean state]
                assert (Real.pow(b, 9) < 0.0) by { // @tac 5595-5623 // @tac 5642-6296 // @tac 6315-6328
                  // have h₁₁ : b < 0  [type from Lean state]
                  assert (b < 0.0) by {
                    // [TACTIC: exact h₈]
                    assert (b < 0.0);
                  }
                  // have h₁₂ : b ^ 9 < 0  [type from Lean state]
                  assert (Real.pow(b, 9) < 0.0) by { // @tac 5795-5835 // @tac 5856-5896 // @tac 5917-5957 // @tac 5978-6018 // @tac 6039-6079 // @tac 6100-6140 // @tac 6161-6201 // @tac 6222-6262 // @tac 6283-6296
                    // have h₁₃ : b ^ 2 > 0  [type from Lean state]
                    assert ((b * b) > 0.0) by { // @tac 5826-5835
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5826-5835 exec 1690)
                      if (b < 0.0) { cert_piece_23(a, b); }  // cert: mul_pos_of_neg_of_neg
                      cert_identity_24(a, b);  // cert: add_lt_of_le_of_neg
                      // UNCITED-APPLIED internal ×7 [exec 1690 5826-5835]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, le_zero_of_zero_ge ×1, neg_neg_of_pos ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED-APPLIED internal ×44 [exec 1715 5826-5835]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.one_mul ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+34 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1715)]
                    }
                    // have h₁₄ : b ^ 3 < 0  [type from Lean state]
                    assert ((b * b * b) < 0.0) by { // @tac 5887-5896
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5887-5896 exec 1732)
                      if (b < 0.0) && (0.0 < (b * b)) { cert_piece_25(a, b); }  // cert: mul_pos_of_neg_of_neg
                      cert_identity_26(a, b);  // cert: add_lt_of_le_of_neg
                      // UNCITED-APPLIED internal ×8 [exec 1732 5887-5896]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED-APPLIED internal ×70 [exec 1757 5887-5896]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.one_mul ×4, Mathlib.Tactic.Ring.neg_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_mul ×3 (+34 more heads, ×57) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1757)]
                    }
                    // have h₁₅ : b ^ 4 > 0  [type from Lean state]
                    assert ((b * b * b * b) > 0.0) by { // @tac 5948-5957
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5948-5957 exec 1774)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_27(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_28(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1774 5948-5957]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 1799 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1800 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 1793 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 1794 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1795 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 1796 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1797 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1801 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1793, 1794, 1795, 1796, 1797 / `ring1` exec 1799)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1798, 1800, 1801 / `ring1` exec 1799)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 1798 5948-5957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₁₆ : b ^ 5 < 0  [type from Lean state]
                    assert ((b * b * b * b * b) < 0.0) by { // @tac 6009-6018
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6009-6018 exec 1818)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_29(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_30(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1818 6009-6018]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 1843 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1844 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 1837 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 1838 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1839 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 1840 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1841 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1845 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1837, 1838, 1839, 1840, 1841 / `ring1` exec 1843)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1842, 1844, 1845 / `ring1` exec 1843)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 1842 6009-6018]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₁₇ : b ^ 6 > 0  [type from Lean state]
                    assert ((b * b * b * b * b * b) > 0.0) by { // @tac 6070-6079
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6070-6079 exec 1862)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_31(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_32(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1862 6070-6079]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 1887 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1888 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 1881 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 1882 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1883 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 1884 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1885 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1889 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1881, 1882, 1883, 1884, 1885 / `ring1` exec 1887)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1886, 1888, 1889 / `ring1` exec 1887)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 1886 6070-6079]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₁₈ : b ^ 7 < 0  [type from Lean state]
                    assert (Real.pow(b, 7) < 0.0) by { // @tac 6131-6140
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6131-6140 exec 1906)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_33(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_34(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1906 6131-6140]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 1931 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1932 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 1925 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 1926 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1927 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 1928 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1929 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1933 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1925, 1926, 1927, 1928, 1929 / `ring1` exec 1931)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1930, 1932, 1933 / `ring1` exec 1931)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 1930 6131-6140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₁₉ : b ^ 8 > 0  [type from Lean state]
                    assert (Real.pow(b, 8) > 0.0) by { // @tac 6192-6201
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6192-6201 exec 1950)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_35(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_36(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1950 6192-6201]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 1975 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1976 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 1969 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 1970 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1971 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 1972 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 1973 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1977 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1969, 1970, 1971, 1972, 1973 / `ring1` exec 1975)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1974, 1976, 1977 / `ring1` exec 1975)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 1974 6192-6201]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₂₀ : b ^ 9 < 0  [type from Lean state]
                    assert (Real.pow(b, 9) < 0.0) by { // @tac 6253-6262
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6253-6262 exec 1994)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(32 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (32.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(27 : ℝ) * (a ^ (2 : ℕ) * b ^ (3 : ℕ) - (32 / 27 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a * a) * (b * b * b)) - (32.0 / 27.0)) == 0.0); (27.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(27 : ℝ) * -(-((1 : ℝ) * a) ^ (2 : ℕ) * b ^ (3 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * a) * (1.0 * a)) * (b * b * b)) <= 0.0); (27.0 > 0.0)
                      if (0.0 <= ((1.0 * a) * (1.0 * a))) && ((b * b * b) <= 0.0) { cert_piece_37(a, b); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      SqNonneg((1.0 * a)); assert (0.0 <= ((1.0 * a) * (1.0 * a)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(32 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * ((1 : ℝ) * a) ^ (2 : ℕ) * ((27 : ℝ) * ((1 : ℝ) * b) ^ (3 : ℕ)) - (1 : ℝ) * (32 : ℝ)) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_38(a, b);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×21 [exec 1994 6253-6262]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+2 more heads, ×2) (cited in this block, not counted here: le_of_lt [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×150 [exec 2019 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+37 more heads, ×118) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 2020 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×8 [exec 2013 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×9 [exec 2014 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 2015 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 2016 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 2017 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 2021 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2013, 2014, 2015, 2016, 2017 / `ring1` exec 2019)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2018, 2020, 2021 / `ring1` exec 2019)]
                      SqNonneg((1.0 * a));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      assert (((b * b * b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
                      LeOfLt((b * b * b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 2018 6253-6262]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: exact h₂₀]
                    assert (Real.pow(b, 9) < 0.0);
                  }
                  // [TACTIC: exact h₁₂]
                  assert (Real.pow(b, 9) < 0.0);
                }
                // [TACTIC: exact h₁₀]
                assert (Real.pow(b, 9) < 0.0);
              }
              // [TACTIC: «_<;>_» h₉ exact h₉ <;> simp_all simp_all simp_all]
              // [TACTIC: exact h₉]
              assert (Real.pow(b, 9) < 0.0);
              // `exact` closed the goal; the rest of the chain did not run
            }
            // [TACTIC: exact by have h₈ : b < 0 := h₅ have h₈ : b < 0 := h₅ have h₉ : b ^ 9 < 0 := by have h₁₀ : b ^ 9 < 0 := by have h₁₁ : b < 0 := h₈ have h₁₁ : b < 0 := h₈ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ exact h₁₂ exact h₁₂ have h₁₀ : b ^ 9 < 0 := by have h₁₁ : b < 0 := h₈ have h₁₁ : b < 0 := h₈ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ exact h₁₂ exact h₁₂ exact h₁₀ exact h₁₀ have h₉ : b ^ 9 < 0 := by have h₁₀ : b ^ 9 < 0 := by have h₁₁ : b < 0 := h₈ have h₁₁ : b < 0 := h₈ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ exact h₁₂ exact h₁₂ have h₁₀ : b ^ 9 < 0 := by have h₁₁ : b < 0 := h₈ have h₁₁ : b < 0 := h₈ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ have h₁₂ : b ^ 9 < 0 := by have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₃ : b ^ 2 > 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₄ : b ^ 3 < 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₅ : b ^ 4 > 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₆ : b ^ 5 < 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₇ : b ^ 6 > 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₈ : b ^ 7 < 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₁₉ : b ^ 8 > 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith have h₂₀ : b ^ 9 < 0 := by nlinarith nlinarith exact h₂₀ exact h₂₀ exact h₁₂ exact h₁₂ exact h₁₀ exact h₁₀ exact h₉ exact h₉ <;> simp_all simp_all simp_all]
          }
          // [TACTIC: exact h₇]
          assert (Real.pow(b, 9) < 0.0);
        }
        // have h₇ : 2 / 3 ^ 9 > 0  [type from Lean state]
        assert (Real.pow((2.0 / 3.0), 9) > 0.0) by { // @tac 6478-6488
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 6478-6488 exec 2054)
          // cert: pow_pos piece `(0.0 < Real.pow((2.0 / 3.0), 9))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          if (0.0 < 2.0) && (0.0 < 3.0) { cert_piece_39(a, b); }  // cert: div_pos
          // UNCITED-APPLIED internal ×4 [exec 2054 6478-6488]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
          assert (0.0 < ((2.0 / 3.0)));  // precondition of PowPos (Lean: pow_pos)
          PowPos((2.0 / 3.0), 9);  // cite: pow_pos [applied by the tactic, not named in it]
          assert (0.0 < (2.0)) && (0.0 < (3.0));  // precondition of DivPos (Lean: div_pos)
          DivPos(2.0, 3.0);  // cite: div_pos [applied by the tactic, not named in it]
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6497-6505 exec 2055)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(512 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (512.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(19683 : ℝ) * (b ^ (9 : ℕ) - (2 / 3 : ℝ) ^ (9 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(b, 9) - Real.pow((2.0 / 3.0), 9)) == 0.0); (19683.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(19683 : ℝ) * b ^ (9 : ℕ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (Real.pow(b, 9) < 0.0); (19683.0 > 0.0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(512 : ℝ) * (-1 : ℝ) + -((19683 : ℝ) * ((1 : ℝ) * b) ^ (9 : ℕ) - (1 : ℝ) * ((1 : ℝ) * (2 : ℝ)) ^ (9 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_40(a, b);  // cert: Left.add_neg
        // UNCITED-APPLIED internal ×18 [exec 2055 6497-6505]: applications made inside the tactic's own automation, not stated — CancelDenoms.pow_subst ×2, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+3 more heads, ×3)
        // UNCITED-APPLIED internal ×126 [exec 2087 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+42 more heads, ×100) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2088 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 2063 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 2056 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 2057 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×15 [exec 2061 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2067 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×126 [exec 2121 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+42 more heads, ×100) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2122 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×9 [exec 2068 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 2059 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×6 [exec 2060 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×15 [exec 2066 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.trans ×2, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2072 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2089 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2056, 2057, 2059, 2060, 2061, 2063 … / `ring1` exec 2087, 2121)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2062, 2067, 2072, 2088, 2089, 2122 / `ring1` exec 2087, 2121)]
        assert (b == (2.0 / 3.0));  // sub-goal of `cases` (Lean state) // @tac 5076-5101 // @tac 5110-6429 // @tac 6438-6488 // @tac 6497-6505
        // UNCITED-APPLIED internal ×5 [exec 2062 6497-6505]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₃]
    assert (b == (2.0 / 3.0));
  }
  // have a_eq₂ : a == 2  [type from Lean state]
  assert (a == 2.0) by { // @tac 6557-6566
    // [TACTIC: rwSeq [ a_eq ]]
    // UNCITED-APPLIED congrArg(a, (27 / 4 : ℝ) * b ^ (3 : ℕ), fun (_a : ℝ) => _a = (2 : ℝ)): no library counterpart (not stated) [exec 2145 6557-6566]
    assert (((27.0 / 4.0) * (b * b * b)) == 2.0) by {  // sub-goal before `rw` (Lean state) // @tac 6571-6657 // @tac 6571-6640 // @tac 6571-6618 // @tac 6571-6597 // @tac 6571-6580
      // [TACTIC: «_<;>_» [ b_eq ] rw [ b_eq ] <;> norm_num norm_num <;> ring_nf at * <;> norm_num at * <;> linarith linarith]
      // [TACTIC: choice [ b_eq ] rw [ b_eq ]]
      // UNCITED-APPLIED congrArg(b, (2 / 3 : ℝ), fun (_a : ℝ) => (27 / 4 : ℝ) * _a ^ (3 : ℕ) = (2 : ℝ)): no library counterpart (not stated) [exec 2196 6571-6580]
      assert (((27.0 / 4.0) * ((2.0 / 3.0) * (2.0 / 3.0) * (2.0 / 3.0))) == 2.0);  // sub-goal of `norm_num` (Lean state) // @tac 6589-6597
      // UNCITED-APPLIED internal ×27 [exec 2231 6589-6597]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Mathlib.Meta.NormNum.isRat_mul ×3, Mathlib.Meta.NormNum.isRat_div ×2 (+10 more heads, ×13)
    }
  }
  // have h₂ : a + b == 8 / 3  [type from Lean state]
  assert ((a + b) == (8.0 / 3.0)) by { // @tac 6699-6734 // @tac 6699-6717
    // [TACTIC: «_<;>_» [ a_eq₂ , b_eq ] rw [ a_eq₂ , b_eq ] <;> norm_num norm_num]
    // [TACTIC: choice [ a_eq₂ , b_eq ] rw [ a_eq₂ , b_eq ]]
    // UNCITED-APPLIED congrArg(a, (2 : ℝ), fun (_a : ℝ) => _a + b = (8 / 3 : ℝ)): no library counterpart (not stated) [exec 2275 6699-6717]
    // UNCITED-APPLIED congrArg(b, (2 / 3 : ℝ), fun (_a : ℝ) => (2 : ℝ) + _a = (8 / 3 : ℝ)): no library counterpart (not stated) [exec 2275 6699-6717]
    assert ((2.0 + (2.0 / 3.0)) == (8.0 / 3.0));  // sub-goal of `norm_num` (Lean state) // @tac 6726-6734
    // UNCITED-APPLIED internal ×15 [exec 2311 6726-6734]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.isRat_div ×2, Mathlib.Meta.NormNum.isRat_mul ×2 (+5 more heads, ×5)
  }
  // [TACTIC: exact h₂]
  assert ((a + b) == (8.0 / 3.0));
}



// ===== closed lemma for line 217 (from closed/mathd_algebra_362-217.dfy) =====

lemma {:induction false} vc_mathd_algebra_362_L217(b: real)
  requires b < 0.0
  requires 0.0 < b * b
  ensures   (0.0 < 0.0 - b)
{
  assert 0.0 < -(b);  // [ADDED]
}


