// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2021_p19.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₁/h₅₄₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(S: set<real>, x: real)
  ensures ((Real.cos(x) - 1.0) + (1.0 - Real.cos(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₁/h₅₄₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_2(S: set<real>, x: real)
  requires (0.0 <= x)
  requires ((Real.cos(x) - 1.0) <= 0.0)
  ensures ((x * (Real.cos(x) - 1.0)) <= 0.0)
{
  MulNonneg(x, -((Real.cos(x) - 1.0))); MulNeg(x, (Real.cos(x) - 1.0)); assert (x) * (-((Real.cos(x) - 1.0))) == -((x) * ((Real.cos(x) - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₁/h₅₄₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(S: set<real>, x: real)
  requires ((x - Real.pi()) <= 0.0)
  requires ((Real.cos(x) - 1.0) <= 0.0)
  ensures (0.0 <= ((x - Real.pi()) * (Real.cos(x) - 1.0)))
{
  MulNonneg(-((x - Real.pi())), -((Real.cos(x) - 1.0))); MulNeg(-((x - Real.pi())), (Real.cos(x) - 1.0)); assert (-((x - Real.pi()))) * (-((Real.cos(x) - 1.0))) == -((-((x - Real.pi()))) * ((Real.cos(x) - 1.0))); assert (-((x - Real.pi()))) * ((Real.cos(x) - 1.0)) == -(((x - Real.pi())) * ((Real.cos(x) - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₁/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(S: set<real>, x: real)
  ensures ((((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))) + (x * (Real.cos(x) - 1.0))) + -(((x - Real.pi()) * (Real.cos(x) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(S: set<real>, x: real)
  ensures (-(((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x))))) + ((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₂/h₅₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(S: set<real>, x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₂/h₅₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(S: set<real>, x: real)
  ensures ((x - Real.pi()) + (Real.pi() - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(S: set<real>, x: real)
  requires (0.0 <= x)
  requires (0.0 <= Real.sin(x))
  ensures (0.0 <= (x * Real.sin(x)))
{
  MulNonneg(x, Real.sin(x));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(S: set<real>, x: real)
  requires ((x - Real.pi()) <= 0.0)
  requires (0.0 <= Real.sin(x))
  ensures (((x - Real.pi()) * Real.sin(x)) <= 0.0)
{
  MulNonneg(-((x - Real.pi())), Real.sin(x)); MulNeg(Real.sin(x), (x - Real.pi())); assert (-((x - Real.pi()))) * (Real.sin(x)) == -((Real.sin(x)) * ((x - Real.pi())));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(S: set<real>, x: real)
  ensures ((((1.0 * Real.pi()) * (1.0 * Real.sin(x))) + -((x * Real.sin(x)))) + ((x - Real.pi()) * Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₃/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(S: set<real>, x: real)
  ensures ((-(1.0) - Real.cos(x)) + (2.0 - (1.0 - Real.cos(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(S: set<real>, x: real)
  requires (0.0 <= x)
  requires ((-(1.0) - Real.cos(x)) <= 0.0)
  ensures ((x * (-(1.0) - Real.cos(x))) <= 0.0)
{
  MulNonneg(x, -((-(1.0) - Real.cos(x)))); MulNeg(x, (-(1.0) - Real.cos(x))); assert (x) * (-((-(1.0) - Real.cos(x)))) == -((x) * ((-(1.0) - Real.cos(x))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₃`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(S: set<real>, x: real)
  requires ((x - Real.pi()) <= 0.0)
  requires ((-(1.0) - Real.cos(x)) <= 0.0)
  ensures (0.0 <= ((x - Real.pi()) * (-(1.0) - Real.cos(x))))
{
  MulNonneg(-((x - Real.pi())), -((-(1.0) - Real.cos(x)))); MulNeg(-((x - Real.pi())), (-(1.0) - Real.cos(x))); assert (-((x - Real.pi()))) * (-((-(1.0) - Real.cos(x)))) == -((-((x - Real.pi()))) * ((-(1.0) - Real.cos(x)))); assert (-((x - Real.pi()))) * ((-(1.0) - Real.cos(x))) == -(((x - Real.pi())) * ((-(1.0) - Real.cos(x))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(S: set<real>, x: real)
  ensures ((((2.0 * Real.pi()) - ((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x))))) + (x * (-(1.0) - Real.cos(x)))) + -(((x - Real.pi()) * (-(1.0) - Real.cos(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₄/h₅₄₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(S: set<real>, x: real)
  requires (0.0 <= x)
  requires ((Real.sin(x) - 1.0) <= 0.0)
  ensures ((x * (Real.sin(x) - 1.0)) <= 0.0)
{
  MulNonneg(x, -((Real.sin(x) - 1.0))); MulNeg(x, (Real.sin(x) - 1.0)); assert (x) * (-((Real.sin(x) - 1.0))) == -((x) * ((Real.sin(x) - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₄/h₅₄₄/h₅₄₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(S: set<real>, x: real)
  requires ((x - Real.pi()) <= 0.0)
  requires ((Real.sin(x) - 1.0) <= 0.0)
  ensures (0.0 <= ((x - Real.pi()) * (Real.sin(x) - 1.0)))
{
  MulNonneg(-((x - Real.pi())), -((Real.sin(x) - 1.0))); MulNeg(-((x - Real.pi())), (Real.sin(x) - 1.0)); assert (-((x - Real.pi()))) * (-((Real.sin(x) - 1.0))) == -((-((x - Real.pi()))) * ((Real.sin(x) - 1.0))); assert (-((x - Real.pi()))) * ((Real.sin(x) - 1.0)) == -(((x - Real.pi())) * ((Real.sin(x) - 1.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₄/h₅₄₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(S: set<real>, x: real)
  ensures (((((1.0 * Real.pi()) * (1.0 * 1.0)) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x)))) + (x * (Real.sin(x) - 1.0))) + -(((x - Real.pi()) * (Real.sin(x) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(S: set<real>, x: real)
  ensures (((-(x) + (x - Real.pi())) + (((1.0 * Real.pi()) * (1.0 * Real.sin(x))) - ((1.0 * Real.pi()) * (1.0 * 1.0)))) + ((2.0 * Real.pi()) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(S: set<real>, x: real)
  ensures (-(((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x))))) + ((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(S: set<real>, x: real)
  ensures ((((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))) - (2.0 * Real.pi())) + ((2.0 * Real.pi()) - ((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(S: set<real>, x: real)
  ensures (-(((1.0 * Real.pi()) * (1.0 * Real.sin(x)))) + ((1.0 * Real.pi()) * (1.0 * Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₄/h₅₄₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(S: set<real>, x: real)
  ensures ((((1.0 * Real.pi()) * (1.0 * Real.sin(x))) - (2.0 * Real.pi())) + ((2.0 * Real.pi()) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₅/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(S: set<real>)
  ensures ((-((3.0 * 1.0)) + (1.0 * Real.pi())) + (3.0 - Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(S: set<real>, x: real)
  ensures (-((((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x))))) + (((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(S: set<real>, x: real)
  ensures ((((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))) - ((1.0 * Real.pi()) * (1.0 * Real.sin(x)))) + (((1.0 * Real.pi()) * (1.0 * Real.sin(x))) - ((1.0 * Real.pi()) * ((1.0 * 1.0) - (1.0 * Real.cos(x)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(S: set<real>, x: real)
  ensures (-(((1.0 - Real.cos(x)) - Real.sin(x))) + ((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(S: set<real>, x: real)
  ensures (((1.0 - Real.cos(x)) - Real.sin(x)) + (Real.sin(x) - (1.0 - Real.cos(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(S: set<real>, x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(S: set<real>, x: real)
  ensures ((x - Real.pi()) + (Real.pi() - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(S: set<real>, x: real)
  ensures (((((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -((((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + ((Real.cos(x) * Real.cos(x)) * ((1.0 - Real.cos(x)) - Real.sin(x)))) + -((((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) - Real.sin(x)) * ((1.0 - Real.cos(x)) - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(S: set<real>, x: real)
  ensures (((((((1.0 - Real.cos(x)) - Real.sin(x)) + (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0)) + ((1.0 - (Real.cos(x) * Real.cos(x))) - ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))))) + -(((Real.cos(x) * Real.cos(x)) * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) * ((1.0 - Real.cos(x)) - Real.sin(x)))) + -((((1.0 - Real.cos(x)) - Real.sin(x)) * ((1.0 - Real.cos(x)) - Real.sin(x))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₉/h₅₉₁/h₅₉₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(S: set<real>, x: real)
  ensures (-((((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (Real.cos(x) * (Real.cos(x) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₉/h₅₉₁/h₅₉₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_33(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x)))) + -((2.0 * (Real.cos(x) * (Real.cos(x) - 1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₉/h₅₉₁/h₅₉₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(S: set<real>, x: real)
  ensures ((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -(Real.sin(x))) + (1.0 - Real.cos(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₉/h₅₉₁/h₅₉₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_35(S: set<real>, x: real)
  ensures (-((Real.cos(x) - 1.0)) + (Real.cos(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_39(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_40(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_41(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_42(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_43(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_44(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_45(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_46(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_47(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_48(S: set<real>, x: real)
  ensures (((-((2.0 * (Real.cos(x) * Real.cos(x)))) + -((2.0 * ((1.0 - Real.cos(x)) - Real.sin(x))))) + (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) - (1.0 - (Real.cos(x) * Real.cos(x))))) + (2.0 * (1.0 - Real.sin(x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_49(S: set<real>, x: real)
  ensures ((((1.0 - Real.cos(x)) - Real.sin(x)) + Real.cos(x)) + (Real.sin(x) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₅/h₅₁₆₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_50(S: set<real>, x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₅/h₅₁₆₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_51(S: set<real>, x: real)
  ensures ((x - Real.pi()) + (Real.pi() - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₅/h₅₁₆₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_52(S: set<real>, x: real)
  ensures ((-(x) + (x - Real.pi())) + (1.0 * Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉/h₅₁₆₂/h₅₁₆₅/h₅₁₆₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_53(S: set<real>, x: real)
  ensures ((-(x) + (x - Real.pi())) + ((2.0 * Real.pi()) - (1.0 * Real.pi()))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_54(S: set<real>, x: real)
  ensures ((((-(((1.0 - Real.cos(x)) * (1.0 - Real.cos(x)))) + -((Real.sin(x) * Real.sin(x)))) + (2.0 * ((1.0 - Real.cos(x)) - Real.sin(x)))) + (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0)) + (2.0 * Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_55(S: set<real>, x: real)
  ensures ((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -((Real.cos(x) - 1.0))) + -(Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_56(S: set<real>, x: real)
  ensures ((((-(((1.0 - Real.cos(x)) * (1.0 - Real.cos(x)))) + -((Real.sin(x) * Real.sin(x)))) + (2.0 * ((1.0 - Real.cos(x)) - Real.sin(x)))) + (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0)) + (2.0 * Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_57(S: set<real>, x: real)
  ensures ((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -((Real.cos(x) - 1.0))) + -(Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_58(S: set<real>, x: real)
  ensures ((((-(((1.0 - Real.cos(x)) * (1.0 - Real.cos(x)))) + -((Real.sin(x) * Real.sin(x)))) + (2.0 * ((1.0 - Real.cos(x)) - Real.sin(x)))) + (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0)) + (2.0 * Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_59(S: set<real>, x: real)
  ensures ((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -((Real.cos(x) - 1.0))) + -(Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_60(S: set<real>, x: real)
  ensures ((((-(((1.0 - Real.cos(x)) * (1.0 - Real.cos(x)))) + -((Real.sin(x) * Real.sin(x)))) + (2.0 * ((1.0 - Real.cos(x)) - Real.sin(x)))) + (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) - 1.0)) + (2.0 * Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_61(S: set<real>, x: real)
  ensures ((-(((1.0 - Real.cos(x)) - Real.sin(x))) + -((Real.cos(x) - 1.0))) + -(Real.sin(x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_62(S: set<real>, x: real)
  ensures (-(x) + x) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_63(S: set<real>, x: real)
  ensures ((x - Real.pi()) + (Real.pi() - x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅/h₅₁₂/h₅₁₅/h₅₁₅₃/h₅₁₅₆/h₅₁₅₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_64(S: set<real>, x: real)
  ensures ((-(x) + (x - Real.pi())) + Real.pi()) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_65(S: set<real>)
  ensures (Real.pi() + -(Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_66(S: set<real>)
  ensures ((1.0 * Real.pi()) + -(Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_67(S: set<real>)
  ensures (((2.0 * Real.pi()) - (1.0 * Real.pi())) + -(Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₃/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_68(S: set<real>)
  ensures (-(Real.pi()) + (1.0 * Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_69(S: set<real>)
  ensures (-(Real.pi()) + (1.0 * Real.pi())) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2021_p19(S: set<real>)
  requires (forall x: real :: ((x in S) <==> ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))))))))
  ensures (|S| == 2) // @tac 653-11251 // @tac 11257-11883 // @tac 11889-11899
{
  // have h₁ : S == { 0, Real.pi / 2 }  [type from Lean state]
  assert (S == { 0.0, (Real.pi() / 2.0) }) by { // @tac 696-712
    // [TACTIC: apply Finset.ext]
    assert (forall a: real :: ((a in S) <==> (a in { 0.0, (Real.pi() / 2.0) }))) by {  // sub-goal before `intro` (Lean state) // @tac 717-724
      // [TACTIC: intro x]  (lowered: its recorded goal under the new binders)
      forall x: real
        ensures ((x in S) <==> (x in { 0.0, (Real.pi() / 2.0) }))  // sub-goal of `intro` (Lean state) // @tac 729-786
      {
        // [TACTIC: simp only [ Finset.mem_insert , Finset.mem_singleton , h₀ ]]
        assert ((x in S) <==> ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))));  // instance of h₀ (Lean state)
        // UNCITED Finset.mem_insert: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Finset.mem_singleton: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×4 [exec 22 729-786]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, congr ×1, Eq.trans ×1
        assert (((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))) <==> ((x == 0.0) || (x == (Real.pi() / 2.0)))) by {  // sub-goal before `constructor` (Lean state) // @tac 791-802
          // [TACTIC: constructor]
          // `constructor`: 2 cases (Lean states); 2 branch bodies
          assert (((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))) ==> ((x == 0.0) || (x == (Real.pi() / 2.0)))) by {  // sub-goal of `constructor` (Lean state) // @tac 905-912 // @tac 807-10005
            // intro h: P → Q  (N7 if-wrapper)
            if ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))) {
              assert ((x == 0.0) || (x == (Real.pi() / 2.0))) by {  // sub-goal before `have` (Lean state) // @tac 919-945 // @tac 952-986 // @tac 993-1087 // @tac 1094-9909 // @tac 9916-10005
                // have h₂ : 0 <= x  [type from Lean state]
                assert (0.0 <= x);
                  // [TACTIC: exact h . 1]
                // have h₃ : x <= Real.pi  [type from Lean state]
                assert (x <= Real.pi());
                  // [TACTIC: exact h . 2 . 1]
                // have h₄ : Real.sin ( ( Real.pi / 2 * Real.cos ( x ) ) ) == Real.cos ( ( Real.pi   [type from Lean state]
                assert (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))));
                  // [TACTIC: exact h . 2 . 2]
                // have h₅ : x == 0 || x == Real.pi / 2  [type from Lean state]
                assert ((x == 0.0) || (x == (Real.pi() / 2.0))) by { // @tac 1213-1694 // @tac 1703-1723 // @tac 1732-1834 // @tac 1843-3622 // @tac 3631-3797 // @tac 3806-3863 // @tac 3872-3950 // @tac 3959-4123 // @tac 4132-4241 // @tac 4250-4895 // @tac 4904-9909
                  // have h₅₁ : Real.sin ( ( Real.pi / 2 * Real.cos ( x ) ) ) == Real.cos ( ( Real.pi   [type from Lean state]
                  assert (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x))))) by { // @tac 1324-1501 // @tac 1512-1694 // @tac 1512-1593 // @tac 1512-1571 // @tac 1512-1546 // @tac 1512-1524
                    // have h₅₂ : Real.sin ( ( Real.pi / 2 * Real.cos ( x ) ) ) == Real.cos ( ( Real.pi   [type from Lean state]
                    assert (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) - ((Real.pi() / 2.0) * Real.cos(x))))) by { // @tac 1445-1501 // @tac 1445-1477
                      // [TACTIC: «_<;>_» [ ← Real.cos_pi_div_two_sub ] rw [ ← Real.cos_pi_div_two_sub ] <;> ring_nf ring_nf]
                      // [TACTIC: rwSeq [ ← Real.cos_pi_div_two_sub ]]
                      RealCosPiDivTwoSub(((Real.pi() / 2.0) * Real.cos(x)));  // cite: Real.cos_pi_div_two_sub
                      // UNCITED-APPLIED Eq.symm(Real.cos(((Real.pi() / 2.0) - ((Real.pi() / 2.0) * Real.cos(x)))), Real.sin(((Real.pi() / 2.0) * Real.cos(x)))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg(sin (π / (2 : ℝ) * cos x), cos (π / (2 : ℝ) - π / (2 : ℝ) * cos x), fun (_a : ℝ) => _a = cos (π / (2 : ℝ) - π / (2 : ℝ) * cos x)): no library counterpart (not stated) [exec 122 1445-1477]
                    }
                    // [TACTIC: «_<;>_» [ h₅₂ ] rw [ h₅₂ ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf <;> linarith [ Real.cos_le_one x , Real.cos_le_one ( Real.pi / 2 - Real.pi / 2 * Real.cos x ) ] linarith [ Real.cos_le_one x , Real.cos_le_one ( Real.pi / 2 - Real.pi / 2 * Real.cos x ) ]]
                    // [TACTIC: choice [ h₅₂ ] rw [ h₅₂ ]]
                    // UNCITED-APPLIED congrArg(sin (π / (2 : ℝ) * cos x), cos (π / (2 : ℝ) - π / (2 : ℝ) * cos x), fun (_a : ℝ) => _a = cos (π / (2 : ℝ) * ((1 : ℝ) - cos x))): no library counterpart (not stated) [exec 173 1512-1524]
                    assert (Real.cos(((Real.pi() / 2.0) - ((Real.pi() / 2.0) * Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1539-1546
                      PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.cos(x));  // cite: pow_one [applied by the tactic, not named in it]
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×96 [exec 208 1539-1546]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×5, Mathlib.Tactic.Ring.mul_add ×4 (+42 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×2])
                    }
                  }
                  // [TACTIC: rwSeq [ h₅₁ ] at h₄]
                  assert (Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 1703-1723
                  // have h₅₃ : Real.cos ( ( Real.pi / 2 * ( 1 - Real.cos ( x ) ) ) ) == Real.cos ( (   [type from Lean state]
                  assert (Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))) by {
                    // [TACTIC: exact h₄]
                    assert (Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))));  // hypothesis h₄ at `exact` (Lean state)
                    // UNCITED-APPLIED congrArg(sin (π / (2 : ℝ) * cos x), cos (π / (2 : ℝ) * ((1 : ℝ) - cos x)), fun (_a : ℝ) => _a = cos (π / (2 : ℝ) * sin x)): no library counterpart (not stated) [exec 267 1732-1834]
                  }
                  // have h₅₄ : Real.pi / 2 * ( 1 - Real.cos ( x ) ) == Real.pi / 2 * Real.sin ( x )  [type from Lean state]
                  assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) == ((Real.pi() / 2.0) * Real.sin(x))) by { // @tac 1997-2401 // @tac 2412-2724 // @tac 2735-3010 // @tac 3021-3372 // @tac 3383-3595 // @tac 3606-3622
                    // have h₅₄₁ : Real.pi / 2 * ( 1 - Real.cos ( x ) ) >= 0  [type from Lean state]
                    assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) >= 0.0) by { // @tac 2070-2125 // @tac 2138-2198 // @tac 2211-2264 // @tac 2277-2380 // @tac 2393-2401
                      // have h₅₄₂ : Real.cos ( x ) <= 1  [type from Lean state]
                      assert (Real.cos(x) <= 1.0) by {
                        // [TACTIC: exact Real.cos_le_one ( x )]
                        RealCosLeOne(x);  // cite: Real.cos_le_one
                      }
                      // have h₅₄₃ : Real.cos ( x ) >= - 1  [type from Lean state]
                      assert (Real.cos(x) >= -(1.0)) by {
                        // [TACTIC: exact Real.neg_one_le_cos ( x )]
                        RealNegOneLeCos(x);  // cite: Real.neg_one_le_cos
                      }
                      // have h₅₄₄ : 1 - Real.cos ( x ) >= 0  [type from Lean state]
                      assert ((1.0 - Real.cos(x)) >= 0.0) by { // @tac 2256-2264
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2256-2264 exec 342)
                        cert_identity_1(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×6 [exec 342 2256-2264]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×33 [exec 343 2256-2264]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 343)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 343)]
                      }
                      // have h₅₄₅ : Real.pi / 2 * ( 1 - Real.cos ( x ) ) >= 0  [type from Lean state]
                      assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) >= 0.0) by { // @tac 2352-2380
                        // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2352-2380 exec 360)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) < 0.0); (2.0 > 0.0)
                        if (0.0 <= x) && ((Real.cos(x) - 1.0) <= 0.0) { cert_piece_2(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        if ((x - Real.pi()) <= 0.0) && ((Real.cos(x) - 1.0) <= 0.0) { cert_piece_3(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(1 : ℝ) * π * ((1 : ℝ) * (1 : ℝ) - (1 : ℝ) * cos x) + -(-x * (cos x - (1 : ℝ))) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_4(S, x);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×18 [exec 360 2352-2380]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_lt_of_neg_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, CancelDenoms.sub_subst ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×6 [exec 362 2352-2380]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 363 2352-2380]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 361, 362, 363 / `ring1` exec 365)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 364 / `ring1` exec 365)]
                        // UNCITED-APPLIED internal ×125 [exec 365 2352-2380]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.add_mul ×7 (+32 more heads, ×94) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 361 2352-2380]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 364 2352-2380]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // [TACTIC: «Linarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2393-2401 exec 366)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(π / (2 : ℝ) * ((1 : ℝ) - cos x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) < 0.0); (2.0 > 0.0)
                      cert_identity_5(S, x);  // cert: add_lt_of_le_of_neg
                      // UNCITED-APPLIED internal ×14 [exec 366 2393-2401]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.neg_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, CancelDenoms.sub_subst ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×74 [exec 375 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4 (+30 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 367 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 368 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 369 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 371 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 372 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 373 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 374 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 367, 368, 369, 371, 372, 373 / `ring1` exec 375)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 370, 374 / `ring1` exec 375)]
                      // UNCITED-APPLIED internal ×5 [exec 370 2393-2401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₅₄₂ : Real.pi / 2 * Real.sin ( x ) >= 0  [type from Lean state]
                    assert (((Real.pi() / 2.0) * Real.sin(x)) >= 0.0) by { // @tac 2479-2654 // @tac 2667-2724
                      // have h₅₄₃ : Real.sin ( x ) >= 0  [type from Lean state]
                      assert (Real.sin(x) >= 0.0) by { // @tac 2534-2566
                        // [TACTIC: apply Real.sin_nonneg_of_mem_Icc]
                        assert ((0.0 <= x) && (x <= Real.pi())) by {  // sub-goal before `constructor` (Lean state) // @tac 2581-2654 // @tac 2581-2592
                          // [TACTIC: «_<;>_» constructor <;> nlinarith [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ] nlinarith [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                          // [TACTIC: choice constructor]
                          assert (0.0 <= x) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2597-2654
                            // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 428)]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2597-2654 exec 423)
                            cert_identity_6(S, x);  // cert: add_lt_of_le_of_neg
                            // UNCITED-APPLIED internal ×6 [exec 423 2597-2654]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                            // UNCITED-APPLIED internal ×20 [exec 428 2597-2654]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          }
                          assert (x <= Real.pi()) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2597-2654
                            // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 436)]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2597-2654 exec 431)
                            cert_identity_7(S, x);  // cert: add_lt_of_le_of_neg
                            // UNCITED-APPLIED internal ×6 [exec 431 2597-2654]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                            // UNCITED-APPLIED internal ×34 [exec 436 2597-2654]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          }
                        }
                        assert (0.0 <= (x) <= Real.pi());  // precondition of RealSinNonnegOfMemIcc (Lean: Real.sin_nonneg_of_mem_Icc; `apply`: proved by the steps above)
                        RealSinNonnegOfMemIcc(x);  // cite: Real.sin_nonneg_of_mem_Icc
                      }
                      // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2667-2724 exec 437)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) * Real.sin(x)) < 0.0); (2.0 > 0.0)
                      if (0.0 <= x) && (0.0 <= Real.sin(x)) { cert_piece_8(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      if ((x - Real.pi()) <= 0.0) && (0.0 <= Real.sin(x)) { cert_piece_9(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(1 : ℝ) * π * ((1 : ℝ) * sin x) + -(-x * -sin x) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_10(S, x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×17 [exec 437 2667-2724]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×4, add_lt_of_neg_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, lt_zero_of_zero_gt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×6 [exec 439 2667-2724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 440 2667-2724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 438, 439, 440 / `ring1` exec 446)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 441 / `ring1` exec 446)]
                      // UNCITED-APPLIED internal ×95 [exec 446 2667-2724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.neg_add ×6 (+31 more heads, ×71) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 438 2667-2724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 441 2667-2724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₅₄₃ : Real.pi / 2 * ( 1 - Real.cos ( x ) ) <= Real.pi  [type from Lean state]
                    assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) <= Real.pi()) by { // @tac 2814-2874 // @tac 2887-2940 // @tac 2953-3010
                      // have h₅₄₄ : Real.cos ( x ) >= - 1  [type from Lean state]
                      assert (Real.cos(x) >= -(1.0)) by {
                        // [TACTIC: exact Real.neg_one_le_cos ( x )]
                        RealNegOneLeCos(x);  // cite: Real.neg_one_le_cos
                      }
                      // have h₅₄₅ : 1 - Real.cos ( x ) <= 2  [type from Lean state]
                      assert ((1.0 - Real.cos(x)) <= 2.0) by { // @tac 2932-2940
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2932-2940 exec 491)
                        cert_identity_11(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×6 [exec 491 2932-2940]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×49 [exec 500 2932-2940]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3 (+22 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 500)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 500)]
                      }
                      // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2953-3010 exec 501)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) < 0.0); (2.0 > 0.0)
                      if (0.0 <= x) && ((-(1.0) - Real.cos(x)) <= 0.0) { cert_piece_12(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      if ((x - Real.pi()) <= 0.0) && ((-(1.0) - Real.cos(x)) <= 0.0) { cert_piece_13(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℝ) * π - (1 : ℝ) * π * ((1 : ℝ) * (1 : ℝ) - (1 : ℝ) * cos x) + -(-x * ((-1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_14(S, x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×19 [exec 501 2953-3010]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_lt_of_neg_of_le ×2, CancelDenoms.sub_subst ×2, mul_nonneg_of_nonpos_of_nonpos ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×6 [exec 503 2953-3010]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 504 2953-3010]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 502, 503, 504 / `ring1` exec 514)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 505 / `ring1` exec 514)]
                      // UNCITED-APPLIED internal ×140 [exec 514 2953-3010]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_congr ×7 (+34 more heads, ×109) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 502 2953-3010]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 505 2953-3010]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₅₄₄ : Real.pi / 2 * Real.sin ( x ) <= Real.pi  [type from Lean state]
                    assert (((Real.pi() / 2.0) * Real.sin(x)) <= Real.pi()) by { // @tac 3094-3149 // @tac 3162-3302 // @tac 3315-3372
                      // have h₅₄₅ : Real.sin ( x ) <= 1  [type from Lean state]
                      assert (Real.sin(x) <= 1.0) by {
                        // [TACTIC: exact Real.sin_le_one ( x )]
                        RealSinLeOne(x);  // cite: Real.sin_le_one
                      }
                      // have h₅₄₆ : Real.pi / 2 * Real.sin ( x ) <= Real.pi / 2 * 1  [type from Lean state]
                      assert (((Real.pi() / 2.0) * Real.sin(x)) <= ((Real.pi() / 2.0) * 1.0)) by { // @tac 3245-3302
                        // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3245-3302 exec 559)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * (1 : ℝ) - π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * 1.0) - ((Real.pi() / 2.0) * Real.sin(x))) < 0.0); (2.0 > 0.0)
                        if (0.0 <= x) && ((Real.sin(x) - 1.0) <= 0.0) { cert_piece_15(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        if ((x - Real.pi()) <= 0.0) && ((Real.sin(x) - 1.0) <= 0.0) { cert_piece_16(S, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(1 : ℝ) * π * ((1 : ℝ) * (1 : ℝ)) - (1 : ℝ) * π * ((1 : ℝ) * sin x) + -(-x * (sin x - (1 : ℝ))) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_17(S, x);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×19 [exec 559 3245-3302]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_lt_of_neg_of_le ×2, CancelDenoms.mul_subst ×2, mul_nonneg_of_nonpos_of_nonpos ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×6 [exec 561 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 562 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 563 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 564 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 565 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 560, 561, 562, 563, 564, 565 / `ring1` exec 579)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 566 / `ring1` exec 579)]
                        // UNCITED-APPLIED internal ×122 [exec 579 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_congr ×7 (+32 more heads, ×91) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 560 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 566 3245-3302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3315-3372 exec 580)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * sin x - π / (2 : ℝ) * (1 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * Real.sin(x)) - ((Real.pi() / 2.0) * 1.0)) <= 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - ((Real.pi() / 2.0) * Real.sin(x))) < 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-x + (x - π) + ((1 : ℝ) * π * ((1 : ℝ) * sin x) - (1 : ℝ) * π * ((1 : ℝ) * (1 : ℝ))) ≤ (0 : ℝ)`
                      cert_identity_18(S, x);  // cert: add_lt_of_le_of_neg
                      // UNCITED-APPLIED internal ×19 [exec 580 3315-3372]: applications made inside the tactic's own automation, not stated — add_nonpos ×2, sub_nonpos_of_le ×2, CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×6 [exec 582 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 583 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 585 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 586 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 587 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 588 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 589 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 590 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 591 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 581, 582, 583, 585, 586, 587 … / `ring1` exec 604)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 584, 591 / `ring1` exec 604)]
                      // UNCITED-APPLIED internal ×97 [exec 604 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+33 more heads, ×74) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 581 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 584 3315-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // have h₅₄₅ : Real.pi / 2 * ( 1 - Real.cos ( x ) ) == Real.pi / 2 * Real.sin ( x )  [type from Lean state]
                    assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) == ((Real.pi() / 2.0) * Real.sin(x))) by { // @tac 3477-3569
                      assert (0.0 <= ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) by {  // sub-goal of `by` (Lean state) // @tac 3507-3516
                        // [TACTIC: «Nlinarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3507-3516 exec 626)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(π / (2 : ℝ) * ((1 : ℝ) - cos x)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) < 0.0); (2.0 > 0.0)
                        cert_identity_19(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×14 [exec 626 3507-3516]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.neg_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, CancelDenoms.sub_subst ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×74 [exec 647 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4 (+30 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 627 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 628 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 629 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 631 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 632 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 633 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 634 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 627, 628, 629, 631, 632, 633 / `ring1` exec 647)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 630, 634 / `ring1` exec 647)]
                        // UNCITED-APPLIED internal ×5 [exec 630 3507-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 3521-3530
                        // [TACTIC: «Nlinarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3521-3530 exec 652)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x) - π) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * (1.0 - Real.cos(x))) - Real.pi()) <= 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) < 0.0); (2.0 > 0.0)
                        cert_identity_20(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×15 [exec 652 3521-3530]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×102 [exec 673 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Tactic.Ring.add_mul ×5 (+32 more heads, ×80) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 653 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 654 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 655 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 657 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 658 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 659 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 660 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 653, 654, 655, 657, 658, 659 / `ring1` exec 673)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 656, 660 / `ring1` exec 673)]
                        // UNCITED-APPLIED internal ×5 [exec 656 3521-3530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (0.0 <= ((Real.pi() / 2.0) * Real.sin(x))) by {  // sub-goal of `by` (Lean state) // @tac 3540-3549
                        // [TACTIC: «Nlinarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3540-3549 exec 678)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(π / (2 : ℝ) * sin x) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((Real.pi() / 2.0) * Real.sin(x))); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) * Real.sin(x)) < 0.0); (2.0 > 0.0)
                        cert_identity_21(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×13 [exec 678 3540-3549]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.neg_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×45 [exec 699 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+26 more heads, ×33) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 679 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 680 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 681 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 683 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 684 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 685 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 686 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 679, 680, 681, 683, 684, 685 / `ring1` exec 699)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 682, 686 / `ring1` exec 699)]
                        // UNCITED-APPLIED internal ×5 [exec 682 3540-3549]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (((Real.pi() / 2.0) * Real.sin(x)) <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 3554-3563
                        // [TACTIC: «Nlinarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3554-3563 exec 704)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * sin x - π) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * Real.sin(x)) - Real.pi()) <= 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - ((Real.pi() / 2.0) * Real.sin(x))) < 0.0); (2.0 > 0.0)
                        cert_identity_22(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×14 [exec 704 3554-3563]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×72 [exec 725 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+30 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 705 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 706 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 707 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 709 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 710 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 711 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 712 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 705, 706, 707, 709, 710, 711 / `ring1` exec 725)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 708, 712 / `ring1` exec 725)]
                        // UNCITED-APPLIED internal ×5 [exec 708 3554-3563]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // [TACTIC: apply ( injOn_cos.eq_iff ⟨ by nlinarith nlinarith , by nlinarith nlinarith ⟩ ⟨ by nlinarith nlinarith , by nlinarith nlinarith ⟩ ⟨ by nlinarith nlinarith , by nlinarith nlinarith ⟩ ⟨ by nlinarith nlinarith , by nlinarith nlinarith ⟩ ) . 1]
                      // UNCITED injOn_cos.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
                      assert (Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))) by {  // sub-goal before `exact` (Lean state) // @tac 3582-3595
                        // [TACTIC: exact h₅₃]
                        assert (Real.cos(((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))));
                      }
                      // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Icc (0 : ℝ) π, cos, π / (2 : ℝ) * ((1 : ℝ) - cos x), π / (2 : ℝ) * sin x): library counterpart RealInjOnCosEqIff (Mathlib `injOn_cos.eq_iff`) exists, but the translation of this tactic states no such instance [exec 621 3477-3569]
                    }
                    // [TACTIC: exact h₅₄₅]
                    assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) == ((Real.pi() / 2.0) * Real.sin(x)));
                  }
                  // have h₅₅ : 1 - Real.cos ( x ) == Real.sin ( x )  [type from Lean state]
                  assert ((1.0 - Real.cos(x)) == Real.sin(x)) by { // @tac 3690-3778
                    assert ((Real.pi() / 2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 3750-3777
                      // [TACTIC: «Linarith[_]At___» [ Real.pi_gt_three ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3750-3777 exec 749)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (3.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) == 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(3 : ℝ) * (-1 : ℝ) + (1 : ℝ) * π < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_23(S);  // cert: Left.add_neg
                      // UNCITED-APPLIED internal ×12 [exec 749 3750-3777]: applications made inside the tactic's own automation, not stated — Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Not.intro ×1, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+2 more heads, ×2)
                      // UNCITED-APPLIED internal ×5 [exec 761 3750-3777]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 751 3750-3777]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 750, 751 / `ring1` exec 760)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 752, 761 / `ring1` exec 760)]
                      // UNCITED-APPLIED internal ×54 [exec 760 3750-3777]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.mul_congr ×2 (+28 more heads, ×44) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 750 3750-3777]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 752 3750-3777]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    // [TACTIC: apply mul_left_cancel₀ ( show ( Real.pi / 2 : ℝ ) ≠ 0 by linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ] )]
                    // NOT APPLIED Real.pi_gt_three: named here, but no record of Lean's proof at this tactic applies it
                    assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) == ((Real.pi() / 2.0) * Real.sin(x))) by {  // sub-goal before `linarith` (Lean state) // @tac 3789-3797
                      // [TACTIC: «Linarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3789-3797 exec 762)
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x) - π / (2 : ℝ) * sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * (1.0 - Real.cos(x))) - ((Real.pi() / 2.0) * Real.sin(x))) == 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * ((1 : ℝ) - cos x) - π / (2 : ℝ) * sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * (1.0 - Real.cos(x))) - ((Real.pi() / 2.0) * Real.sin(x))) < 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ) * sin x - π / (2 : ℝ) * ((1 : ℝ) - cos x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pi() / 2.0) * Real.sin(x)) - ((Real.pi() / 2.0) * (1.0 - Real.cos(x)))) < 0.0); (2.0 > 0.0)
                      cert_identity_24(S, x);  // cert: Linarith.lt_of_eq_of_lt
                      cert_identity_25(S, x);  // cert: Linarith.lt_of_eq_of_lt
                      // UNCITED-APPLIED internal ×23 [exec 762 3789-3797]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, CancelDenoms.mul_subst ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, CancelDenoms.div_subst ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×5, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
                      // UNCITED-APPLIED internal ×100 [exec 777 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_congr ×6 (+30 more heads, ×72) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 763 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 764 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 765 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 766 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 767 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 768 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 770 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 771 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 772 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 773 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 774 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 775 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 776 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×100 [exec 792 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×6 (+30 more heads, ×74) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 778 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 779 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 780 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 781 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 782 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 783 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 784 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 785 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 786 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 787 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 788 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 789 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×6 [exec 790 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 791 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 763, 764, 765, 766, 767, 768 … / `ring1` exec 777, 792)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 769, 776, 784, 791 / `ring1` exec 777, 792)]
                      // UNCITED-APPLIED internal ×5 [exec 769 3789-3797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    assert (((Real.pi() / 2.0)) != 0.0) && (((Real.pi() / 2.0)) * ((1.0 - Real.cos(x))) == ((Real.pi() / 2.0)) * (Real.sin(x)));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
                    MulLeftCancel((Real.pi() / 2.0), (1.0 - Real.cos(x)), Real.sin(x));  // cite: mul_left_cancel₀
                  }
                  // have h₅₆ : Real.sin ( x ) == 1 - Real.cos ( x )  [type from Lean state]
                  assert (Real.sin(x) == (1.0 - Real.cos(x))) by { // @tac 3855-3863
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3855-3863 exec 809)
                    cert_identity_26(S, x);  // cert: Linarith.lt_of_eq_of_lt
                    cert_identity_27(S, x);  // cert: Linarith.lt_of_eq_of_lt
                    // UNCITED-APPLIED internal ×11 [exec 809 3855-3863]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×50 [exec 817 3855-3863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Tactic.Ring.sub_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3 (+22 more heads, ×37) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×48 [exec 825 3855-3863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+21 more heads, ×33) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 817, 825)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 817, 825)]
                  }
                  // have h₅₇ : Real.sin ( x ) ^ 2 + Real.cos ( x ) ^ 2 == 1  [type from Lean state]
                  assert (((Real.sin(x) * Real.sin(x)) + (Real.cos(x) * Real.cos(x))) == 1.0) by {
                    // [TACTIC: exact Real.sin_sq_add_cos_sq ( x )]
                    RealSinSqAddCosSq(x);  // cite: Real.sin_sq_add_cos_sq
                  }
                  // have h₅₈ : Real.sin ( x ) >= 0  [type from Lean state]
                  assert (Real.sin(x) >= 0.0) by { // @tac 4007-4039
                    // [TACTIC: apply Real.sin_nonneg_of_mem_Icc]
                    assert ((0.0 <= x) && (x <= Real.pi())) by {  // sub-goal before `constructor` (Lean state) // @tac 4050-4123 // @tac 4050-4061
                      // [TACTIC: «_<;>_» constructor <;> nlinarith [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ] nlinarith [ Real.pi_gt_three , Real.pi_pos , Real.two_le_pi ]]
                      // [TACTIC: choice constructor]
                      assert (0.0 <= x) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4066-4123
                        // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 877)]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4066-4123 exec 869)
                        cert_identity_28(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×6 [exec 869 4066-4123]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×20 [exec 877 4066-4123]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (x <= Real.pi()) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4066-4123
                        // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        // UNCITED Real.two_le_pi: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 888)]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4066-4123 exec 880)
                        cert_identity_29(S, x);  // cert: add_lt_of_le_of_neg
                        // UNCITED-APPLIED internal ×6 [exec 880 4066-4123]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×34 [exec 888 4066-4123]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                    }
                    assert (0.0 <= (x) <= Real.pi());  // precondition of RealSinNonnegOfMemIcc (Lean: Real.sin_nonneg_of_mem_Icc; `apply`: proved by the steps above)
                    RealSinNonnegOfMemIcc(x);  // cite: Real.sin_nonneg_of_mem_Icc
                  }
                  // have h₅₈ : ( 1 - Real.cos ( x ) ) ^ 2 == 1 - Real.cos ( x ) ^ 2  [type from Lean state]
                  assert (((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) == (1.0 - (Real.cos(x) * Real.cos(x)))) by { // @tac 4205-4241
                    // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4205-4241 exec 905)
                    if (0.0 <= (Real.cos(x) * Real.cos(x))) && (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0) { assert (-(((Real.cos(x) * Real.cos(x)) * ((1.0 - Real.cos(x)) - Real.sin(x)))) == 0.0); }  // cert: Linarith.mul_zero_eq
                    SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                    if (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x)))) && (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0) { assert (-((((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))) * ((1.0 - Real.cos(x)) - Real.sin(x)))) == 0.0); }  // cert: Linarith.mul_zero_eq
                    SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
                    if (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0) { assert ((((1.0 - Real.cos(x)) - Real.sin(x)) * ((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); }  // cert: Linarith.zero_mul_eq
                    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) - cos x - sin x) + -(sin x ^ (2 : ℕ) + cos x ^ (2 : ℕ) - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + (sin x ^ (2 : ℕ) + cos x ^ (2 : ℕ) - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x - sin x) + -(sin x ^ (2 : ℕ) + cos x ^ (2 : ℕ) - (1 : ℝ)) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) -…`
                    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x - sin x) + -(sin x ^ (2 : ℕ) + cos x ^ (2 : ℕ) - (1 : ℝ)) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) -…`
                    cert_identity_30(S, x);  // cert: Linarith.lt_of_lt_of_eq
                    cert_identity_31(S, x);  // cert: Linarith.lt_of_lt_of_eq
                    // UNCITED-APPLIED internal ×25 [exec 905 4205-4241]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×5, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, neg_nonpos_of_nonneg ×2; machinery/glue: Linarith.lt_of_lt_of_eq ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.mul_zero_eq ×2 (+4 more heads, ×4) (cited in this block, not counted here: sq_nonneg [Lean recorded ×2])
                    // UNCITED-APPLIED internal ×228 [exec 921 4205-4241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8 (+46 more heads, ×196) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                    // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 913, 921)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 913, 921)]
                    SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                    SqNonneg((1.0 - Real.cos(x)));  // cite: sq_nonneg [applied by the tactic, not named in it]
                    // UNCITED-APPLIED internal ×222 [exec 913 4205-4241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8 (+46 more heads, ×190) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  }
                  // have h₅₉ : Real.cos ( x ) == 0 || Real.cos ( x ) == 1  [type from Lean state]
                  assert ((Real.cos(x) == 0.0) || (Real.cos(x) == 1.0)) by { // @tac 4315-4868 // @tac 4879-4895
                    // have h₅₉₁ : Real.cos ( x ) == 0 || Real.cos ( x ) == 1  [type from Lean state]
                    assert ((Real.cos(x) == 0.0) || (Real.cos(x) == 1.0)) by { // @tac 4385-4493 // @tac 4506-4632 // @tac 4645-4868
                      // have h₅₉₂ : Real.cos ( x ) * ( Real.cos ( x ) - 1 ) == 0  [type from Lean state]
                      assert ((Real.cos(x) * (Real.cos(x) - 1.0)) == 0.0) by { // @tac 4457-4493
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4457-4493 exec 970)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (cos x * (cos x - (1 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.cos(x) * (Real.cos(x) - 1.0)) < 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(cos x * (cos x - (1 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (Real.cos(x) * (Real.cos(x) - 1.0))); (2.0 > 0.0)
                        cert_identity_32(S, x);  // cert: Linarith.lt_of_eq_of_lt
                        cert_identity_33(S, x);  // cert: Linarith.lt_of_eq_of_lt
                        // UNCITED-APPLIED internal ×12 [exec 970 4457-4493]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, sub_eq_zero_of_eq ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
                        // UNCITED-APPLIED internal ×142 [exec 987 4457-4493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.neg_add ×6 (+47 more heads, ×115) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 979 4457-4493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 978, 987)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 977, 979 / `ring1` exec 978, 987)]
                        // UNCITED-APPLIED internal ×151 [exec 978 4457-4493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7 (+47 more heads, ×123) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 977 4457-4493]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      // have h₅₉₃ : Real.cos ( x ) == 0 || Real.cos ( x ) - 1 == 0  [type from Lean state]
                      assert ((Real.cos(x) == 0.0) || ((Real.cos(x) - 1.0) == 0.0)); // @tac 4582-4632
                        // [TACTIC: apply eq_zero_or_eq_zero_of_mul_eq_zero h₅₉₂]
                        // UNCITED eq_zero_or_eq_zero_of_mul_eq_zero: no Lean instance recorded (arguments unknown), not guessed
                      // `cases`: 2 cases (Lean states); 2 branch bodies
                      if ((Real.cos(x) == 0.0)) {  // sub-goal of `cases` (Lean state)
                        // [TACTIC: exact Or.inl h₅₉₃]
                        assert (Real.cos(x) == 0.0);
                        assert ((Real.cos(x) == 0.0) || (Real.cos(x) == 1.0));  // sub-goal of `cases` (Lean state) // @tac 4713-4736
                      }
                      if (((Real.cos(x) - 1.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
                        // have h₅₉₄ : Real.cos ( x ) == 1  [type from Lean state]
                        assert (Real.cos(x) == 1.0) by { // @tac 4822-4830
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4822-4830 exec 1031)
                          // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `-((1 : ℝ) - cos x - sin x) + -sin x ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                          cert_identity_34(S, x);  // cert: add_lt_of_le_of_neg
                          cert_identity_35(S, x);  // cert: Linarith.lt_of_eq_of_lt
                          // UNCITED-APPLIED internal ×78 [exec 1031 4822-4830]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.neg_mul ×4 (+29 more heads, ×50) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                        }
                        // [TACTIC: exact Or.inr h₅₉₄]
                        assert (Real.cos(x) == 1.0);
                        assert ((Real.cos(x) == 0.0) || (Real.cos(x) == 1.0));  // sub-goal of `cases` (Lean state) // @tac 4783-4830 // @tac 4845-4868
                      }
                    }
                    // [TACTIC: exact h₅₉₁]
                    assert ((Real.cos(x) == 0.0) || (Real.cos(x) == 1.0));
                  }
                  // `cases`: 2 cases (Lean states); 2 branch bodies
                  if ((Real.cos(x) == 0.0)) {  // sub-goal of `cases` (Lean state)
                    // have h₅₁₀ : Real.cos ( x ) == 0  [type from Lean state]
                    assert (Real.cos(x) == 0.0) by {
                      // [TACTIC: exact h₅₉]
                      assert (Real.cos(x) == 0.0);
                    }
                    // have h₅₁₁ : Real.sin ( x ) == 1  [type from Lean state]
                    assert (Real.sin(x) == 1.0) by { // @tac 5063-5137
                      // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5063-5137 exec 1083)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                      SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                      cert_identity_36(S, x);  // cert: add_lt_of_le_of_neg
                      cert_identity_37(S, x);  // cert: Linarith.lt_of_eq_of_lt
                      // UNCITED-APPLIED internal ×193 [exec 1083 5063-5137]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1090 5063-5137]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1098 5063-5137]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1100 5063-5137]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                      SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                    }
                    // have h₅₁₂ : x == Real.pi / 2  [type from Lean state]
                    assert (x == (Real.pi() / 2.0)) by { // @tac 5200-5243 // @tac 5256-5369 // @tac 5382-7990 // @tac 8003-8019
                      // have h₅₁₃ : Real.cos ( x ) == 0  [type from Lean state]
                      assert (Real.cos(x) == 0.0) by {
                        // [TACTIC: exact h₅₉]
                        assert (Real.cos(x) == 0.0);
                      }
                      // have h₅₁₄ : Real.sin ( x ) == 1  [type from Lean state]
                      assert (Real.sin(x) == 1.0) by { // @tac 5295-5369
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5295-5369 exec 1147)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                        SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                        // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                        cert_identity_38(S, x);  // cert: add_lt_of_le_of_neg
                        cert_identity_39(S, x);  // cert: Linarith.lt_of_eq_of_lt
                        // UNCITED-APPLIED internal ×193 [exec 1147 5295-5369]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 1154 5295-5369]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 1162 5295-5369]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 1164 5295-5369]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                        SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      }
                      // have h₅₁₅ : x == Real.pi / 2  [type from Lean state]
                      assert (x == (Real.pi() / 2.0)) by { // @tac 5436-5482 // @tac 5497-5613 // @tac 5628-7956 // @tac 7971-7990
                        // have h₅₁₅₁ : Real.cos ( x ) == 0  [type from Lean state]
                        assert (Real.cos(x) == 0.0) by {
                          // [TACTIC: exact h₅₉]
                          assert (Real.cos(x) == 0.0);
                        }
                        // have h₅₁₅₂ : Real.sin ( x ) == 1  [type from Lean state]
                        assert (Real.sin(x) == 1.0) by { // @tac 5539-5613
                          // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5539-5613 exec 1211)
                          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                          SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                          // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                          cert_identity_40(S, x);  // cert: add_lt_of_le_of_neg
                          cert_identity_41(S, x);  // cert: Linarith.lt_of_eq_of_lt
                          // UNCITED-APPLIED internal ×193 [exec 1211 5539-5613]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1218 5539-5613]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1226 5539-5613]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1228 5539-5613]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                          SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                        }
                        // have h₅₁₅₃ : x == Real.pi / 2  [type from Lean state]
                        assert (x == (Real.pi() / 2.0)) by { // @tac 5747-5793 // @tac 5810-5926 // @tac 5943-7920 // @tac 7937-7956
                          // have h₅₁₅₄ : Real.cos ( x ) == 0  [type from Lean state]
                          assert (Real.cos(x) == 0.0) by {
                            // [TACTIC: exact h₅₉]
                            assert (Real.cos(x) == 0.0);
                          }
                          // have h₅₁₅₅ : Real.sin ( x ) == 1  [type from Lean state]
                          assert (Real.sin(x) == 1.0) by { // @tac 5852-5926
                            // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5852-5926 exec 1275)
                            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                            SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                            // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                            // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                            cert_identity_42(S, x);  // cert: add_lt_of_le_of_neg
                            cert_identity_43(S, x);  // cert: Linarith.lt_of_eq_of_lt
                            // UNCITED-APPLIED internal ×193 [exec 1275 5852-5926]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1282 5852-5926]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1290 5852-5926]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1292 5852-5926]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                            SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                          }
                          // have h₅₁₅₆ : x == Real.pi / 2  [type from Lean state]
                          assert (x == (Real.pi() / 2.0)) by { // @tac 6088-6134 // @tac 6153-6269 // @tac 6288-7882 // @tac 7901-7920
                            // have h₅₁₅₇ : Real.cos ( x ) == 0  [type from Lean state]
                            assert (Real.cos(x) == 0.0) by {
                              // [TACTIC: exact h₅₉]
                              assert (Real.cos(x) == 0.0);
                            }
                            // have h₅₁₅₈ : Real.sin ( x ) == 1  [type from Lean state]
                            assert (Real.sin(x) == 1.0) by { // @tac 6195-6269
                              // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6195-6269 exec 1339)
                              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                              SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                              // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                              // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                              cert_identity_44(S, x);  // cert: add_lt_of_le_of_neg
                              cert_identity_45(S, x);  // cert: Linarith.lt_of_eq_of_lt
                              // UNCITED-APPLIED internal ×193 [exec 1339 6195-6269]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                              // UNCITED-APPLIED internal ×5 [exec 1346 6195-6269]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              // UNCITED-APPLIED internal ×5 [exec 1354 6195-6269]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              // UNCITED-APPLIED internal ×5 [exec 1356 6195-6269]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                              // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                              // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                            }
                            // have h₅₁₅₉ : x == Real.pi / 2  [type from Lean state]
                            assert (x == (Real.pi() / 2.0)) by { // @tac 6415-6461 // @tac 6482-6598 // @tac 6619-7842 // @tac 7863-7882
                              // have h₅₁₆₀ : Real.cos ( x ) == 0  [type from Lean state]
                              assert (Real.cos(x) == 0.0) by {
                                // [TACTIC: exact h₅₉]
                                assert (Real.cos(x) == 0.0);
                              }
                              // have h₅₁₆₁ : Real.sin ( x ) == 1  [type from Lean state]
                              assert (Real.sin(x) == 1.0) by { // @tac 6524-6598
                                // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6524-6598 exec 1403)
                                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                                SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                                // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                                // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                                // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                                cert_identity_46(S, x);  // cert: add_lt_of_le_of_neg
                                cert_identity_47(S, x);  // cert: Linarith.lt_of_eq_of_lt
                                // UNCITED-APPLIED internal ×193 [exec 1403 6524-6598]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                                // UNCITED-APPLIED internal ×5 [exec 1410 6524-6598]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED-APPLIED internal ×5 [exec 1418 6524-6598]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED-APPLIED internal ×5 [exec 1420 6524-6598]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                              }
                              // have h₅₁₆₂ : x == Real.pi / 2  [type from Lean state]
                              assert (x == (Real.pi() / 2.0)) by { // @tac 6772-6818 // @tac 6841-6957 // @tac 6980-7800 // @tac 7823-7842
                                // have h₅₁₆₃ : Real.cos ( x ) == 0  [type from Lean state]
                                assert (Real.cos(x) == 0.0) by {
                                  // [TACTIC: exact h₅₉]
                                  assert (Real.cos(x) == 0.0);
                                }
                                // have h₅₁₆₄ : Real.sin ( x ) == 1  [type from Lean state]
                                assert (Real.sin(x) == 1.0) by { // @tac 6883-6957
                                  // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6883-6957 exec 1467)
                                  // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -cos x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.cos(x) * Real.cos(x))); (2.0 > 0.0)
                                  SqNonneg(Real.cos(x)); assert (0.0 <= (Real.cos(x) * Real.cos(x)));  // cert: sq_nonneg
                                  // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 - Real.cos(x)) - Real.sin(x))) == 0.0); (2.0 > 0.0)
                                  // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) - sin x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1.0 - Real.sin(x)) < 0.0); (2.0 > 0.0)
                                  // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) - cos x - sin x + cos x = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                                  // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -cos x ^ (2 : ℕ) + (2 : ℝ) * -((1 : ℝ) - cos x - sin x) + (((1 : ℝ) - cos x) ^ (2 : ℕ) - ((1 : ℝ) - cos x ^ (…`
                                  cert_identity_48(S, x);  // cert: add_lt_of_le_of_neg
                                  cert_identity_49(S, x);  // cert: Linarith.lt_of_eq_of_lt
                                  // UNCITED-APPLIED internal ×193 [exec 1467 6883-6957]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8, Mathlib.Tactic.Ring.mul_add ×8 (+57 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                                  // UNCITED-APPLIED internal ×5 [exec 1474 6883-6957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                  // UNCITED-APPLIED internal ×5 [exec 1482 6883-6957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                  // UNCITED-APPLIED internal ×5 [exec 1484 6883-6957]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                  // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                  // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                  // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                  SqNonneg(Real.cos(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                                }
                                // have h₅₁₆₅ : x == Real.pi / 2  [type from Lean state]
                                assert (x == (Real.pi() / 2.0)) by { // @tac 7115-7228 // @tac 7253-7366 // @tac 7391-7756 // @tac 7781-7800
                                  // have h₅₁₆₆ : Real.cos ( x ) == Real.cos ( ( Real.pi / 2 ) )  [type from Lean state]
                                  assert (Real.cos(x) == Real.cos((Real.pi() / 2.0))); // @tac 7204-7228
                                    // [TACTIC: «Norm_num[_]At___» [ h₅₁₆₃ ]]
                                  // UNCITED-APPLIED internal ×6 [exec 1519 7204-7228]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+2 more heads, ×2)
                                  // have h₅₁₆₇ : Real.sin ( x ) == Real.sin ( ( Real.pi / 2 ) )  [type from Lean state]
                                  assert (Real.sin(x) == Real.sin((Real.pi() / 2.0))); // @tac 7342-7366
                                    // [TACTIC: «Norm_num[_]At___» [ h₅₁₆₄ ]]
                                  // UNCITED-APPLIED internal ×6 [exec 1536 7342-7366]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+2 more heads, ×2)
                                  // have h₅₁₆₈ : x == Real.pi / 2  [type from Lean state]
                                  assert (x == (Real.pi() / 2.0)) by { // @tac 7460-7756 // @tac 7460-7698 // @tac 7460-7628
                                    assert (0.0 <= x) by {  // sub-goal of `by` (Lean state) // @tac 7490-7524
                                      // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7490-7524 exec 1568)
                                      cert_identity_50(S, x);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×26 [exec 1568 7490-7524]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+18 more heads, ×18) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert (x <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 7529-7563
                                      // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7529-7563 exec 1581)
                                      cert_identity_51(S, x);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×40 [exec 1581 7529-7563]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+22 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert (0.0 <= (Real.pi() / 2.0)) by {  // sub-goal of `by` (Lean state) // @tac 7573-7595
                                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7573-7595 exec 1594)
                                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) < 0.0); (2.0 > 0.0)
                                      // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                      cert_identity_52(S, x);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×51 [exec 1594 7573-7595]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, CancelDenoms.div_subst ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×2, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+31 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×14 [exec 1595 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×6 [exec 1596 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×5 [exec 1597 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert ((Real.pi() / 2.0) <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 7600-7622
                                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7600-7622 exec 1610)
                                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - (Real.pi() / 2.0)) < 0.0); (2.0 > 0.0)
                                      // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                      cert_identity_53(S, x);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×70 [exec 1610 7600-7622]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, congrArg ×2, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+35 more heads, ×53) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×14 [exec 1611 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×6 [exec 1612 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×5 [exec 1613 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    // [TACTIC: «_<;>_» ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 <;> simp_all [ h₅₁₆₆ , h₅₁₆₇ ] simp_all [ h₅₁₆₆ , h₅₁₆₇ ] simp_all [ h₅₁₆₆ , h₅₁₆₇ ] <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
                                    // [TACTIC: choice ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1]
                                    // UNCITED injOn_cos.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
                                    // NOT APPLIED Real.pi_pos: named here, but no record of Lean's proof at this tactic applies it
                                    // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Icc (0 : ℝ) π, cos, x, π / (2 : ℝ)): library counterpart RealInjOnCosEqIff (Mathlib `injOn_cos.eq_iff`) exists, but the translation of this tactic states no such instance [exec 1563 7460-7628]
                                    assert (Real.cos(x) == Real.cos((Real.pi() / 2.0)));  // sub-goal of `simp_all` (Lean state) // @tac 7659-7698
                                    // UNCITED-APPLIED internal ×6 [exec 1630 7659-7698]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                                  }
                                  // [TACTIC: exact h₅₁₆₈]
                                  assert (x == (Real.pi() / 2.0));
                                }
                                // [TACTIC: exact h₅₁₆₅]
                                assert (x == (Real.pi() / 2.0));
                              }
                              // [TACTIC: exact h₅₁₆₂]
                              assert (x == (Real.pi() / 2.0));
                            }
                            // [TACTIC: exact h₅₁₅₉]
                            assert (x == (Real.pi() / 2.0));
                          }
                          // [TACTIC: exact h₅₁₅₆]
                          assert (x == (Real.pi() / 2.0));
                        }
                        // [TACTIC: exact h₅₁₅₃]
                        assert (x == (Real.pi() / 2.0));
                      }
                      // [TACTIC: exact h₅₁₅]
                      assert (x == (Real.pi() / 2.0));
                    }
                    // [TACTIC: exact Or.inr h₅₁₂]
                    assert (x == (Real.pi() / 2.0));
                    assert ((x == 0.0) || (x == (Real.pi() / 2.0)));  // sub-goal of `cases` (Lean state) // @tac 4958-5001 // @tac 5012-5137 // @tac 5148-8019 // @tac 8030-8053
                  }
                  if ((Real.cos(x) == 1.0)) {  // sub-goal of `cases` (Lean state)
                    // have h₅₁₀ : Real.cos ( x ) == 1  [type from Lean state]
                    assert (Real.cos(x) == 1.0) by {
                      // [TACTIC: exact h₅₉]
                      assert (Real.cos(x) == 1.0);
                    }
                    // have h₅₁₁ : Real.sin ( x ) == 0  [type from Lean state]
                    assert (Real.sin(x) == 0.0) by { // @tac 8194-8268
                      // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8194-8268 exec 1676)
                      SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
                      SqNonneg(Real.sin(x)); assert (0.0 <= (Real.sin(x) * Real.sin(x)));  // cert: sq_nonneg
                      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * sin x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (Real.sin(x) < 0.0); (2.0 > 0.0)
                      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) - cos x - sin x) + -(cos x - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) + (2 : ℝ) * ((1 : ℝ) - cos x - sin x) + (sin x ^ (2 : ℕ) + cos x ^ (2 :…`
                      // UNCITED-APPLIED add_nonpos: certificate sum `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_54(S, x);  // cert: add_lt_of_le_of_neg
                      cert_identity_55(S, x);  // cert: Linarith.lt_of_eq_of_lt
                      // UNCITED-APPLIED internal ×207 [exec 1676 8194-8268]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, neg_nonpos_of_nonneg ×2, neg_eq_zero ×2, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_neg_of_pos ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8 (+56 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
                      // UNCITED-APPLIED internal ×5 [exec 1683 8194-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 1685 8194-8268]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                      SqNonneg((1.0 - Real.cos(x)));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      SqNonneg(Real.sin(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                    }
                    // have h₅₁₂ : x == 0  [type from Lean state]
                    assert (x == 0.0) by { // @tac 8321-8364 // @tac 8377-8490 // @tac 8503-9846 // @tac 9859-9875
                      // have h₅₁₃ : Real.cos ( x ) == 1  [type from Lean state]
                      assert (Real.cos(x) == 1.0) by {
                        // [TACTIC: exact h₅₉]
                        assert (Real.cos(x) == 1.0);
                      }
                      // have h₅₁₄ : Real.sin ( x ) == 0  [type from Lean state]
                      assert (Real.sin(x) == 0.0) by { // @tac 8416-8490
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8416-8490 exec 1739)
                        SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
                        SqNonneg(Real.sin(x)); assert (0.0 <= (Real.sin(x) * Real.sin(x)));  // cert: sq_nonneg
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * sin x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (Real.sin(x) < 0.0); (2.0 > 0.0)
                        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) - cos x - sin x) + -(cos x - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                        // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) + (2 : ℝ) * ((1 : ℝ) - cos x - sin x) + (sin x ^ (2 : ℕ) + cos x ^ (2 :…`
                        // UNCITED-APPLIED add_nonpos: certificate sum `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_56(S, x);  // cert: add_lt_of_le_of_neg
                        cert_identity_57(S, x);  // cert: Linarith.lt_of_eq_of_lt
                        // UNCITED-APPLIED internal ×207 [exec 1739 8416-8490]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, neg_nonpos_of_nonneg ×2, neg_eq_zero ×2, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_neg_of_pos ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8 (+56 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
                        // UNCITED-APPLIED internal ×5 [exec 1746 8416-8490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 1748 8416-8490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                        // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                        SqNonneg((1.0 - Real.cos(x)));  // cite: sq_nonneg [applied by the tactic, not named in it]
                        SqNonneg(Real.sin(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                      }
                      // have h₅₁₅ : x == 0  [type from Lean state]
                      assert (x == 0.0) by { // @tac 8547-8593 // @tac 8608-8724 // @tac 8739-9812 // @tac 9827-9846
                        // have h₅₁₅₁ : Real.cos ( x ) == 1  [type from Lean state]
                        assert (Real.cos(x) == 1.0) by {
                          // [TACTIC: exact h₅₉]
                          assert (Real.cos(x) == 1.0);
                        }
                        // have h₅₁₅₂ : Real.sin ( x ) == 0  [type from Lean state]
                        assert (Real.sin(x) == 0.0) by { // @tac 8650-8724
                          // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8650-8724 exec 1802)
                          SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
                          SqNonneg(Real.sin(x)); assert (0.0 <= (Real.sin(x) * Real.sin(x)));  // cert: sq_nonneg
                          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0); (2.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * sin x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (Real.sin(x) < 0.0); (2.0 > 0.0)
                          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) - cos x - sin x) + -(cos x - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                          // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) + (2 : ℝ) * ((1 : ℝ) - cos x - sin x) + (sin x ^ (2 : ℕ) + cos x ^ (2 :…`
                          // UNCITED-APPLIED add_nonpos: certificate sum `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                          cert_identity_58(S, x);  // cert: add_lt_of_le_of_neg
                          cert_identity_59(S, x);  // cert: Linarith.lt_of_eq_of_lt
                          // UNCITED-APPLIED internal ×207 [exec 1802 8650-8724]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, neg_nonpos_of_nonneg ×2, neg_eq_zero ×2, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_neg_of_pos ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8 (+56 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
                          // UNCITED-APPLIED internal ×5 [exec 1809 8650-8724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×5 [exec 1811 8650-8724]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                          // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                          SqNonneg((1.0 - Real.cos(x)));  // cite: sq_nonneg [applied by the tactic, not named in it]
                          SqNonneg(Real.sin(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                        }
                        // have h₅₁₅₃ : x == 0  [type from Lean state]
                        assert (x == 0.0) by { // @tac 8845-8891 // @tac 8908-9024 // @tac 9041-9776 // @tac 9793-9812
                          // have h₅₁₅₄ : Real.cos ( x ) == 1  [type from Lean state]
                          assert (Real.cos(x) == 1.0) by {
                            // [TACTIC: exact h₅₉]
                            assert (Real.cos(x) == 1.0);
                          }
                          // have h₅₁₅₅ : Real.sin ( x ) == 0  [type from Lean state]
                          assert (Real.sin(x) == 0.0) by { // @tac 8950-9024
                            // [TACTIC: «Nlinarith[_]At___» [ Real.sin_sq_add_cos_sq x , Real.sin_le_one x , Real.cos_le_one x ]]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8950-9024 exec 1865)
                            SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
                            SqNonneg(Real.sin(x)); assert (0.0 <= (Real.sin(x) * Real.sin(x)));  // cert: sq_nonneg
                            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((1 : ℝ) - cos x - sin x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 - Real.cos(x)) - Real.sin(x)) == 0.0); (2.0 > 0.0)
                            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * sin x < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (Real.sin(x) < 0.0); (2.0 > 0.0)
                            // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) - cos x - sin x) + -(cos x - (1 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                            // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) + (2 : ℝ) * ((1 : ℝ) - cos x - sin x) + (sin x ^ (2 : ℕ) + cos x ^ (2 :…`
                            // UNCITED-APPLIED add_nonpos: certificate sum `-((1 : ℝ) - cos x) ^ (2 : ℕ) + -sin x ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                            cert_identity_60(S, x);  // cert: add_lt_of_le_of_neg
                            cert_identity_61(S, x);  // cert: Linarith.lt_of_eq_of_lt
                            // UNCITED-APPLIED internal ×207 [exec 1865 8950-9024]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×3, neg_nonpos_of_nonneg ×2, neg_eq_zero ×2, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_neg_of_pos ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×8 (+56 more heads, ×165) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×2])
                            // UNCITED-APPLIED internal ×5 [exec 1872 8950-9024]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1874 8950-9024]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                            // NOT APPLIED Real.sin_sq_add_cos_sq: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            // NOT APPLIED Real.sin_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            // NOT APPLIED Real.cos_le_one: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                            SqNonneg((1.0 - Real.cos(x)));  // cite: sq_nonneg [applied by the tactic, not named in it]
                            SqNonneg(Real.sin(x));  // cite: sq_nonneg [applied by the tactic, not named in it]
                          }
                          // have h₅₁₅₆ : x == 0  [type from Lean state]
                          assert (x == 0.0) by { // @tac 9173-9268 // @tac 9287-9382 // @tac 9401-9738 // @tac 9757-9776
                            // have h₅₁₅₇ : Real.cos ( x ) == Real.cos ( 0 )  [type from Lean state]
                            assert (Real.cos(x) == Real.cos(0.0)); // @tac 9244-9268
                              // [TACTIC: «Norm_num[_]At___» [ h₅₁₅₄ ]]
                            // UNCITED-APPLIED internal ×6 [exec 1916 9244-9268]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+2 more heads, ×2)
                            // have h₅₁₅₈ : Real.sin ( x ) == Real.sin ( 0 )  [type from Lean state]
                            assert (Real.sin(x) == Real.sin(0.0)); // @tac 9358-9382
                              // [TACTIC: «Norm_num[_]At___» [ h₅₁₅₅ ]]
                            // UNCITED-APPLIED internal ×6 [exec 1933 9358-9382]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+2 more heads, ×2)
                            // have h₅₁₅₉ : x == 0  [type from Lean state]
                            assert (x == 0.0) by { // @tac 9454-9738 // @tac 9454-9686 // @tac 9454-9622
                              assert (0.0 <= x) by {  // sub-goal of `by` (Lean state) // @tac 9484-9518
                                // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9484-9518 exec 1965)
                                cert_identity_62(S, x);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×26 [exec 1965 9484-9518]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+18 more heads, ×18) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              assert (x <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 9523-9557
                                // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9523-9557 exec 1978)
                                cert_identity_63(S, x);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×40 [exec 1978 9523-9557]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+22 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              assert (0.0 <= 0.0) by {  // sub-goal of `by` (Lean state) // @tac 9567-9589
                                // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                // UNCITED-APPLIED internal ×4 [exec 1991 9567-9589]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1999)]
                                // UNCITED-APPLIED internal ×5 [exec 1999 9567-9589]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.cast_zero ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              }
                              assert (0.0 <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 9594-9616
                                // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9594-9616 exec 2004)
                                // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                cert_identity_64(S, x);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×38 [exec 2004 9594-9616]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2, Mathlib.Tactic.Ring.neg_mul ×2 (+21 more heads, ×24) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              // [TACTIC: «_<;>_» ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 <;> simp_all [ h₅₁₅₇ , h₅₁₅₈ ] simp_all [ h₅₁₅₇ , h₅₁₅₈ ] simp_all [ h₅₁₅₇ , h₅₁₅₈ ] <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
                              // [TACTIC: choice ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1]
                              // UNCITED injOn_cos.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
                              // NOT APPLIED Real.pi_pos: named here, but no record of Lean's proof at this tactic applies it
                              // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Icc (0 : ℝ) π, cos, x, (0 : ℝ)): library counterpart RealInjOnCosEqIff (Mathlib `injOn_cos.eq_iff`) exists, but the translation of this tactic states no such instance [exec 1960 9454-9622]
                              assert (Real.cos(x) == Real.cos(0.0));  // sub-goal of `simp_all` (Lean state) // @tac 9647-9686
                              // UNCITED-APPLIED internal ×6 [exec 2021 9647-9686]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                            }
                            // [TACTIC: exact h₅₁₅₉]
                            assert (x == 0.0);
                          }
                          // [TACTIC: exact h₅₁₅₆]
                          assert (x == 0.0);
                        }
                        // [TACTIC: exact h₅₁₅₃]
                        assert (x == 0.0);
                      }
                      // [TACTIC: exact h₅₁₅]
                      assert (x == 0.0);
                    }
                    // [TACTIC: exact Or.inl h₅₁₂]
                    assert (x == 0.0);
                    assert ((x == 0.0) || (x == (Real.pi() / 2.0)));  // sub-goal of `cases` (Lean state) // @tac 8089-8132 // @tac 8143-8268 // @tac 8279-9875 // @tac 9886-9909
                  }
                }
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((x == 0.0)) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: simpAll]
                  assert ((x == 0.0) || (x == (Real.pi() / 2.0)));  // sub-goal of `cases` (Lean state) // @tac 9960-9968
                  // UNCITED-APPLIED internal ×8 [exec 2038 9960-9968]: applications made inside the tactic's own automation, not stated — true_or ×1; machinery/glue: congrArg ×3, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                }
                if ((x == (Real.pi() / 2.0))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: simpAll]
                  assert ((x == 0.0) || (x == (Real.pi() / 2.0)));  // sub-goal of `cases` (Lean state) // @tac 9997-10005
                  // UNCITED-APPLIED internal ×10 [exec 2042 9997-10005]: applications made inside the tactic's own automation, not stated — or_false ×1, or_true ×1; machinery/glue: congrArg ×4, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                }
              }
            }
          }
          assert (((x == 0.0) || (x == (Real.pi() / 2.0))) ==> ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))))))) by {  // sub-goal of `constructor` (Lean state) // @tac 10109-10116 // @tac 10010-11251
            // intro h: P → Q  (N7 if-wrapper)
            if ((x == 0.0) || (x == (Real.pi() / 2.0))) {
              assert ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x)))))) by {  // sub-goal before `cases` (Lean state) // @tac 10123-11251
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((x == 0.0)) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: rwSeq [ h ]]
                  // UNCITED-APPLIED congrArg(x, (0 : ℝ), fun (_a : ℝ) => (0 : ℝ) ≤ _a ∧ _a ≤ π ∧ sin (π / (2 : ℝ) * cos _a) = …): no library counterpart (not stated) [exec 2057 10161-10167]
                  assert ((0.0 <= 0.0) && ((0.0 <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(0.0))) == Real.cos(((Real.pi() / 2.0) * Real.sin(0.0)))))) by {  // sub-goal before `constructor` (Lean state) // @tac 10176-10187
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0.0 <= 0.0) by {  // sub-goal of `constructor` (Lean state) // @tac 10226-10248 // @tac 10196-10248
                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                      // UNCITED-APPLIED internal ×4 [exec 2089 10226-10248]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2090)]
                      // UNCITED-APPLIED internal ×5 [exec 2090 10226-10248]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.cast_zero ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    assert ((0.0 <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(0.0))) == Real.cos(((Real.pi() / 2.0) * Real.sin(0.0))))) by {  // sub-goal of `constructor` (Lean state) // @tac 10260-10271 // @tac 10257-10584
                      // [TACTIC: constructor]
                      // `constructor`: 2 cases (Lean states); 2 branch bodies
                      assert (0.0 <= Real.pi()) by {  // sub-goal of `constructor` (Lean state) // @tac 10315-10337 // @tac 10282-10337
                        // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10315-10337 exec 2100)
                        cert_identity_65(S);  // cert: Left.add_neg
                        // UNCITED-APPLIED internal ×6 [exec 2100 10315-10337]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, lt_zero_of_zero_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2101)]
                        // UNCITED-APPLIED internal ×20 [exec 2101 10315-10337]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (Real.sin(((Real.pi() / 2.0) * Real.cos(0.0))) == Real.cos(((Real.pi() / 2.0) * Real.sin(0.0)))) by {  // sub-goal of `constructor` (Lean state) // @tac 10416-10561 // @tac 10348-10584 // @tac 10574-10584
                        // have h₂ : Real.sin ( ( Real.pi / 2 * Real.cos ( 0 ) ) ) == Real.cos ( ( Real.pi   [type from Lean state]
                        vc_amc12a_2021_p19_L1668(S, x);  /* [IN-FILE CHECK] the closed lemma for line 1668 */
                        assert (Real.sin(((Real.pi() / 2.0) * Real.cos(0.0))) == Real.cos(((Real.pi() / 2.0) * Real.sin(0.0)))); // @tac 10522-10561
                          // [TACTIC: «Norm_num[_]At___» [ Real.cos_zero , Real.sin_zero ]]
                          // UNCITED Real.cos_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                          // UNCITED Real.sin_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := π / (2 : ℝ))
                          // UNCITED-APPLIED internal ×15 [exec 2122 10522-10561]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: Eq.trans ×5, congrArg ×5, of_eq_true ×1, congr ×1 (+2 more heads, ×2)
                        // [TACTIC: exact h₂]
                        assert (Real.sin(((Real.pi() / 2.0) * Real.cos(0.0))) == Real.cos(((Real.pi() / 2.0) * Real.sin(0.0))));
                      }
                    }
                  }
                  assert ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))))));  // sub-goal of `cases` (Lean state) // @tac 10161-10167
                }
                if ((x == (Real.pi() / 2.0))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: rwSeq [ h ]]
                  // UNCITED-APPLIED congrArg(x, π / (2 : ℝ), fun (_a : ℝ) => (0 : ℝ) ≤ _a ∧ _a ≤ π ∧ sin (π / (2 : ℝ) * cos _a) = …): no library counterpart (not stated) [exec 2131 10610-10616]
                  assert ((0.0 <= (Real.pi() / 2.0)) && (((Real.pi() / 2.0) <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos((Real.pi() / 2.0)))) == Real.cos(((Real.pi() / 2.0) * Real.sin((Real.pi() / 2.0))))))) by {  // sub-goal before `constructor` (Lean state) // @tac 10625-10636
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0.0 <= (Real.pi() / 2.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 10680-10702 // @tac 10645-10702
                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10680-10702 exec 2163)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) < 0.0); (2.0 > 0.0)
                      cert_identity_66(S);  // cert: Left.add_neg
                      // UNCITED-APPLIED internal ×9 [exec 2163 10680-10702]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, CancelDenoms.div_subst ×1, lt_zero_of_zero_gt ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                      // UNCITED-APPLIED internal ×6 [exec 2165 10680-10702]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2164, 2165 / `ring1` exec 2170)]
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2166 / `ring1` exec 2170)]
                      // UNCITED-APPLIED internal ×30 [exec 2170 10680-10702]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+25 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×14 [exec 2164 10680-10702]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                      // UNCITED-APPLIED internal ×5 [exec 2166 10680-10702]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                    assert (((Real.pi() / 2.0) <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos((Real.pi() / 2.0)))) == Real.cos(((Real.pi() / 2.0) * Real.sin((Real.pi() / 2.0)))))) by {  // sub-goal of `constructor` (Lean state) // @tac 10714-10725 // @tac 10711-11251
                      // [TACTIC: constructor]
                      // `constructor`: 2 cases (Lean states); 2 branch bodies
                      assert ((Real.pi() / 2.0) <= Real.pi()) by {  // sub-goal of `constructor` (Lean state) // @tac 10774-10796 // @tac 10736-10796
                        // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10774-10796 exec 2180)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - (Real.pi() / 2.0)) < 0.0); (2.0 > 0.0)
                        cert_identity_67(S);  // cert: Left.add_neg
                        // UNCITED-APPLIED internal ×10 [exec 2180 10774-10796]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
                        // UNCITED-APPLIED internal ×6 [exec 2182 10774-10796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2181, 2182 / `ring1` exec 2187)]
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2183 / `ring1` exec 2187)]
                        // UNCITED-APPLIED internal ×48 [exec 2187 10774-10796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.add_mul ×2 (+31 more heads, ×39) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 2181 10774-10796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×5 [exec 2183 10774-10796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                      assert (Real.sin(((Real.pi() / 2.0) * Real.cos((Real.pi() / 2.0)))) == Real.cos(((Real.pi() / 2.0) * Real.sin((Real.pi() / 2.0))))) by {  // sub-goal of `constructor` (Lean state) // @tac 10889-11228 // @tac 10807-11251 // @tac 11241-11251
                        // have h₂ : Real.sin ( ( Real.pi / 2 * Real.cos ( ( Real.pi / 2 ) ) ) ) == Real.co  [type from Lean state]
                        assert (Real.sin(((Real.pi() / 2.0) * Real.cos((Real.pi() / 2.0)))) == Real.cos(((Real.pi() / 2.0) * Real.sin((Real.pi() / 2.0))))) by { // @tac 11019-11072 // @tac 11087-11140 // @tac 11155-11228 // @tac 11155-11170
                          // have h₃ : Real.cos ( ( Real.pi / 2 ) ) == 0  [type from Lean state]
                          assert (Real.cos((Real.pi() / 2.0)) == 0.0); // @tac 11064-11072
                            // [TACTIC: «Norm_num[_]At___»]
                          // UNCITED-APPLIED internal ×5 [exec 2224 11064-11072]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                          // have h₄ : Real.sin ( ( Real.pi / 2 ) ) == 1  [type from Lean state]
                          assert (Real.sin((Real.pi() / 2.0)) == 1.0); // @tac 11132-11140
                            // [TACTIC: «Norm_num[_]At___»]
                          // UNCITED-APPLIED internal ×5 [exec 2241 11132-11140]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (+1 more heads, ×1)
                          // [TACTIC: «_<;>_» [ h₃ , h₄ ] rw [ h₃ , h₄ ] <;> norm_num [ Real.sin_zero , Real.cos_zero ] norm_num [ Real.sin_zero , Real.cos_zero ]]
                          // [TACTIC: choice [ h₃ , h₄ ] rw [ h₃ , h₄ ]]
                          // UNCITED-APPLIED congrArg(cos (π / (2 : ℝ)), (0 : ℝ), fun (_a : ℝ) => sin (π / (2 : ℝ) * _a) = cos (π / (2 : ℝ) * sin (π / …): no library counterpart (not stated) [exec 2251 11155-11170]
                          // UNCITED-APPLIED congrArg(sin (π / (2 : ℝ)), (1 : ℝ), fun (_a : ℝ) => sin (π / (2 : ℝ) * (0 : ℝ)) = cos (π / (2 : ℝ) * _a)): no library counterpart (not stated) [exec 2251 11155-11170]
                          assert (Real.sin(((Real.pi() / 2.0) * 0.0)) == Real.cos(((Real.pi() / 2.0) * 1.0))) by {  // sub-goal of `norm_num` (Lean state) // @tac 11189-11228
                            // UNCITED Real.sin_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED Real.cos_zero: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                            // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := π / (2 : ℝ))
                            // UNCITED-APPLIED internal ×11 [exec 2287 11189-11228]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: Eq.trans ×3, congrArg ×3, of_eq_true ×1, congr ×1 (+2 more heads, ×2)
                          }
                        }
                        // [TACTIC: exact h₂]
                        assert (Real.sin(((Real.pi() / 2.0) * Real.cos((Real.pi() / 2.0)))) == Real.cos(((Real.pi() / 2.0) * Real.sin((Real.pi() / 2.0)))));
                      }
                    }
                  }
                  assert ((0.0 <= x) && ((x <= Real.pi()) && (Real.sin(((Real.pi() / 2.0) * Real.cos(x))) == Real.cos(((Real.pi() / 2.0) * Real.sin(x))))));  // sub-goal of `cases` (Lean state) // @tac 10610-10616
                }
              }
            }
          }
        }
      }
    }
    assert (forall x: real :: x in (S) <==> x in ({ 0.0, (Real.pi() / 2.0) }));  // precondition of FinsetExtReal (Lean: Finset.ext; `apply`: proved by the steps above)
    FinsetExtReal(S, { 0.0, (Real.pi() / 2.0) });  // cite: Finset.ext
  }
  // have h₂ : S.card == 2  [type from Lean state]
  assert (|S| == 2) by { // @tac 11290-11299
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(S, {(0 : ℝ), π / (2 : ℝ)}, fun (_a : Finset ℝ) => Finset.card _a = (2 : ℕ)): no library counterpart (not stated) [exec 2309 11290-11299]
    assert (|{ 0.0, (Real.pi() / 2.0) }| == 2) by {  // sub-goal before `have` (Lean state) // @tac 11353-11524 // @tac 11583-11883 // @tac 11583-11837 // @tac 11583-11810 // @tac 11583-11784 // @tac 11583-11720 // @tac 11583-11678 // @tac 11583-11651
      // have h₃ : 0 != Real.pi / 2  [type from Lean state]
      assert (0.0 != (Real.pi() / 2.0)) by { // @tac 11403-11441 // @tac 11448-11490 // @tac 11497-11524
        // have h₄ : Real.pi > 0  [type from Lean state]
        assert (Real.pi() > 0.0) by {
          // [TACTIC: exact Real.pi_pos]
          RealPiPos();  // cite: Real.pi_pos [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
        }
        // have h₅ : Real.pi / 2 > 0  [type from Lean state]
        assert ((Real.pi() / 2.0) > 0.0) by { // @tac 11482-11490
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11482-11490 exec 2380)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) <= 0.0); (2.0 > 0.0)
          cert_identity_68(S);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×9 [exec 2380 11482-11490]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, CancelDenoms.div_subst ×1, le_zero_of_zero_ge ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
          // UNCITED-APPLIED internal ×30 [exec 2384 11482-11490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+25 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 2381 11482-11490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 2382 11482-11490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2381, 2382 / `ring1` exec 2384)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2383 / `ring1` exec 2384)]
          // UNCITED-APPLIED internal ×5 [exec 2383 11482-11490]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // [TACTIC: «Linarith[_]At___» [ Real.pi_gt_three ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11497-11524 exec 2385)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) == 0.0); (2.0 > 0.0)
        cert_identity_69(S);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×9 [exec 2385 11497-11524]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1, CancelDenoms.div_subst ×1; machinery/glue: congrArg ×2, Not.intro ×1, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×6 [exec 2387 11497-11524]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2386, 2387 / `ring1` exec 2392)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2388 / `ring1` exec 2392)]
        // UNCITED-APPLIED Eq.symm(0.0, (Real.pi() / 2.0)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
        // UNCITED-APPLIED internal ×30 [exec 2392 11497-11524]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+25 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×14 [exec 2386 11497-11524]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 2388 11497-11524]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» [ Finset.card_insert_of_not_mem , Finset.mem_singleton , h₃ ] norm_num [ Finset.card_insert_of_not_mem , Finset.mem_singleton , h₃ ] <;> ( try norm_num norm_num ) <;> ( try linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ] ) <;> ( try field_simp [ Real.pi_ne_zero , Real.pi_pos.ne' ] field_simp [ Real.pi_ne_zero , Real.pi_pos.ne' ] ) <;> ( try ring_nf ring_nf ) <;> ( try norm_num norm_num ) <;> ( try linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ] )]
      // [TACTIC: «Norm_num[_]At___» [ Finset.card_insert_of_not_mem , Finset.mem_singleton , h₃ ]]
      // UNCITED Finset.mem_singleton: no Lean instance recorded (arguments unknown), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      // `norm_num` closed the goal; the rest of the chain did not run
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Linarith[_]At___» [ Real.pi_gt_three ]]
      // NOT RUN in Lean (no execution recorded): no lemma instances
      // [TACTIC: «Field_simp[_]At___» [ Real.pi_ne_zero , Real.pi_pos.ne' ]]
      // NOT RUN in Lean (no execution recorded): no lemma instances
      // [TACTIC: Ring_nfAt]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Linarith[_]At___» [ Real.pi_gt_three ]]
      // NOT RUN in Lean (no execution recorded): no lemma instances
      assert ((0.0) !in ({ (Real.pi() / 2.0) }));  // precondition of FinsetCardInsertOfNotMem (Lean: Finset.card_insert_of_not_mem)
      FinsetCardInsertOfNotMem(0.0, { (Real.pi() / 2.0) });  // cite: Finset.card_insert_of_not_mem
      // UNCITED-APPLIED internal ×16 [exec 2423 11583-11651]: applications made inside the tactic's own automation, not stated — Finset.card_singleton ×1; machinery/glue: congrArg ×4, Eq.trans ×2, Mathlib.Meta.NormNum.IsNat.to_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+5 more heads, ×5) (cited in this block, not counted here: Finset.card_insert_of_not_mem [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    }
  }
  // [TACTIC: exact h₂]
  assert (|S| == 2);
}



