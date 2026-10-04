// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_others_exirrpowirrrat.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_others_exirrpowirrrat()
  ensures (exists a: real :: (exists b: real :: (Irrational(a) && (Irrational(b) && (!Irrational(Real.rpow(a, b))))))) // @tac 334-3745 // @tac 3748-3766
{
  // have h_main : ∃ ( a b : ℝ ) , Irrational a ∧ Irrational b ∧ ¬ Irrational ( a ^ b )  [type from Lean state]
  assert (exists a: real, b: real :: (Irrational(a) && (Irrational(b) && !(Irrational(Real.rpow(a, b)))))) by { // @tac 430-481
    // by_cases h : Irrational ( Real.sqrt 2 ^ Real.sqrt 2 )
    if Irrational((Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))) {
      assert (exists a: real, b: real :: (Irrational(a) && (Irrational(b) && !(Irrational(Real.rpow(a, b)))))) by {  // sub-goal before `have` (Lean state) // @tac 534-589 // @tac 486-3368 // @tac 596-672 // @tac 724-790 // @tac 797-2921 // @tac 2928-3263 // @tac 3270-3345
        // have h₁ : Irrational ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) )  [type from Lean state]
        assert Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))) by {
          // [TACTIC: exact h]
          assert Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)));  // hypothesis h at `exact` (Lean state)
        }
        // have h₂ : Irrational ( ( Real.sqrt ( 2 ) ) )  [type from Lean state]
        assert Irrational(Real.sqrt(2.0)) by { // @tac 647-672
          // [TACTIC: exact irrational_sqrt_two]
          IrrationalSqrtTwo();  // cite: irrational_sqrt_two [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
        }
        // have h₃ : Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) > 0  [type from Lean state]
        assert (Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)) > 0.0) by { // @tac 780-790
          // [TACTIC: Positivity]
          assert (0.0 < (Real.sqrt(2.0)));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
          RealRpowPosOfPos(Real.sqrt(2.0), Real.sqrt(2.0));  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×3 [exec 74 780-790]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
        }
        // have h₄ : Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) == 2  [type from Lean state]
        assert (Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0) by { // @tac 883-2259 // @tac 2346-2448 // @tac 2457-2548 // @tac 2557-2659 // @tac 2668-2899 // @tac 2908-2921
          // have h₅ : Real.log ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) ) =  [type from Lean state]
          assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0)) by { // @tac 991-1221 // @tac 1232-1244
            // have h₅₁ : Real.log ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) ) =  [type from Lean state]
            assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == (Real.sqrt(2.0) * Real.log(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))))) by { // @tac 1150-1221 // @tac 1150-1184
              assert (0.0 < Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))) by {  // sub-goal of `by` (Lean state) // @tac 1172-1182
                // [TACTIC: Positivity]
                assert (0.0 < (Real.sqrt(2.0)));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
                RealRpowPosOfPos(Real.sqrt(2.0), Real.sqrt(2.0));  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×3 [exec 139 1172-1182]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
              }
              // [TACTIC: «_<;>_» [ Real.log_rpow ( by positivity ) ] rw [ Real.log_rpow ( by positivity ) ] <;> norm_num norm_num]
              // [TACTIC: rwSeq [ Real.log_rpow ( by positivity ) ]]
              // `rw` closed the goal; the rest of the chain did not run
              assert (0.0 < (Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))));  // precondition of RealLogRpow (Lean: Real.log_rpow)
              RealLogRpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0));  // cite: Real.log_rpow
              // UNCITED-APPLIED congrArg(Real.log ((√(2 : ℝ) ^ √(2 : ℝ)) ^ √(2 : ℝ)), √(2 : ℝ) * Real.log (√(2 : ℝ) ^ √(2 : ℝ)), fun (_a : ℝ) => _a = √(2 : ℝ) * Real.log (√(2 : ℝ) ^ √(2 : ℝ))): no library counterpart (not stated) [exec 132 1150-1184]
            }
            // [TACTIC: rwSeq [ h₅₁ ]]
            // UNCITED-APPLIED congrArg(Real.log ((√(2 : ℝ) ^ √(2 : ℝ)) ^ √(2 : ℝ)), √(2 : ℝ) * Real.log (√(2 : ℝ) ^ √(2 : ℝ)), fun (_a : ℝ) => _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 168 1232-1244]
            assert ((Real.sqrt(2.0) * Real.log(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))) == Real.log(2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1255-1441 // @tac 1452-1464
              // have h₅₂ : Real.log ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) == Real.sqrt ( 2 ) * Re  [type from Lean state]
              assert (Real.log(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))) == (Real.sqrt(2.0) * Real.log(Real.sqrt(2.0)))) by { // @tac 1370-1441 // @tac 1370-1404
                assert (0.0 < Real.sqrt(2.0)) by {  // sub-goal of `by` (Lean state) // @tac 1392-1402
                  // [TACTIC: Positivity]
                  // UNCITED-APPLIED internal ×3 [exec 227 1392-1402]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
                }
                // [TACTIC: «_<;>_» [ Real.log_rpow ( by positivity ) ] rw [ Real.log_rpow ( by positivity ) ] <;> norm_num norm_num]
                // [TACTIC: rwSeq [ Real.log_rpow ( by positivity ) ]]
                // `rw` closed the goal; the rest of the chain did not run
                assert (0.0 < (Real.sqrt(2.0)));  // precondition of RealLogRpow (Lean: Real.log_rpow)
                RealLogRpow(Real.sqrt(2.0), Real.sqrt(2.0));  // cite: Real.log_rpow
                // UNCITED-APPLIED congrArg(Real.log (√(2 : ℝ) ^ √(2 : ℝ)), √(2 : ℝ) * Real.log √(2 : ℝ), fun (_a : ℝ) => _a = √(2 : ℝ) * Real.log √(2 : ℝ)): no library counterpart (not stated) [exec 220 1370-1404]
              }
              // [TACTIC: rwSeq [ h₅₂ ]]
              // UNCITED-APPLIED congrArg(Real.log (√(2 : ℝ) ^ √(2 : ℝ)), √(2 : ℝ) * Real.log √(2 : ℝ), fun (_a : ℝ) => √(2 : ℝ) * _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 256 1452-1464]
              assert ((Real.sqrt(2.0) * (Real.sqrt(2.0) * Real.log(Real.sqrt(2.0)))) == Real.log(2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1475-1686 // @tac 1697-1709
                // have h₅₃ : Real.sqrt ( 2 ) * ( Real.sqrt ( 2 ) * Real.log ( ( Real.sqrt ( 2 ) ) )  [type from Lean state]
                assert ((Real.sqrt(2.0) * (Real.sqrt(2.0) * Real.log(Real.sqrt(2.0)))) == (2.0 * Real.log(Real.sqrt(2.0)))) by { // @tac 1590-1686 // @tac 1590-1673 // @tac 1590-1661 // @tac 1590-1597
                  // [TACTIC: «_<;>_» ring_nf <;> field_simp [ Real.sqrt_eq_iff_sq_eq ] field_simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> norm_num norm_num]
                  // [TACTIC: choice ring_nf]
                  PowOne(Real.log(Real.sqrt(2.0)));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log √(2 : ℝ))
                  // UNCITED-APPLIED internal ×46 [exec 314 1590-1597]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.add_mul ×3 (+17 more heads, ×26) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                  assert (((Real.sqrt(2.0) * Real.sqrt(2.0)) * Real.log(Real.sqrt(2.0))) == (Real.log(Real.sqrt(2.0)) * 2.0)) by {  // sub-goal of `field_simp` (Lean state) // @tac 1626-1661
                    // UNCITED Real.sqrt_eq_iff_sq_eq: no Lean instance recorded (arguments unknown), not guessed
                    if (0.0 <= (2.0)) { RealSqSqrt(2.0); }  // cite: Real.sq_sqrt [applied by the tactic, not named in it]
                    if ((0.0) < (2.0)) { LeOfLt(0.0, 2.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                    assert ((2.0 * Real.log(Real.sqrt(2.0))) == (Real.log(Real.sqrt(2.0)) * 2.0)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1666-1673
                      // cite: pow_one [same instance stated in an enclosing scope: PowOne(Real.log(Real.sqrt(2.0)));]
                      // UNCITED-APPLIED internal ×22 [exec 332 1666-1673]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+12 more heads, ×12) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                    }
                    // UNCITED-APPLIED internal ×3 [exec 323 1626-1661]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: congrArg ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], le_of_lt [Lean recorded ×1])
                  }
                }
                // [TACTIC: rwSeq [ h₅₃ ]]
                // UNCITED-APPLIED congrArg(√(2 : ℝ) * (√(2 : ℝ) * Real.log √(2 : ℝ)), (2 : ℝ) * Real.log √(2 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 343 1697-1709]
                assert ((2.0 * Real.log(Real.sqrt(2.0))) == Real.log(2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1720-2135 // @tac 2146-2158
                  // have h₅₄ : Real.log ( ( Real.sqrt ( 2 ) ) ) == Real.log ( 2 ) / 2  [type from Lean state]
                  assert (Real.log(Real.sqrt(2.0)) == (Real.log(2.0) / 2.0)) by { // @tac 1793-2106 // @tac 2119-2135
                    // have h₅₄₁ : Real.log ( ( Real.sqrt ( 2 ) ) ) == Real.log ( 2 ) / 2  [type from Lean state]
                    assert (Real.log(Real.sqrt(2.0)) == (Real.log(2.0) / 2.0)) by { // @tac 1871-1921 // @tac 1936-2075 // @tac 2090-2106
                      // have h₅₄₂ : Real.sqrt ( 2 ) > 0  [type from Lean state]
                      assert (Real.sqrt(2.0) > 0.0); // @tac 1911-1921
                        // [TACTIC: Positivity]
                      // UNCITED-APPLIED internal ×3 [exec 418 1911-1921]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
                      // have h₅₄₃ : Real.log ( ( Real.sqrt ( 2 ) ) ) == Real.log ( 2 ) / 2  [type from Lean state]
                      assert (Real.log(Real.sqrt(2.0)) == (Real.log(2.0) / 2.0)) by { // @tac 2016-2075 // @tac 2016-2050
                        assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 2038-2048
                          // [TACTIC: Positivity]
                          assert ((0.0) < (2.0));  // precondition of LeOfLt (Lean: le_of_lt)
                          LeOfLt(0.0, 2.0);  // cite: le_of_lt [applied by the tactic, not named in it]
                          // UNCITED-APPLIED internal ×2 [exec 451 2038-2048]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
                        }
                        // [TACTIC: «_<;>_» [ Real.log_sqrt ( by positivity ) ] rw [ Real.log_sqrt ( by positivity ) ] <;> ring]
                        // [TACTIC: rwSeq [ Real.log_sqrt ( by positivity ) ]]
                        // `rw` closed the goal; the rest of the chain did not run
                        assert (0.0 <= (2.0));  // precondition of RealLogSqrt (Lean: Real.log_sqrt)
                        RealLogSqrt(2.0);  // cite: Real.log_sqrt
                        // UNCITED-APPLIED congrArg(Real.log √(2 : ℝ), Real.log (2 : ℝ) / (2 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ) / (2 : ℝ)): no library counterpart (not stated) [exec 444 2016-2050]
                      }
                      // [TACTIC: exact h₅₄₃]
                      assert (Real.log(Real.sqrt(2.0)) == (Real.log(2.0) / 2.0));
                    }
                    // [TACTIC: exact h₅₄₁]
                    assert (Real.log(Real.sqrt(2.0)) == (Real.log(2.0) / 2.0));
                  }
                  // [TACTIC: rwSeq [ h₅₄ ]]
                  // UNCITED-APPLIED congrArg(Real.log √(2 : ℝ), Real.log (2 : ℝ) / (2 : ℝ), fun (_a : ℝ) => (2 : ℝ) * _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 482 2146-2158]
                  assert ((2.0 * (Real.log(2.0) / 2.0)) == Real.log(2.0)) by {  // sub-goal before `have` (Lean state) // @tac 2169-2236 // @tac 2247-2259
                    // have h₅₅ : 2 * ( Real.log ( 2 ) / 2 ) == Real.log ( 2 )  [type from Lean state]
                    assert ((2.0 * (Real.log(2.0) / 2.0)) == Real.log(2.0)); // @tac 2232-2236
                      // [TACTIC: Ring]
                    // UNCITED-APPLIED internal ×31 [exec 529 2232-2236]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2, Mathlib.Tactic.Ring.mul_zero ×2, Mathlib.Tactic.Ring.add_pf_add_zero ×2 (+22 more heads, ×23)
                    // [TACTIC: rwSeq [ h₅₅ ]]
                    // UNCITED-APPLIED congrArg((2 : ℝ) * (Real.log (2 : ℝ) / (2 : ℝ)), Real.log (2 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 534 2247-2259]
                  }
                }
              }
            }
          }
          // have h₅₆ : Real.log ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) ) =  [type from Lean state]
          assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0)) by {
            // [TACTIC: exact h₅]
            assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0));
          }
          // have h₅₇ : Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) > 0  [type from Lean state]
          assert (Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) > 0.0) by { // @tac 2538-2548
            // [TACTIC: Positivity]
            assert (0.0 < (Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
            RealRpowPosOfPos(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0));  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
            assert (0.0 < (Real.sqrt(2.0)));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
            RealRpowPosOfPos(Real.sqrt(2.0), Real.sqrt(2.0));  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×3 [exec 583 2538-2548]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×2])
          }
          // have h₅₈ : Real.log ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) ) =  [type from Lean state]
          assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0)) by {
            // [TACTIC: exact h₅]
            assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0));
          }
          // have h₅₉ : Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) == 2  [type from Lean state]
          assert (Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0) by { // @tac 2759-2843
            assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 2831-2841
              // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×2 [exec 617 2831-2841]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
            }
            // [TACTIC: apply Real.log_injOn_pos ( Set.mem_Ioi.mpr h₅₇ ) ( Set.mem_Ioi.mpr ( by positivity ) )]
            SetMemIoiReal(0.0, Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)));  // cite: Set.mem_Ioi.mpr
            SetMemIoiReal(0.0, 2.0);  // cite: Set.mem_Ioi.mpr
            assert (Real.log(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) == Real.log(2.0)) by {  // sub-goal before `rw` (Lean state) // @tac 2854-2899 // @tac 2854-2866
              // [TACTIC: «_<;>_» [ h₅₈ ] rw [ h₅₈ ] <;> norm_num norm_num]
              // [TACTIC: rwSeq [ h₅₈ ]]
              // `rw` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED congrArg(Real.log ((√(2 : ℝ) ^ √(2 : ℝ)) ^ √(2 : ℝ)), Real.log (2 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ)): no library counterpart (not stated) [exec 627 2854-2866]
            }
            assert (0.0 < (Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))) && (0.0 < (2.0)) && (Real.log((Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))) == Real.log((2.0)));  // precondition of RealLogInjOnPos (Lean: Real.log_injOn_pos; `apply`: proved by the steps above)
            RealLogInjOnPos(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)), 2.0);  // cite: Real.log_injOn_pos
            // UNCITED-APPLIED Set.mem_Ioi((0 : ℝ), (√(2 : ℝ) ^ √(2 : ℝ)) ^ √(2 : ℝ)): this block states the lemma as `cite: Set.mem_Ioi.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 612 2759-2843]
            // UNCITED-APPLIED Set.mem_Ioi((0 : ℝ), (2 : ℝ)): this block states the lemma as `cite: Set.mem_Ioi.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 612 2759-2843]
          }
          // [TACTIC: exact h₅₉]
          assert (Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0);
        }
        // have h₅ : ¬ Irrational ( ( ( Real.sqrt 2 ^ Real.sqrt 2 : ℝ ) : ℝ ) ^ Real.sqrt 2  [type from Lean state]
        assert !(Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))) by { // @tac 3025-3038
          if (Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))) {
            // have h₅₂ : Irrational ( ( Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ^ Real.sqrt ( 2 ) ) )  [type from Lean state]
            assert Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))) by {
              // [TACTIC: exact h₅₁]
              assert (Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0))));
            }
            // have h₅₃ : ( Irrational ( 2 ) )  [type from Lean state]
            assert Irrational(2.0); // @tac 3194-3220
              // [TACTIC: simpa [ h₄ ] using h₅₂]
            // UNCITED-APPLIED internal ×2 [exec 700 3194-3220]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1, congrArg ×1
            assert ((Rat.of_int(2)).to_real() == 2.0) by {  // sub-goal of `by` (Lean state) // @tac 3252-3260
              // [TACTIC: «Norm_num[_]At___»]
              // UNCITED-APPLIED internal ×6 [exec 706 3252-3260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            }
            // [TACTIC: exact h₅₃ ⟨ 2 , by norm_num norm_num ⟩ ⟨ 2 , by norm_num norm_num ⟩]
            // GAP: the anonymous constructor ⟨…⟩ passed to `h₅₃`: its statement (the premise of h₅₃ it proves) is not recorded, not stated
            // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
            assert Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)));  /* [IN-FILE CHECK] requires 1 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Irrational(Real.sqrt(2.0));  /* [IN-FILE CHECK] requires 2 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)) > 0.0;  /* [IN-FILE CHECK] requires 3 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0;  /* [IN-FILE CHECK] requires 4 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)));  /* [IN-FILE CHECK] requires 5 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Irrational(2.0);  /* [IN-FILE CHECK] requires 6 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Rat.of_int(2).Rational?;  /* [IN-FILE CHECK] requires 7 of vc_algebra_others_exirrpowirrrat_L198 */
            assert Rat.of_int(2).to_real() == 2.0;  /* [IN-FILE CHECK] requires 8 of vc_algebra_others_exirrpowirrrat_L198 */
            vc_algebra_others_exirrpowirrrat_L198();  /* [IN-FILE CHECK] the closed lemma for line 198 */
            assert false; // @tac 3047-3141 // @tac 3150-3220 // @tac 3229-3263
          }
        }
        // `refine'` leaves the goal below, proved by the tactics that follow it; the ∃ at Lean's witnesses after it uses that goal
        assert !(Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))) by {  // sub-goal of `refine'` (Lean state) // @tac 3352-3368
          // [TACTIC: simpa using h₅]
        }
        // [TACTIC: refine' ⟨ ( Real.sqrt 2 ^ Real.sqrt 2 : ℝ ) , Real.sqrt 2 , h₁ , h₂ , _ ⟩ ⟨ ( Real.sqrt 2 ^ Real.sqrt 2 : ℝ ) , Real.sqrt 2 , h₁ , h₂ , _ ⟩]
        {
          var w_a: real := Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0));
          var w_b: real := Real.sqrt(2.0);
          assert ((Irrational(w_a) && Irrational(w_b)) && !(Irrational(Real.rpow(w_a, w_b))));  // the ∃ body at Lean's witnesses (goal left by `use`/`refine`)
          var ex_b := exists b: real :: ((Irrational(w_a) && Irrational(b)) && !(Irrational(Real.rpow(w_a, b))));
          assert ex_b by { assert ((Irrational(w_a) && Irrational(w_b)) && !(Irrational(Real.rpow(w_a, w_b)))); }  // ∃-introduction glue (from the line above)
          var ex_a := exists a: real :: exists b: real :: ((Irrational(a) && Irrational(b)) && !(Irrational(Real.rpow(a, b))));
          assert ex_a by { assert ex_b; }  // ∃-introduction glue (from the line above)
        }
      }
    } else {
      assert (exists a: real, b: real :: (Irrational(a) && (Irrational(b) && !(Irrational(Real.rpow(a, b)))))) by {  // sub-goal before `have` (Lean state) // @tac 3419-3476 // @tac 3373-3745 // @tac 3483-3559 // @tac 3602-3655
        // have h₁ : ¬ Irrational ( Real.sqrt 2 ^ Real.sqrt 2 )  [type from Lean state]
        assert !(Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))) by {
          // [TACTIC: exact h]
          assert !(Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))));  // hypothesis h at `exact` (Lean state)
        }
        // have h₂ : Irrational ( ( Real.sqrt ( 2 ) ) )  [type from Lean state]
        assert Irrational(Real.sqrt(2.0)) by { // @tac 3534-3559
          // [TACTIC: exact irrational_sqrt_two]
          IrrationalSqrtTwo();  // cite: irrational_sqrt_two [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
        }
        // `refine'` leaves the goal below, proved by the tactics that follow it; the ∃ at Lean's witnesses after it uses that goal
        assert !(Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))) by {  // sub-goal of `refine'` (Lean state) // @tac 3662-3722 // @tac 3729-3745
          // have h₃ : ¬ Irrational ( Real.sqrt 2 ^ Real.sqrt 2 )  [type from Lean state]
          assert !(Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))) by {
            // [TACTIC: exact h₁]
            assert !(Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0))));
          }
          // [TACTIC: simpa using h₃]
        }
        // [TACTIC: refine' ⟨ Real.sqrt 2 , Real.sqrt 2 , h₂ , h₂ , _ ⟩ ⟨ Real.sqrt 2 , Real.sqrt 2 , h₂ , h₂ , _ ⟩]
        {
          var w_a: real := Real.sqrt(2.0);
          var w_b: real := Real.sqrt(2.0);
          assert ((Irrational(w_a) && Irrational(w_b)) && !(Irrational(Real.rpow(w_a, w_b))));  // the ∃ body at Lean's witnesses (goal left by `use`/`refine`)
          var ex_b := exists b: real :: ((Irrational(w_a) && Irrational(b)) && !(Irrational(Real.rpow(w_a, b))));
          assert ex_b by { assert ((Irrational(w_a) && Irrational(w_b)) && !(Irrational(Real.rpow(w_a, w_b)))); }  // ∃-introduction glue (from the line above)
          var ex_a := exists a: real :: exists b: real :: ((Irrational(a) && Irrational(b)) && !(Irrational(Real.rpow(a, b))));
          assert ex_a by { assert ex_b; }  // ∃-introduction glue (from the line above)
        }
      }
    }
  }
  // [TACTIC: simpa using h_main]
  // UNCITED-APPLIED internal ×2 [exec 756 3748-3766]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1, funext ×1
}



// ===== closed lemma for line 198 (from closed/algebra_others_exirrpowirrrat-198.dfy) =====

lemma {:induction false} vc_algebra_others_exirrpowirrrat_L198()
  requires Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))
  requires Irrational(Real.sqrt(2.0))
  requires Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)) > 0.0
  requires Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0
  requires Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))
  requires Irrational(2.0)
  requires Rat.of_int(2).Rational?
  requires Rat.of_int(2).to_real() == 2.0
  ensures   false
{
  NotIrrationalNatCast(2);  // [ADDED]
}

