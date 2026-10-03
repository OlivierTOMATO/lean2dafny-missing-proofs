// CLOSED — failing line algebra_sum1onsqrt2to1onsqrt10000lt198-462: theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 462 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) by {
// Lean step: have h₁₁₁ : 0 < Real.sqrt k + Real.sqrt ((k : ℝ) - 1) := by positivity
// hypotheses: 22 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — assert 2.0 * Real.div(1.0, S) == Real.div(2.0, S)  (field_simp before/after normal form, exec 480; checked)
// Dafny: finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L462(k_0_0: int)
  requires 0 <= k_0_0
  requires 0 <= 2
  requires 0 <= 10000
  requires k_0_0 in IccN(2, 10000)
  requires 2 <= k_0_0
  requires k_0_0 <= 10000
  requires (k_0_0 as real) >= 2.0
  requires (k_0_0 as real) <= 10000.0
  requires (k_0_0 as real) - 1.0 >= 1.0
  requires Real.sqrt((k_0_0 as real)) >= 0.0
  requires Real.sqrt((k_0_0 as real) - 1.0) >= 0.0
  requires Real.sqrt((k_0_0 as real)) > 0.0
  requires Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires Real.sqrt((k_0_0 as real)) > Real.sqrt((k_0_0 as real) - 1.0)
  requires Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires 2.0 * (Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0)) > 0.0
  requires (Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0)) * (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)) == 1.0
  requires Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0) > 0.0
  requires Real.sqrt((k_0_0 as real)) - Real.sqrt((k_0_0 as real) - 1.0) == Real.div(1.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  requires 0.0 < Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)
  requires 0.0 < Real.sqrt((k_0_0 as real)) * (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  requires Real.div(1.0, Real.sqrt((k_0_0 as real))) < Real.div(2.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
  ensures   Real.div(1.0, Real.sqrt((k_0_0 as real))) < 2.0 * Real.div(1.0, Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))
{
  assert 2.0 * Real.div(1.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0))) == Real.div(2.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt((k_0_0 as real) - 1.0)));  // field_simp before/after (exec 480)  // [ADDED]
                // have h₁₁₁ : 0 < Real.sqrt ( k ) + Real.sqrt ( (  - 1 ) )  [type from Lean state]
                assert (0.0 < (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))) by { // @tac 3028-3038
                  // [TACTIC: Positivity]
                  // UNCITED-APPLIED internal ×9 [exec 462 3028-3038]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                }
                // have h₁₁₂ : 0 < Real.sqrt ( k ) * ( Real.sqrt ( k ) + Real.sqrt ( (  - 1 ) ) )  [type from Lean state]
                assert (0.0 < (Real.sqrt((k_0_0 as real)) * (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0))))) by { // @tac 3137-3147
                  // [TACTIC: Positivity]
                  // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 3137-3147 exec 479)
                  if (0.0 < Real.sqrt((k_0_0 as real))) && (0.0 < (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))) { cert_piece_13(k_0_0); }  // cert: mul_pos
                  // UNCITED-APPLIED internal ×9 [exec 479 3137-3147]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], mul_pos [Lean recorded ×1])
                  assert (0.0 < (Real.sqrt((k_0_0 as real)))) && (0.0 < ((Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))));  // precondition of MulPos (Lean: mul_pos)
                  MulPos(Real.sqrt((k_0_0 as real)), (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0))));  // cite: mul_pos [applied by the tactic, not named in it]
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                }
                // [TACTIC: «Field_simp[_]At___» [ h₁₁₁.ne' ]]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ))
                // UNCITED h₁₁₁.ne': a projection of the local hypothesis h₁₁₁ handed to the tactic; its fact is not stated here
                // UNCITED-APPLIED internal ×6 [exec 480 3162-3189]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, mul_one ×1; machinery/glue: Eq.trans ×2, congrArg ×2
                assert (Real.div(1.0, Real.sqrt((k_0_0 as real))) < Real.div(2.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 3204-3255
                  assert (0.0 < Real.sqrt((k_0_0 as real))) by {  // sub-goal of `by` (Lean state) // @tac 3227-3237
                    // [TACTIC: Positivity]
                    // UNCITED-APPLIED internal ×4 [exec 492 3227-3237]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, lt_of_lt_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
                  }
                  assert (0.0 < (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))) by {  // sub-goal of `by` (Lean state) // @tac 3243-3253
                    // [TACTIC: Positivity]
                    // UNCITED-APPLIED internal ×9 [exec 497 3243-3253]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                  }
                  // [TACTIC: rwSeq [ div_lt_div_iff ( by positivity ) ( by positivity ) ]]
                  assert (0.0 < (Real.sqrt((k_0_0 as real)))) && (0.0 < ((Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))));  // precondition of DivLtDivIff (Lean: div_lt_div_iff)
                  DivLtDivIff(1.0, Real.sqrt((k_0_0 as real)), 2.0, (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0))));  // cite: div_lt_div_iff
                  assert ((1.0 * (Real.sqrt((k_0_0 as real)) + Real.sqrt(((k_0_0 as real) - 1.0)))) < (2.0 * Real.sqrt((k_0_0 as real)))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 3270-3454
                    assert (0.0 <= (k_0_0 as real)) by {  // sub-goal of `by` (Lean state) // @tac 3319-3327
                      // [TACTIC: «Linarith[_]At___»]
                    }
                    assert (0.0 <= ((k_0_0 as real) - 1.0)) by {  // sub-goal of `by` (Lean state) // @tac 3388-3396
                      // [TACTIC: «Linarith[_]At___»]
                    }
                    // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) by linarith linarith ) , Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) - 1 by linarith linarith ) , mul_nonneg h₆ h₇ , h₈.le , h₉.le ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3270-3454 exec 522)
                    cert_identity_14(k_0_0);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×6 [exec 522 3270-3454]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                    // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 536)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 536)]
                    // UNCITED h₈.le: a projection of the local hypothesis h₈ handed to the tactic; its fact is not stated here
                    // UNCITED h₉.le: a projection of the local hypothesis h₉ handed to the tactic; its fact is not stated here
                    // UNCITED-APPLIED internal ×67 [exec 536 3270-3454]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_pf_right ×3 (+32 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  }
                  // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 485 3204-3255]
                }
}

