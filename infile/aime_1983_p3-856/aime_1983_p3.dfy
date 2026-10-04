// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/aime_1983_p3.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₂/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(f: real -> real, h1_set: set<real>)
  ensures (((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0)) - 25.0) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₂/h₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(f: real -> real, h1_set: set<real>)
  ensures ((25.0 - (((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0))) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(f: real -> real, h1_set: set<real>)
  ensures (-((25.0 * 1.0)) + 25.0) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(f: real -> real, h1_set: set<real>)
  ensures (-((5.0 * 1.0)) + 5.0) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(f: real -> real, h1_set: set<real>)
  ensures (((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0)) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(f: real -> real, h1_set: set<real>)
  ensures (-(((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0))) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁/h₃₂/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(f: real -> real, h1_set: set<real>)
  ensures (((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0)) - 25.0) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁/h₃₂/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(f: real -> real, h1_set: set<real>)
  ensures ((25.0 - (((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0))) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(f: real -> real, h1_set: set<real>)
  ensures (-((25.0 * 1.0)) + 25.0) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁/h₃₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(f: real -> real, h1_set: set<real>)
  ensures (-((5.0 * 1.0)) + 5.0) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(f: real -> real, h1_set: set<real>)
  ensures (((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0)) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(f: real -> real, h1_set: set<real>)
  ensures (-(((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0))) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(f: real -> real, h1_set: set<real>, x: real)
  ensures (-((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(f: real -> real, h1_set: set<real>, x: real)
  ensures ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) + -((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(f: real -> real, h1_set: set<real>, x: real)
  ensures (-((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(f: real -> real, h1_set: set<real>, x: real)
  ensures ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) + ((2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 30.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₉/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(f: real -> real, h1_set: set<real>, x: real)
  ensures (((x * x) + ((18.0 * x) + 45.0)) + -(((x * x) + ((18.0 * x) + 45.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(f: real -> real, h1_set: set<real>, x: real)
  ensures ((-((15.0 * 1.0)) + -((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * 0.0)))) + ((x * x) + ((18.0 * x) + 45.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(f: real -> real, h1_set: set<real>, x: real)
  ensures (((-((15.0 * 1.0)) + -((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + -((2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + ((x * x) + ((18.0 * x) + 45.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(f: real -> real, h1_set: set<real>, x: real)
  ensures (((-((15.0 * 1.0)) + -((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + -((2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + ((x * x) + ((18.0 * x) + 45.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(f: real -> real, h1_set: set<real>, x: real)
  ensures (((((30.0 * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + -((4.0 * ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0)))))) + ((((x * x) + ((18.0 * x) + 30.0)) * ((x * x) + ((18.0 * x) + 30.0))) - (4.0 * ((x * x) + ((18.0 * x) + 45.0))))) + ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + -((2.0 * ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * ((x * x) + ((18.0 * x) + 45.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(f: real -> real, h1_set: set<real>, x: real)
  ensures ((((-((30.0 * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + (4.0 * ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0))))) + ((4.0 * ((x * x) + ((18.0 * x) + 45.0))) - (((x * x) + ((18.0 * x) + 30.0)) * ((x * x) + ((18.0 * x) + 30.0))))) + -(((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))))) + (2.0 * ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * ((x * x) + ((18.0 * x) + 45.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_23(f: real -> real, h1_set: set<real>, x: real)
  requires (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))
  requires ((((x * x) + (18.0 * x)) + 20.0) <= 0.0)
  ensures ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0)) <= 0.0)
{
  MulNonneg(Real.sqrt(((x * x) + ((18.0 * x) + 45.0))), -((((x * x) + (18.0 * x)) + 20.0))); MulNeg(Real.sqrt(((x * x) + ((18.0 * x) + 45.0))), (((x * x) + (18.0 * x)) + 20.0)); assert (Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) * (-((((x * x) + (18.0 * x)) + 20.0))) == -((Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) * ((((x * x) + (18.0 * x)) + 20.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₁₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(f: real -> real, h1_set: set<real>, x: real)
  requires (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))
  requires (0.0 <= (((x * x) + (18.0 * x)) + 20.0))
  ensures (0.0 <= (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0)))
{
  MulNonneg(Real.sqrt(((x * x) + ((18.0 * x) + 45.0))), (((x * x) + (18.0 * x)) + 20.0));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(f: real -> real, h1_set: set<real>, x: real)
  ensures (((((-((20.0 * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + -((4.0 * ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0)))))) + -(((((x * x) + ((18.0 * x) + 30.0)) * ((x * x) + ((18.0 * x) + 30.0))) - (4.0 * ((x * x) + ((18.0 * x) + 45.0)))))) + (12.0 * (((x * x) + (18.0 * x)) + 20.0))) + ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))))) + (4.0 * (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(f: real -> real, h1_set: set<real>, x: real)
  ensures ((((((20.0 * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) + (4.0 * ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0))))) + ((((x * x) + ((18.0 * x) + 30.0)) * ((x * x) + ((18.0 * x) + 30.0))) - (4.0 * ((x * x) + ((18.0 * x) + 45.0))))) + -((12.0 * (((x * x) + (18.0 * x)) + 20.0)))) + -(((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))))) + -((4.0 * (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(f: real -> real, h1_set: set<real>, x: real)
  ensures ((-((((x * x) + (18.0 * x)) + 20.0)) + (((x - (-(9.0) + Real.sqrt(61.0))) * x) - ((x - (-(9.0) + Real.sqrt(61.0))) * (-(9.0) - Real.sqrt(61.0))))) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₅/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(f: real -> real, h1_set: set<real>, x: real)
  ensures (((((x * x) + (18.0 * x)) + 20.0) + (((x - (-(9.0) + Real.sqrt(61.0))) * (-(9.0) - Real.sqrt(61.0))) - ((x - (-(9.0) + Real.sqrt(61.0))) * x))) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₂/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(f: real -> real, h1_set: set<real>)
  ensures ((-((244.0 * 1.0)) + -((4.0 * ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)))) + (((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))) * ((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(f: real -> real, h1_set: set<real>)
  ensures ((20.0 - ((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0)))) + -(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(f: real -> real, h1_set: set<real>)
  ensures ((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) - 20.0) + ((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma aime_1983_p3(f: real -> real, h1_set: set<real>)
  requires (forall x: real :: (f(x) == (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))))
  requires (forall x: real :: ((x in h1_set) <==> (f(x) == 0.0)))
  ensures (Real.prod(h1_set, ((x: real) => x)) == 20.0) // @tac 451-1294 // @tac 1300-2143 // @tac 2149-3895 // @tac 3901-5021 // @tac 5027-5932 // @tac 5938-5948
{
  // have h₂ : ( - 9 + Real.sqrt 61 ) ∈ f ⁻¹' { 0 } { 0 }  [type from Lean state]
  assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by { // @tac 510-1087 // @tac 1092-1143 // @tac 1148-1276 // @tac 1281-1294
    // have h₂₁ : f ( ( - 9 + Real.sqrt ( 61 ) ) ) == 0  [type from Lean state]
    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by { // @tac 563-572
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f((-(9.0) + Real.sqrt(61.0))) == ((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0))))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f ((-9 : ℝ) + √(61 : ℝ)), ((-9 : ℝ) + √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) + √(61 : ℝ))…, fun (_a : ℝ) => _a = (0 : ℝ)): no library counterpart (not stated) [exec 40 563-572]
      assert (((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0))))) == 0.0) by {  // sub-goal before `have` (Lean state) // @tac 579-984 // @tac 991-1087 // @tac 991-1003
        // have h₂₂ : Real.sqrt ( ( ( - 9 + Real.sqrt ( 61 ) ) ^ 2 + ( 18 * ( - 9 + Real.sqr  [type from Lean state]
        assert (Real.sqrt((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0))) == 5.0) by { // @tac 682-849 // @tac 858-870
          // have h₂₃ : ( - 9 + Real.sqrt ( 61 ) ) ^ 2 + ( 18 * ( - 9 + Real.sqrt ( 61 ) ) + 4  [type from Lean state]
          assert ((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0)) == 25.0) by { // @tac 776-849
            assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 839-847
              // [TACTIC: «Norm_num[_]At___»]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 104 839-847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 776-849 exec 99)
            cert_identity_1(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            cert_identity_2(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×11 [exec 99 776-849]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
            // UNCITED-APPLIED internal ×167 [exec 106 776-849]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7, Mathlib.Meta.NormNum.IsInt.of_raw ×7 (+47 more heads, ×138) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 105, 106)]
            // UNCITED-APPLIED internal ×172 [exec 105 776-849]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7 (+47 more heads, ×141) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
            RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          }
          // [TACTIC: rwSeq [ h₂₃ ]]
          // UNCITED-APPLIED congrArg(((-9 : ℝ) + √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) + √(61 : ℝ))…, (25 : ℝ), fun (_a : ℝ) => √_a = (5 : ℝ)): no library counterpart (not stated) [exec 111 858-870]
          assert (Real.sqrt(25.0) == 5.0) by {  // sub-goal before `rw` (Lean state) // @tac 879-984 // @tac 879-906
            // [TACTIC: «_<;>_» [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ] <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
            // [TACTIC: choice [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ]]
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 147 879-906]
            assert ((5.0 * 5.0) == 25.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 911-984
              assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 974-982
                // [TACTIC: «Norm_num[_]At___»]
              }
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 188, 189)]
              // UNCITED-APPLIED internal ×7 [exec 182 911-984]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
              // UNCITED-APPLIED internal ×40 [exec 188 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+28 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×40 [exec 189 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+28 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= 25.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 911-984
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 198)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 199 / `ring1` exec 198)]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 911-984 exec 192)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (25.0 > 0.0)
              cert_identity_3(f, h1_set);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×8 [exec 192 911-984]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×32 [exec 198 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×2, Mathlib.Meta.NormNum.isInt_mul ×2 (+20 more heads, ×23) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 199 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= 5.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 911-984
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 208)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 209 / `ring1` exec 208)]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 911-984 exec 202)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (5.0 > 0.0)
              cert_identity_4(f, h1_set);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×8 [exec 202 911-984]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×32 [exec 208 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×2, Mathlib.Meta.NormNum.isInt_mul ×2 (+20 more heads, ×23) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 209 911-984]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= (25.0)) && (0.0 <= (5.0));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
            RealSqrtEqIffSqEq(25.0, 5.0);  // cite: Real.sqrt_eq_iff_sq_eq
          }
        }
        // [TACTIC: «_<;>_» [ h₂₂ ] rw [ h₂₂ ] <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
        // [TACTIC: choice [ h₂₂ ] rw [ h₂₂ ]]
        // UNCITED-APPLIED congrArg(√(((-9 : ℝ) + √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) + √(61 : ℝ…, (5 : ℝ), fun (_a : ℝ) => ((-9 : ℝ) + √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 :…): no library counterpart (not stated) [exec 219 991-1003]
        assert (((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0)) == 0.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1014-1087
          assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 1077-1085
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 259 1077-1085]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 260, 261)]
          assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1014-1087 exec 254)
          cert_identity_5(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          cert_identity_6(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×10 [exec 254 1014-1087]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, sub_eq_zero_of_eq ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×182 [exec 260 1014-1087]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8 (+48 more heads, ×150) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×182 [exec 261 1014-1087]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8 (+48 more heads, ×150) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
    }
    // have h₂₃ : f ( ( - 9 + Real.sqrt ( 61 ) ) ) == 0  [type from Lean state]
    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by {
      // [TACTIC: exact h₂₁]
      assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0);
    }
    // have h₂₄ : ( - 9 + Real.sqrt 61 ) ∈ f ⁻¹' { 0 } { 0 }  [type from Lean state]
    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by { // @tac 1212-1256 // @tac 1263-1276
      // [TACTIC: rwSeq [ Set.mem_preimage , Set.mem_singleton_iff ]]
      // UNCITED Set.mem_preimage: recorded instance not expressible here (sort/type/scope), not guessed
      SetMemSingletonIff(f((-(9.0) + Real.sqrt(61.0))), 0.0);  // cite: Set.mem_singleton_iff
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 294 1212-1256]
      // [TACTIC: exact h₂₃]
      assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0);
    }
    // [TACTIC: exact h₂₄]
    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0);
  }
  // have h₃ : ( - 9 - Real.sqrt 61 ) ∈ f ⁻¹' { 0 } { 0 }  [type from Lean state]
  assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by { // @tac 1359-1936 // @tac 1941-1992 // @tac 1997-2125 // @tac 2130-2143
    // have h₃₁ : f ( ( - 9 - Real.sqrt ( 61 ) ) ) == 0  [type from Lean state]
    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by { // @tac 1412-1421
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f((-(9.0) - Real.sqrt(61.0))) == ((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0))))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f ((-9 : ℝ) - √(61 : ℝ)), ((-9 : ℝ) - √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) - √(61 : ℝ))…, fun (_a : ℝ) => _a = (0 : ℝ)): no library counterpart (not stated) [exec 360 1412-1421]
      assert (((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0))))) == 0.0) by {  // sub-goal before `have` (Lean state) // @tac 1428-1833 // @tac 1840-1936 // @tac 1840-1852
        // have h₃₂ : Real.sqrt ( ( ( - 9 - Real.sqrt ( 61 ) ) ^ 2 + ( 18 * ( - 9 - Real.sqr  [type from Lean state]
        assert (Real.sqrt((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0))) == 5.0) by { // @tac 1531-1698 // @tac 1707-1719
          // have h₃₃ : ( - 9 - Real.sqrt ( 61 ) ) ^ 2 + ( 18 * ( - 9 - Real.sqrt ( 61 ) ) + 4  [type from Lean state]
          assert ((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 45.0)) == 25.0) by { // @tac 1625-1698
            assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 1688-1696
              // [TACTIC: «Norm_num[_]At___»]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 424 1688-1696]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1625-1698 exec 419)
            cert_identity_7(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            cert_identity_8(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×11 [exec 419 1625-1698]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
            // UNCITED-APPLIED internal ×174 [exec 426 1625-1698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.to_isNat ×8 (+47 more heads, ×142) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 425, 426)]
            // UNCITED-APPLIED internal ×178 [exec 425 1625-1698]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8 (+47 more heads, ×146) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
            RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          }
          // [TACTIC: rwSeq [ h₃₃ ]]
          // UNCITED-APPLIED congrArg(((-9 : ℝ) - √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) - √(61 : ℝ))…, (25 : ℝ), fun (_a : ℝ) => √_a = (5 : ℝ)): no library counterpart (not stated) [exec 431 1707-1719]
          assert (Real.sqrt(25.0) == 5.0) by {  // sub-goal before `rw` (Lean state) // @tac 1728-1833 // @tac 1728-1755
            // [TACTIC: «_<;>_» [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ] <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
            // [TACTIC: choice [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ]]
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 467 1728-1755]
            assert ((5.0 * 5.0) == 25.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1760-1833
              assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 1823-1831
                // [TACTIC: «Norm_num[_]At___»]
              }
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 508, 509)]
              // UNCITED-APPLIED internal ×7 [exec 502 1760-1833]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
              // UNCITED-APPLIED internal ×40 [exec 508 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+28 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×40 [exec 509 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Meta.NormNum.IsInt.of_raw ×2 (+28 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= 25.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1760-1833
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 518)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 519 / `ring1` exec 518)]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1760-1833 exec 512)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(25 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (25.0 > 0.0)
              cert_identity_9(f, h1_set);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×8 [exec 512 1760-1833]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×32 [exec 518 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×2, Mathlib.Meta.NormNum.isInt_mul ×2 (+20 more heads, ×23) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 519 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= 5.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1760-1833
              // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 528)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 529 / `ring1` exec 528)]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1760-1833 exec 522)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (5.0 > 0.0)
              cert_identity_10(f, h1_set);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×8 [exec 522 1760-1833]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×32 [exec 528 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×2, Mathlib.Meta.NormNum.isInt_mul ×2 (+20 more heads, ×23) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 529 1760-1833]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            assert (0.0 <= (25.0)) && (0.0 <= (5.0));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
            RealSqrtEqIffSqEq(25.0, 5.0);  // cite: Real.sqrt_eq_iff_sq_eq
          }
        }
        // [TACTIC: «_<;>_» [ h₃₂ ] rw [ h₃₂ ] <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
        // [TACTIC: choice [ h₃₂ ] rw [ h₃₂ ]]
        // UNCITED-APPLIED congrArg(√(((-9 : ℝ) - √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 : ℝ) - √(61 : ℝ…, (5 : ℝ), fun (_a : ℝ) => ((-9 : ℝ) - √(61 : ℝ)) ^ (2 : ℕ) + ((18 : ℝ) * ((-9 :…): no library counterpart (not stated) [exec 539 1840-1852]
        assert (((((-(9.0) - Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) + ((18.0 * (-(9.0) - Real.sqrt(61.0))) + 30.0)) - (2.0 * 5.0)) == 0.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1863-1936
          assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 1926-1934
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 579 1926-1934]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 580, 581)]
          assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1863-1936 exec 574)
          cert_identity_11(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          cert_identity_12(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×10 [exec 574 1863-1936]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, sub_eq_zero_of_eq ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×186 [exec 580 1863-1936]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8 (+48 more heads, ×154) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×186 [exec 581 1863-1936]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8 (+48 more heads, ×154) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
    }
    // have h₃₄ : f ( ( - 9 - Real.sqrt ( 61 ) ) ) == 0  [type from Lean state]
    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by {
      // [TACTIC: exact h₃₁]
      assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0);
    }
    // have h₃₅ : ( - 9 - Real.sqrt 61 ) ∈ f ⁻¹' { 0 } { 0 }  [type from Lean state]
    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by { // @tac 2061-2105 // @tac 2112-2125
      // [TACTIC: rwSeq [ Set.mem_preimage , Set.mem_singleton_iff ]]
      // UNCITED Set.mem_preimage: recorded instance not expressible here (sort/type/scope), not guessed
      SetMemSingletonIff(f((-(9.0) - Real.sqrt(61.0))), 0.0);  // cite: Set.mem_singleton_iff
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 614 2061-2105]
      // [TACTIC: exact h₃₄]
      assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0);
    }
    // [TACTIC: exact h₃₅]
    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0);
  }
  // have h₄ : forall ( x : ℝ ) :: x ∈ f ⁻¹' { 0 } { 0 } -> x == ( - 9 + Real.sqrt (   [type from Lean state]
  forall x: real | (f(x) == 0.0) // @tac 2261-2271
    ensures ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) // @tac 2276-2316 // @tac 2321-2416 // @tac 2421-2438 // @tac 2443-2535 // @tac 2540-2628 // @tac 2633-2858 // @tac 2863-2939 // @tac 2944-3001 // @tac 3006-3125 // @tac 3130-3283 // @tac 3288-3407 // @tac 3412-3776 // @tac 3781-3895
  {
    // [TACTIC: intro x hx]
    // have h₅ : f ( x ) == 0  [type from Lean state]
    assert (f(x) == 0.0); // @tac 2302-2316
      // [TACTIC: simpa using hx]
    // UNCITED-APPLIED internal ×1 [exec 681 2302-2316]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
    // have h₆ : f ( x ) == x ^ 2 + ( 18 * x + 30 ) - 2 * Real.sqrt ( ( x ^ 2 + ( 18 *   [type from Lean state]
    assert (f(x) == (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) by { // @tac 2407-2416
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f(x) == (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f x, x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + (…, fun (_a : ℝ) => _a = x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ…): no library counterpart (not stated) [exec 702 2407-2416]
    }
    // [TACTIC: rwSeq [ h₆ ] at h₅]
    // UNCITED-APPLIED congrArg(f x, x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + (…, fun (_a : ℝ) => _a = (0 : ℝ)): no library counterpart (not stated) [exec 727 2421-2438]
    assert ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0);  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 2421-2438
    // have h₇ : x ^ 2 + ( 18 * x + 30 ) - 2 * Real.sqrt ( ( x ^ 2 + ( 18 * x + 45 ) )   [type from Lean state]
    assert ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0) by { // @tac 2527-2535
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2527-2535 exec 770)
      cert_identity_13(f, h1_set, x);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_14(f, h1_set, x);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×9 [exec 770 2527-2535]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×110 [exec 771 2527-2535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×90) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×110 [exec 772 2527-2535]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×90) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 771, 772)]
    }
    // have h₈ : x ^ 2 + ( 18 * x + 30 ) == 2 * Real.sqrt ( ( x ^ 2 + ( 18 * x + 45 ) )  [type from Lean state]
    assert (((x * x) + ((18.0 * x) + 30.0)) == (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) by { // @tac 2620-2628
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2620-2628 exec 789)
      cert_identity_15(f, h1_set, x);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_16(f, h1_set, x);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×10 [exec 789 2620-2628]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×110 [exec 790 2620-2628]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×90) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×108 [exec 791 2620-2628]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Tactic.Ring.neg_add ×4 (+36 more heads, ×89) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 790, 791)]
    }
    // have h₉ : x ^ 2 + ( 18 * x + 45 ) >= 0  [type from Lean state]
    assert (((x * x) + ((18.0 * x) + 45.0)) >= 0.0) by { // @tac 2685-2696
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 815 2685-2696]
      // by_contra h
      if !((((x * x) + ((18.0 * x) + 45.0)) >= 0.0)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 2703-2815 // @tac 2822-2842 // @tac 2849-2858
          // have h₁₀ : Real.sqrt ( ( x ^ 2 + ( 18 * x + 45 ) ) ) == 0  [type from Lean state]
          assert (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) == 0.0) by { // @tac 2770-2815 // @tac 2770-2802
            // [TACTIC: «_<;>_» [ Real.sqrt_eq_zero_of_nonpos ] rw [ Real.sqrt_eq_zero_of_nonpos ] <;> linarith linarith]
            // [TACTIC: choice [ Real.sqrt_eq_zero_of_nonpos ] rw [ Real.sqrt_eq_zero_of_nonpos ]]
            assert ((((x * x) + ((18.0 * x) + 45.0))) <= 0.0);  // precondition of RealSqrtEqZeroOfNonpos (Lean: Real.sqrt_eq_zero_of_nonpos)
            RealSqrtEqZeroOfNonpos(((x * x) + ((18.0 * x) + 45.0)));  // cite: Real.sqrt_eq_zero_of_nonpos
            // UNCITED-APPLIED congrArg(√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))), (0 : ℝ), fun (_a : ℝ) => _a = (0 : ℝ)): no library counterpart (not stated) [exec 841 2770-2802]
            // (`rw` closed `(0 : ℝ) = (0 : ℝ)` itself, e.g. by its trailing rfl)
            assert (((x * x) + ((18.0 * x) + 45.0)) <= 0.0) by {  // sub-goal of `linarith` (Lean state) // @tac 2807-2815
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 871)]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2807-2815 exec 870)
              cert_identity_17(f, h1_set, x);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×6 [exec 870 2807-2815]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, lt_of_not_ge ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×75 [exec 871 2807-2815]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_pf_add_gt ×3 (+34 more heads, ×62) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
          }
          // [TACTIC: rwSeq [ h₁₀ ] at h₈]
          // UNCITED-APPLIED congrArg(√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))), (0 : ℝ), fun (_a : ℝ) => x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) = (2 : ℝ) * _a): no library counterpart (not stated) [exec 876 2822-2842]
          assert (((x * x) + ((18.0 * x) + 30.0)) == (2.0 * 0.0));  // hypothesis h₈ after `rw` (Lean state) // @tac-hyp 2822-2842
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2849-2858 exec 903)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(15 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (15.0 > 0.0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(15 : ℝ) * (-1 : ℝ) + -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * (0 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_18(f, h1_set, x);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×10 [exec 903 2849-2858]: applications made inside the tactic's own automation, not stated — Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
          // UNCITED-APPLIED internal ×115 [exec 904 2849-2858]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5 (+37 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 904)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 905 / `ring1` exec 904)]
          // UNCITED-APPLIED internal ×5 [exec 905 2849-2858]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert false;
      }
    }
    // have h₁₀ : Real.sqrt ( ( x ^ 2 + ( 18 * x + 45 ) ) ) >= 0  [type from Lean state]
    assert (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) >= 0.0) by {
      // [TACTIC: exact Real.sqrt_nonneg ( _ )]
      RealSqrtNonneg(((x * x) + ((18.0 * x) + 45.0)));  // cite: Real.sqrt_nonneg
    }
    // have h₁₁ : x ^ 2 + ( 18 * x + 45 ) >= 0  [type from Lean state]
    assert (((x * x) + ((18.0 * x) + 45.0)) >= 0.0) by { // @tac 2993-3001
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2993-3001 exec 934)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(15 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (15.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))); (2.0 > 0.0)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(15 : ℝ) * (-1 : ℝ) + -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(15 : ℝ) * (-1 : ℝ) + -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_19(f, h1_set, x);  // cert: Left.add_neg
      // UNCITED-APPLIED internal ×13 [exec 934 2993-3001]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×155 [exec 935 2993-3001]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.neg_add ×7 (+39 more heads, ×127) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 937 2993-3001]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 935)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 936, 937 / `ring1` exec 935)]
      // UNCITED-APPLIED internal ×5 [exec 936 2993-3001]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // have h₁₂ : Real.sqrt ( ( x ^ 2 + ( 18 * x + 45 ) ) ) ^ 2 == x ^ 2 + ( 18 * x + 45  [type from Lean state]
    assert ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) == ((x * x) + ((18.0 * x) + 45.0))) by { // @tac 3095-3125 // @tac 3095-3112
      // [TACTIC: «_<;>_» [ Real.sq_sqrt ] rw [ Real.sq_sqrt ] <;> linarith linarith]
      // [TACTIC: choice [ Real.sq_sqrt ] rw [ Real.sq_sqrt ]]
      assert (0.0 <= (((x * x) + ((18.0 * x) + 45.0))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
      RealSqSqrt(((x * x) + ((18.0 * x) + 45.0)));  // cite: Real.sq_sqrt
      // UNCITED-APPLIED congrArg(√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ^ (2 : ℕ), x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)), fun (_a : ℝ) => _a = x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))): no library counterpart (not stated) [exec 963 3095-3112]
      // (`rw` closed `x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)) = x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))` itself, e.g. by its trailing rfl)
      assert (0.0 <= ((x * x) + ((18.0 * x) + 45.0))) by {  // sub-goal of `linarith` (Lean state) // @tac 3117-3125
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 993)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 994, 995 / `ring1` exec 993)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3117-3125 exec 992)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(15 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (15.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))); (2.0 > 0.0)
        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(15 : ℝ) * (-1 : ℝ) + -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(15 : ℝ) * (-1 : ℝ) + -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))))…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_20(f, h1_set, x);  // cert: Left.add_neg
        // UNCITED-APPLIED internal ×13 [exec 992 3117-3125]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×155 [exec 993 3117-3125]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.neg_add ×7 (+39 more heads, ×127) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 994 3117-3125]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 995 3117-3125]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // have h₁₃ : ( x ^ 2 + ( 18 * x + 30 ) ) ^ 2 == 4 * ( x ^ 2 + ( 18 * x + 45 ) )  [type from Lean state]
    assert ((((x * x) + ((18.0 * x) + 30.0)) * ((x * x) + ((18.0 * x) + 30.0))) == (4.0 * ((x * x) + ((18.0 * x) + 45.0)))) by { // @tac 3215-3283
      assert (0.0 <= ((x * x) + ((18.0 * x) + 45.0))) by {  // sub-goal of `by` (Lean state) // @tac 3243-3251
        // [TACTIC: «Linarith[_]At___»]
        // UNCITED-APPLIED internal ×5 [exec 1020 3243-3251]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1020)]
      }
      // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by linarith linarith : 0 ≤ x ^ 2 + ( 18 * x + 45 ) ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3215-3283 exec 1012)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(30 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0); (30.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ^ (2 : ℕ) - (x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0)))) == 0.0); (4.0 > 0.0)
      if ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0) { assert (((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0); }  // cert: Linarith.zero_mul_eq
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) * -(x ^ (2 …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * ((x * x) + ((18.0 * x) + 45.0)))) == 0.0); (2.0 > 0.0)
      if ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0) && (0.0 <= ((x * x) + ((18.0 * x) + 45.0))) { assert (-(((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * ((x * x) + ((18.0 * x) + 45.0)))) == 0.0); }  // cert: Linarith.zero_mul_eq
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(30 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0); (30.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ^ (2 : ℕ) - (x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0))) == 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) * -(x ^ (2…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * ((x * x) + ((18.0 * x) + 45.0))) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(30 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) *…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(30 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(30 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …`
      // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(30 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) *…`
      cert_identity_21(f, h1_set, x);  // cert: Linarith.lt_of_lt_of_eq
      cert_identity_22(f, h1_set, x);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×23 [exec 1012 3215-3283]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×4, sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Linarith.mul_eq ×6, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.zero_mul_eq ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×286 [exec 1021 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.one_mul ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+47 more heads, ×254) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1022 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1023 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×288 [exec 1025 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.one_mul ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+47 more heads, ×256) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1026 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1027 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1024 3215-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1022, 1023, 1024, 1026, 1027 / `ring1` exec 1021, 1025)]
    }
    // have h₁₄ : x ^ 2 + 18 * x + 20 == 0  [type from Lean state]
    assert ((((x * x) + (18.0 * x)) + 20.0) == 0.0) by { // @tac 3339-3407
      assert (0.0 <= ((x * x) + ((18.0 * x) + 45.0))) by {  // sub-goal of `by` (Lean state) // @tac 3367-3375
        // [TACTIC: «Linarith[_]At___»]
      }
      // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by linarith linarith : 0 ≤ x ^ 2 + ( 18 * x + 45 ) ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3339-3407 exec 1045)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(20 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0); (20.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ^ (2 : ℕ) - (x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0)))) == 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * (x ^ (2 : ℕ) + (18 : ℝ) * x + (20 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x * x) + (18.0 * x)) + 20.0) < 0.0); (12.0 > 0.0)
      if ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0) { assert (((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) * (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))))) == 0.0); }  // cert: Linarith.zero_mul_eq
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) * (x ^ (2 : ℕ) + (18 : ℝ) * x + (20 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0)) <= 0.0); (4.0 > 0.0)
      if (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) && ((((x * x) + (18.0 * x)) + 20.0) <= 0.0) { cert_piece_23(f, h1_set, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(20 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))) == 0.0); (20.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * (√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) ^ (2 : ℕ) - (x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) - ((x * x) + ((18.0 * x) + 45.0))) == 0.0); (4.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * -(x ^ (2 : ℕ) + (18 : ℝ) * x + (20 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (((x * x) + (18.0 * x)) + 20.0)); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-√(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ))) * -(x ^ (2 : ℕ) + (18 : ℝ) * x + (20 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (Real.sqrt(((x * x) + ((18.0 * x) + 45.0))) * (((x * x) + (18.0 * x)) + 20.0))); (4.0 > 0.0)
      if (0.0 <= Real.sqrt(((x * x) + ((18.0 * x) + 45.0)))) && (0.0 <= (((x * x) + (18.0 * x)) + 20.0)) { cert_piece_24(f, h1_set, x); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(20 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(20 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(20 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) *…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(20 : ℝ) * (x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) *…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(20 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …`
      // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(20 : ℝ) * -(x ^ (2 : ℕ) + ((18 : ℝ) * x + (30 : ℝ)) - (2 : ℝ) * √(x ^ (2 : ℕ) + ((18 : ℝ) * x + (45 : ℝ)))) + (4 : ℝ) …`
      cert_identity_25(f, h1_set, x);  // cert: add_lt_of_neg_of_le
      cert_identity_26(f, h1_set, x);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×28 [exec 1045 3339-3407]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×4, neg_nonpos_of_nonneg ×3, sub_eq_zero_of_eq ×2, mul_nonneg_of_nonpos_of_nonpos ×2, neg_neg_of_pos ×1; machinery/glue: Linarith.eq_of_eq_of_eq ×4, Linarith.mul_eq ×4, Linarith.mul_neg ×2, Linarith.mul_nonpos ×2 (+4 more heads, ×4) (cited in this block, not counted here: le_of_lt [Lean recorded ×2])
      // UNCITED-APPLIED internal ×287 [exec 1054 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+47 more heads, ×255) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1055 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1056 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1057 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1058 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×286 [exec 1059 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+47 more heads, ×254) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1060 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1061 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1062 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1063 3339-3407]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1055, 1056, 1057, 1058, 1060, 1061 … / `ring1` exec 1054, 1059)]
      if (((((x * x) + (18.0 * x)) + 20.0)) < (0.0)) { LeOfLt((((x * x) + (18.0 * x)) + 20.0), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
      if ((-((((x * x) + (18.0 * x)) + 20.0))) < (0.0)) { LeOfLt(-((((x * x) + (18.0 * x)) + 20.0)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
    }
    // have h₁₅ : x == - 9 + Real.sqrt ( 61 ) || x == - 9 - Real.sqrt ( 61 )  [type from Lean state]
    assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) by { // @tac 3487-3756 // @tac 3763-3776
      // have h₁₆ : x == - 9 + Real.sqrt ( 61 ) || x == - 9 - Real.sqrt ( 61 )  [type from Lean state]
      assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) by { // @tac 3564-3593
        // [TACTIC: apply or_iff_not_imp_left.mpr]
        OrIffNotImpLeft((x == (-(9.0) + Real.sqrt(61.0))), (x == (-(9.0) - Real.sqrt(61.0))));  // cite: or_iff_not_imp_left
        // UNCITED-APPLIED Classical.or_iff_not_imp_left: this block states the lemma as `cite: or_iff_not_imp_left` (the name the source writes; Lean's recorded constant is Classical.or_iff_not_imp_left); not stated under the recorded name [exec 1096 3564-3593]
        assert (!(x == (-(9.0) + Real.sqrt(61.0))) ==> (x == (-(9.0) - Real.sqrt(61.0)))) by {  // sub-goal before `intro` (Lean state) // @tac 3602-3615
          // intro h₁₇: P → Q  (N7 if-wrapper)
          if !(x == (-(9.0) + Real.sqrt(61.0))) {
            assert (x == (-(9.0) - Real.sqrt(61.0))) by {  // sub-goal before `apply` (Lean state) // @tac 3624-3674
              // [TACTIC: apply mul_left_cancel₀ ( sub_ne_zero.mpr h₁₇ )]
              // UNCITED-APPLIED sub_ne_zero(x, (-9 : ℝ) + √(61 : ℝ)): this block states the lemma as `cite: sub_ne_zero.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 1098 3624-3674]
              assert (((x - (-(9.0) + Real.sqrt(61.0))) * x) == ((x - (-(9.0) + Real.sqrt(61.0))) * (-(9.0) - Real.sqrt(61.0)))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 3683-3756
                assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 3746-3754
                  // [TACTIC: «Norm_num[_]At___»]
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×5 [exec 1104 3746-3754]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                }
                // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3683-3756 exec 1099)
                // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x ^ (2 : ℕ) + (18 : ℝ) * x + (20 : ℝ)) + ((x - ((-9 : ℝ) + √(61 : ℝ))) * x - (x - ((-9 : ℝ) + √(61 : ℝ))) * ((-9 : ℝ)…`
                cert_identity_27(f, h1_set, x);  // cert: Linarith.lt_of_lt_of_eq
                cert_identity_28(f, h1_set, x);  // cert: Linarith.lt_of_lt_of_eq
                // UNCITED-APPLIED internal ×14 [exec 1099 3683-3756]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
                // UNCITED-APPLIED internal ×203 [exec 1106 3683-3756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+42 more heads, ×171) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1105, 1106)]
                // UNCITED-APPLIED internal ×208 [exec 1105 3683-3756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+42 more heads, ×176) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                RealSqSqrt(61.0);  // cite: Real.sq_sqrt
              }
              assert ((x) != ((-(9.0) + Real.sqrt(61.0))));  // precondition of SubNeZeroMpr (Lean: sub_ne_zero.mpr; `apply`: proved by the steps above)
              SubNeZeroMpr(x, (-(9.0) + Real.sqrt(61.0)));  // cite: sub_ne_zero.mpr
              assert (((x - (-(9.0) + Real.sqrt(61.0)))) != 0.0) && (((x - (-(9.0) + Real.sqrt(61.0)))) * (x) == ((x - (-(9.0) + Real.sqrt(61.0)))) * ((-(9.0) - Real.sqrt(61.0))));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
              MulLeftCancel((x - (-(9.0) + Real.sqrt(61.0))), x, (-(9.0) - Real.sqrt(61.0)));  // cite: mul_left_cancel₀
            }
          }
        }
      }
      // [TACTIC: exact h₁₆]
      assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));
    }
    // `cases`: 2 cases (Lean states); 2 branch bodies
    if ((x == (-(9.0) + Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
      // [TACTIC: exact Or.inl h₁₅]
      assert (x == (-(9.0) + Real.sqrt(61.0)));
      assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));  // sub-goal of `cases` (Lean state) // @tac 3827-3847
    }
    if ((x == (-(9.0) - Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
      // [TACTIC: exact Or.inr h₁₅]
      assert (x == (-(9.0) - Real.sqrt(61.0)));
      assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));  // sub-goal of `cases` (Lean state) // @tac 3875-3895
    }
  }
  // have h₅ : ( f ⁻¹' { 0 } { 0 } ) . toFinset == { - 9 + Real.sqrt ( 61 ), - 9 - Re  [type from Lean state]
  assert (h1_set == { (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }) by { // @tac 3990-4006
    // [TACTIC: apply Finset.ext]
    assert (forall a: real :: ((a in h1_set) <==> (a in { (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }))) by {  // sub-goal before `intro` (Lean state) // @tac 4011-4018
      // [TACTIC: intro x]  (lowered: its recorded goal under the new binders)
      forall x: real
        ensures ((x in h1_set) <==> (x in { (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }))  // sub-goal of `intro` (Lean state) // @tac 4023-4139
      {
        // [TACTIC: simp only [ Set.mem_toFinset , Set.mem_preimage , Set.mem_singleton_iff , Finset.mem_insert , Finset.mem_singleton ]]
        // UNCITED Set.mem_preimage: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // UNCITED Set.mem_singleton_iff: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // UNCITED Finset.mem_insert: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Finset.mem_singleton: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Set.mem_toFinset: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // UNCITED-APPLIED internal ×4 [exec 1136 4023-4139]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, congr ×1, Eq.trans ×1
        assert ((f(x) == 0.0) <==> ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))))) by {  // sub-goal before `constructor` (Lean state) // @tac 4144-4155
          // [TACTIC: constructor]
          // `constructor`: 2 cases (Lean states); 2 branch bodies
          assert ((f(x) == 0.0) ==> ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))))) by {  // sub-goal of `constructor` (Lean state) // @tac 4163-4170 // @tac 4160-4744
            // intro h: P → Q  (N7 if-wrapper)
            if (f(x) == 0.0) {
              assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) by {  // sub-goal before `have` (Lean state) // @tac 4177-4255 // @tac 4262-4744
                // have h₅₁ : x == ( - 9 + Real.sqrt ( 61 ) ) || x == ( - 9 - Real.sqrt ( 61 ) )  [type from Lean state]
                assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) by {
                  // [TACTIC: exact h₄ ( x , h )]
                  assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));  // instance of h₄ (Lean state)
                }
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((x == (-(9.0) + Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: «_<;>_» [ h₅₁ ] simp [ h₅₁ ] simp [ h₅₁ ] <;> ( try norm_num norm_num ) <;> ( try ring_nf at * <;> norm_num at * <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) <;> ( try aesop )]
                  // [TACTIC: simp [ h₅₁ ]]
                  // `simp` closed the goal; the rest of the chain did not run
                  // [TACTIC: «Norm_num[_]At___»]
                  // [TACTIC: «_<;>_» at * <;> norm_num at * <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
                  // NOT RUN in Lean (no execution recorded): no lemma instances
                  // [TACTIC: «Norm_num[_]At___»]
                  // [TACTIC: Aesop]
                  assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));  // sub-goal of `cases` (Lean state) // @tac 4312-4512 // @tac 4312-4488 // @tac 4312-4361 // @tac 4312-4326
                  // UNCITED-APPLIED internal ×8 [exec 1175 4312-4326]: applications made inside the tactic's own automation, not stated — true_or ×1; machinery/glue: congrArg ×3, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                }
                if ((x == (-(9.0) - Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: «_<;>_» [ h₅₁ ] simp [ h₅₁ ] simp [ h₅₁ ] <;> ( try norm_num norm_num ) <;> ( try ring_nf at * <;> norm_num at * <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) <;> ( try aesop )]
                  // [TACTIC: simp [ h₅₁ ]]
                  // `simp` closed the goal; the rest of the chain did not run
                  // [TACTIC: «Norm_num[_]At___»]
                  // [TACTIC: «_<;>_» at * <;> norm_num at * <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
                  // NOT RUN in Lean (no execution recorded): no lemma instances
                  // [TACTIC: «Norm_num[_]At___»]
                  // [TACTIC: Aesop]
                  assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0))));  // sub-goal of `cases` (Lean state) // @tac 4544-4744 // @tac 4544-4720 // @tac 4544-4593 // @tac 4544-4558
                  // UNCITED-APPLIED internal ×7 [exec 1212 4544-4558]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
                }
              }
            }
          }
          assert (((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) ==> (f(x) == 0.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 4752-4759 // @tac 4749-5021
            // intro h: P → Q  (N7 if-wrapper)
            if ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))) {
              assert (f(x) == 0.0) by {  // sub-goal before `have` (Lean state) // @tac 4766-4840 // @tac 4847-5021
                // have h₅₂ : x == - 9 + Real.sqrt ( 61 ) || x == - 9 - Real.sqrt ( 61 )  [type from Lean state]
                assert ((x == (-(9.0) + Real.sqrt(61.0))) || (x == (-(9.0) - Real.sqrt(61.0)))); // @tac 4835-4840
                  // [TACTIC: Aesop]
                // UNCITED-APPLIED internal ×2 [exec 1252 4835-4840]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((x == (-(9.0) + Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: rwSeq [ h₅₂ ]]
                  // UNCITED-APPLIED congrArg(x, (-9 : ℝ) + √(61 : ℝ), fun (_a : ℝ) => f _a = (0 : ℝ)): no library counterpart (not stated) [exec 1262 4897-4909]
                  assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by {  // sub-goal before `exact` (Lean state) // @tac 4918-4943
                    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0) by {  // sub-goal before `simpa` (Lean state) // @tac 4927-4943
                      // [TACTIC: simpa using h₂]
                    }
                    // [TACTIC: exact by simpa using h₂ simpa using h₂]
                    assert (f((-(9.0) + Real.sqrt(61.0))) == 0.0);
                    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1289 4918-4943]
                  }
                  assert (f(x) == 0.0);  // sub-goal of `cases` (Lean state) // @tac 4897-4909
                }
                if ((x == (-(9.0) - Real.sqrt(61.0)))) {  // sub-goal of `cases` (Lean state)
                  // [TACTIC: rwSeq [ h₅₂ ]]
                  // UNCITED-APPLIED congrArg(x, (-9 : ℝ) - √(61 : ℝ), fun (_a : ℝ) => f _a = (0 : ℝ)): no library counterpart (not stated) [exec 1302 4975-4987]
                  assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by {  // sub-goal before `exact` (Lean state) // @tac 4996-5021
                    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0) by {  // sub-goal before `simpa` (Lean state) // @tac 5005-5021
                      // [TACTIC: simpa using h₃]
                    }
                    // [TACTIC: exact by simpa using h₃ simpa using h₃]
                    assert (f((-(9.0) - Real.sqrt(61.0))) == 0.0);
                    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1329 4996-5021]
                  }
                  assert (f(x) == 0.0);  // sub-goal of `cases` (Lean state) // @tac 4975-4987
                }
              }
            }
          }
        }
      }
    }
    assert (forall x: real :: x in (h1_set) <==> x in ({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }));  // precondition of FinsetExtReal (Lean: Finset.ext; `apply`: proved by the steps above)
    FinsetExtReal(h1_set, { (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) });  // cite: Finset.ext
  }
  // have h₆ : ∏ x ∈ Set.toFinset (f ⁻¹' {(0 : ℝ)}), x = (20 : ℝ)  [type from Lean state]
  assert (Real.prod(h1_set, ((x: real) => x)) == 20.0) by { // @tac 5092-5101
    // [TACTIC: rwSeq [ h₅ ]]
    // UNCITED-APPLIED congrArg(Set.toFinset (f ⁻¹' {(0 : ℝ)}), {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, fun (_a : Finset ℝ) => ∏ x ∈ _a, x = (20 : ℝ)): no library counterpart (not stated) [exec 1355 5092-5101]
    assert (Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }, ((x: real) => x)) == 20.0) by {  // sub-goal before `have` (Lean state) // @tac 5106-5894 // @tac 5899-5932 // @tac 5899-5911
      // have h₆₁ : ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = (20 : ℝ)  [type from Lean state]
      assert (Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }, ((x: real) => x)) == 20.0) by { // @tac 5206-5667 // @tac 5674-5686
        // have h₆₂ : ∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x = ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ))  [type from Lean state]
        assert (Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }, ((x: real) => x)) == ((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0)))) by { // @tac 5349-5667 // @tac 5349-5581 // @tac 5349-5560 // @tac 5349-5532
          assert ((-(9.0) + Real.sqrt(61.0)) != (-(9.0) - Real.sqrt(61.0))) by {  // sub-goal of `by` (Lean state) // @tac 5439-5446
            // intro h (hypothesis and goal from the Lean state)
            if ((-(9.0) + Real.sqrt(61.0)) == (-(9.0) - Real.sqrt(61.0))) {
              assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 5520-5528
                // [TACTIC: «Norm_num[_]At___»]
              }
              // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
              // UNCITED Real.sqrt_nonneg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
              // UNCITED Real.sq_sqrt: Lean's record attributes its application to the enclosing tactic at 5349-5532, not to this one; not placed here
              assert false;  // goal after intro (Lean state) // @tac 5457-5530
            }
          }
          // [TACTIC: «_<;>_» [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] <;> ring_nf ring_nf <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
          // [TACTIC: simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ]]
          // UNCITED Finset.prod_pair: recorded instance not expressible here (sort/type/scope), not guessed
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // `simp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5349-5532 exec 1429)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(244 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (244.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(√(61 : ℝ) ^ (2 : ℕ) - (61 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0); (4.0 > 0.0)
          if (((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))) == 0.0) { assert ((((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))) * ((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0)))) == 0.0); }  // cert: Linarith.zero_mul_eq
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(244 : ℝ) * (-1 : ℝ) + (4 : ℝ) * -(√(61 : ℝ) ^ (2 : ℕ) - (61 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_29(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          // `simp` closed the goal; the rest of the chain did not run
          // [TACTIC: «Norm_num[_]At___»]
          assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          // UNCITED-APPLIED internal ×168 [exec 1429 5349-5532]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, Finset.prod_pair ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×7 (+54 more heads, ×132) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×2], Real.sq_sqrt [Lean recorded ×1])
          vc_aime_1983_p3_L856(f, h1_set);  /* [IN-FILE CHECK] the closed lemma for line 856 */
        }
        // [TACTIC: rwSeq [ h₆₂ ]]
        // UNCITED-APPLIED congrArg(∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x, ((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ)), fun (_a : ℝ) => _a = (20 : ℝ)): no library counterpart (not stated) [exec 1466 5674-5686]
        assert (((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) == 20.0) by {  // sub-goal before `have` (Lean state) // @tac 5693-5850 // @tac 5857-5894 // @tac 5857-5869
          // have h₆₃ : ( - 9 + Real.sqrt ( 61 ) ) * ( - 9 - Real.sqrt ( 61 ) ) == 20  [type from Lean state]
          assert (((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0))) == 20.0) by { // @tac 5777-5850
            assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 5840-5848
              // [TACTIC: «Norm_num[_]At___»]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 1514 5840-5848]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5777-5850 exec 1509)
            cert_identity_30(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            cert_identity_31(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×11 [exec 1509 5777-5850]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
            // UNCITED-APPLIED internal ×133 [exec 1516 5777-5850]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Meta.NormNum.IsInt.to_isNat ×7, Mathlib.Tactic.Ring.neg_one_mul ×6 (+40 more heads, ×105) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // NOT APPLIED Real.sqrt_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1515, 1516)]
            // UNCITED-APPLIED internal ×119 [exec 1515 5777-5850]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×6, Mathlib.Meta.NormNum.IsInt.to_isNat ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsNat.to_isInt ×5 (+40 more heads, ×97) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
            RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          }
          // [TACTIC: «_<;>_» [ h₆₃ ] rw [ h₆₃ ] <;> norm_num norm_num]
          // [TACTIC: rwSeq [ h₆₃ ]]
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(((-9 : ℝ) + √(61 : ℝ)) * ((-9 : ℝ) - √(61 : ℝ)), (20 : ℝ), fun (_a : ℝ) => _a = (20 : ℝ)): no library counterpart (not stated) [exec 1526 5857-5869]
        }
      }
      // [TACTIC: «_<;>_» [ h₆₁ ] rw [ h₆₁ ] <;> norm_num norm_num]
      // [TACTIC: rwSeq [ h₆₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(∏ x ∈ {(-9 : ℝ) + √(61 : ℝ), (-9 : ℝ) - √(61 : ℝ)}, x, (20 : ℝ), fun (_a : ℝ) => _a = (20 : ℝ)): no library counterpart (not stated) [exec 1562 5899-5911]
    }
  }
  // [TACTIC: exact h₆]
  assert (Real.prod(h1_set, ((x: real) => x)) == 20.0);
}



// ===== closed lemma for line 856 (from closed/aime_1983_p3-856.dfy) =====

lemma {:induction false} vc_aime_1983_p3_L856(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  requires f(0.0 - 9.0 - Real.sqrt(61.0)) == 0.0
  requires forall x_2_1: real :: f.requires(x_2_1)
  requires forall x_2_1: real :: f(x_2_1) == 0.0 ==> x_2_1 == 0.0 - 9.0 + Real.sqrt(61.0) || x_2_1 == 0.0 - 9.0 - Real.sqrt(61.0)
  ensures   Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }  // [ADDED], ((x: real) => x)) == ((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0)))
{
  var a := -(9.0) + Real.sqrt(61.0);
  var b := -(9.0) - Real.sqrt(61.0);
  assert Real.sqrt(61.0) > 0.0;
  assert a != b;
  FinsetProdPair(a, b, {a, b});
}