// ===== closed lemma for line 1668 (from closed/amc12a_2021_p19-1668.dfy) =====

lemma {:induction false} vc_amc12a_2021_p19_L1668(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires x_0_0_0_0 == 0.0
  requires 0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)) ==> x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires 0.0 <= 0.0
  requires 0.0 <= Real.pi()
  requires ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.pi() < x_0_0_0_0) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.pi() < x_0_0_0_0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (x_0_0_0_0 < 0.0) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (x_0_0_0_0 < 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((x_0_0_0_0 < 0.0) && (0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((x_0_0_0_0 < 0.0) && (0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((x_0_0_0_0 < 0.0) && (0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((x_0_0_0_0 < 0.0) && (0.0 <= x_0_0_0_0) && (Real.pi() < x_0_0_0_0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))) || ((x_0_0_0_0 < 0.0) && (0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || ((x_0_0_0_0 < 0.0) && (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))))
  ensures   Real.sin(Real.pi() / 2.0 * Real.cos(0.0)) == Real.cos(Real.pi() / 2.0 * Real.sin(0.0))
{
  RealCosZero(); RealSinZero(); RealSinPiDivTwo();  // Real.cos_zero, Real.sin_zero (named), Real.sin_pi_div_two (simp set)  // [ADDED]
}

