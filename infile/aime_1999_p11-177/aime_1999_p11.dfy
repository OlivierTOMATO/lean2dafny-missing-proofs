// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/aime_1999_p11.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₂/h₄/h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(m: Rat.rat, k: nat)
  ensures ((((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0))))) - (((1.0 * Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.cos((Real.pi() * (1.0 / 72.0))))) + ((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0))))))) + -(((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0))))) - (((1.0 * Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.cos((Real.pi() * (1.0 / 72.0))))) - ((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0))))))))) + ((((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0))))) * (1.0 * 2.0)) - ((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0))))) - (1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0)))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₂/h₄/h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(m: Rat.rat, k: nat)
  ensures ((-(((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0))))) - (((1.0 * Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.cos((Real.pi() * (1.0 / 72.0))))) + ((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0)))))))) + ((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0))))) - (((1.0 * Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.cos((Real.pi() * (1.0 / 72.0))))) - ((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0)))))))) + (((1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0))))) - (1.0 * Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0)))))) - (((1.0 * Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0)))) * (1.0 * Real.sin((Real.pi() * (1.0 / 72.0))))) * (1.0 * 2.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(m: Rat.rat)
  ensures ((-((3.0 * 1.0)) + Real.pi()) + (3.0 - Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(m: Rat.rat)
  ensures ((-((213.0 * 1.0)) + ((72.0 * Real.pi()) - ((1.0 * Real.pi()) * (1.0 * 1.0)))) + (71.0 * (3.0 - Real.pi()))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(m: Rat.rat)
  ensures (-((1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) + (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(m: Rat.rat)
  ensures (-(((((1.0 * 2.0) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) * (1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))))) - ((1.0 * 2.0) * (1.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))))) + (2.0 * (((1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) - (1.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_sum/h₁/h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(m: Rat.rat)
  ensures (((((1.0 * 2.0) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) * (1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))))) - ((1.0 * 2.0) * (1.0 * Real.cos(((2.5 * Real.pi()) / 180.0))))) + (2.0 * ((1.0 * Real.cos(((2.5 * Real.pi()) / 180.0))) - ((1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_tan_eq`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(m: Rat.rat)
  ensures (-(((1.0 * Real.tan((((m).to_real() * Real.pi()) / 180.0))) - (1.0 * Real.tan(((35.0 * Real.pi()) / 72.0))))) + ((1.0 * Real.tan((((m).to_real() * Real.pi()) / 180.0))) - (1.0 * Real.tan(((35.0 * Real.pi()) / 72.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_tan_eq`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(m: Rat.rat)
  ensures (((1.0 * Real.tan((((m).to_real() * Real.pi()) / 180.0))) - (1.0 * Real.tan(((35.0 * Real.pi()) / 72.0)))) + ((1.0 * Real.tan(((35.0 * Real.pi()) / 72.0))) - (1.0 * Real.tan((((m).to_real() * Real.pi()) / 180.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_m_pi_div_180_eq/h₄/h₅/h₆/h₁₀/h₁₅/h₁₇`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(m: Rat.rat)
  requires (((m).to_real() - 90.0) < 0.0)
  requires (0.0 < Real.pi())
  ensures ((((m).to_real() - 90.0) * Real.pi()) < 0.0)
{
  MulPos(-(((m).to_real() - 90.0)), Real.pi()); MulNeg(Real.pi(), ((m).to_real() - 90.0)); assert (-(((m).to_real() - 90.0))) * (Real.pi()) == -((Real.pi()) * (((m).to_real() - 90.0)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₆/h₁₀/h₁₅/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(m: Rat.rat)
  ensures ((((1.0 * 90.0) * (1.0 * Real.pi())) - ((1.0 * (m).to_real()) * (1.0 * Real.pi()))) + (((m).to_real() - 90.0) * Real.pi())) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₆/h₁₀/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(m: Rat.rat)
  ensures ((((1.0 * (m).to_real()) * (1.0 * Real.pi())) - (90.0 * Real.pi())) + ((90.0 * Real.pi()) - ((1.0 * (m).to_real()) * (1.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₇/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(m: Rat.rat)
  ensures (-(Real.pi()) + ((36.0 * Real.pi()) - ((1.0 * 35.0) * (1.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁/h₁₂`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(m: Rat.rat)
  requires (0.0 < ((m).to_real() * Real.pi()))
  requires (0.0 < 180.0)
  ensures (0.0 < (((m).to_real() * Real.pi()) / 180.0))
{
  DivPos(((m).to_real() * Real.pi()), 180.0);
}

// ──────────────────────────────────────────────────
// certificate piece for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁/h₁₂`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(m: Rat.rat)
  requires (0.0 < (m).to_real())
  requires (0.0 < Real.pi())
  ensures (0.0 < ((m).to_real() * Real.pi()))
{
  MulPos((m).to_real(), Real.pi());
}

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(m: Rat.rat)
  ensures (((90.0 * (((1.0 * 35.0) * (1.0 * Real.pi())) - (36.0 * Real.pi()))) + -(((1.0 * (m).to_real()) * (1.0 * Real.pi())))) + (((1.0 * (m).to_real()) * (1.0 * Real.pi())) - -((90.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(m: Rat.rat)
  ensures ((((1.0 * (m).to_real()) * (1.0 * Real.pi())) - (90.0 * Real.pi())) + ((90.0 * Real.pi()) - ((1.0 * (m).to_real()) * (1.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(m: Rat.rat)
  ensures ((71.0 * (((1.0 * 35.0) * (1.0 * Real.pi())) - (36.0 * Real.pi()))) + (((1.0 * 35.0) * (1.0 * Real.pi())) - -((36.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_pi_div_180_eq/h₄/h₅/h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(m: Rat.rat)
  ensures ((((1.0 * 35.0) * (1.0 * Real.pi())) - (36.0 * Real.pi())) + ((36.0 * Real.pi()) - ((1.0 * 35.0) * (1.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_m_val/h₃/h₆`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(m: Rat.rat)
  requires ((((m).to_real() * 2.0) - 175.0) < 0.0)
  requires ((3.0 - Real.pi()) < 0.0)
  ensures (0.0 < ((((m).to_real() * 2.0) - 175.0) * (3.0 - Real.pi())))
{
  assert m.to_real() * 2.0 - 175.0 < 0.0;  /* [IN-FILE CHECK] requires 1 of vc_aime_1999_p11_L177 */
  assert 3.0 - Real.pi() < 0.0;  /* [IN-FILE CHECK] requires 2 of vc_aime_1999_p11_L177 */
  vc_aime_1999_p11_L177(m);  /* [IN-FILE CHECK] the closed lemma for line 177 */
  MulPos(-((((m).to_real() * 2.0) - 175.0)), -((3.0 - Real.pi()))); MulNeg(-((((m).to_real() * 2.0) - 175.0)), (3.0 - Real.pi())); assert (-((((m).to_real() * 2.0) - 175.0))) * (-((3.0 - Real.pi()))) == -((-((((m).to_real() * 2.0) - 175.0))) * ((3.0 - Real.pi()))); assert (-((((m).to_real() * 2.0) - 175.0))) * ((3.0 - Real.pi())) == -(((((m).to_real() * 2.0) - 175.0)) * ((3.0 - Real.pi())));
}

// ──────────────────────────────────────────────────
// certificate piece for `h_m_val/h₃/h₆`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_21(m: Rat.rat)
  requires ((175.0 - ((m).to_real() * 2.0)) < 0.0)
  requires ((3.0 - Real.pi()) < 0.0)
  ensures (0.0 < ((175.0 - ((m).to_real() * 2.0)) * (3.0 - Real.pi())))
{
  MulPos(-((175.0 - ((m).to_real() * 2.0))), -((3.0 - Real.pi()))); MulNeg(-((175.0 - ((m).to_real() * 2.0))), (3.0 - Real.pi())); assert (-((175.0 - ((m).to_real() * 2.0)))) * (-((3.0 - Real.pi()))) == -((-((175.0 - ((m).to_real() * 2.0)))) * ((3.0 - Real.pi()))); assert (-((175.0 - ((m).to_real() * 2.0)))) * ((3.0 - Real.pi())) == -(((175.0 - ((m).to_real() * 2.0))) * ((3.0 - Real.pi())));
}

// ──────────────────────────────────────────────────
// certificate identity for `h_m_val/h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(m: Rat.rat)
  ensures ((-((((1.0 * (m).to_real()) * (2.0 * Real.pi())) - ((1.0 * 35.0) * (5.0 * Real.pi())))) + (3.0 * (((m).to_real() * 2.0) - 175.0))) + -(((((m).to_real() * 2.0) - 175.0) * (3.0 - Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_m_val/h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(m: Rat.rat)
  ensures (((((1.0 * (m).to_real()) * (2.0 * Real.pi())) - ((1.0 * 35.0) * (5.0 * Real.pi()))) + (3.0 * (175.0 - ((m).to_real() * 2.0)))) + -(((175.0 - ((m).to_real() * 2.0)) * (3.0 - Real.pi())))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma aime_1999_p11(m: Rat.rat)
  requires (gcd(Int.natAbs(m.num), m.denom) == 1)
  requires Rat.lt(Rat.of_int(0), m)
  requires (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.tan((((m).to_real() * Real.pi()) / 180.0)))
  requires (Real.div((m.num as real), (m.denom as real)) < 90.0)
  ensures (((m.denom as int) + m.num) == 177)
{
  assert ((m.denom + m.num) == 177) by {  // sub-goal before `have` (Lean state) // @tac 548-5886 // @tac 5892-7632 // @tac 7638-7751 // @tac 7757-11092 // @tac 11098-12169 // @tac 12175-12393 // @tac 12399-12615 // @tac 12621-12811 // @tac 12817-12830
    // have h_sum : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * Real.pi / (180 : ℝ)) = Real.cos (2.5 * Real.pi / (  [type from Lean state]
    assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0)))) by { // @tac 706-5871 // @tac 5876-5886
      // have h₁ : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * Real.pi / (180 : ℝ)) = Real.cos (2.5 * Real.pi / (  [type from Lean state]
      assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0)))) by { // @tac 865-4801 // @tac 4808-5035 // @tac 5042-5105 // @tac 5112-5854 // @tac 5861-5871
        // have h₂ : (2 : ℝ) * Real.sin (2.5 * Real.pi / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * R  [type from Lean state]
        assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by { // @tac 1034-1336 // @tac 1345-1354
          // have h₃ : (2 : ℝ) * Real.sin (2.5 * Real.pi / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * R  [type from Lean state]
          assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == Real.sum(IccN(1, 35), ((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))))); // @tac 1276-1336 // @tac 1276-1295
          // UNCITED-APPLIED congrArg((2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * ∑ i ∈ Finset.Icc (1 : ℕ) (35 : …, ∑ i ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)…, fun (_a : ℝ) => _a = ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin…): no library counterpart (not stated) [exec 77 1276-1295]
            // [TACTIC: «_<;>_» [ Finset.mul_sum ] rw [ Finset.mul_sum ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ]]
            // [TACTIC: rwSeq [ Finset.mul_sum ]]
            // UNCITED Finset.mul_sum: recorded instance not expressible here (sort/type/scope), not guessed
            // `rw` closed the goal; the rest of the chain did not run
          // [TACTIC: rwSeq [ h₃ ]]
          // UNCITED-APPLIED congrArg((2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : …, ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)…, fun (_a : ℝ) => _a = (2 : ℝ) * cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 108 1345-1354]
          assert (Real.sum(IccN(1, 35), ((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by {  // sub-goal before `have` (Lean state) // @tac 1363-3036 // @tac 3045-3373 // @tac 3382-3391
            // have h₄ : forall ( k : ℕ ) :: k ∈ Finset.Icc ( 1 : ℕ ) 35 -> 2 * Real.sin ( ( 2.  [type from Lean state]
            forall k: nat | (k in IccN(1, 35)) // @tac 1596-1606
              ensures (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))) // @tac 1617-2917 // @tac 2928-3036 // @tac 2928-3004 // @tac 2928-2969 // @tac 2928-2937
            {
              // [TACTIC: intro k hk]
              // have h₅ : 2 * Real.sin ( ( 2.5 * Real.pi / 180 ) ) * Real.sin ( ( 5 * k * Real.p  [type from Lean state]
              assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))) by { // @tac 1803-2283 // @tac 2296-2523 // @tac 2536-2763 // @tac 2776-2917 // @tac 2776-2881 // @tac 2776-2842 // @tac 2776-2806
                // have h₅₁ : 2 * Real.sin ( ( 2.5 * Real.pi / 180 ) ) * Real.sin ( ( 5 * k * Real.p  [type from Lean state]
                assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) - ((2.5 * Real.pi()) / 180.0))) - Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) + ((2.5 * Real.pi()) / 180.0))))) by { // @tac 2030-2106 // @tac 2121-2197 // @tac 2212-2283 // @tac 2212-2242
                  // have h₅₂ :   [type from Lean state]
                  assert (Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) - ((2.5 * Real.pi()) / 180.0))) == ((Real.cos((((5.0 * (k as real)) * Real.pi()) / 180.0)) * Real.cos(((2.5 * Real.pi()) / 180.0))) + (Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)) * Real.sin(((2.5 * Real.pi()) / 180.0))))) by {
                    // [TACTIC: exact Real.cos_sub ( ( ( 5 * k * Real.pi / 180 ) ) , ( 2.5 * Real.pi / 180 ) )]
                    RealCosSub((((5.0 * (k as real)) * Real.pi()) / 180.0), ((2.5 * Real.pi()) / 180.0));  // cite: Real.cos_sub
                  }
                  // have h₅₃ :   [type from Lean state]
                  assert (Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) + ((2.5 * Real.pi()) / 180.0))) == ((Real.cos((((5.0 * (k as real)) * Real.pi()) / 180.0)) * Real.cos(((2.5 * Real.pi()) / 180.0))) - (Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)) * Real.sin(((2.5 * Real.pi()) / 180.0))))) by {
                    // [TACTIC: exact Real.cos_add ( ( ( 5 * k * Real.pi / 180 ) ) , ( 2.5 * Real.pi / 180 ) )]
                    RealCosAdd((((5.0 * (k as real)) * Real.pi()) / 180.0), ((2.5 * Real.pi()) / 180.0));  // cite: Real.cos_add
                  }
                  // [TACTIC: «_<;>_» at h₅₂ h₅₃ ⊢ <;> linarith linarith]
                  // [TACTIC: Ring_nfAt at h₅₂ h₅₃ ⊢]
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne((k as real));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.sin((Real.pi() * (1.0 / 72.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0)))));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0)))));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := cos (↑k * π * (1 / 36 : ℝ) + π * (-1 / 72 : ℝ))); (a := cos (↑k * π * (1 / 36 : ℝ) + π * (1 / 72 : ℝ)))
                  // UNCITED-APPLIED internal ×170 [exec 217 2212-2242]: applications made inside the tactic's own automation, not stated — add_zero ×5, mul_one ×2; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.add_mul ×7 (+54 more heads, ×132) (cited in this block, not counted here: pow_one [Lean recorded ×6])
                  assert (Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0)))) == ((Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0))) * Real.cos((Real.pi() * (1.0 / 72.0)))) + (Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0))) * Real.sin((Real.pi() * (1.0 / 72.0))))));  // hypothesis h₅₂ after `ring_nf` (Lean state) // @tac-hyp 2212-2242
                  assert (Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0)))) == ((Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0))) * Real.cos((Real.pi() * (1.0 / 72.0)))) - (Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0))) * Real.sin((Real.pi() * (1.0 / 72.0))))));  // hypothesis h₅₃ after `ring_nf` (Lean state) // @tac-hyp 2212-2242
                  assert (((Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0))) * Real.sin((Real.pi() * (1.0 / 72.0)))) * 2.0) == (Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (-(1.0) / 72.0)))) - Real.cos(((((k as real) * Real.pi()) * (1.0 / 36.0)) + (Real.pi() * (1.0 / 72.0)))))) by {  // sub-goal of `linarith` (Lean state) // @tac 2275-2283
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 227, 228, 229, 230, 231, 232 … / `ring1` exec 235, 244)]
                    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                    // cite: pow_one [same instance stated in an enclosing scope: PowOne((k as real));]
                    // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.pi());]
                    PowOne(Real.cos((((k as real) * Real.pi()) * (1.0 / 36.0))));  // cite: pow_one [applied by the tactic, not named in it]
                    PowOne(Real.cos((Real.pi() * (1.0 / 72.0))));  // cite: pow_one [applied by the tactic, not named in it]
                    // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.sin((((k as real) * Real.pi()) * (1.0 / 36.0))));]
                    // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.sin((Real.pi() * (1.0 / 72.0))));]
                    // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := cos (π * (1 / 72 : ℝ))); (a := sin (π * (1 / 72 : ℝ)))
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2275-2283 exec 226)
                    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) * cos (↑k * π * (1 / 36 : ℝ) + π * (-1 / 72 : ℝ)) - ((1 : ℝ) * cos (↑k * π * (1 / 36 : ℝ)) * ((1 : ℝ) * cos (π …` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) * cos (↑k * π * (1 / 36 : ℝ) + π * (-1 / 72 : ℝ)) - ((1 : ℝ) * cos (↑k * π * (1 / 36 : ℝ)) * ((1 : ℝ) * cos (…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                    cert_identity_1(m, k);  // cert: Linarith.lt_of_eq_of_lt
                    cert_identity_2(m, k);  // cert: Linarith.lt_of_eq_of_lt
                    // UNCITED-APPLIED internal ×188 [exec 226 2275-2283]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×6, add_zero ×5, CancelDenoms.mul_subst ×3, sub_eq_zero_of_eq ×2, mul_one ×2, sub_neg_of_lt ×2, CancelDenoms.add_subst ×1; machinery/glue: congr ×8, Eq.trans ×8, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7 (+58 more heads, ×137) (cited in this block, not counted here: pow_one [Lean recorded ×6])
                    // UNCITED-APPLIED internal ×138 [exec 235 2275-2283]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+31 more heads, ×105) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 227 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 228 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 229 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 230 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 231 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 232 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×141 [exec 244 2275-2283]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+32 more heads, ×108) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 233 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 234 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 236 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 237 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 238 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    // UNCITED-APPLIED internal ×5 [exec 239 2275-2283]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  }
                }
                // have h₅₄ : Real.cos ( ( ( 5 * k * Real.pi / 180 ) - ( 2.5 * Real.pi / 180 ) ) ) =  [type from Lean state]
                assert (Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) - ((2.5 * Real.pi()) / 180.0))) == Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0))) by { // @tac 2433-2523 // @tac 2433-2483 // @tac 2433-2440
                  // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                  // [TACTIC: Ring_nfAt]
                  PowOne((k as real));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  // `ring_nf` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED internal ×150 [exec 271 2433-2440]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×7 (+51 more heads, ×118) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                }
                // have h₅₅ : Real.cos ( ( ( 5 * k * Real.pi / 180 ) + ( 2.5 * Real.pi / 180 ) ) ) =  [type from Lean state]
                assert (Real.cos(((((5.0 * (k as real)) * Real.pi()) / 180.0) + ((2.5 * Real.pi()) / 180.0))) == Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0))) by { // @tac 2673-2763 // @tac 2673-2723 // @tac 2673-2680
                  // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                  // [TACTIC: Ring_nfAt]
                  PowOne((k as real));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  // `ring_nf` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED internal ×119 [exec 310 2673-2680]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×7, congr ×5 (+42 more heads, ×90) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                }
                // [TACTIC: «_<;>_» [ h₅₁ , h₅₄ , h₅₅ ] rw [ h₅₁ , h₅₄ , h₅₅ ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                // [TACTIC: rwSeq [ h₅₁ , h₅₄ , h₅₅ ]]
                // `rw` closed the goal; the rest of the chain did not run
                // UNCITED-APPLIED congrArg((2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : …, cos ((5 : ℝ) * ↑k * π / (180 : ℝ) - 2.5 * π / (180 : ℝ)) - cos ((5 : …, fun (_a : ℝ) => _a = cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - cos…): no library counterpart (not stated) [exec 342 2776-2806]
                // UNCITED-APPLIED congrArg(cos ((5 : ℝ) * ↑k * π / (180 : ℝ) - 2.5 * π / (180 : ℝ)), cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)), fun (_a : ℝ) => _a - cos ((5 : ℝ) * ↑k * π / (180 : ℝ) + 2.5 * π / (1…): no library counterpart (not stated) [exec 342 2776-2806]
                // UNCITED-APPLIED congrArg(cos ((5 : ℝ) * ↑k * π / (180 : ℝ) + 2.5 * π / (180 : ℝ)), cos (((5 : ℝ) * ↑k + 2.5) * π / (180 : ℝ)), fun (_a : ℝ) => cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - _a = cos…): no library counterpart (not stated) [exec 342 2776-2806]
              }
              // [TACTIC: «_<;>_» [ h₅ ] rw [ h₅ ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
              // [TACTIC: rwSeq [ h₅ ]]
              // `rw` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED congrArg((2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : …, cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - cos (((5 : ℝ) * ↑k + 2.5…, fun (_a : ℝ) => _a = cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - cos…): no library counterpart (not stated) [exec 402 2928-2937]
            }
            // have h₅ : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * Real.sin (2.5 * Real.pi / (180 : ℝ)) * Real.sin ((5 : ℝ) * ↑k * R  [type from Lean state]
            assert (Real.sum(IccN(1, 35), ((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == Real.sum(IccN(1, 35), ((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))))) by { // @tac 3301-3327
              // [TACTIC: apply Finset.sum_congr rfl]
              assert (forall x: nat :: ((x in IccN(1, 35)) ==> (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (x as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (x as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (x as real)) + 2.5) * Real.pi()) / 180.0)))))) by {  // sub-goal before `intro` (Lean state) // @tac 3338-3348
                // [TACTIC: intro k hk]
                forall k: nat | ((k in IccN(1, 35)))
                  ensures (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0))))  // sub-goal before `rw` (Lean state) // @tac 3359-3373
                {
                  // [TACTIC: rwSeq [ h₄ k hk ]]
                  assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0))));  // instance of h₄ (Lean state)
                  // UNCITED-APPLIED congrArg((2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : …, cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - cos (((5 : ℝ) * ↑k + 2.5…, fun (_a : ℝ) => _a = cos (((5 : ℝ) * ↑k - 2.5) * π / (180 : ℝ)) - cos…): no library counterpart (not stated) [exec 467 3359-3373]
                }
              }
              assert (forall x :: x in (IccN(1, 35)) ==> (((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))))(x) == (((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))))(x));  // precondition of FinsetSumApply (Lean: Finset.sum_congr; `apply`: proved by the steps above)
              FinsetSumApply(IccN(1, 35), ((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))), ((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))));  // cite: Finset.sum_congr
            }
            // [TACTIC: rwSeq [ h₅ ]]
            // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)…, ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (cos (((5 : ℝ) * ↑k - 2.5) * π / (…, fun (_a : ℝ) => _a = (2 : ℝ) * cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 492 3382-3391]
            assert (Real.sum(IccN(1, 35), ((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0))))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by {  // sub-goal before `have` (Lean state) // @tac 3400-3926 // @tac 3935-3944
              // have h₆ : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (Real.cos (((5 : ℝ) * ↑k - 2.5) * Real.pi / (180 : ℝ)) - Real.cos (((5 : ℝ)  [type from Lean state]
              assert (Real.sum(IccN(1, 35), ((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0))))) == (Real.cos(((2.5 * Real.pi()) / 180.0)) - Real.cos(((177.5 * Real.pi()) / 180.0)))) by { // @tac 3616-3926 // @tac 3616-3893 // @tac 3616-3855 // @tac 3616-3818 // @tac 3616-3778 // @tac 3616-3745 // @tac 3616-3708
                // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_mul , Nat.cast_ofNat ] norm_num [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_mul , Nat.cast_ofNat ] <;> ring_nf at * <;> norm_num norm_num <;> field_simp at * <;> ring_nf at * <;> norm_num at * <;> linarith linarith]
                // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_mul , Nat.cast_ofNat ] norm_num [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_mul , Nat.cast_ofNat ]]
                FinsetSumIccSuccTopNat(1, 34, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 33, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 32, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 31, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 30, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 29, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 28, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 27, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 26, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 25, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 24, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 23, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 22, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 21, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 20, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 19, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 18, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 17, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 16, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 15, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 14, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 13, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 12, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 11, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 10, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 9, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 8, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 7, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 6, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 5, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 4, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 3, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 2, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                FinsetSumIccSuccTopNat(1, 1, ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                // UNCITED Nat.cast_add: no Lean instance recorded (arguments unknown), not guessed
                // UNCITED Nat.cast_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                // UNCITED Nat.cast_mul: no Lean instance recorded (arguments unknown), not guessed
                if (forall x_0 :: x_0 in (IccN(1, 35)) ==> (((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))))(x_0) == (((x: nat) => (Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))))(x_0)) { FinsetSumApply(IccN(1, 35), ((k: nat) => (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (k as real)) + 2.5) * Real.pi()) / 180.0)))), ((x: nat) => (Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 35)) ==> (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 35), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 34)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 34), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 33)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 33), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 32)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 32), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 31)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 31), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 30)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 30), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 29)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 29), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 28)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 28), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 27)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 27), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 26)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 26), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 25)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 25), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 24)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 24), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 23)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 23), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 22)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 22), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 21)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 21), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 20)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 20), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 19)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 19), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 18)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 18), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 17)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 17), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 16)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 16), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 15)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 15), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 14)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 14), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 13)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 13), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 12)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 12), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 11)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 11), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 10)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 10), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 9)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 9), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 8)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 8), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 7)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 7), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 6)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 6), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 5)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 5), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 4)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 4), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 3)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 3), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 2)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 2), ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 35)) ==> (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 35), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 34)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 34), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 33)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 33), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 32)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 32), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 31)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 31), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 30)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 30), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 29)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 29), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 28)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 28), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 27)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 27), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 26)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 26), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 25)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 25), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 24)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 24), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 23)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 23), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 22)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 22), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 21)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 21), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 20)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 20), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 19)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 19), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 18)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 18), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 17)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 17), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 16)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 16), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 15)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 15), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 14)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 14), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 13)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 13), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 12)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 12), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 11)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 11), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 10)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 10), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 9)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 9), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 8)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 8), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 7)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 7), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 6)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 6), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 5)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 5), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 4)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 4), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 3)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 3), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                if (forall x_0 :: x_0 in (IccN(1, 2)) ==> (((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0) == (((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))))(x_0)) { FinsetSumApply(IccN(1, 2), ((k: nat) => Real.cos(((((5.0 * (k as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0)))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
                // UNCITED-APPLIED Finset.sum_congr: 2 more recorded instances (Finset.Icc (1 : ℕ) (1 : ℕ), {(1 : ℕ)}, fun (k : ℕ) => cos (((5 : ℝ) * ↑k - (5 / 2 : ℝ)) * π / (180 : ℝ)), fun (x : ℕ) => cos (((5 : ℝ) * ↑x - (5 / 2 : ℝ)) * π / (180 : ℝ))); (Finset.Icc (1 : ℕ) (1 : ℕ), {(1 : ℕ)}, fun (k : ℕ) => cos (((5 : ℝ) * ↑k + (5 / 2 : ℝ)) * π / (180 : ℝ)), fun (x : ℕ) => cos (((5 : ℝ) * ↑x + (5 / 2 : ℝ)) * π / (180 : ℝ))) not expressible here (sort/type/scope), not guessed
                FinsetSumSubDistrib(IccN(1, 35), ((x: nat) => Real.cos(((((5.0 * (x as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))), ((x: nat) => Real.cos(((((5.0 * (x as real)) + (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_sub_distrib [applied by the tactic, not named in it]
                FinsetIccSelfNat(1);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
                // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
                assert ((1) <= (1) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 1, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (2) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 2, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (3) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 3, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (4) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 4, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (5) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 5, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (6) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 6, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (7) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 7, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (8) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 8, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (9) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 9, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (10) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 10, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (11) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 11, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (12) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 12, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (13) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 13, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (14) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 14, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (15) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 15, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (16) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 16, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (17) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 17, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (18) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 18, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (19) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 19, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (20) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 20, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (21) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 21, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (22) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 22, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (23) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 23, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (24) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 24, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (25) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 25, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (26) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 26, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (27) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 27, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (28) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 28, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (29) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 29, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (30) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 30, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (31) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 31, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (32) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 32, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (33) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 33, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                assert ((1) <= (34) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
                FinsetSumIccSuccTopNat(1, 34, ((k: nat) => Real.cos(((((5.0 * (k as real)) - (5.0 / 2.0)) * Real.pi()) / 180.0))));  // cite: Finset.sum_Icc_succ_top
                // UNCITED Nat.cast_ofNat: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                // UNCITED-APPLIED internal ×128 [exec 565 3616-3708]: applications made inside the tactic's own automation, not stated — Finset.sum_singleton ×2; machinery/glue: Mathlib.Meta.NormNum.IsRat.nonneg_to_eq ×8, Mathlib.Meta.NormNum.isNat_natCast ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isRat_div ×8 (+22 more heads, ×94) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], Finset.sum_Icc_succ_top [Lean recorded ×68], Finset.sum_congr [Lean recorded ×71], Finset.sum_sub_distrib [Lean recorded ×1])
                assert ((((((((((((((((((((((((((((((((((((Real.cos((((5.0 / 2.0) * Real.pi()) / 180.0)) + Real.cos((((15.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((25.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((35.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((45.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((55.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((65.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((75.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((85.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((95.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((105.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((115.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((125.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((135.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((145.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((155.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((165.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((175.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((185.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((195.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((205.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((215.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((225.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((235.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((245.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((255.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((265.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((275.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((285.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((295.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((305.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((315.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((325.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((335.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((345.0 / 2.0) * Real.pi()) / 180.0))) - ((((((((((((((((((((((((((((((((((Real.cos((((15.0 / 2.0) * Real.pi()) / 180.0)) + Real.cos((((25.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((35.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((45.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((55.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((65.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((75.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((85.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((95.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((105.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((115.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((125.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((135.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((145.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((155.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((165.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((175.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((185.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((195.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((205.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((215.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((225.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((235.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((245.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((255.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((265.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((275.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((285.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((295.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((305.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((315.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((325.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((335.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((345.0 / 2.0) * Real.pi()) / 180.0))) + Real.cos((((355.0 / 2.0) * Real.pi()) / 180.0)))) == (Real.cos((((5.0 / 2.0) * Real.pi()) / 180.0)) - Real.cos((((355.0 / 2.0) * Real.pi()) / 180.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 3733-3745
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.cos((Real.pi() * (1.0 / 72.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.cos((Real.pi() * (71.0 / 72.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := cos (π * (1 / 72 : ℝ))); (a := cos (π * (71 / 72 : ℝ)))
                  // UNCITED-APPLIED internal ×247 [exec 574 3733-3745]: applications made inside the tactic's own automation, not stated — add_zero ×8, mul_one ×2; machinery/glue: Mathlib.Tactic.Ring.atom_pf' ×8, Mathlib.Tactic.Ring.div_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.cast_pos ×8 (+43 more heads, ×205) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                }
              }
              // [TACTIC: rwSeq [ h₆ ]]
              // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (cos (((5 : ℝ) * ↑k - 2.5) * π / (…, cos (2.5 * π / (180 : ℝ)) - cos (177.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = (2 : ℝ) * cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 609 3935-3944]
              assert ((Real.cos(((2.5 * Real.pi()) / 180.0)) - Real.cos(((177.5 * Real.pi()) / 180.0))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by {  // sub-goal before `have` (Lean state) // @tac 3953-4638 // @tac 4647-4801 // @tac 4647-4772 // @tac 4647-4743 // @tac 4647-4715 // @tac 4647-4684 // @tac 4647-4656
                // have h₇ : Real.cos ( ( 177.5 * Real.pi / 180 ) ) == - Real.cos ( 2.5 * Real.pi /  [type from Lean state]
                assert (Real.cos(((177.5 * Real.pi()) / 180.0)) == -(Real.cos(((2.5 * Real.pi()) / 180.0)))) by { // @tac 4048-4241 // @tac 4252-4264
                  // have h₇₁ : Real.cos ( ( 177.5 * Real.pi / 180 ) ) == Real.cos ( ( Real.pi - ( 2.5  [type from Lean state]
                  assert (Real.cos(((177.5 * Real.pi()) / 180.0)) == Real.cos((Real.pi() - ((2.5 * Real.pi()) / 180.0)))) by { // @tac 4159-4241 // @tac 4159-4205 // @tac 4159-4166
                    // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                    // [TACTIC: Ring_nfAt]
                    PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                    // `ring_nf` closed the goal; the rest of the chain did not run
                    // UNCITED-APPLIED internal ×118 [exec 678 4159-4166]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×5, Mathlib.Meta.NormNum.isRat_mul ×5, Mathlib.Meta.NormNum.IsNat.to_isRat ×5 (+49 more heads, ×97) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                  }
                  // [TACTIC: rwSeq [ h₇₁ ]]
                  // UNCITED-APPLIED congrArg(cos (177.5 * π / (180 : ℝ)), cos (π - 2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = -cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 695 4252-4264]
                  assert (Real.cos((Real.pi() - ((2.5 * Real.pi()) / 180.0))) == -(Real.cos(((2.5 * Real.pi()) / 180.0)))) by {  // sub-goal before `have` (Lean state) // @tac 4275-4516 // @tac 4527-4638 // @tac 4527-4606 // @tac 4527-4571 // @tac 4527-4539
                    // have h₇₂ : Real.cos ( ( Real.pi - ( 2.5 * Real.pi / 180 ) ) ) == - Real.cos ( 2.5  [type from Lean state]
                    assert (Real.cos((Real.pi() - ((2.5 * Real.pi()) / 180.0))) == -(Real.cos(((2.5 * Real.pi()) / 180.0)))) by { // @tac 4385-4516 // @tac 4385-4480 // @tac 4385-4441 // @tac 4385-4405
                      // [TACTIC: «_<;>_» [ Real.cos_pi_sub ] rw [ Real.cos_pi_sub ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                      // [TACTIC: rwSeq [ Real.cos_pi_sub ]]
                      RealCosPiSub(((2.5 * Real.pi()) / 180.0));  // cite: Real.cos_pi_sub
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg(cos (π - 2.5 * π / (180 : ℝ)), -cos (2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = -cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 757 4385-4405]
                    }
                    // [TACTIC: «_<;>_» [ h₇₂ ] rw [ h₇₂ ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                    // [TACTIC: rwSeq [ h₇₂ ]]
                    // `rw` closed the goal; the rest of the chain did not run
                    // UNCITED-APPLIED congrArg(cos (π - 2.5 * π / (180 : ℝ)), -cos (2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = -cos (2.5 * π / (180 : ℝ))): no library counterpart (not stated) [exec 815 4527-4539]
                  }
                }
                // [TACTIC: «_<;>_» [ h₇ ] rw [ h₇ ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
                // [TACTIC: choice [ h₇ ] rw [ h₇ ]]
                // UNCITED-APPLIED congrArg(cos (177.5 * π / (180 : ℝ)), -cos (2.5 * π / (180 : ℝ)), fun (_a : ℝ) => cos (2.5 * π / (180 : ℝ)) - _a = (2 : ℝ) * cos (2.5 *…): no library counterpart (not stated) [exec 883 4647-4656]
                assert ((Real.cos(((2.5 * Real.pi()) / 180.0)) - -(Real.cos(((2.5 * Real.pi()) / 180.0)))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4677-4684
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  PowOne(Real.cos((Real.pi() * (1.0 / 72.0))));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×108 [exec 918 4677-4684]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Meta.NormNum.IsNat.raw_refl ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+54 more heads, ×84) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                }
              }
            }
          }
        }
        // have h₃ : Real.sin ( ( 2.5 * Real.pi / 180 ) ) > 0  [type from Lean state]
        assert (Real.sin(((2.5 * Real.pi()) / 180.0)) > 0.0) by { // @tac 4869-5035 // @tac 4869-4985 // @tac 4869-4954 // @tac 4869-4924 // @tac 4869-4903
          // [TACTIC: «_<;>_» Real.sin_pos_of_pos_of_lt_pi apply Real.sin_pos_of_pos_of_lt_pi <;> norm_num norm_num <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
          // [TACTIC: choice Real.sin_pos_of_pos_of_lt_pi apply Real.sin_pos_of_pos_of_lt_pi]
          assert (0.0 < (((2.5 * Real.pi()) / 180.0))) && ((((2.5 * Real.pi()) / 180.0)) < Real.pi());  // precondition of RealSinPosOfPosOfLtPi (Lean: Real.sin_pos_of_pos_of_lt_pi)
          RealSinPosOfPosOfLtPi(((2.5 * Real.pi()) / 180.0));  // cite: Real.sin_pos_of_pos_of_lt_pi
          assert (0.0 < ((2.5 * Real.pi()) / 180.0)) by {  // sub-goal of `norm_num` (Lean state) // @tac 4916-4924
            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
            assert (0.0 < Real.pi()) by {  // sub-goal of `linarith` (Lean state) // @tac 4947-4954 // @tac 4977-4985 // @tac 5008-5035
              // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1028)]
              // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5008-5035 exec 1024)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (3.0 > 0.0)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(3 : ℝ) * (-1 : ℝ) + π < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_3(m);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×10 [exec 1024 5008-5035]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
              // UNCITED-APPLIED internal ×47 [exec 1028 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+26 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 1029 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            }
            // UNCITED-APPLIED internal ×45 [exec 988 4916-4924]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: congrArg ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsNat.to_isRat ×5, Eq.trans ×3 (+18 more heads, ×25)
          }
          assert (((2.5 * Real.pi()) / 180.0) < Real.pi()) by {  // sub-goal of `norm_num` (Lean state) // @tac 4916-4924
            assert ((((5.0 / 2.0) * Real.pi()) / 180.0) < Real.pi()) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4947-4954
              PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
              assert ((Real.pi() * (1.0 / 72.0)) < Real.pi()) by {  // sub-goal of `linarith` (Lean state) // @tac 4977-4985 // @tac 5008-5035
                // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1033, 1034, 1035 / `ring1` exec 1040)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5008-5035 exec 1032)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(213 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (213.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(72 : ℝ) * (π - π * (1 / 72 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - (Real.pi() * (1.0 / 72.0))) <= 0.0); (72.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(71 : ℝ) * ((3 : ℝ) - π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - Real.pi()) < 0.0); (71.0 > 0.0)
                // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(213 : ℝ) * (-1 : ℝ) + ((72 : ℝ) * π - (1 : ℝ) * π * ((1 : ℝ) * (1 : ℝ))) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_4(m);  // cert: Left.add_neg
                // UNCITED-APPLIED internal ×13 [exec 1015 4977-4985]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, Eq.trans ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×16 [exec 1032 5008-5035]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.mul_neg ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×106 [exec 1040 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.add_mul ×6 (+34 more heads, ×80) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 1041 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×14 [exec 1033 5008-5035]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 1034 5008-5035]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 1035 5008-5035]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 1036 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×6 [exec 1042 5008-5035]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              }
              // UNCITED-APPLIED internal ×65 [exec 1003 4947-4954]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×5, Eq.trans ×4, Mathlib.Meta.NormNum.IsRat.to_raw_eq ×4, Mathlib.Tactic.Ring.cast_pos ×3 (+23 more heads, ×48) (cited in this block, not counted here: pow_one [Lean recorded ×1])
            }
            // UNCITED-APPLIED internal ×37 [exec 991 4916-4924]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×6, Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.raw_refl ×3 (+14 more heads, ×21)
          }
        }
        // have h₄ : Real.sin ( ( 2.5 * Real.pi / 180 ) ) != 0  [type from Lean state]
        assert (Real.sin(((2.5 * Real.pi()) / 180.0)) != 0.0) by { // @tac 5097-5105
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5097-5105 exec 1059)
          cert_identity_5(m);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×10 [exec 1059 5097-5105]: applications made inside the tactic's own automation, not stated — CancelDenoms.neg_subst ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Not.intro ×1, Linarith.lt_irrefl ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×31 [exec 1063 5097-5105]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+25 more heads, ×25) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1063)]
          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
        }
        // have h₅ : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * Real.pi / (180 : ℝ)) = Real.cos (2.5 * Real.pi / (  [type from Lean state]
        assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0)))) by { // @tac 5273-5457 // @tac 5466-5832 // @tac 5841-5854
          // have h₅₁ : (2 : ℝ) * Real.sin (2.5 * Real.pi / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * R  [type from Lean state]
          assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) by { // @tac 5447-5457
            // [TACTIC: exact h₂]
            assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == (2.0 * Real.cos(((2.5 * Real.pi()) / 180.0))));
          }
          // have h₅₂ : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * Real.pi / (180 : ℝ)) = Real.cos (2.5 * Real.pi / (  [type from Lean state]
          assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0)))) by { // @tac 5632-5832 // @tac 5632-5657
            // [TACTIC: «_<;>_» at h₅₁ ⊢ <;> nlinarith [ Real.sin_le_one ( 2.5 * Real.pi / 180 ) , Real.cos_le_one ( 2.5 * Real.pi / 180 ) , Real.sin_le_one ( 5 * ( 35 : ℝ ) * Real.pi / 180 ) ] nlinarith [ Real.sin_le_one ( 2.5 * Real.pi / 180 ) , Real.cos_le_one ( 2.5 * Real.pi / 180 ) , Real.sin_le_one ( 5 * ( 35 : ℝ ) * Real.pi / 180 ) ]]
            // [TACTIC: «Field_simp[_]At___» at h₅₁ ⊢]
            assert ((Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) * Real.sin(((2.5 * Real.pi()) / 180.0))) == Real.cos(((2.5 * Real.pi()) / 180.0))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 5682-5832
              // UNCITED Real.sin_le_one: no Lean instance recorded (arguments unknown), not guessed
              // UNCITED Real.cos_le_one: no Lean instance recorded (arguments unknown), not guessed
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1128, 1129, 1130, 1131, 1132, 1133 … / `ring1` exec 1135, 1144)]
              // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5682-5832 exec 1127)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (((1 : ℝ) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), sin ((5 : ℝ) * ↑k * π / (180 : ℝ))) * ((1 : ℝ) * sin (2.5 * π …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0)))) - (1.0 * Real.cos(((2.5 * Real.pi()) / 180.0)))) < 0.0); (2.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * cos (2.5 * π / (180 : ℝ)) - ((1 : ℝ) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), sin ((5 : ℝ) * ↑k * π / …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * Real.cos(((2.5 * Real.pi()) / 180.0))) - ((1.0 * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) * (1.0 * Real.sin(((2.5 * Real.pi()) / 180.0))))) < 0.0); (2.0 > 0.0)
              cert_identity_6(m);  // cert: Linarith.lt_of_eq_of_lt
              cert_identity_7(m);  // cert: Linarith.lt_of_eq_of_lt
              // UNCITED-APPLIED internal ×24 [exec 1127 5682-5832]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×4, CancelDenoms.sub_subst ×3, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2 (+3 more heads, ×3)
              // UNCITED-APPLIED internal ×112 [exec 1135 5682-5832]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+30 more heads, ×79) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1128 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1129 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1130 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1131 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 1136 5682-5832]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED-APPLIED internal ×104 [exec 1144 5682-5832]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+29 more heads, ×71) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1132 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1133 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1134 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 1137 5682-5832]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 1145 5682-5832]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            }
          }
          // [TACTIC: exact h₅₂]
          assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))));
        }
        // [TACTIC: exact h₅]
        assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))));
      }
      // [TACTIC: exact h₁]
      assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))));
    }
    // have h_sum_tan : ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), Real.sin ((5 : ℝ) * ↑k * Real.pi / (180 : ℝ)) = Real.tan ((35 : ℝ) * Real.p  [type from Lean state]
    assert (Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))) == Real.tan(((35.0 * Real.pi()) / 72.0))) by { // @tac 6019-6029
      // [TACTIC: rwSeq [ h_sum ]]
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), sin ((5 : ℝ) * ↑k * π / (180 : ℝ)), cos (2.5 * π / (180 : ℝ)) / sin (2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = tan ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1169 6019-6029]
      assert (Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))) == Real.tan(((35.0 * Real.pi()) / 72.0))) by {  // sub-goal before `have` (Lean state) // @tac 6034-7618 // @tac 7623-7632
        // have h₃ : Real.cos ( ( 2.5 * Real.pi / 180 ) ) / Real.sin ( ( 2.5 * Real.pi / 18  [type from Lean state]
        assert (Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))) == Real.tan(((35.0 * Real.pi()) / 72.0))) by { // @tac 6153-7602 // @tac 7609-7618
          // have h₄ : Real.cos ( ( 2.5 * Real.pi / 180 ) ) / Real.sin ( ( 2.5 * Real.pi / 18  [type from Lean state]
          assert (Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))) == Real.tan(((35.0 * Real.pi()) / 72.0))) by { // @tac 6274-6638 // @tac 6647-7011 // @tac 7020-7035
            // have h₅ : Real.cos ( ( 2.5 * Real.pi / 180 ) ) == Real.sin ( ( 35 * Real.pi / 72  [type from Lean state]
            assert (Real.cos(((2.5 * Real.pi()) / 180.0)) == Real.sin(((35.0 * Real.pi()) / 72.0))) by { // @tac 6413-6615 // @tac 6626-6638
              // have h₅₁ : Real.cos ( ( 2.5 * Real.pi / 180 ) ) == Real.sin ( ( 35 * Real.pi / 72  [type from Lean state]
              assert (Real.cos(((2.5 * Real.pi()) / 180.0)) == Real.sin(((35.0 * Real.pi()) / 72.0))) by { // @tac 6508-6615 // @tac 6508-6591 // @tac 6508-6564 // @tac 6508-6540
                // [TACTIC: «_<;>_» [ ← Real.sin_pi_div_two_sub ] rw [ ← Real.sin_pi_div_two_sub ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                // [TACTIC: choice [ ← Real.sin_pi_div_two_sub ] rw [ ← Real.sin_pi_div_two_sub ]]
                RealSinPiDivTwoSub(((2.5 * Real.pi()) / 180.0));  // cite: Real.sin_pi_div_two_sub
                // UNCITED-APPLIED Eq.symm(Real.sin(((Real.pi() / 2.0) - ((2.5 * Real.pi()) / 180.0))), Real.cos(((2.5 * Real.pi()) / 180.0))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                // UNCITED-APPLIED congrArg(cos (2.5 * π / (180 : ℝ)), sin (π / (2 : ℝ) - 2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = sin ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1279 6508-6540]
                assert (Real.sin(((Real.pi() / 2.0) - ((2.5 * Real.pi()) / 180.0))) == Real.sin(((35.0 * Real.pi()) / 72.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 6557-6564
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×133 [exec 1314 6557-6564]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsRat.to_raw_eq ×7, Mathlib.Meta.NormNum.IsNat.to_isRat ×6, Mathlib.Meta.NormNum.IsRat.den_nz ×6, Eq.trans ×5 (+50 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                }
              }
              // [TACTIC: rwSeq [ h₅₁ ]]
              // UNCITED-APPLIED congrArg(cos (2.5 * π / (180 : ℝ)), sin ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a = sin ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1331 6626-6638]
            }
            // have h₆ : Real.sin ( ( 2.5 * Real.pi / 180 ) ) == Real.cos ( ( 35 * Real.pi / 72  [type from Lean state]
            assert (Real.sin(((2.5 * Real.pi()) / 180.0)) == Real.cos(((35.0 * Real.pi()) / 72.0))) by { // @tac 6786-6988 // @tac 6999-7011
              // have h₆₁ : Real.sin ( ( 2.5 * Real.pi / 180 ) ) == Real.cos ( ( 35 * Real.pi / 72  [type from Lean state]
              assert (Real.sin(((2.5 * Real.pi()) / 180.0)) == Real.cos(((35.0 * Real.pi()) / 72.0))) by { // @tac 6881-6988 // @tac 6881-6964 // @tac 6881-6937 // @tac 6881-6913
                // [TACTIC: «_<;>_» [ ← Real.cos_pi_div_two_sub ] rw [ ← Real.cos_pi_div_two_sub ] <;> ring_nf ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
                // [TACTIC: choice [ ← Real.cos_pi_div_two_sub ] rw [ ← Real.cos_pi_div_two_sub ]]
                RealCosPiDivTwoSub(((2.5 * Real.pi()) / 180.0));  // cite: Real.cos_pi_div_two_sub
                // UNCITED-APPLIED Eq.symm(Real.cos(((Real.pi() / 2.0) - ((2.5 * Real.pi()) / 180.0))), Real.sin(((2.5 * Real.pi()) / 180.0))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                // UNCITED-APPLIED congrArg(sin (2.5 * π / (180 : ℝ)), cos (π / (2 : ℝ) - 2.5 * π / (180 : ℝ)), fun (_a : ℝ) => _a = cos ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1403 6881-6913]
                assert (Real.cos(((Real.pi() / 2.0) - ((2.5 * Real.pi()) / 180.0))) == Real.cos(((35.0 * Real.pi()) / 72.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 6930-6937
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED internal ×133 [exec 1438 6930-6937]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsRat.to_raw_eq ×7, Mathlib.Meta.NormNum.IsNat.to_isRat ×6, Mathlib.Meta.NormNum.IsRat.den_nz ×6, Eq.trans ×5 (+50 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                }
              }
              // [TACTIC: rwSeq [ h₆₁ ]]
              // UNCITED-APPLIED congrArg(sin (2.5 * π / (180 : ℝ)), cos ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a = cos ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1455 6999-7011]
            }
            // [TACTIC: rwSeq [ h₅ , h₆ ]]
            // UNCITED-APPLIED congrArg(cos (2.5 * π / (180 : ℝ)), sin ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a / sin (2.5 * π / (180 : ℝ)) = tan ((35 : ℝ) * π / …): no library counterpart (not stated) [exec 1480 7020-7035]
            // UNCITED-APPLIED congrArg(sin (2.5 * π / (180 : ℝ)), cos ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => sin ((35 : ℝ) * π / (72 : ℝ)) / _a = tan ((35 : ℝ) * …): no library counterpart (not stated) [exec 1480 7020-7035]
            assert (Real.div(Real.sin(((35.0 * Real.pi()) / 72.0)), Real.cos(((35.0 * Real.pi()) / 72.0))) == Real.tan(((35.0 * Real.pi()) / 72.0))) by {  // sub-goal before `have` (Lean state) // @tac 7122-7269 // @tac 7278-7602 // @tac 7278-7443 // @tac 7278-7412 // @tac 7278-7353 // @tac 7278-7287
              // have h₇ : Real.tan ( ( 35 * Real.pi / 72 ) ) == Real.sin ( ( 35 * Real.pi / 72 )  [type from Lean state]
              assert (Real.tan(((35.0 * Real.pi()) / 72.0)) == Real.div(Real.sin(((35.0 * Real.pi()) / 72.0)), Real.cos(((35.0 * Real.pi()) / 72.0)))) by { // @tac 7241-7269
                // [TACTIC: rwSeq [ Real.tan_eq_sin_div_cos ]]
                RealTanEqSinDivCos(((35.0 * Real.pi()) / 72.0));  // cite: Real.tan_eq_sin_div_cos
                // UNCITED-APPLIED congrArg(tan ((35 : ℝ) * π / (72 : ℝ)), sin ((35 : ℝ) * π / (72 : ℝ)) / cos ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a = sin ((35 : ℝ) * π / (72 : ℝ)) / cos ((35 : ℝ) * …): no library counterpart (not stated) [exec 1528 7241-7269]
              }
              // [TACTIC: «_<;>_» [ h₇ ] rw [ h₇ ] <;> by_cases h : Real.cos ( 35 * Real.pi / 72 ) = 0 <;> by_cases h' : Real.sin ( 35 * Real.pi / 72 ) = 0 <;> field_simp [ h , h' ] field_simp [ h , h' ] <;> nlinarith [ Real.sin_le_one ( 35 * Real.pi / 72 ) , Real.cos_le_one ( 35 * Real.pi / 72 ) , Real.sin_sq_add_cos_sq ( 35 * Real.pi / 72 ) ] nlinarith [ Real.sin_le_one ( 35 * Real.pi / 72 ) , Real.cos_le_one ( 35 * Real.pi / 72 ) , Real.sin_sq_add_cos_sq ( 35 * Real.pi / 72 ) ]]
              // [TACTIC: rwSeq [ h₇ ]]
              // `rw` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED congrArg(tan ((35 : ℝ) * π / (72 : ℝ)), sin ((35 : ℝ) * π / (72 : ℝ)) / cos ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => sin ((35 : ℝ) * π / (72 : ℝ)) / cos ((35 : ℝ) * π / (…): no library counterpart (not stated) [exec 1573 7278-7287]
            }
          }
          // [TACTIC: rwSeq [ h₄ ]]
          // UNCITED-APPLIED congrArg(cos (2.5 * π / (180 : ℝ)) / sin (2.5 * π / (180 : ℝ)), tan ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a = tan ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1622 7609-7618]
        }
        // [TACTIC: rwSeq [ h₃ ]]
        // UNCITED-APPLIED congrArg(cos (2.5 * π / (180 : ℝ)) / sin (2.5 * π / (180 : ℝ)), tan ((35 : ℝ) * π / (72 : ℝ)), fun (_a : ℝ) => _a = tan ((35 : ℝ) * π / (72 : ℝ))): no library counterpart (not stated) [exec 1647 7623-7632]
      }
    }
    // have h_tan_eq : Real.tan ( ( m * Real.pi / 180 ) ) == Real.tan ( ( 35 * Real.pi / 72 )  [type from Lean state]
    assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0))) by { // @tac 7724-7738 // @tac 7743-7751
      // [TACTIC: rwSeq [ h₁ ] at *]
      assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan((((m).to_real() * Real.pi()) / 180.0)));  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 7724-7738
      assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.div(Real.cos(((2.5 * Real.pi()) / 180.0)), Real.sin(((2.5 * Real.pi()) / 180.0))));  // hypothesis h_sum after `rw` (Lean state) // @tac-hyp 7724-7738
      assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0)));  // hypothesis h_sum_tan after `rw` (Lean state) // @tac-hyp 7724-7738
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7743-7751 exec 1715)
      cert_identity_8(m);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_9(m);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×19 [exec 1715 7743-7751]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×6, Linarith.lt_of_eq_of_lt ×2, Linarith.without_one_mul ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×54 [exec 1716 7743-7751]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Tactic.Ring.mul_congr ×2 (+29 more heads, ×42) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×50 [exec 1717 7743-7751]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+28 more heads, ×41) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1716, 1717)]
      // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
    }
    // have h_m_pi_div_180_eq : m * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
    assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 7830-7913 // @tac 7918-11077 // @tac 11082-11092
      // have h₃ : Real.tan ( ( m * Real.pi / 180 ) ) == Real.tan ( ( 35 * Real.pi / 72 )  [type from Lean state]
      assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0))) by {
        // [TACTIC: exact h_tan_eq]
        assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0)));
      }
      // have h₄ : m * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
      assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 8084-11060 // @tac 11067-11077
        // have h₅ : m * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
        assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 8247-9539 // @tac 9548-9900 // @tac 10008-10087 // @tac 10096-11041 // @tac 11050-11060
          // have h₆ : m * Real.pi / 180 < Real.pi / 2  [type from Lean state]
          assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0)) by { // @tac 8307-8684 // @tac 8695-9506 // @tac 9517-9539
            // have h₇ :  < 90  [type from Lean state]
            assert ((m).to_real() < 90.0) by { // @tac 8352-8398 // @tac 8411-8635 // @tac 8648-8684 // @tac 8648-8657
              // have h₈ :  / m.den < 90  [type from Lean state]
              assert (Real.div((m.num as real), (m.denom as real)) < 90.0) by {
                // [TACTIC: exact h₂]
                assert (Real.div((m.num as real), (m.denom as real)) < 90.0);
              }
              // have h₉ :  ==  / m.den  [type from Lean state]
              assert ((m).to_real() == Real.div((m.num as real), (m.denom as real)));
                // GAP: before-goal of `norm_cast` not stated: does not render: ↑m = ↑m.num / ↑m.den // @tac 8477-8635 // @tac 8477-8608 // @tac 8477-8561 // @tac 8477-8533 // @tac 8477-8486
                // [TACTIC: «_<;>_» norm_cast norm_cast <;> field_simp [ Rat.num_div_den ] field_simp [ Rat.num_div_den ] <;> norm_cast norm_cast norm_cast <;> field_simp [ Rat.num_div_den ] field_simp [ Rat.num_div_den ] <;> linarith linarith]
                // [TACTIC: choice norm_cast norm_cast]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×6 [exec 1864 8477-8486]: applications made inside the tactic's own automation, not stated — Int.cast_natCast ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Eq.symm ×1
                // GAP: sub-goal of `field_simp` does not render: m = m.num /. ↑m.den // @tac 8505-8533
                // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
                // UNCITED Rat.num_div_den: no Lean instance recorded (arguments unknown), not guessed
                // UNCITED-APPLIED internal ×7 [exec 1890 8505-8533]: applications made inside the tactic's own automation, not stated — Rat.divInt_ofNat ×1, Rat.mkRat_num_den' ×1; machinery/glue: Eq.trans ×2, of_eq_true ×1, congrArg ×1, eq_self ×1
              // [TACTIC: «_<;>_» [ h₉ ] rw [ h₉ ] <;> exact h₈ exact h₈]
              // [TACTIC: choice [ h₉ ] rw [ h₉ ]]
              // UNCITED-APPLIED congrArg(↑m, ↑m.num / ↑m.den, fun (_a : ℝ) => _a < (90 : ℝ)): no library counterpart (not stated) [exec 1918 8648-8657]
              assert (Real.div((m.num as real), (m.denom as real)) < 90.0);  // sub-goal of `exact` (Lean state) // @tac 8674-8684
            }
            // have h₁₀ :  * Real.pi / 180 < Real.pi / 2  [type from Lean state]
            assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0)) by { // @tac 8768-8809 // @tac 8822-8867 // @tac 8880-8923 // @tac 8936-8973 // @tac 8986-9480 // @tac 9493-9506
              // have h₁₁ : 0 < Real.pi  [type from Lean state]
              assert (0.0 < Real.pi()) by {
                // [TACTIC: exact Real.pi_pos]
                RealPiPos();  // cite: Real.pi_pos [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
              }
              // have h₁₂ : 0 < 180  [type from Lean state]
              assert (0.0 < 180.0); // @tac 8859-8867
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                // UNCITED-APPLIED internal ×6 [exec 1998 8859-8867]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // have h₁₃ : 0 < 2  [type from Lean state]
              assert (0.0 < 2.0); // @tac 8915-8923
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                // UNCITED-APPLIED internal ×6 [exec 2015 8915-8923]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // have h₁₄ :  < 90  [type from Lean state]
              assert ((m).to_real() < 90.0) by {
                // [TACTIC: exact h₇]
                assert ((m).to_real() < 90.0);
              }
              // have h₁₅ :  * Real.pi / 180 < Real.pi / 2  [type from Lean state]
              assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0)) by { // @tac 9061-9098 // @tac 9113-9220 // @tac 9235-9419 // @tac 9434-9457 // @tac 9472-9480
                // have h₁₆ :  < 90  [type from Lean state]
                assert ((m).to_real() < 90.0) by {
                  // [TACTIC: exact h₇]
                  assert ((m).to_real() < 90.0);
                }
                // have h₁₇ :  * Real.pi / 180 < 90 * Real.pi / 180  [type from Lean state]
                assert ((((m).to_real() * Real.pi()) / 180.0) < ((90.0 * Real.pi()) / 180.0)) by { // @tac 9197-9220
                  // [TACTIC: «Nlinarith[_]At___» [ Real.pi_pos ]]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9197-9220 exec 2072)
                  // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * ((90 : ℝ) * π / (180 : ℝ) - ↑m * π / (180 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((90.0 * Real.pi()) / 180.0) - (((m).to_real() * Real.pi()) / 180.0)) <= 0.0); (180.0 > 0.0)
                  if (((m).to_real() - 90.0) < 0.0) && (0.0 < Real.pi()) { cert_piece_10(m); }  // cert: mul_pos_of_neg_of_neg
                  cert_identity_11(m);  // cert: add_lt_of_le_of_neg
                  // UNCITED-APPLIED internal ×16 [exec 2072 9197-9220]: applications made inside the tactic's own automation, not stated — CancelDenoms.div_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, CancelDenoms.sub_subst ×1, sub_nonpos_of_le ×1, mul_pos_of_neg_of_neg ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
                  // UNCITED-APPLIED internal ×14 [exec 2074 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 2075 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 2076 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×14 [exec 2077 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 2078 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×6 [exec 2079 9197-9220]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2073, 2074, 2075, 2076, 2077, 2078 / `ring1` exec 2080)]
                  // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                  // UNCITED-APPLIED internal ×107 [exec 2080 9197-9220]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+32 more heads, ×80) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  // UNCITED-APPLIED internal ×5 [exec 2073 9197-9220]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                }
                // have h₁₈ : 90 * Real.pi / 180 == Real.pi / 2  [type from Lean state]
                assert (((90.0 * Real.pi()) / 180.0) == (Real.pi() / 2.0)) by { // @tac 9305-9419 // @tac 9305-9371 // @tac 9305-9343 // @tac 9305-9312
                  // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
                  // [TACTIC: Ring_nfAt]
                  PowOne(Real.pi());  // cite: pow_one [applied by the tactic, not named in it]
                  // `ring_nf` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED internal ×65 [exec 2112 9305-9312]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+26 more heads, ×47) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                }
                // [TACTIC: rwSeq [ h₁₈ ] at h₁₇]
                assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0));  // hypothesis h₁₇ after `rw` (Lean state) // @tac-hyp 9434-9457
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9472-9480 exec 2162)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(180 : ℝ) * (↑m * π / (180 : ℝ) - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((m).to_real() * Real.pi()) / 180.0) - (Real.pi() / 2.0)) < 0.0); (180.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * (π / (2 : ℝ) - ↑m * π / (180 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) - (((m).to_real() * Real.pi()) / 180.0)) <= 0.0); (180.0 > 0.0)
                cert_identity_12(m);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×16 [exec 2162 9472-9480]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×4, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×73 [exec 2181 9472-9480]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+30 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 2165 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2166 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2167 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2163 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2164 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2168 9472-9480]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×14 [exec 2172 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2173 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×5 [exec 2169 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2170 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2171 9472-9480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2174 9472-9480]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2163, 2165, 2166, 2167, 2169, 2170 … / `ring1` exec 2181)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              }
              // [TACTIC: exact h₁₅]
              assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0));
            }
            // [TACTIC: Exact_mod_cast h₁₀]
          }
          // have h₇ : 35 * Real.pi / 72 < Real.pi / 2  [type from Lean state]
          assert (((35.0 * Real.pi()) / 72.0) < (Real.pi() / 2.0)) by { // @tac 9608-9870 // @tac 9881-9900
            // have h₈ : 35 * Real.pi / 72 < Real.pi / 2  [type from Lean state]
            assert (((35.0 * Real.pi()) / 72.0) < (Real.pi() / 2.0)) by { // @tac 9678-9716 // @tac 9729-9773 // @tac 9786-9829 // @tac 9842-9870
              // have h₉ : 0 < Real.pi  [type from Lean state]
              assert (0.0 < Real.pi()) by {
                // [TACTIC: exact Real.pi_pos]
                RealPiPos();  // cite: Real.pi_pos [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
              }
              // have h₁₀ : 0 < 72  [type from Lean state]
              assert (0.0 < 72.0); // @tac 9765-9773
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                // UNCITED-APPLIED internal ×6 [exec 2245 9765-9773]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // have h₁₁ : 0 < 2  [type from Lean state]
              assert (0.0 < 2.0); // @tac 9821-9829
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                // UNCITED-APPLIED internal ×6 [exec 2262 9821-9829]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // [TACTIC: «Nlinarith[_]At___» [ Real.pi_gt_three ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9842-9870 exec 2263)
              // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(72 : ℝ) * (π / (2 : ℝ) - (35 : ℝ) * π / (72 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) - ((35.0 * Real.pi()) / 72.0)) <= 0.0); (72.0 > 0.0)
              cert_identity_13(m);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×12 [exec 2263 9842-9870]: applications made inside the tactic's own automation, not stated — CancelDenoms.div_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, CancelDenoms.sub_subst ×1, CancelDenoms.mul_subst ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
              // UNCITED-APPLIED internal ×7 [exec 2265 9842-9870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
              // UNCITED-APPLIED internal ×5 [exec 2266 9842-9870]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×14 [exec 2267 9842-9870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 2268 9842-9870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×6 [exec 2269 9842-9870]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2264, 2266, 2267, 2268 / `ring1` exec 2276)]
              // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              // UNCITED-APPLIED internal ×72 [exec 2276 9842-9870]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+31 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×14 [exec 2264 9842-9870]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            }
            // [TACTIC: Exact_mod_cast h₈]
          }
          // have h₈ : Real.tan ( ( m * Real.pi / 180 ) ) == Real.tan ( ( 35 * Real.pi / 72 )  [type from Lean state]
          assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0))) by {
            // [TACTIC: exact h₃]
            assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0)));
          }
          // have h₉ : m * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
          assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 10263-10345 // @tac 10356-11017 // @tac 11028-11041
            // have h₁₀ : Real.tan ( ( m * Real.pi / 180 ) ) == Real.tan ( ( 35 * Real.pi / 72 )  [type from Lean state]
            assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0))) by {
              // [TACTIC: exact h₃]
              assert (Real.tan((((m).to_real() * Real.pi()) / 180.0)) == Real.tan(((35.0 * Real.pi()) / 72.0)));
            }
            // have h₁₁ : m * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
            assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 10530-11017
              assert (-((Real.pi() / 2.0)) < (((m).to_real() * Real.pi()) / 180.0)) by {  // sub-goal of `by` (Lean state) // @tac 10667-10935 // @tac 10950-10958
                // have h₁₂ :  * Real.pi / 180 > 0  [type from Lean state]
                assert ((((m).to_real() * Real.pi()) / 180.0) > 0.0) by { // @tac 10734-10788 // @tac 10805-10846 // @tac 10863-10908 // @tac 10925-10935
                  // have h₁₃ :  > 0  [type from Lean state]
                  assert ((m).to_real() > 0.0); // @tac 10769-10788
                    // [TACTIC: Exact_mod_cast h₀]
                    // UNCITED-APPLIED Eq.symm(Rat.of_int(0), Rat.of_int(0)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    // UNCITED-APPLIED Eq.symm((0 as real), 0.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    // UNCITED-APPLIED Eq.symm((Rat.of_int(0)).to_real(), 0.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                    // UNCITED-APPLIED congrArg((0 : ℚ), ↑(0 : ℕ), fun (x : ℚ) => x < m): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED congrArg(↑(0 : ℕ), (0 : ℚ), fun (x : ℚ) => x < m): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED congrArg((0 : ℝ), ↑(0 : ℕ), GT.gt ↑m): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED congrArg(↑(0 : ℕ), ↑↑(0 : ℕ), GT.gt ↑m): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED congrArg(↑(0 : ℕ), (0 : ℚ), Rat.cast): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED Eq.trans(↑(0 : ℕ), (0 : ℝ), ↑↑(0 : ℕ)): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED Eq.trans(↑↑(0 : ℕ), ↑(0 : ℚ), (0 : ℝ)): no library counterpart (not stated) [exec 2373 10769-10788]
                    // UNCITED-APPLIED Rat.cast_zero: no library counterpart (not stated) [exec 2373 10769-10788]
                  // have h₁₄ : 0 < Real.pi  [type from Lean state]
                  assert (0.0 < Real.pi()) by {
                    // [TACTIC: exact Real.pi_pos]
                    RealPiPos();  // cite: Real.pi_pos [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
                  }
                  // have h₁₅ : 0 < 180  [type from Lean state]
                  assert (0.0 < 180.0); // @tac 10900-10908
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
                    // UNCITED-APPLIED internal ×6 [exec 2402 10900-10908]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  // [TACTIC: Positivity]
                  // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 10925-10935 exec 2403)
                  if (0.0 < ((m).to_real() * Real.pi())) && (0.0 < 180.0) { cert_piece_14(m); }  // cert: div_pos
                  if (0.0 < (m).to_real()) && (0.0 < Real.pi()) { cert_piece_15(m); }  // cert: mul_pos
                  // UNCITED-APPLIED internal ×3 [exec 2403 10925-10935]: applications made inside the tactic's own automation, not stated — Rat.cast_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], mul_pos [Lean recorded ×1])
                  assert (0.0 < (((m).to_real() * Real.pi()))) && (0.0 < (180.0));  // precondition of DivPos (Lean: div_pos)
                  DivPos(((m).to_real() * Real.pi()), 180.0);  // cite: div_pos [applied by the tactic, not named in it]
                  assert (0.0 < ((m).to_real())) && (0.0 < (Real.pi()));  // precondition of MulPos (Lean: mul_pos)
                  MulPos((m).to_real(), Real.pi());  // cite: mul_pos [applied by the tactic, not named in it]
                }
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10950-10958 exec 2404)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(90 : ℝ) * ((1 : ℝ) * (35 : ℝ) * ((1 : ℝ) * π) - (36 : ℝ) * π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * 35.0) * (1.0 * Real.pi())) - (36.0 * Real.pi())) < 0.0); (90.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(72 : ℝ) * ((35 : ℝ) * π / (72 : ℝ) - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((35.0 * Real.pi()) / 72.0) - (Real.pi() / 2.0)) < 0.0); (72.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(180 : ℝ) * -(↑m * π / (180 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (((m).to_real() * Real.pi()) / 180.0)); (180.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * (↑m * π / (180 : ℝ) - -(π / (2 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((m).to_real() * Real.pi()) / 180.0) - -((Real.pi() / 2.0))) <= 0.0); (180.0 > 0.0)
                // UNCITED-APPLIED Left.add_neg: certificate sum `(90 : ℝ) * ((1 : ℝ) * (35 : ℝ) * ((1 : ℝ) * π) - (36 : ℝ) * π) + -((1 : ℝ) * ↑m * ((1 : ℝ) * π)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                cert_identity_16(m);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×25 [exec 2404 10950-10958]: applications made inside the tactic's own automation, not stated — CancelDenoms.div_subst ×4, CancelDenoms.sub_subst ×2, CancelDenoms.mul_subst ×2, CancelDenoms.neg_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_neg_of_lt ×1, neg_neg_of_pos ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×4, Linarith.mul_neg ×3, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×129 [exec 2427 10950-10958]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+34 more heads, ×96) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 2405 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2416 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2417 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2408 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2419 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2420 10950-10958]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×6 [exec 2428 10950-10958]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 2411 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2406 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2407 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2410 10950-10958]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 2415 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2412 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2413 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2418 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2409 10950-10958]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2414 10950-10958]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2405, 2406, 2407, 2408, 2411, 2412 … / `ring1` exec 2427)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              }
              assert ((((m).to_real() * Real.pi()) / 180.0) < (Real.pi() / 2.0)) by {  // sub-goal of `by` (Lean state) // @tac 10963-10971
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10963-10971 exec 2433)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(180 : ℝ) * (↑m * π / (180 : ℝ) - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((m).to_real() * Real.pi()) / 180.0) - (Real.pi() / 2.0)) < 0.0); (180.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * (π / (2 : ℝ) - ↑m * π / (180 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) - (((m).to_real() * Real.pi()) / 180.0)) <= 0.0); (180.0 > 0.0)
                cert_identity_17(m);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 2433 10963-10971]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×73 [exec 2452 10963-10971]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+30 more heads, ×56) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 2436 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2437 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2438 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2434 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2435 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2439 10963-10971]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×14 [exec 2443 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2450 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×5 [exec 2440 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2447 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2448 10963-10971]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2451 10963-10971]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2434, 2436, 2437, 2438, 2440, 2443 … / `ring1` exec 2452)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              }
              assert (-((Real.pi() / 2.0)) < ((35.0 * Real.pi()) / 72.0)) by {  // sub-goal of `by` (Lean state) // @tac 10981-10989
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10981-10989 exec 2457)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(71 : ℝ) * ((1 : ℝ) * (35 : ℝ) * ((1 : ℝ) * π) - (36 : ℝ) * π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * 35.0) * (1.0 * Real.pi())) - (36.0 * Real.pi())) < 0.0); (71.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(72 : ℝ) * ((35 : ℝ) * π / (72 : ℝ) - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((35.0 * Real.pi()) / 72.0) - (Real.pi() / 2.0)) < 0.0); (72.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(72 : ℝ) * ((35 : ℝ) * π / (72 : ℝ) - -(π / (2 : ℝ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((35.0 * Real.pi()) / 72.0) - -((Real.pi() / 2.0))) <= 0.0); (72.0 > 0.0)
                cert_identity_18(m);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×17 [exec 2457 10981-10989]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, CancelDenoms.neg_subst ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.mul_neg ×2, Linarith.lt_irrefl ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×90 [exec 2476 10981-10989]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5 (+32 more heads, ×69) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 2458 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2459 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2460 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2461 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2462 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2463 10981-10989]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×6 [exec 2477 10981-10989]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×5 [exec 2464 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2465 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2466 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2467 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2468 10981-10989]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2469 10981-10989]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2458, 2459, 2460, 2461, 2464, 2465 … / `ring1` exec 2476)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              }
              assert (((35.0 * Real.pi()) / 72.0) < (Real.pi() / 2.0)) by {  // sub-goal of `by` (Lean state) // @tac 10994-11002
                // [TACTIC: «Linarith[_]At___»]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 10994-11002 exec 2482)
                // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(72 : ℝ) * ((35 : ℝ) * π / (72 : ℝ) - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((35.0 * Real.pi()) / 72.0) - (Real.pi() / 2.0)) < 0.0); (72.0 > 0.0)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(72 : ℝ) * (π / (2 : ℝ) - (35 : ℝ) * π / (72 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pi() / 2.0) - ((35.0 * Real.pi()) / 72.0)) <= 0.0); (72.0 > 0.0)
                cert_identity_19(m);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×15 [exec 2482 10994-11002]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                // UNCITED-APPLIED internal ×78 [exec 2501 10994-11002]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+30 more heads, ×61) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 2485 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2486 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2487 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2483 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2484 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×6 [exec 2488 10994-11002]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                // UNCITED-APPLIED internal ×14 [exec 2492 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×7 [exec 2493 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×5 [exec 2489 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×14 [exec 2490 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2491 10994-11002]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                // UNCITED-APPLIED internal ×6 [exec 2494 10994-11002]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2483, 2485, 2486, 2487, 2489, 2490 … / `ring1` exec 2501)]
                // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
              }
              // [TACTIC: apply ( injOn_tan.eq_iff ⟨ by have h₁₂ : ( m : ℝ ) * Real.pi / 180 > 0 := by have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num positivity have h₁₂ : ( m : ℝ ) * Real.pi / 180 > 0 := by have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num positivity linarith linarith , by linarith linarith ⟩ ⟨ by have h₁₂ : ( m : ℝ ) * Real.pi / 180 > 0 := by have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num positivity have h₁₂ : ( m : ℝ ) * Real.pi / 180 > 0 := by have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₃ : ( m : ℝ ) > 0 := by exact_mod_cast h₀ exact_mod_cast h₀ have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₄ : 0 < Real.pi := Real.pi_pos have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num have h₁₅ : 0 < ( 180 : ℝ ) := by norm_num norm_num positivity linarith linarith , by linarith linarith ⟩ ⟨ by linarith linarith , by linarith linarith ⟩ ⟨ by linarith linarith , by linarith linarith ⟩ ) . mp h₁₀]
              // UNCITED injOn_tan.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
              // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Ioo (-(π / (2 : ℝ))) (π / (2 : ℝ)), tan, ↑m * π / (180 : ℝ), (35 : ℝ) * π / (72 : ℝ)): library counterpart RealInjOnTanEqIff (Mathlib `injOn_tan.eq_iff`) exists, but the translation of this tactic states no such instance [exec 2335 10530-11017]
            }
            // [TACTIC: exact h₁₁]
            assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
          }
          // [TACTIC: exact h₉]
          assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
        }
        // [TACTIC: exact h₅]
        assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
      }
      // [TACTIC: exact h₄]
      assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
    }
    // have h_m_val : m == 175 / 2  [type from Lean state]
    assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2))) by { // @tac 11135-11636 // @tac 11703-12154 // @tac 12159-12169
      // have h₃ :  == 175 / 2  [type from Lean state]
      assert ((m).to_real() == (175.0 / 2.0)) by { // @tac 11179-11274 // @tac 11281-11363 // @tac 11370-11619 // @tac 11626-11636
        // have h₄ :  * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
        assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 11251-11274
          // [TACTIC: exact h_m_pi_div_180_eq]
          assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
        }
        // have h₅ :  * Real.pi / 180 == 35 * Real.pi / 72  [type from Lean state]
        assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 11353-11363
          // [TACTIC: exact h₄]
          assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0));
        }
        // have h₆ :  == 175 / 2  [type from Lean state]
        assert ((m).to_real() == (175.0 / 2.0)) by { // @tac 11472-11516 // @tac 11525-11619 // @tac 11525-11586 // @tac 11525-11554
          // have h₇ : Real.pi != 0  [type from Lean state]
          assert (Real.pi() != 0.0) by {
            // [TACTIC: exact Real.pi_ne_zero]
            RealPiNeZero();  // cite: Real.pi_ne_zero [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
          }
          // [TACTIC: «_<;>_» [ h₇ ] at h₅ ⊢ <;> ring_nf at h₅ ⊢ <;> nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ]]
          // [TACTIC: «Field_simp[_]At___» [ h₇ ] at h₅ ⊢]
          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
          // UNCITED-APPLIED internal ×4 [exec 2610 11525-11554]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Meta.NormNum.isNat_eq_false ×1
          assert ((((m).to_real() * Real.pi()) * 72.0) == ((35.0 * Real.pi()) * 180.0));  // hypothesis h₅ after `field_simp` (Lean state) // @tac-hyp 11525-11554
          assert (((m).to_real() * 2.0) == 175.0) by {  // sub-goal of `ring_nf` (Lean state) // @tac 11567-11586 // @tac 11591-11619
            assert ((((m).to_real() * Real.pi()) * 72.0) == (Real.pi() * 6300.0));  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 11567-11586
            // UNCITED Real.pi_gt_three: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 2629, 2630, 2632, 2633, 2636, 2637 … / `ring1` exec 2643, 2659)]
            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 11591-11619 exec 2628)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(360 : ℝ) * (↑m * π / (180 : ℝ) - (35 : ℝ) * π / (72 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((m).to_real() * Real.pi()) / 180.0) - ((35.0 * Real.pi()) / 72.0)) == 0.0); (360.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * (↑m * (2 : ℝ) - (175 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((m).to_real() * 2.0) - 175.0) < 0.0); (3.0 > 0.0)
            if ((((m).to_real() * 2.0) - 175.0) < 0.0) && ((3.0 - Real.pi()) < 0.0) { cert_piece_20(m); }  // cert: mul_pos_of_neg_of_neg
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((175 : ℝ) - ↑m * (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((175.0 - ((m).to_real() * 2.0)) < 0.0); (3.0 > 0.0)
            if ((175.0 - ((m).to_real() * 2.0)) < 0.0) && ((3.0 - Real.pi()) < 0.0) { cert_piece_21(m); }  // cert: mul_pos_of_neg_of_neg
            // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-((1 : ℝ) * ↑m * ((2 : ℝ) * π) - (1 : ℝ) * (35 : ℝ) * ((5 : ℝ) * π)) + (3 : ℝ) * (↑m * (2 : ℝ) - (175 : ℝ)) < (0 : ℝ)`
            cert_identity_22(m);  // cert: Left.add_neg
            cert_identity_23(m);  // cert: Left.add_neg
            // UNCITED-APPLIED internal ×27 [exec 2628 11591-11619]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×3, Left.add_neg ×2, CancelDenoms.div_subst ×2, CancelDenoms.mul_subst ×2, neg_neg_of_pos ×2, mul_pos_of_neg_of_neg ×2, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
            // UNCITED-APPLIED internal ×196 [exec 2643 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+33 more heads, ×163) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 2629 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 2630 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×7 [exec 2631 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 2632 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 2633 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×7 [exec 2634 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 2635 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×6 [exec 2644 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×190 [exec 2659 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+33 more heads, ×157) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 2636 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 2637 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×7 [exec 2638 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 2639 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 2640 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×7 [exec 2641 11591-11619]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 2642 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×6 [exec 2660 11591-11619]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          }
        }
        // [TACTIC: exact h₆]
        assert ((m).to_real() == (175.0 / 2.0));
      }
      // have h₇ : m == 175 / 2  [type from Lean state]
      assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2))) by { // @tac 11739-12154 // @tac 11739-12129 // @tac 11739-12099 // @tac 11739-12070 // @tac 11739-12040 // @tac 11739-11987 // @tac 11739-11942 // @tac 11739-11917 // @tac 11739-11892 // @tac 11739-11861 // @tac 11739-11831 // @tac 11739-11799 // @tac 11739-11760 // @tac 11777-11799
        // [TACTIC: «_<;>_» at h₃ ⊢ norm_cast at h₃ ⊢ <;> field_simp at h₃ ⊢ <;> norm_cast at h₃ ⊢ norm_cast at h₃ ⊢ <;> ring_nf at h₃ ⊢ <;> norm_num at h₃ ⊢ <;> ( try norm_num norm_num ) <;> ( try linarith linarith ) <;> ( try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ] ) <;> simp_all [ Rat.ext_iff , Nat.cast_inj ] simp_all [ Rat.ext_iff , Nat.cast_inj ] simp_all [ Rat.ext_iff , Nat.cast_inj ] <;> norm_num at * <;> ring_nf at * <;> norm_num at * <;> linarith linarith]
        // [TACTIC: choice at h₃ ⊢ norm_cast at h₃ ⊢]
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
        assert (((m).to_real() * 2.0) == 175.0);  // hypothesis h₃ after `field_simp` (Lean state) // @tac-hyp 11777-11799
        assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175)) by {  // sub-goal of `norm_cast` (Lean state) // @tac 11810-11831
          // UNCITED-APPLIED Eq.symm((Rat.of_int(2)).to_real(), 2.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          // UNCITED-APPLIED Eq.symm((Rat.of_int(175)).to_real(), 175.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
          assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175));  // hypothesis h₃ after `norm_cast` (Lean state) // @tac-hyp 11810-11831
          // UNCITED-APPLIED congrArg(↑m * (2 : ℝ), ↑(m * ↑(2 : ℕ)), fun (x : ℝ) => x = ↑(175 : ℕ)): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED congrArg((2 : ℝ), ↑(2 : ℚ), HMul.hMul ↑m): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED congrArg((175 : ℝ), ↑(175 : ℚ), Eq ↑(m * ↑(2 : ℕ))): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Eq.trans(↑m * (2 : ℝ), ↑m * ↑(2 : ℚ), ↑(m * ↑(2 : ℕ))): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Rat.cast_ofNat(nat_lit 2): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Rat.cast_ofNat(nat_lit 175): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED internal ×3 [exec 2799 11810-11831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Meta.NormNum.isNat_eq_false ×1
        }
        // UNCITED-APPLIED internal ×4 [exec 2770 11777-11799]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Meta.NormNum.isNat_eq_false ×1
        // [TACTIC: try norm_num norm_num]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try norm_num norm_num )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ]]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ] )]  NOT RUN in Lean (no execution recorded)
      }
      // [TACTIC: exact h₇]
      assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2)));
    }
    // have h_num : m.num == 175  [type from Lean state]
    assert (m.num == 175); // @tac 12210-12393 // @tac 12210-12369 // @tac 12210-12310 // @tac 12210-12285 // @tac 12210-12267 // @tac 12210-12222
      // [TACTIC: «_<;>_» [ h_m_val ] rw [ h_m_val ] <;> norm_num [ Rat.num_div_eq_of_coprime ] norm_num [ Rat.num_div_eq_of_coprime ] <;> norm_cast norm_cast norm_cast <;> ( try decide decide ) <;> ( try ring_nf at * <;> norm_num at * <;> aesop ) <;> ( try aesop )]
      // [TACTIC: choice [ h_m_val ] rw [ h_m_val ]]
      // UNCITED-APPLIED congrArg(m, (175 / 2 : ℚ), fun (_a : ℚ) => _a.num = (175 : ℤ)): no library counterpart (not stated) [exec 2906 12210-12222]
      // GAP: sub-goal of `norm_cast` does not render: (175 / 2 : ℚ).num = (175 : ℤ) // @tac 12231-12267 // @tac 12276-12285
      // UNCITED-APPLIED internal ×13 [exec 2941 12231-12267]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, Eq.trans ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+4 more heads, ×4)
      // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
      // [TACTIC: try decide decide]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try decide decide )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try ring_nf at * <;> norm_num at * <;> aesop]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try ring_nf at * <;> norm_num at * <;> aesop )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try aesop]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try aesop )]  NOT RUN in Lean (no execution recorded)
    // have h_den : m.den == 2  [type from Lean state]
    assert (m.denom == 2); // @tac 12432-12615 // @tac 12432-12591 // @tac 12432-12532 // @tac 12432-12507 // @tac 12432-12489 // @tac 12432-12444
      // [TACTIC: «_<;>_» [ h_m_val ] rw [ h_m_val ] <;> norm_num [ Rat.den_div_eq_of_coprime ] norm_num [ Rat.den_div_eq_of_coprime ] <;> norm_cast norm_cast norm_cast <;> ( try decide decide ) <;> ( try ring_nf at * <;> norm_num at * <;> aesop ) <;> ( try aesop )]
      // [TACTIC: choice [ h_m_val ] rw [ h_m_val ]]
      // UNCITED-APPLIED congrArg(m, (175 / 2 : ℚ), fun (_a : ℚ) => _a.den = (2 : ℕ)): no library counterpart (not stated) [exec 3035 12432-12444]
      // GAP: sub-goal of `norm_cast` does not render: (175 / 2 : ℚ).den = (2 : ℕ) // @tac 12453-12489 // @tac 12498-12507
      // UNCITED-APPLIED internal ×13 [exec 3070 12453-12489]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, Eq.trans ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+4 more heads, ×4)
      // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
      // [TACTIC: try decide decide]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try decide decide )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try ring_nf at * <;> norm_num at * <;> aesop]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try ring_nf at * <;> norm_num at * <;> aesop )]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: try aesop]  NOT RUN in Lean (no execution recorded)
      // [TACTIC: ( try aesop )]  NOT RUN in Lean (no execution recorded)
    // have h_final : ↑ m.den + m.num == 177  [type from Lean state]
    assert (((m.denom as int) + m.num) == 177) by {
      assert ((m.denom + m.num) == 177) by {  // sub-goal before `rw` (Lean state) // @tac 12669-12811 // @tac 12669-12787 // @tac 12669-12728 // @tac 12669-12703 // @tac 12669-12686
        // [TACTIC: «_<;>_» [ h_num , h_den ] rw [ h_num , h_den ] <;> norm_num norm_num <;> ( try decide decide ) <;> ( try ring_nf at * <;> norm_num at * <;> aesop ) <;> ( try aesop )]
        // [TACTIC: choice [ h_num , h_den ] rw [ h_num , h_den ]]
        // UNCITED-APPLIED congrArg(m.num, (175 : ℤ), fun (_a : ℤ) => ↑m.den + _a = (177 : ℤ)): no library counterpart (not stated) [exec 3159 12669-12686]
        // UNCITED-APPLIED congrArg(m.den, (2 : ℕ), fun (_a : ℕ) => ↑_a + (175 : ℤ) = (177 : ℤ)): no library counterpart (not stated) [exec 3159 12669-12686]
        assert (((2 as int) + 175) == 177);  // sub-goal of `norm_num` (Lean state) // @tac 12695-12703
        // UNCITED-APPLIED internal ×8 [exec 3195 12695-12703]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+2 more heads, ×2)
        // [TACTIC: try decide decide]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try decide decide )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try ring_nf at * <;> norm_num at * <;> aesop]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try ring_nf at * <;> norm_num at * <;> aesop )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try aesop]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try aesop )]  NOT RUN in Lean (no execution recorded)
      }
    }
    // [TACTIC: exact h_final]
    assert ((m.denom + m.num) == 177);  // hypothesis h_final at `exact` (Lean state)
  }
}



// ===== closed lemma for line 177 (from closed/aime_1999_p11-177.dfy) =====

// pass2 helper: mul_pos_of_neg_of_neg at the opaque real x = m.to_real() (Z3 only needs x, not m's num/denom)
lemma MulPosOfNegOfNeg_p11(a: real, b: real)  // [ADDED DECLARATION]
  requires a < 0.0
  requires b < 0.0
  ensures 0.0 < a * b
{
  MulPos(-a, -b);
  assert (-a) * (-b) == a * b;
}

lemma SignProd177(x: real)  // [ADDED DECLARATION]
  requires x * 2.0 - 175.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures 0.0 < (x * 2.0 - 175.0) * (3.0 - Real.pi())
{
  MulPosOfNegOfNeg_p11(x * 2.0 - 175.0, 3.0 - Real.pi());
}
lemma {:induction false} vc_aime_1999_p11_L177(m: Rat.rat)
  requires m.to_real() * 2.0 - 175.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures   0.0 < (m.to_real() * 2.0 - 175.0) * (3.0 - Real.pi())
{
  SignProd177(m.to_real());  // [ADDED]
}
