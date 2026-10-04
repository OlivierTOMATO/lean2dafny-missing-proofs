// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2021_p9.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₁/h₇₁₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_1()
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < (Real.log(2.0) * Real.log(2.0)))
{
  MulPos(Real.log(2.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_2()
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < (Real.log(2.0) * Real.log(2.0)))
{
  MulPos(Real.log(2.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₂/h₇₂₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3()
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < (Real.log(2.0) * Real.log(2.0)))
{
  MulPos(Real.log(2.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₂`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4()
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < (Real.log(2.0) * Real.log(2.0)))
{
  MulPos(Real.log(2.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₃/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5()
  ensures ((-(((Real.log(80.0) * Real.log(40.0)) - (((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0))))) + ((Real.log(160.0) * Real.log(20.0)) - (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0))))) + (((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))) - (2.0 * (Real.log(2.0) * Real.log(2.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₃/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6()
  ensures ((((Real.log(80.0) * Real.log(40.0)) - (((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) + -(((Real.log(160.0) * Real.log(20.0)) - (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))))) + ((2.0 * (Real.log(2.0) * Real.log(2.0))) - ((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7()
  ensures (-((((1.0 * Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) - (1.0 * Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0))))) - (1.0 * 2.0))) + (((1.0 * Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) - (1.0 * Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0))))) - (1.0 * 2.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8()
  ensures ((((1.0 * Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) - (1.0 * Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0))))) - (1.0 * 2.0)) + ((1.0 * 2.0) - ((1.0 * Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) - (1.0 * Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0))))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2021_p9()
  ensures ((Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) - Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0)))) == 2.0) // @tac 497-943 // @tac 949-1395 // @tac 1401-1849 // @tac 1855-2301 // @tac 2307-3242 // @tac 3248-3794 // @tac 3800-4229 // @tac 4235-8077 // @tac 8083-8122 // @tac 8083-8107 // @tac 8083-8092
{
  // have h₀ : Real.log ( 80 ) == 4 * Real.log ( 2 ) + Real.log ( 5 )  [type from Lean state]
  assert (Real.log(80.0) == ((4.0 * Real.log(2.0)) + Real.log(5.0))) by { // @tac 561-625 // @tac 630-642
    // have h₀₁ : Real.log ( 80 ) == Real.log ( ( 2 ^ 4 * 5 ) )  [type from Lean state]
    assert (Real.log(80.0) == Real.log((Real.pow(2.0, 4) * 5.0))); // @tac 617-625
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×15 [exec 36 617-625]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1, Eq.trans ×1 (+8 more heads, ×8)
    // [TACTIC: rwSeq [ h₀₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (80 : ℝ), Real.log ((2 : ℝ) ^ (4 : ℕ) * (5 : ℝ)), fun (_a : ℝ) => _a = (4 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 41 630-642]
    assert (Real.log((Real.pow(2.0, 4) * 5.0)) == ((4.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 647-776 // @tac 781-793
      // have h₀₂ : Real.log ( ( 2 ^ 4 * 5 ) ) == Real.log ( ( 2 ^ 4 ) ) + Real.log ( 5 )  [type from Lean state]
      assert (Real.log((Real.pow(2.0, 4) * 5.0)) == (Real.log(Real.pow(2.0, 4)) + Real.log(5.0))) by { // @tac 727-776
        assert ((2.0 * 2.0 * 2.0 * 2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 748-758
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 748-758 exec 95): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (2.0 * 2.0 * 2.0 * 2.0))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×3 [exec 95 748-758]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
          PowPos(2.0, 4);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        assert (5.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 764-774
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×3 [exec 100 764-774]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert ((Real.pow(2.0, 4)) != 0.0) && ((5.0) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul(Real.pow(2.0, 4), 5.0);  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (4 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (4 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log ((2 : ℝ) ^ (4 : ℕ)) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 88 727-776]
      }
      // [TACTIC: rwSeq [ h₀₂ ]]
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (4 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (4 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = (4 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 123 781-793]
      assert ((Real.log(Real.pow(2.0, 4)) + Real.log(5.0)) == ((4.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 798-913 // @tac 918-943 // @tac 918-930
        // have h₀₃ : Real.log ( ( 2 ^ 4 ) ) == 4 * Real.log ( 2 )  [type from Lean state]
        assert (Real.log(Real.pow(2.0, 4)) == (4.0 * Real.log(2.0))) by { // @tac 859-913 // @tac 859-894 // @tac 859-876
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> ring_nf ring_nf <;> norm_num norm_num]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(4, 2.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (4 : ℕ)), ↑(4 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (4 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 180 859-876]
          assert (((4 as real) * Real.log(2.0)) == (4.0 * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 887-894
            PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×28 [exec 215 887-894]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×3, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+14 more heads, ×15) (cited in this block, not counted here: pow_one [Lean recorded ×1])
          }
        }
        // [TACTIC: «_<;>_» [ h₀₃ ] rw [ h₀₃ ] <;> ring]
        // [TACTIC: rwSeq [ h₀₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (4 : ℕ)), (4 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a + Real.log (5 : ℝ) = (4 : ℝ) * Real.log (2 : ℝ) + …): no library counterpart (not stated) [exec 231 918-930]
      }
    }
  }
  // have h₁ : Real.log ( 40 ) == 3 * Real.log ( 2 ) + Real.log ( 5 )  [type from Lean state]
  assert (Real.log(40.0) == ((3.0 * Real.log(2.0)) + Real.log(5.0))) by { // @tac 1013-1077 // @tac 1082-1094
    // have h₁₁ : Real.log ( 40 ) == Real.log ( ( 2 ^ 3 * 5 ) )  [type from Lean state]
    assert (Real.log(40.0) == Real.log((Real.pow(2.0, 3) * 5.0))); // @tac 1069-1077
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×13 [exec 290 1069-1077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+7 more heads, ×7)
    // [TACTIC: rwSeq [ h₁₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (40 : ℝ), Real.log ((2 : ℝ) ^ (3 : ℕ) * (5 : ℝ)), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 295 1082-1094]
    assert (Real.log((Real.pow(2.0, 3) * 5.0)) == ((3.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 1099-1228 // @tac 1233-1245
      // have h₁₂ : Real.log ( ( 2 ^ 3 * 5 ) ) == Real.log ( ( 2 ^ 3 ) ) + Real.log ( 5 )  [type from Lean state]
      assert (Real.log((Real.pow(2.0, 3) * 5.0)) == (Real.log(Real.pow(2.0, 3)) + Real.log(5.0))) by { // @tac 1179-1228
        assert ((2.0 * 2.0 * 2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1200-1210
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 1200-1210 exec 349): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (2.0 * 2.0 * 2.0))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×3 [exec 349 1200-1210]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
          PowPos(2.0, 3);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        assert (5.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1216-1226
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×3 [exec 354 1216-1226]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert ((Real.pow(2.0, 3)) != 0.0) && ((5.0) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul(Real.pow(2.0, 3), 5.0);  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (3 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log ((2 : ℝ) ^ (3 : ℕ)) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 342 1179-1228]
      }
      // [TACTIC: rwSeq [ h₁₂ ]]
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (3 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 377 1233-1245]
      assert ((Real.log(Real.pow(2.0, 3)) + Real.log(5.0)) == ((3.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 1250-1365 // @tac 1370-1395 // @tac 1370-1382
        // have h₁₃ : Real.log ( ( 2 ^ 3 ) ) == 3 * Real.log ( 2 )  [type from Lean state]
        assert (Real.log(Real.pow(2.0, 3)) == (3.0 * Real.log(2.0))) by { // @tac 1311-1365 // @tac 1311-1346 // @tac 1311-1328
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> ring_nf ring_nf <;> norm_num norm_num]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(3, 2.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ)), ↑(3 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 434 1311-1328]
          assert (((3 as real) * Real.log(2.0)) == (3.0 * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1339-1346
            PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×28 [exec 469 1339-1346]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×3, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+14 more heads, ×15) (cited in this block, not counted here: pow_one [Lean recorded ×1])
          }
        }
        // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> ring]
        // [TACTIC: rwSeq [ h₁₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ)), (3 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a + Real.log (5 : ℝ) = (3 : ℝ) * Real.log (2 : ℝ) + …): no library counterpart (not stated) [exec 485 1370-1382]
      }
    }
  }
  // have h₂ : Real.log ( 160 ) == 5 * Real.log ( 2 ) + Real.log ( 5 )  [type from Lean state]
  assert (Real.log(160.0) == ((5.0 * Real.log(2.0)) + Real.log(5.0))) by { // @tac 1466-1531 // @tac 1536-1548
    // have h₂₁ : Real.log ( 160 ) == Real.log ( ( 2 ^ 5 * 5 ) )  [type from Lean state]
    assert (Real.log(160.0) == Real.log((Real.pow(2.0, 5) * 5.0))); // @tac 1523-1531
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×15 [exec 544 1523-1531]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+9 more heads, ×9)
    // [TACTIC: rwSeq [ h₂₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (160 : ℝ), Real.log ((2 : ℝ) ^ (5 : ℕ) * (5 : ℝ)), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 549 1536-1548]
    assert (Real.log((Real.pow(2.0, 5) * 5.0)) == ((5.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 1553-1682 // @tac 1687-1699
      // have h₂₂ : Real.log ( ( 2 ^ 5 * 5 ) ) == Real.log ( ( 2 ^ 5 ) ) + Real.log ( 5 )  [type from Lean state]
      assert (Real.log((Real.pow(2.0, 5) * 5.0)) == (Real.log(Real.pow(2.0, 5)) + Real.log(5.0))) by { // @tac 1633-1682
        assert ((2.0 * 2.0 * 2.0 * 2.0 * 2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1654-1664
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 1654-1664 exec 603): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (2.0 * 2.0 * 2.0 * 2.0 * 2.0))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×3 [exec 603 1654-1664]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
          PowPos(2.0, 5);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        assert (5.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1670-1680
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×3 [exec 608 1670-1680]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert ((Real.pow(2.0, 5)) != 0.0) && ((5.0) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul(Real.pow(2.0, 5), 5.0);  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (5 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log ((2 : ℝ) ^ (5 : ℕ)) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 596 1633-1682]
      }
      // [TACTIC: rwSeq [ h₂₂ ]]
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (5 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 631 1687-1699]
      assert ((Real.log(Real.pow(2.0, 5)) + Real.log(5.0)) == ((5.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 1704-1819 // @tac 1824-1849 // @tac 1824-1836
        // have h₂₃ : Real.log ( ( 2 ^ 5 ) ) == 5 * Real.log ( 2 )  [type from Lean state]
        assert (Real.log(Real.pow(2.0, 5)) == (5.0 * Real.log(2.0))) by { // @tac 1765-1819 // @tac 1765-1800 // @tac 1765-1782
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> ring_nf ring_nf <;> norm_num norm_num]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(5, 2.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ)), ↑(5 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 688 1765-1782]
          assert (((5 as real) * Real.log(2.0)) == (5.0 * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1793-1800
            PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×28 [exec 723 1793-1800]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×3, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+14 more heads, ×15) (cited in this block, not counted here: pow_one [Lean recorded ×1])
          }
        }
        // [TACTIC: «_<;>_» [ h₂₃ ] rw [ h₂₃ ] <;> ring]
        // [TACTIC: rwSeq [ h₂₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (5 : ℕ)), (5 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a + Real.log (5 : ℝ) = (5 : ℝ) * Real.log (2 : ℝ) + …): no library counterpart (not stated) [exec 739 1824-1836]
      }
    }
  }
  // have h₃ : Real.log ( 20 ) == 2 * Real.log ( 2 ) + Real.log ( 5 )  [type from Lean state]
  assert (Real.log(20.0) == ((2.0 * Real.log(2.0)) + Real.log(5.0))) by { // @tac 1919-1983 // @tac 1988-2000
    // have h₃₁ : Real.log ( 20 ) == Real.log ( ( 2 ^ 2 * 5 ) )  [type from Lean state]
    assert (Real.log(20.0) == Real.log((Real.pow(2.0, 2) * 5.0))); // @tac 1975-1983
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×13 [exec 798 1975-1983]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+7 more heads, ×7)
    // [TACTIC: rwSeq [ h₃₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (20 : ℝ), Real.log ((2 : ℝ) ^ (2 : ℕ) * (5 : ℝ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 803 1988-2000]
    assert (Real.log((Real.pow(2.0, 2) * 5.0)) == ((2.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 2005-2134 // @tac 2139-2151
      // have h₃₂ : Real.log ( ( 2 ^ 2 * 5 ) ) == Real.log ( ( 2 ^ 2 ) ) + Real.log ( 5 )  [type from Lean state]
      assert (Real.log((Real.pow(2.0, 2) * 5.0)) == (Real.log(Real.pow(2.0, 2)) + Real.log(5.0))) by { // @tac 2085-2134
        assert ((2.0 * 2.0) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2106-2116
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 2106-2116 exec 857): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (2.0 * 2.0))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×3 [exec 857 2106-2116]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
          PowPos(2.0, 2);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        assert (5.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2122-2132
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×3 [exec 862 2122-2132]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert ((Real.pow(2.0, 2)) != 0.0) && ((5.0) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul(Real.pow(2.0, 2), 5.0);  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (2 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log ((2 : ℝ) ^ (2 : ℕ)) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 850 2085-2134]
      }
      // [TACTIC: rwSeq [ h₃₂ ]]
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ) * (5 : ℝ)), Real.log ((2 : ℝ) ^ (2 : ℕ)) + Real.log (5 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)): no library counterpart (not stated) [exec 885 2139-2151]
      assert ((Real.log(Real.pow(2.0, 2)) + Real.log(5.0)) == ((2.0 * Real.log(2.0)) + Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 2156-2271 // @tac 2276-2301 // @tac 2276-2288
        // have h₃₃ : Real.log ( ( 2 ^ 2 ) ) == 2 * Real.log ( 2 )  [type from Lean state]
        assert (Real.log(Real.pow(2.0, 2)) == (2.0 * Real.log(2.0))) by { // @tac 2217-2271 // @tac 2217-2252 // @tac 2217-2234
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> ring_nf ring_nf <;> norm_num norm_num]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(2, 2.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 942 2217-2234]
          assert (((2 as real) * Real.log(2.0)) == (2.0 * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2245-2252
            PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×28 [exec 977 2245-2252]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, congrArg ×3, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+14 more heads, ×15) (cited in this block, not counted here: pow_one [Lean recorded ×1])
          }
        }
        // [TACTIC: «_<;>_» [ h₃₃ ] rw [ h₃₃ ] <;> ring]
        // [TACTIC: rwSeq [ h₃₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a + Real.log (5 : ℝ) = (2 : ℝ) * Real.log (2 : ℝ) + …): no library counterpart (not stated) [exec 993 2276-2288]
      }
    }
  }
  // have h₄ : Real.log ( 80 ) * Real.log ( 40 ) == 12 * ( Real.log ( 2 ) ) ^ 2 + 7 *  [type from Lean state]
  assert ((Real.log(80.0) * Real.log(40.0)) == (((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by { // @tac 2424-2439
    // [TACTIC: rwSeq [ h₀ , h₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (80 : ℝ), (4 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ), fun (_a : ℝ) => _a * Real.log (40 : ℝ) = (12 : ℝ) * Real.log (2 : ℝ) …): no library counterpart (not stated) [exec 1040 2424-2439]
    // UNCITED-APPLIED congrArg(Real.log (40 : ℝ), (3 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ), fun (_a : ℝ) => ((4 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)) * _a …): no library counterpart (not stated) [exec 1040 2424-2439]
    assert ((((4.0 * Real.log(2.0)) + Real.log(5.0)) * ((3.0 * Real.log(2.0)) + Real.log(5.0))) == (((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by {  // sub-goal before `have` (Lean state) // @tac 2444-2921 // @tac 2926-3242 // @tac 2926-2938
      // have h₄₁ : ( 4 * Real.log ( 2 ) + Real.log ( 5 ) ) * ( 3 * Real.log ( 2 ) + Real.  [type from Lean state]
      assert ((((4.0 * Real.log(2.0)) + Real.log(5.0)) * ((3.0 * Real.log(2.0)) + Real.log(5.0))) == (((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by { // @tac 2602-2921 // @tac 2602-2609
        // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ]]
        // [TACTIC: Ring_nfAt]
        PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(5.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (5 : ℝ) ^ (2 : ℕ))
        // `ring_nf` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×138 [exec 1089 2602-2609]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×104) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      // [TACTIC: «_<;>_» [ h₄₁ ] rw [ h₄₁ ] <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ]]
      // [TACTIC: rwSeq [ h₄₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED congrArg(((4 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)) * ((3 : ℝ) * Real.log…, (12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * …, fun (_a : ℝ) => _a = (12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) …): no library counterpart (not stated) [exec 1105 2926-2938]
    }
  }
  // have h₅ : Real.log ( 160 ) * Real.log ( 20 ) == 10 * ( Real.log ( 2 ) ) ^ 2 + 7   [type from Lean state]
  assert ((Real.log(160.0) * Real.log(20.0)) == (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by { // @tac 3366-3381
    // [TACTIC: rwSeq [ h₂ , h₃ ]]
    // UNCITED-APPLIED congrArg(Real.log (160 : ℝ), (5 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ), fun (_a : ℝ) => _a * Real.log (20 : ℝ) = (10 : ℝ) * Real.log (2 : ℝ) …): no library counterpart (not stated) [exec 1152 3366-3381]
    // UNCITED-APPLIED congrArg(Real.log (20 : ℝ), (2 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ), fun (_a : ℝ) => ((5 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)) * _a …): no library counterpart (not stated) [exec 1152 3366-3381]
    assert ((((5.0 * Real.log(2.0)) + Real.log(5.0)) * ((2.0 * Real.log(2.0)) + Real.log(5.0))) == (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by {  // sub-goal before `have` (Lean state) // @tac 3386-3666 // @tac 3671-3794 // @tac 3671-3683
      // have h₅₁ : ( 5 * Real.log ( 2 ) + Real.log ( 5 ) ) * ( 2 * Real.log ( 2 ) + Real.  [type from Lean state]
      assert ((((5.0 * Real.log(2.0)) + Real.log(5.0)) * ((2.0 * Real.log(2.0)) + Real.log(5.0))) == (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) by { // @tac 3544-3666 // @tac 3544-3551
        // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) ]]
        // [TACTIC: Ring_nfAt]
        PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(5.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (5 : ℝ) ^ (2 : ℕ))
        // `ring_nf` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×138 [exec 1201 3544-3551]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+34 more heads, ×104) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      // [TACTIC: «_<;>_» [ h₅₁ ] rw [ h₅₁ ] <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) ]]
      // [TACTIC: rwSeq [ h₅₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED congrArg(((5 : ℝ) * Real.log (2 : ℝ) + Real.log (5 : ℝ)) * ((2 : ℝ) * Real.log…, (10 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * …, fun (_a : ℝ) => _a = (10 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) …): no library counterpart (not stated) [exec 1217 3671-3683]
    }
  }
  // have h₆ : Real.log ( 80 ) * Real.log ( 40 ) - Real.log ( 160 ) * Real.log ( 20 )  [type from Lean state]
  assert (((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))) == (2.0 * (Real.log(2.0) * Real.log(2.0)))) by { // @tac 3898-4229 // @tac 3898-3929 // @tac 3898-3913
    // [TACTIC: «_<;>_» [ h₄ , h₅ ] rw [ h₄ , h₅ ] <;> ring_nf ring_nf <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 5 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 20 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 40 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 80 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 160 ) ]]
    // [TACTIC: choice [ h₄ , h₅ ] rw [ h₄ , h₅ ]]
    // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) * Real.log (40 : ℝ), (12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * …, fun (_a : ℝ) => _a - Real.log (160 : ℝ) * Real.log (20 : ℝ) = (2 : ℝ)…): no library counterpart (not stated) [exec 1274 3898-3913]
    // UNCITED-APPLIED congrArg(Real.log (160 : ℝ) * Real.log (20 : ℝ), (10 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * …, fun (_a : ℝ) => (12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Rea…): no library counterpart (not stated) [exec 1274 3898-3913]
    assert (((((12.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0))) - (((10.0 * (Real.log(2.0) * Real.log(2.0))) + ((7.0 * Real.log(2.0)) * Real.log(5.0))) + (Real.log(5.0) * Real.log(5.0)))) == (2.0 * (Real.log(2.0) * Real.log(2.0))));  // sub-goal of `ring_nf` (Lean state) // @tac 3922-3929
    // UNCITED-APPLIED internal ×138 [exec 1310 3922-3929]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.mul_zero ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+42 more heads, ×109)
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
  }
  // have h₇ : Real.log ( 80 ) / Real.log ( 2 ) / ( Real.log ( 2 ) / Real.log ( 40 )   [type from Lean state]
  assert ((Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) - Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0)))) == 2.0) by { // @tac 4372-5756 // @tac 5761-7149 // @tac 7154-7175
    // have h₇₁ : Real.log ( 80 ) / Real.log ( 2 ) / ( Real.log ( 2 ) / Real.log ( 40 )   [type from Lean state]
    assert (Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) == Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) by { // @tac 4502-5460 // @tac 5467-5756 // @tac 5467-5738 // @tac 5467-5619 // @tac 5467-5601 // @tac 5467-5482
      // have h₇₁₁ : Real.log ( 80 ) / Real.log ( 2 ) / ( Real.log ( 2 ) / Real.log ( 40 )   [type from Lean state]
      assert (Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) == (Real.div(Real.log(80.0), Real.log(2.0)) * Real.div(Real.log(40.0), Real.log(2.0)))) by { // @tac 4646-5460 // @tac 4646-5440 // @tac 4646-5319 // @tac 4646-5299
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 4696-4704
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 4726-4734
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 4803-4811
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (5.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 4833-4841
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 20.0) by {  // sub-goal of `by` (Lean state) // @tac 4910-4918
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (20.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 4941-4949
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 40.0) by {  // sub-goal of `by` (Lean state) // @tac 5019-5027
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (40.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5050-5058
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 80.0) by {  // sub-goal of `by` (Lean state) // @tac 5128-5136
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (80.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5159-5167
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 160.0) by {  // sub-goal of `by` (Lean state) // @tac 5237-5245
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (160.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5269-5277
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: «Field_simp[_]At___» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ]]
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 4646-5299 exec 1380)
        if (0.0 < Real.log(2.0)) { cert_piece_1(); }  // cert: mul_pos
        // `field_simp` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×23 [exec 1380 4646-5299]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2, ne_of_gt ×2, div_div_eq_mul_div ×1, div_div ×1, mul_div_assoc' ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: Eq.trans ×5, congrArg ×5, of_eq_true ×1, congr ×1 (+2 more heads, ×2) (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» [ h₇₁₁ ] rw [ h₇₁₁ ] <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
      // [TACTIC: choice [ h₇₁₁ ] rw [ h₇₁₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) / Real.log (2 : ℝ) / (Real.log (2 : ℝ) / Real.log (…, Real.log (80 : ℝ) / Real.log (2 : ℝ) * (Real.log (40 : ℝ) / Real.log …, fun (_a : ℝ) => _a = Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log…): no library counterpart (not stated) [exec 1483 5467-5482]
      vc_amc12b_2021_p9_L412();  /* [IN-FILE CHECK] the closed lemma for line 412 */
      assert ((Real.div(Real.log(80.0), Real.log(2.0)) * Real.div(Real.log(40.0), Real.log(2.0))) == Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) by {  // sub-goal of `field_simp` (Lean state) // @tac 5493-5601
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 5543-5551
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5573-5581
          // [TACTIC: «Norm_num[_]At___»]
        }
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5493-5601 exec 1518)
        // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
        if (0.0 < Real.log(2.0)) { cert_piece_2(); }  // cert: mul_pos
        assert ((Real.log(2.0) * Real.log(2.0)) == (Real.log(2.0) * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5612-5619
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ) ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×24 [exec 1537 5612-5619]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+13 more heads, ×13)
        }
        // UNCITED-APPLIED internal ×22 [exec 1518 5493-5601]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, Mathlib.Meta.Positivity.log_pos_of_isNat ×3, div_mul_eq_mul_div ×2, mul_div_assoc' ×1, div_div ×1, or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
      }
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
    }
    // have h₇₂ : Real.log ( 160 ) / Real.log ( 2 ) / ( Real.log ( 2 ) / Real.log ( 20 )  [type from Lean state]
    assert (Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0))) == Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) by { // @tac 5893-6853 // @tac 6860-7149 // @tac 6860-7131 // @tac 6860-7012 // @tac 6860-6994 // @tac 6860-6875
      // have h₇₂₁ : Real.log ( 160 ) / Real.log ( 2 ) / ( Real.log ( 2 ) / Real.log ( 20 )  [type from Lean state]
      assert (Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0))) == (Real.div(Real.log(160.0), Real.log(2.0)) * Real.div(Real.log(20.0), Real.log(2.0)))) by { // @tac 6039-6853 // @tac 6039-6833 // @tac 6039-6712 // @tac 6039-6692
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 6089-6097
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6119-6127
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 6196-6204
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (5.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6226-6234
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 20.0) by {  // sub-goal of `by` (Lean state) // @tac 6303-6311
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (20.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6334-6342
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 40.0) by {  // sub-goal of `by` (Lean state) // @tac 6412-6420
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (40.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6443-6451
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 80.0) by {  // sub-goal of `by` (Lean state) // @tac 6521-6529
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (80.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6552-6560
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 160.0) by {  // sub-goal of `by` (Lean state) // @tac 6630-6638
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (160.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6662-6670
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: «Field_simp[_]At___» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 5 ) ( by norm_num norm_num : ( 5 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 20 ) ( by norm_num norm_num : ( 20 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 40 ) ( by norm_num norm_num : ( 40 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 80 ) ( by norm_num norm_num : ( 80 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 160 ) ( by norm_num norm_num : ( 160 : ℝ ) ≠ 1 ) ]]
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 6039-6692 exec 1597)
        if (0.0 < Real.log(2.0)) { cert_piece_3(); }  // cert: mul_pos
        // `field_simp` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×23 [exec 1597 6039-6692]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2, ne_of_gt ×2, div_div_eq_mul_div ×1, div_div ×1, mul_div_assoc' ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: Eq.trans ×5, congrArg ×5, of_eq_true ×1, congr ×1 (+2 more heads, ×2) (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» [ h₇₂₁ ] rw [ h₇₂₁ ] <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
      // [TACTIC: choice [ h₇₂₁ ] rw [ h₇₂₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (160 : ℝ) / Real.log (2 : ℝ) / (Real.log (2 : ℝ) / Real.log …, Real.log (160 : ℝ) / Real.log (2 : ℝ) * (Real.log (20 : ℝ) / Real.log…, fun (_a : ℝ) => _a = Real.log (160 : ℝ) * Real.log (20 : ℝ) / Real.lo…): no library counterpart (not stated) [exec 1700 6860-6875]
      assert ((Real.div(Real.log(160.0), Real.log(2.0)) * Real.div(Real.log(20.0), Real.log(2.0))) == Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) by {  // sub-goal of `field_simp` (Lean state) // @tac 6886-6994
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 6936-6944
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 6966-6974
          // [TACTIC: «Norm_num[_]At___»]
        }
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 6886-6994 exec 1735)
        // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
        if (0.0 < Real.log(2.0)) { cert_piece_4(); }  // cert: mul_pos
        assert ((Real.log(2.0) * Real.log(2.0)) == (Real.log(2.0) * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 7005-7012
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ) ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×24 [exec 1754 7005-7012]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+13 more heads, ×13)
        }
        // UNCITED-APPLIED internal ×22 [exec 1735 6886-6994]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, Mathlib.Meta.Positivity.log_pos_of_isNat ×3, div_mul_eq_mul_div ×2, mul_div_assoc' ×1, div_div ×1, or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
      }
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
    }
    // [TACTIC: rwSeq [ h₇₁ , h₇₂ ]]
    // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) / Real.log (2 : ℝ) / (Real.log (2 : ℝ) / Real.log (…, Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ), fun (_a : ℝ) => _a - Real.log (160 : ℝ) / Real.log (2 : ℝ) / (Real.lo…): no library counterpart (not stated) [exec 1771 7154-7175]
    // UNCITED-APPLIED congrArg(Real.log (160 : ℝ) / Real.log (2 : ℝ) / (Real.log (2 : ℝ) / Real.log …, Real.log (160 : ℝ) * Real.log (20 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ), fun (_a : ℝ) => Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log (2 :…): no library counterpart (not stated) [exec 1771 7154-7175]
    assert ((Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0))) - Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) == 2.0) by {  // sub-goal before `have` (Lean state) // @tac 7180-8064 // @tac 8069-8077
      // have h₇₃ : ( Real.log ( 80 ) * Real.log ( 40 ) ) / ( Real.log ( 2 ) ) ^ 2 - ( Rea  [type from Lean state]
      assert ((Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0))) - Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) == 2.0) by { // @tac 7308-7423 // @tac 7430-7543 // @tac 7550-7794 // @tac 7801-7813
        // have h₇₄ : Real.log ( 80 ) * Real.log ( 40 ) - Real.log ( 160 ) * Real.log ( 20 )  [type from Lean state]
        assert (((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))) == (2.0 * (Real.log(2.0) * Real.log(2.0)))) by { // @tac 7415-7423
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7415-7423 exec 1831)
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log (80 : ℝ) * Real.log (40 : ℝ) - ((12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * Real.lo…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log (80 : ℝ) * Real.log (40 : ℝ) - ((12 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ) + (7 : ℝ) * Real.log (2 : ℝ) * Real.log …` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          cert_identity_5();  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_6();  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×13 [exec 1831 7415-7423]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2; machinery/glue: Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×211 [exec 1832 7415-7423]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+39 more heads, ×179) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×207 [exec 1833 7415-7423]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+39 more heads, ×175) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1832, 1833)]
        }
        // have h₇₅ : Real.log ( 2 ) != 0  [type from Lean state]
        assert (Real.log(2.0) != 0.0) by { // @tac 7476-7543
          assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 7520-7528
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1855 7520-7528]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 7534-7542
            // [TACTIC: «Norm_num[_]At___»]
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1860 7534-7542]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          }
          // [TACTIC: exact Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num ) ( by norm_num norm_num )]
          assert (0.0 < (2.0)) && ((2.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
          RealLogNeZeroOfPosOfNeOne(2.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
        }
        // have h₇₆ : ( Real.log ( 80 ) * Real.log ( 40 ) ) / ( Real.log ( 2 ) ) ^ 2 - ( Rea  [type from Lean state]
        assert ((Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0))) - Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) == Real.div(((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))), (Real.log(2.0) * Real.log(2.0)))) by { // @tac 7754-7794 // @tac 7754-7774
          // [TACTIC: «_<;>_» [ h₇₅ ] field_simp [ h₇₅ ] <;> ring_nf ring_nf]
          // [TACTIC: «Field_simp[_]At___» [ h₇₅ ]]
          if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
          // `fieldSimp` step's recorded applications (Lean execution 7754-7774 exec 1882): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // `field_simp` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×18 [exec 1882 7754-7774]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2, IsUnit.mul_div_cancel_right ×2, sub_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Eq.trans ×4, congrArg ×4, of_eq_true ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_pos [Lean recorded ×1])
        }
        // [TACTIC: rwSeq [ h₇₆ ]]
        // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) * Real.log (40 : ℝ) / Real.log (2 : ℝ) ^ (2 : ℕ) - …, (Real.log (80 : ℝ) * Real.log (40 : ℝ) - Real.log (160 : ℝ) * Real.lo…, fun (_a : ℝ) => _a = (2 : ℝ)): no library counterpart (not stated) [exec 1893 7801-7813]
        assert (Real.div(((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))), (Real.log(2.0) * Real.log(2.0))) == 2.0) by {  // sub-goal before `have` (Lean state) // @tac 7820-8045 // @tac 8052-8064
          // have h₇₇ : ( Real.log ( 80 ) * Real.log ( 40 ) - Real.log ( 160 ) * Real.log ( 20  [type from Lean state]
          assert (Real.div(((Real.log(80.0) * Real.log(40.0)) - (Real.log(160.0) * Real.log(20.0))), (Real.log(2.0) * Real.log(2.0))) == 2.0) by { // @tac 7929-7941
            // [TACTIC: rwSeq [ h₇₄ ]]
            // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) * Real.log (40 : ℝ) - Real.log (160 : ℝ) * Real.log…, (2 : ℝ) * Real.log (2 : ℝ) ^ (2 : ℕ), fun (_a : ℝ) => _a / Real.log (2 : ℝ) ^ (2 : ℕ) = (2 : ℝ)): no library counterpart (not stated) [exec 1940 7929-7941]
            assert (Real.div((2.0 * (Real.log(2.0) * Real.log(2.0))), (Real.log(2.0) * Real.log(2.0))) == 2.0) by {  // sub-goal before `field_simp` (Lean state) // @tac 7950-8045 // @tac 7950-8023 // @tac 7950-7990 // @tac 7950-7970
              // [TACTIC: «_<;>_» [ h₇₅ ] field_simp [ h₇₅ ] <;> ring_nf ring_nf <;> field_simp [ h₇₅ ] field_simp [ h₇₅ ] <;> nlinarith nlinarith]
              // [TACTIC: «Field_simp[_]At___» [ h₇₅ ]]
              // `field_simp` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED internal ×6 [exec 1982 7950-7970]: applications made inside the tactic's own automation, not stated — IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, eq_self ×1
            }
          }
          // [TACTIC: rwSeq [ h₇₇ ]]
          // UNCITED-APPLIED congrArg((Real.log (80 : ℝ) * Real.log (40 : ℝ) - Real.log (160 : ℝ) * Real.lo…, (2 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ)): no library counterpart (not stated) [exec 2005 8052-8064]
        }
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8069-8077 exec 2026)
      cert_identity_7();  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_8();  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×17 [exec 2026 8069-8077]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.without_one_mul ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×147 [exec 2027 8069-8077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.mul_pf_left ×7 (+43 more heads, ×116) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×145 [exec 2028 8069-8077]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.mul_pf_left ×7 (+42 more heads, ×114) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2027, 2028)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 2027, 2028)]
    }
  }
  // [TACTIC: «_<;>_» [ h₇ ] rw [ h₇ ] <;> norm_num norm_num <;> linarith linarith]
  // [TACTIC: rwSeq [ h₇ ]]
  // `rw` closed the goal; the rest of the chain did not run
  // GAP: recorded applications of Lean executions this translation states nowhere:
  // UNCITED-APPLIED congrArg(Real.log (80 : ℝ) / Real.log (2 : ℝ) / (Real.log (2 : ℝ) / Real.log (…, (2 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ)): no library counterpart (not stated) [exec 2043 8083-8092]
}



// ===== closed lemma for line 412 (from closed/amc12b_2021_p9-412.dfy) =====

lemma {:induction false} vc_amc12b_2021_p9_L412()
  ensures   Real.div(Real.log(80.0), Real.log(2.0)) * Real.div(Real.log(40.0), Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0))
{

        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 5543-5551
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5573-5581
          // [TACTIC: «Norm_num[_]At___»]
        }
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5493-5601 exec 1518)
        // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
        if (0.0 < Real.log(2.0)) { cert_piece_2(); }  // cert: mul_pos
        assert ((Real.log(2.0) * Real.log(2.0)) == (Real.log(2.0) * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5612-5619
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ) ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×24 [exec 1537 5612-5619]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+13 more heads, ×13)
        }
        // UNCITED-APPLIED internal ×22 [exec 1518 5493-5601]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, Mathlib.Meta.Positivity.log_pos_of_isNat ×3, div_mul_eq_mul_div ×2, mul_div_assoc' ×1, div_div ×1, or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
}

