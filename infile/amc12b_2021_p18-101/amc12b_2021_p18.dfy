// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2021_p18.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(z: Complex.complex)
  ensures (-(((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))))) + ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(z: Complex.complex)
  ensures (((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z)))) + ((((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))) - (((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₆`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(z: Complex.complex)
  requires ((Complex.Re(z) + 1.0) < 0.0)
  ensures (0.0 < ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)))
{
  MulPos(-((Complex.Re(z) + 1.0)), -((Complex.Re(z) + 1.0))); MulNeg(-((Complex.Re(z) + 1.0)), (Complex.Re(z) + 1.0)); assert (-((Complex.Re(z) + 1.0))) * (-((Complex.Re(z) + 1.0))) == -((-((Complex.Re(z) + 1.0))) * ((Complex.Re(z) + 1.0))); assert (-((Complex.Re(z) + 1.0))) * ((Complex.Re(z) + 1.0)) == -(((Complex.Re(z) + 1.0)) * ((Complex.Re(z) + 1.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₆`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(z: Complex.complex)
  requires (0.0 < (Complex.Re(z) + 1.0))
  ensures (0.0 < ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)))
{
  MulPos((Complex.Re(z) + 1.0), (Complex.Re(z) + 1.0));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(z: Complex.complex)
  ensures ((-(((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) * (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) + -(((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) - (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0)))) + -((4.0 * ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(z: Complex.complex)
  ensures (-((Complex.Re(z) + 1.0)) + (Complex.Re(z) - -(1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(z: Complex.complex)
  ensures ((Complex.Re(z) + 1.0) + (-(1.0) - Complex.Re(z))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(z: Complex.complex)
  ensures (-(((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))))) + ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(z: Complex.complex)
  ensures (((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) - (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z)))) + ((((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))) - (((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₂`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(z: Complex.complex)
  requires ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) < 0.0)
  ensures (0.0 < ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) * (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)))
{
  MulPos(-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)), -((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))); MulNeg(-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)), (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)); assert (-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) * (-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) == -((-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) * ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))); assert (-((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) * ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)) == -(((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)) * ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₂`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(z: Complex.complex)
  requires ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) < 0.0)
  ensures (0.0 < ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) * (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))))
{
  vc_amc12b_2021_p18_L101(z);  /* [IN-FILE CHECK] the closed lemma for line 101 */
  MulPos(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), -((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); MulNeg(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) == -((-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) == -(((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(z: Complex.complex)
  ensures ((-((4.0 * ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)))) + -(((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) - (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0)))) + -(((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) * (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(z: Complex.complex)
  ensures ((-((4.0 * ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)))) + -(((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) - (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0)))) + -(((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) * (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(z: Complex.complex)
  ensures (((-((2.0 * (Complex.Re(z) - -(1.0)))) + -((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0))) + ((Complex.Im(z) * Complex.Im(z)) - 5.0)) + ((Complex.Re(z) - -(1.0)) * (Complex.Re(z) - -(1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁/h₄₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(z: Complex.complex)
  ensures ((((2.0 * (Complex.Re(z) - -(1.0))) + (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)) + (5.0 - (Complex.Im(z) * Complex.Im(z)))) + -(((Complex.Re(z) - -(1.0)) * (Complex.Re(z) - -(1.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁/h₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(z: Complex.complex)
  ensures ((-(((Complex.Im(z) * Complex.Im(z)) - 5.0)) + (((Complex.Im(z) - Real.sqrt(5.0)) * (Complex.Im(z) - -(Real.sqrt(5.0)))) - ((Complex.Im(z) - Real.sqrt(5.0)) * 0.0))) + ((Real.sqrt(5.0) * Real.sqrt(5.0)) - 5.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁/h₄₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(z: Complex.complex)
  ensures ((((Complex.Im(z) * Complex.Im(z)) - 5.0) + (((Complex.Im(z) - Real.sqrt(5.0)) * 0.0) - ((Complex.Im(z) - Real.sqrt(5.0)) * (Complex.Im(z) - -(Real.sqrt(5.0)))))) + -(((Real.sqrt(5.0) * Real.sqrt(5.0)) - 5.0))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2021_p18(z: Complex.complex)
  requires ((12.0 * Complex.normSq(z)) == (((2.0 * Complex.normSq(Complex.add(z, Complex.of_real(2.0)))) + Complex.normSq(Complex.add(Complex.pow(z, 2), Complex.of_real(1.0)))) + 31.0))
  ensures (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))) // @tac 518-2170 // @tac 2176-3786 // @tac 3792-4057 // @tac 4063-6835 // @tac 6841-6851
{
  // have h₁ : z.re == - 1  [type from Lean state]
  assert (Complex.Re(z) == -(1.0)) by { // @tac 550-802 // @tac 807-1103 // @tac 1108-1476 // @tac 1481-1519 // @tac 1524-1605 // @tac 1610-1870 // @tac 1875-2156 // @tac 2161-2170
    // have h₁₁ : Complex.normSq ( z ) == z.re * z.re + z.im * z.im  [type from Lean state]
    assert (Complex.normSq(z) == ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 622-802 // @tac 622-731 // @tac 622-713 // @tac 622-667 // @tac 622-649
    // UNCITED-APPLIED internal ×2 [exec 56 622-649]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_self ×1
      // [TACTIC: «_<;>_» [ Complex.normSq_apply ] simp [ Complex.normSq_apply ] simp [ Complex.normSq_apply ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: simp [ Complex.normSq_apply ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // `simp` closed the goal; the rest of the chain did not run
    // have h₁₂ : Complex.normSq ( ( z + 2 ) ) == ( z.re + 2 ) * ( z.re + 2 ) + z.im * z  [type from Lean state]
    assert (Complex.normSq(Complex.add(z, Complex.of_real(2.0))) == (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 897-1103 // @tac 897-1032 // @tac 897-1014 // @tac 897-968 // @tac 897-950
    // UNCITED-APPLIED internal ×7 [exec 117 897-950]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
      // [TACTIC: «_<;>_» [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED pow_two: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // `simp` closed the goal; the rest of the chain did not run
    // have h₁₃ : Complex.normSq ( ( z ^ 2 + 1 ) ) == ( z.re * z.re - z.im * z.im + 1 )   [type from Lean state]
    assert (Complex.normSq(Complex.add(Complex.pow(z, 2), Complex.of_real(1.0))) == (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) by { // @tac 1270-1476 // @tac 1270-1405 // @tac 1270-1387 // @tac 1270-1341 // @tac 1270-1323
      // [TACTIC: «_<;>_» [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: choice [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      ComplexPowTwo(z);  // cite: pow_two
      // UNCITED-APPLIED internal ×8 [exec 178 1270-1323]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×4, Eq.trans ×2, congr ×1 (cited in this block, not counted here: pow_two [Lean recorded ×1])
      assert ((((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z))) * ((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z)))) == (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))));  // sub-goal of `ring_nf` (Lean state) // @tac 1334-1341
      // UNCITED-APPLIED internal ×67 [exec 187 1334-1341]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_zero ×5 (+24 more heads, ×45)
    }
    // [TACTIC: rwSeq [ h₁₁ , h₁₂ , h₁₃ ] at h₀]
    assert ((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) == (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 1481-1519
    // have h₁₄ : z.re * z.re + z.im * z.im == ( z.re * z.re + z.im * z.im )  [type from Lean state]
    assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 1601-1605
      // [TACTIC: Ring]
    // UNCITED-APPLIED internal ×24 [exec 259 1601-1605]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+12 more heads, ×16)
    // have h₁₅ : 12 * ( z.re * z.re + z.im * z.im ) == 2 * ( ( z.re + 2 ) * ( z.re + 2   [type from Lean state]
    assert ((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) == (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0)) by { // @tac 1831-1870 // @tac 1831-1850
      // [TACTIC: «_<;>_» at h₀ ⊢ <;> nlinarith nlinarith]
      // [TACTIC: Ring_nfAt at h₀ ⊢]
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      PowOne(Complex.Re(z));  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := z.re ^ (4 : ℕ)); (a := z.im ^ (4 : ℕ))
      // UNCITED-APPLIED internal ×208 [exec 281 1831-1850]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2, Nat.cast_one ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+40 more heads, ×171) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      assert ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) == (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 1831-1850
      assert ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) == (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1861-1870
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // cite: pow_one [same instance stated in an enclosing scope: PowOne(Complex.Re(z));]
        // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := z.re ^ (4 : ℕ)); (a := z.im ^ (4 : ℕ))
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1861-1870 exec 290)
        cert_identity_1(z);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_2(z);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×216 [exec 290 1861-1870]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+44 more heads, ×175) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×218 [exec 291 1861-1870]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+38 more heads, ×185)
        // UNCITED-APPLIED internal ×217 [exec 292 1861-1870]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+37 more heads, ×184)
      }
    }
    // have h₁₆ : ( z.re + 1 ) == 0  [type from Lean state]
    assert ((Complex.Re(z) + 1.0) == 0.0) by { // @tac 1917-2156
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( z.re + 1 ) , sq_nonneg ( z.im ) , sq_nonneg ( z.re - 1 ) , sq_nonneg ( z.re * z.re + z.im * z.im - 6 ) , sq_nonneg ( z.re * z.re + z.im * z.im - 2 * z.re ) , sq_nonneg ( z.re * z.re + z.im * z.im + 2 * z.re ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1917-2156 exec 309)
      SqNonneg((((z.re * z.re) + (z.im * z.im)) - 6.0)); assert (0.0 <= ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) * (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0)));  // cert: sq_nonneg
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -((z.re + (1 : ℝ)) * (z.re + (1 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0))); (4.0 > 0.0)
      if ((Complex.Re(z) + 1.0) < 0.0) { cert_piece_3(z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-(z.re + (1 : ℝ)) * -(z.re + (1 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0))); (4.0 > 0.0)
      if (0.0 < (Complex.Re(z) + 1.0)) { cert_piece_4(z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `-(z.re * z.re + z.im * z.im - (6 : ℝ)) ^ (2 : ℕ) + -((12 : ℝ) * (z.re * z.re + z.im * z.im) - ((2 : ℝ) * ((z.re + (2 : …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `-(z.re * z.re + z.im * z.im - (6 : ℝ)) ^ (2 : ℕ) + -((12 : ℝ) * (z.re * z.re + z.im * z.im) - ((2 : ℝ) * ((z.re + (2 : …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_5(z);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×15 [exec 309 1917-2156]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, mul_pos_of_neg_of_neg ×2, neg_nonpos_of_nonneg ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1) (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×273 [exec 310 1917-2156]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×8 (+44 more heads, ×239)
      // UNCITED-APPLIED internal ×6 [exec 311 1917-2156]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×275 [exec 312 1917-2156]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pp_pf_overlap ×8 (+44 more heads, ×241)
      // UNCITED-APPLIED internal ×6 [exec 313 1917-2156]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      SqNonneg((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0));  // cite: sq_nonneg
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      // NOT APPLIED `sq_nonneg ( z.re + 1 )`, `sq_nonneg ( z.im )`, `sq_nonneg ( z.re - 1 )`, `sq_nonneg ( z.re * z.re + z.im * z.im - 2 * z.re )`, `sq_nonneg ( z.re * z.re + z.im * z.im + 2 * z.re )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 6 named instances match a recorded application)
    }
    // [TACTIC: «Nlinarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2161-2170 exec 314)
    cert_identity_6(z);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_7(z);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×10 [exec 314 2161-2170]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×38 [exec 315 2161-2170]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+22 more heads, ×26)
    // UNCITED-APPLIED internal ×33 [exec 316 2161-2170]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.neg_add ×2, Mathlib.Tactic.Ring.add_pf_zero_add ×2 (+22 more heads, ×23)
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
  }
  // have h₂ : z.re * z.re + z.im * z.im == 6  [type from Lean state]
  assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == 6.0) by { // @tac 2228-2480 // @tac 2485-2781 // @tac 2786-3154 // @tac 3159-3197 // @tac 3202-3283 // @tac 3288-3548 // @tac 3553-3786
    // have h₂₁ : Complex.normSq ( z ) == z.re * z.re + z.im * z.im  [type from Lean state]
    assert (Complex.normSq(z) == ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 2300-2480 // @tac 2300-2409 // @tac 2300-2391 // @tac 2300-2345 // @tac 2300-2327
    // UNCITED-APPLIED internal ×2 [exec 369 2300-2327]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_self ×1
      // [TACTIC: «_<;>_» [ Complex.normSq_apply ] simp [ Complex.normSq_apply ] simp [ Complex.normSq_apply ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: simp [ Complex.normSq_apply ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // `simp` closed the goal; the rest of the chain did not run
    // have h₂₂ : Complex.normSq ( ( z + 2 ) ) == ( z.re + 2 ) * ( z.re + 2 ) + z.im * z  [type from Lean state]
    assert (Complex.normSq(Complex.add(z, Complex.of_real(2.0))) == (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 2575-2781 // @tac 2575-2710 // @tac 2575-2692 // @tac 2575-2646 // @tac 2575-2628
    // UNCITED-APPLIED internal ×7 [exec 430 2575-2628]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
      // [TACTIC: «_<;>_» [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED pow_two: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // `simp` closed the goal; the rest of the chain did not run
    // have h₂₃ : Complex.normSq ( ( z ^ 2 + 1 ) ) == ( z.re * z.re - z.im * z.im + 1 )   [type from Lean state]
    assert (Complex.normSq(Complex.add(Complex.pow(z, 2), Complex.of_real(1.0))) == (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) by { // @tac 2948-3154 // @tac 2948-3083 // @tac 2948-3065 // @tac 2948-3019 // @tac 2948-3001
      // [TACTIC: «_<;>_» [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] <;> ring_nf ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ] nlinarith [ sq_nonneg ( z.re + z.im ) , sq_nonneg ( z.re - z.im ) ]]
      // [TACTIC: choice [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ] simp [ Complex.normSq_apply , Complex.ext_iff , pow_two ]]
      // UNCITED Complex.normSq_apply: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      ComplexPowTwo(z);  // cite: pow_two
      // UNCITED-APPLIED internal ×8 [exec 491 2948-3001]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×4, Eq.trans ×2, congr ×1 (cited in this block, not counted here: pow_two [Lean recorded ×1])
      assert ((((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z))) * ((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z)))) == (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))));  // sub-goal of `ring_nf` (Lean state) // @tac 3012-3019
      // UNCITED-APPLIED internal ×67 [exec 500 3012-3019]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_zero ×5 (+24 more heads, ×45)
    }
    // [TACTIC: rwSeq [ h₂₁ , h₂₂ , h₂₃ ] at h₀]
    assert ((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) == (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 3159-3197
    // have h₂₄ : z.re * z.re + z.im * z.im == ( z.re * z.re + z.im * z.im )  [type from Lean state]
    assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))); // @tac 3279-3283
      // [TACTIC: Ring]
    // UNCITED-APPLIED internal ×24 [exec 572 3279-3283]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+12 more heads, ×16)
    // have h₂₅ : 12 * ( z.re * z.re + z.im * z.im ) == 2 * ( ( z.re + 2 ) * ( z.re + 2   [type from Lean state]
    assert ((12.0 * ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) == (((2.0 * (((Complex.Re(z) + 2.0) * (Complex.Re(z) + 2.0)) + (Complex.Im(z) * Complex.Im(z)))) + (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0) * (((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 1.0)) + (((2.0 * Complex.Re(z)) * Complex.Im(z)) * ((2.0 * Complex.Re(z)) * Complex.Im(z))))) + 31.0)) by { // @tac 3509-3548 // @tac 3509-3528
      // [TACTIC: «_<;>_» at h₀ ⊢ <;> nlinarith nlinarith]
      // [TACTIC: Ring_nfAt at h₀ ⊢]
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      PowOne(Complex.Re(z));  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := z.re ^ (4 : ℕ)); (a := z.im ^ (4 : ℕ))
      // UNCITED-APPLIED internal ×208 [exec 594 3509-3528]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2, Nat.cast_one ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+40 more heads, ×171) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      assert ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) == (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z))));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 3509-3528
      assert ((((Complex.Re(z) * Complex.Re(z)) * 12.0) + ((Complex.Im(z) * Complex.Im(z)) * 12.0)) == (((((40.0 + (Complex.Re(z) * 8.0)) + ((Complex.Re(z) * Complex.Re(z)) * 4.0)) + (((Complex.Re(z) * Complex.Re(z)) * (Complex.Im(z) * Complex.Im(z))) * 2.0)) + (Complex.Re(z) * Complex.Re(z) * Complex.Re(z) * Complex.Re(z))) + (Complex.Im(z) * Complex.Im(z) * Complex.Im(z) * Complex.Im(z)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 3539-3548
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // cite: pow_one [same instance stated in an enclosing scope: PowOne(Complex.Re(z));]
        // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := z.re ^ (4 : ℕ)); (a := z.im ^ (4 : ℕ))
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3539-3548 exec 603)
        cert_identity_8(z);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_9(z);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×216 [exec 603 3539-3548]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+44 more heads, ×175) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×218 [exec 604 3539-3548]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+38 more heads, ×185)
        // UNCITED-APPLIED internal ×217 [exec 605 3539-3548]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+37 more heads, ×184)
      }
    }
    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( z.re + 1 ) , sq_nonneg ( z.im ) , sq_nonneg ( z.re - 1 ) , sq_nonneg ( z.re * z.re + z.im * z.im - 6 ) , sq_nonneg ( z.re * z.re + z.im * z.im - 2 * z.re ) , sq_nonneg ( z.re * z.re + z.im * z.im + 2 * z.re ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3553-3786 exec 606)
    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(z.re + (1 : ℝ)) ^ (2 : ℕ) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0))); (4.0 > 0.0)
    SqNonneg((z.re + 1.0)); assert (0.0 <= ((Complex.Re(z) + 1.0) * (Complex.Re(z) + 1.0)));  // cert: sq_nonneg
    if ((((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) - 6.0) < 0.0) { cert_piece_10(z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
    if ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))) < 0.0) { cert_piece_11(z); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)
    // UNCITED-APPLIED Linarith.le_of_le_of_eq: certificate sum `(4 : ℝ) * -(z.re + (1 : ℝ)) ^ (2 : ℕ) + -((12 : ℝ) * (z.re * z.re + z.im * z.im) - ((2 : ℝ) * ((z.re + (2 : ℝ)) * (z.re…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_12(z);  // cert: add_lt_of_le_of_neg
    cert_identity_13(z);  // cert: add_lt_of_le_of_neg
    // UNCITED-APPLIED internal ×15 [exec 606 3553-3786]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, mul_pos_of_neg_of_neg ×2, sub_neg_of_lt ×2, neg_nonpos_of_nonneg ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1) (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
    // UNCITED-APPLIED internal ×266 [exec 607 3553-3786]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+44 more heads, ×232)
    // UNCITED-APPLIED internal ×6 [exec 608 3553-3786]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
    // UNCITED-APPLIED internal ×265 [exec 609 3553-3786]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+44 more heads, ×231)
    // UNCITED-APPLIED internal ×6 [exec 610 3553-3786]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
    SqNonneg((Complex.Re(z) + 1.0));  // cite: sq_nonneg
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
    // NOT APPLIED `sq_nonneg ( z.im )`, `sq_nonneg ( z.re - 1 )`, `sq_nonneg ( z.re * z.re + z.im * z.im - 6 )`, `sq_nonneg ( z.re * z.re + z.im * z.im - 2 * z.re )`, `sq_nonneg ( z.re * z.re + z.im * z.im + 2 * z.re )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 6 named instances match a recorded application)
  }
  // have h₃ : z != 0  [type from Lean state]
  assert (z != Complex.of_real(0.0)) by { // @tac 3822-3833
    // by_contra h
    if !((z != Complex.of_real(0.0))) {
      if ((z == Complex.of_real(0.0))) {  // sub-goal before `rw` (Lean state)
        // [TACTIC: rwSeq [ h ] at h₀]
        assert ((12.0 * Complex.normSq(Complex.of_real(0.0))) == (((2.0 * Complex.normSq(Complex.add(Complex.of_real(0.0), Complex.of_real(2.0)))) + Complex.normSq(Complex.add(Complex.pow(Complex.of_real(0.0), 2), Complex.of_real(1.0)))) + 31.0));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 3838-3852
        // [TACTIC: «_<;>_» [ Complex.normSq , Complex.ext_iff , pow_two ] at h₀ norm_num [ Complex.normSq , Complex.ext_iff , pow_two ] at h₀ <;> ( try norm_num at h₀ norm_num at h₀ ) <;> ( try nlinarith nlinarith ) <;> ( try simp_all [ Complex.ext_iff , pow_two ] simp_all [ Complex.ext_iff , pow_two ] simp_all [ Complex.ext_iff , pow_two ] ) <;> ( try nlinarith nlinarith )]
        // [TACTIC: «Norm_num[_]At___» [ Complex.normSq , Complex.ext_iff , pow_two ] at h₀]
        // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_two: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // UNCITED Complex.normSq: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        // `norm_num` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___» at h₀]
        // [TACTIC: «Nlinarith[_]At___»]
        // NOT RUN in Lean (no execution recorded): no lemma instances
        // [TACTIC: simpAll [ Complex.ext_iff , pow_two ]]
        // NOT RUN in Lean (no execution recorded): no lemma instances
        // [TACTIC: «Nlinarith[_]At___»]
        // NOT RUN in Lean (no execution recorded): no lemma instances
        assert false;  // sub-goal before `rw` (Lean state) // @tac 3838-3852 // @tac 3857-4057 // @tac 3857-4029 // @tac 3857-3975 // @tac 3857-3951 // @tac 3857-3916
        // UNCITED-APPLIED internal ×45 [exec 685 3857-3916]: applications made inside the tactic's own automation, not stated — map_zero ×1, Nat.cast_zero ×1, add_zero ×1, Nat.cast_one ×1, map_one ×1; machinery/glue: congrArg ×8, Eq.trans ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsNat.to_eq ×6 (+6 more heads, ×12)
      }
      assert false;
    }
  }
  // have h₄ : z + 6 / z == - 2  [type from Lean state]
  assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))) by { // @tac 4100-4553 // @tac 4558-6817 // @tac 6822-6835
    // have h₄₁ : z.im == Real.sqrt ( 5 ) || z.im == - Real.sqrt 5  [type from Lean state]
    assert ((Complex.Im(z) == Real.sqrt(5.0)) || (Complex.Im(z) == -(Real.sqrt(5.0)))) by { // @tac 4170-4224 // @tac 4231-4533 // @tac 4540-4553
      // have h₄₂ : z.im * z.im == 5  [type from Lean state]
      assert ((Complex.Im(z) * Complex.Im(z)) == 5.0) by { // @tac 4215-4224
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4215-4224 exec 758)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(z.re - (-1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Complex.Re(z) - -(1.0))) == 0.0); (2.0 > 0.0)
        if ((Complex.Re(z) - -(1.0)) == 0.0) { assert (((Complex.Re(z) - -(1.0)) * (Complex.Re(z) - -(1.0))) == 0.0); }  // cert: Linarith.zero_mul_eq
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (z.re - (-1 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Complex.Re(z) - -(1.0)) == 0.0); (2.0 > 0.0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * -(z.re - (-1 : ℝ)) + -(z.re * z.re + z.im * z.im - (6 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * (z.re - (-1 : ℝ)) + (z.re * z.re + z.im * z.im - (6 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -(z.re - (-1 : ℝ)) + -(z.re * z.re + z.im * z.im - (6 : ℝ)) + (z.im * z.im - (5 : ℝ)) < (0 : ℝ)`
        cert_identity_14(z);  // cert: Linarith.lt_of_lt_of_eq
        cert_identity_15(z);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×21 [exec 758 4215-4224]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2 (+5 more heads, ×6)
        // UNCITED-APPLIED internal ×151 [exec 759 4215-4224]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_add ×7 (+35 more heads, ×119)
        // UNCITED-APPLIED internal ×6 [exec 760 4215-4224]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        // UNCITED-APPLIED internal ×141 [exec 761 4215-4224]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_add ×7 (+36 more heads, ×110)
        // UNCITED-APPLIED internal ×6 [exec 762 4215-4224]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      }
      // have h₄₃ : z.im == Real.sqrt ( 5 ) || z.im == - Real.sqrt 5  [type from Lean state]
      assert ((Complex.Im(z) == Real.sqrt(5.0)) || (Complex.Im(z) == -(Real.sqrt(5.0)))) by { // @tac 4303-4332
        // [TACTIC: apply or_iff_not_imp_left.mpr]
        OrIffNotImpLeft((z.im == Real.sqrt(5.0)), (z.im == -(Real.sqrt(5.0))));  // cite: or_iff_not_imp_left
        // UNCITED-APPLIED Classical.or_iff_not_imp_left: this block states the lemma as `cite: or_iff_not_imp_left` (the name the source writes; Lean's recorded constant is Classical.or_iff_not_imp_left); not stated under the recorded name [exec 779 4303-4332]
        assert (!(Complex.Im(z) == Real.sqrt(5.0)) ==> (Complex.Im(z) == -(Real.sqrt(5.0)))) by {  // sub-goal before `intro` (Lean state) // @tac 4341-4354
          // intro h₄₄: P → Q  (N7 if-wrapper)
          if !(Complex.Im(z) == Real.sqrt(5.0)) {
            assert (Complex.Im(z) == -(Real.sqrt(5.0))) by {  // sub-goal before `apply` (Lean state) // @tac 4363-4386
              // [TACTIC: apply eq_of_sub_eq_zero]
              assert ((Complex.Im(z) - -(Real.sqrt(5.0))) == 0.0) by {  // sub-goal before `apply` (Lean state) // @tac 4395-4445
                // [TACTIC: apply mul_left_cancel₀ ( sub_ne_zero.mpr h₄₄ )]
                // UNCITED-APPLIED sub_ne_zero(z.im, √(5 : ℝ)): this block states the lemma as `cite: sub_ne_zero.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 782 4395-4445]
                assert (((Complex.Im(z) - Real.sqrt(5.0)) * (Complex.Im(z) - -(Real.sqrt(5.0)))) == ((Complex.Im(z) - Real.sqrt(5.0)) * 0.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 4454-4533
                  assert (0.0 <= 5.0) by {  // sub-goal of `by` (Lean state) // @tac 4523-4531
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
                    // UNCITED-APPLIED internal ×6 [exec 788 4523-4531]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1
                  }
                  // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ]]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4454-4533 exec 783)
                  // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(z.im * z.im - (5 : ℝ)) + ((z.im - √(5 : ℝ)) * (z.im - -√(5 : ℝ)) - (z.im - √(5 : ℝ)) * (0 : ℝ)) < (0 : ℝ)`
                  cert_identity_16(z);  // cert: Linarith.lt_of_lt_of_eq
                  cert_identity_17(z);  // cert: Linarith.lt_of_lt_of_eq
                  // UNCITED-APPLIED internal ×15 [exec 783 4454-4533]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×125 [exec 789 4454-4533]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.sub_congr ×5 (+40 more heads, ×101)
                  // UNCITED-APPLIED internal ×128 [exec 790 4454-4533]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+40 more heads, ×102)
                  // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
                  // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
                  assert (0.0 <= (5.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                  RealSqSqrt(5.0);  // cite: Real.sq_sqrt
                }
                assert ((Complex.Im(z)) != (Real.sqrt(5.0)));  // precondition of SubNeZeroMpr (Lean: sub_ne_zero.mpr; `apply`: proved by the steps above)
                SubNeZeroMpr(Complex.Im(z), Real.sqrt(5.0));  // cite: sub_ne_zero.mpr
                assert (((Complex.Im(z) - Real.sqrt(5.0))) != 0.0) && (((Complex.Im(z) - Real.sqrt(5.0))) * ((Complex.Im(z) - -(Real.sqrt(5.0)))) == ((Complex.Im(z) - Real.sqrt(5.0))) * (0.0));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
                MulLeftCancel((Complex.Im(z) - Real.sqrt(5.0)), (Complex.Im(z) - -(Real.sqrt(5.0))), 0.0);  // cite: mul_left_cancel₀
              }
              assert ((Complex.Im(z)) - (-(Real.sqrt(5.0))) == 0.0);  // precondition of EqOfSubEqZero (Lean: eq_of_sub_eq_zero; `apply`: proved by the steps above)
              EqOfSubEqZero(Complex.Im(z), -(Real.sqrt(5.0)));  // cite: eq_of_sub_eq_zero
            }
          }
        }
      }
      // [TACTIC: exact h₄₃]
      assert ((Complex.Im(z) == Real.sqrt(5.0)) || (Complex.Im(z) == -(Real.sqrt(5.0))));
    }
    // have h₄₅ : z + 6 / z == - 2  [type from Lean state]
    assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))) by { // @tac 4600-6817
      // `cases`: 2 cases (Lean states); 2 branch bodies
      if ((Complex.Im(z) == Real.sqrt(5.0))) {  // sub-goal of `cases` (Lean state)
        // have h₄₆ : z.im == Real.sqrt ( 5 )  [type from Lean state]
        assert (Complex.Im(z) == Real.sqrt(5.0)) by {
          // [TACTIC: exact h₄₁]
          assert (Complex.Im(z) == Real.sqrt(5.0));
        }
        // have h₄₇ : z.re == - 1  [type from Lean state]
        assert (Complex.Re(z) == -(1.0)) by {
          // [TACTIC: exact h₁]
          assert (Complex.Re(z) == -(1.0));
        }
        // have h₄₈ : z.re * z.re + z.im * z.im == 6  [type from Lean state]
        assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == 6.0) by {
          // [TACTIC: exact h₂]
          assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == 6.0);
        }
        // have h₄₉ : z != 0  [type from Lean state]
        assert (z != Complex.of_real(0.0)) by {
          // [TACTIC: exact h₃]
          assert (z != Complex.of_real(0.0));
        }
        // have h₅₀ : z + 6 / z == - 2  [type from Lean state]
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))) by { // @tac 4998-5695 // @tac 4998-5543 // @tac 4998-5375 // @tac 4998-5223 // @tac 4998-5195 // @tac 4998-5168 // @tac 4998-5102
          // [TACTIC: «_<;>_» [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] field_simp [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] <;> simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] <;> ring_nf at * <;> norm_num at * <;> ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } ) <;> ( try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } ) <;> ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } )]
          // [TACTIC: choice [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] field_simp [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ]]
          // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_two: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          // UNCITED Complex.normSq: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          // UNCITED-APPLIED internal ×17 [exec 907 4998-5102]: applications made inside the tactic's own automation, not stated — add_zero ×2, add_div' ×1, neg_mul ×1, sub_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×3, congr ×2
          assert (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 6.0) == -((2.0 * Complex.Re(z)))) && (((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z))) == -((2.0 * Complex.Im(z))))) by {  // sub-goal of `simp_all` (Lean state) // @tac 5117-5168
            // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED-APPLIED mul_neg ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ), b := (1 : ℝ)); (a := (2 : ℝ), b := (1 : ℝ)); (a := √(5 : ℝ), b := (1 : ℝ))
            // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ)); (a := (2 : ℝ)); (a := √(5 : ℝ))
            // UNCITED Complex.normSq: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            assert ((12.0 * 6.0) == (((2.0 * (((-(1.0) + 2.0) * (-(1.0) + 2.0)) + 5.0)) + ((((1.0 - 5.0) + 1.0) * ((1.0 - 5.0) + 1.0)) + ((-(Real.sqrt(5.0)) + -(Real.sqrt(5.0))) * (-(Real.sqrt(5.0)) + -(Real.sqrt(5.0)))))) + 31.0));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 5117-5168
            assert ((1.0 + 5.0) == 6.0);  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 5117-5168
            assert ((((1.0 - 5.0) + 6.0) == 2.0) && ((-(Real.sqrt(5.0)) + -(Real.sqrt(5.0))) == -((2.0 * Real.sqrt(5.0))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5183-5195
              // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
              PowOne(Real.sqrt(5.0));  // cite: pow_one [applied by the tactic, not named in it]
              assert (72.0 == (52.0 + ((Real.sqrt(5.0) * Real.sqrt(5.0)) * 4.0)));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 5183-5195
              assert (true && true);  // sub-goal of `norm_num` (Lean state) // @tac 5210-5223
              // UNCITED-APPLIED internal ×85 [exec 925 5183-5195]: applications made inside the tactic's own automation, not stated — add_zero ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+33 more heads, ×60) (cited in this block, not counted here: pow_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 934 5210-5223]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+1 more heads, ×1)
            }
            // UNCITED-APPLIED internal ×36 [exec 916 5117-5168]: applications made inside the tactic's own automation, not stated — mul_neg ×3, mul_one ×3, neg_neg ×2, Real.mul_self_sqrt ×1, neg_mul ×1, one_mul ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, of_eq_true ×1
          }
          // [TACTIC: try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqr]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_nu]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqr]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: «Norm_num[_]At___»]
          // [TACTIC: «Norm_num[_]At___»]
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: exact h₅₀]
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));  // sub-goal of `cases` (Lean state) // @tac 4650-4694 // @tac 4703-4735 // @tac 4744-4796 // @tac 4805-4835 // @tac 4898-5695 // @tac 5704-5717
      }
      if ((Complex.Im(z) == -(Real.sqrt(5.0)))) {  // sub-goal of `cases` (Lean state)
        // have h₄₆ : z.im == - Real.sqrt 5  [type from Lean state]
        assert (Complex.Im(z) == -(Real.sqrt(5.0))) by {
          // [TACTIC: exact h₄₁]
          assert (Complex.Im(z) == -(Real.sqrt(5.0)));
        }
        // have h₄₇ : z.re == - 1  [type from Lean state]
        assert (Complex.Re(z) == -(1.0)) by {
          // [TACTIC: exact h₁]
          assert (Complex.Re(z) == -(1.0));
        }
        // have h₄₈ : z.re * z.re + z.im * z.im == 6  [type from Lean state]
        assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == 6.0) by {
          // [TACTIC: exact h₂]
          assert (((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))) == 6.0);
        }
        // have h₄₉ : z != 0  [type from Lean state]
        assert (z != Complex.of_real(0.0)) by {
          // [TACTIC: exact h₃]
          assert (z != Complex.of_real(0.0));
        }
        // have h₅₀ : z + 6 / z == - 2  [type from Lean state]
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))) by { // @tac 6098-6795 // @tac 6098-6643 // @tac 6098-6475 // @tac 6098-6323 // @tac 6098-6295 // @tac 6098-6268 // @tac 6098-6202
          // [TACTIC: «_<;>_» [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] field_simp [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] <;> simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] simp_all [ Complex.ext_iff , Complex.normSq , pow_two ] <;> ring_nf at * <;> norm_num at * <;> ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } ) <;> ( try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } ) <;> ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] } )]
          // [TACTIC: choice [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ] field_simp [ Complex.ext_iff , Complex.normSq , pow_two , h₄₉ , Complex.ext_iff , Complex.normSq , pow_two ]]
          // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_two: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          // UNCITED Complex.normSq: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          // UNCITED-APPLIED internal ×17 [exec 1051 6098-6202]: applications made inside the tactic's own automation, not stated — add_zero ×2, add_div' ×1, neg_mul ×1, sub_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×3, congr ×2
          assert (((((Complex.Re(z) * Complex.Re(z)) - (Complex.Im(z) * Complex.Im(z))) + 6.0) == -((2.0 * Complex.Re(z)))) && (((Complex.Re(z) * Complex.Im(z)) + (Complex.Im(z) * Complex.Re(z))) == -((2.0 * Complex.Im(z))))) by {  // sub-goal of `simp_all` (Lean state) // @tac 6217-6268
            // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED-APPLIED mul_neg ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ), b := (1 : ℝ)); (a := -√(5 : ℝ), b := √(5 : ℝ)); (a := (2 : ℝ), b := (1 : ℝ)); (a := (-1 : ℝ), b := √(5 : ℝ)); (a := -√(5 : ℝ), b := (1 : ℝ)); (a := (2 : ℝ), b := √(5 : ℝ))
            // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ)); (a := (2 : ℝ)); (a := -√(5 : ℝ))
            // UNCITED Complex.normSq: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            assert ((12.0 * 6.0) == (((2.0 * (((-(1.0) + 2.0) * (-(1.0) + 2.0)) + 5.0)) + ((((1.0 - 5.0) + 1.0) * ((1.0 - 5.0) + 1.0)) + ((Real.sqrt(5.0) + Real.sqrt(5.0)) * (Real.sqrt(5.0) + Real.sqrt(5.0))))) + 31.0));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 6217-6268
            assert ((1.0 + 5.0) == 6.0);  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 6217-6268
            assert ((((1.0 - 5.0) + 6.0) == 2.0) && ((Real.sqrt(5.0) + Real.sqrt(5.0)) == (2.0 * Real.sqrt(5.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 6283-6295
              // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
              PowOne(Real.sqrt(5.0));  // cite: pow_one [applied by the tactic, not named in it]
              assert (72.0 == (52.0 + ((Real.sqrt(5.0) * Real.sqrt(5.0)) * 4.0)));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 6283-6295
              assert (true && true);  // sub-goal of `norm_num` (Lean state) // @tac 6310-6323
              // UNCITED-APPLIED internal ×66 [exec 1069 6283-6295]: applications made inside the tactic's own automation, not stated — add_zero ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+30 more heads, ×44) (cited in this block, not counted here: pow_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 1078 6310-6323]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+1 more heads, ×1)
            }
            // UNCITED-APPLIED internal ×43 [exec 1060 6217-6268]: applications made inside the tactic's own automation, not stated — mul_neg ×6, neg_neg ×5, mul_one ×3, neg_mul ×2, Real.mul_self_sqrt ×1, one_mul ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, of_eq_true ×1
          }
          // [TACTIC: try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqr]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_nu]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { constructor constructor <;> nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqrt_]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg 5 , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ 5 by norm_num norm_num ) ] nlinarith [ Real.sqr]  NOT RUN in Lean (no execution recorded)
          // [TACTIC: «Norm_num[_]At___»]
          // [TACTIC: «Norm_num[_]At___»]
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: exact h₅₀]
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));
        assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));  // sub-goal of `cases` (Lean state) // @tac 5749-5794 // @tac 5803-5835 // @tac 5844-5896 // @tac 5905-5935 // @tac 5998-6795 // @tac 6804-6817
      }
    }
    // [TACTIC: exact h₄₅]
    assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));
  }
  // [TACTIC: exact h₄]
  assert (Complex.add(z, Complex.div(Complex.of_real(6.0), z)) == Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0)));
}



// ===== closed lemma for line 101 (from closed/amc12b_2021_p18-101.dfy) =====

lemma {:induction false} vc_amc12b_2021_p18_L101(z: Complex.complex)
  requires 6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z)) < 0.0
  ensures   0.0 < (6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z))) * (6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z)))
{
  MulPos(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), -((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); MulNeg(-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))), (6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) == -((-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))); assert (-((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z)))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) == -(((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))) * ((6.0 - ((Complex.Re(z) * Complex.Re(z)) + (Complex.Im(z) * Complex.Im(z))))));
  // pass2: square positivity obtained syntactically via E-matching on Real.pow (see header)
  forall d: real | d != 0.0 ensures 0.0 < Real.pow(d, 2) && Real.pow(d, 2) == d * d  // [ADDED]
  { SqPosOfNeZero(d); assert Real.pow(d, 1) == d; }  // [ADDED]
  assert 0.0 < Real.pow(6.0 - (Complex.Re(z) * Complex.Re(z) + Complex.Im(z) * Complex.Im(z)), 2);  // [ADDED]
}
