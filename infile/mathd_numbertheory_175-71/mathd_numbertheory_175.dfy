// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_numbertheory_175.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction' n` (from-1 / Nat.le): proves P(n+1) for n >= 0
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat)
  ensures ((Int.pow(6, (n + 1)) % 10) == 6)
  decreases n
{
  if n == 0 {
    // base: P(1) — Lean base case
    assert (((6) % 10) == 6) by {  // sub-goal before `norm_num` (Lean state) // @tac 386-394 // @tac 383-394
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×9 [exec 46 386-394]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
    }
  } else {
    induction_helper_1(n - 1);   // IH: P(n)
    if ((1 <= n)) {  // sub-goal before `omega` (Lean state)
      // [TACTIC: omega]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      assert ((Int.pow(6, (n + 1)) % 10) == 6);  // sub-goal before `omega` (Lean state) // @tac 404-409 // @tac 401-409
      // UNCITED-APPLIED internal ×94 [exec 51 404-409]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, Int.mul_ediv_self_le ×1, Int.pow_succ ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Eq.trans ×7, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+18 more heads, ×39)
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_numbertheory_175()
  ensures ((Int.pow(2, 2010) % 10) == 4) // @tac 221-1558 // @tac 1561-1571
{
  // have h₀ : ( 2 ^ 2010 : ℕ ) % 10 == 4  [type from Lean state]
  assert ((Int.pow(2, 2010) % 10) == 4) by { // @tac 269-409 // @tac 414-463 // @tac 468-1543 // @tac 1548-1558
    // have h₁ : forall n : ℕ :: n >= 1 -> 6 ^ n % 10 == 6  [type from Lean state]
    forall n: nat | (n >= 1) // @tac 333-343
      ensures ((Int.pow(6, n) % 10) == 6) // @tac 350-376
    {
      // [TACTIC: intro n hn]
      // induction' n → recursive lemma induction_helper_1
      induction_helper_1(n - 1);
    }
    // have h₂ : ( 2 ^ 4 : ℕ ) % 10 == 6  [type from Lean state]
    assert (((2 * 2 * 2 * 2) % 10) == 6); // @tac 455-463
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×13 [exec 68 455-463]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1, eq_true ×1 (+5 more heads, ×5)
    // have h₃ : ( 2 ^ 2010 : ℕ ) % 10 == 4  [type from Lean state]
    assert ((Int.pow(2, 2010) % 10) == 4) by { // @tac 518-718 // @tac 725-734
      // have h₄ : 2 ^ 2010 == ( 2 ^ 4 ) ^ 502 * 2 ^ 2  [type from Lean state]
      assert (Int.pow(2, 2010) == (Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2))); // @tac 585-718 // @tac 585-702 // @tac 585-676 // @tac 585-651
      // UNCITED-APPLIED internal ×39 [exec 116 585-651]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×8, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×7, Mathlib.Meta.NormNum.isNat_pow ×4 (+6 more heads, ×12)
        // [TACTIC: «_<;>_» [ pow_add , pow_mul , pow_one , pow_two , pow_three , pow_succ ] norm_num [ pow_add , pow_mul , pow_one , pow_two , pow_three , pow_succ ] <;> ring_nf at * <;> norm_num at * <;> rfl rfl]
        // [TACTIC: «Norm_num[_]At___» [ pow_add , pow_mul , pow_one , pow_two , pow_three , pow_succ ]]
        // UNCITED pow_add: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_mul: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_one: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_two: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_three: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
        // `norm_num` closed the goal; the rest of the chain did not run
      // [TACTIC: rwSeq [ h₄ ]]
      // UNCITED-APPLIED congrArg((2 : ℕ) ^ (2010 : ℕ), ((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ) * (2 : ℕ) ^ (2 : ℕ), fun (_a : ℕ) => _a % (10 : ℕ) = (4 : ℕ)): no library counterpart (not stated) [exec 139 725-734]
      assert (((Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)) % 10) == 4) by {  // sub-goal before `have` (Lean state) // @tac 741-1526 // @tac 1533-1543
        // have h₅ : ( ( 2 ^ 4 : ℕ ) ^ 502 * 2 ^ 2 : ℕ ) % 10 == 4  [type from Lean state]
        assert (((Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)) % 10) == 4) by { // @tac 812-977 // @tac 986-998
          // have h₅₁ : ( ( 2 ^ 4 : ℕ ) ^ 502 * 2 ^ 2 : ℕ ) % 10 == ( ( 2 ^ 4 : ℕ ) ^ 502 % 10  [type from Lean state]
          vc_mathd_numbertheory_175_L71();  /* [IN-FILE CHECK] the closed lemma for line 71 */
          assert (((Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)) % 10) == (((Int.pow((2 * 2 * 2 * 2), 502) % 10) * ((2 * 2) % 10)) % 10)); // @tac 933-977
            // [TACTIC: simp [ Nat.mul_mod , Nat.pow_mod , Nat.mod_mod ]]
            // UNCITED Nat.mul_mod: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED Nat.pow_mod: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED Nat.mod_mod: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED-APPLIED internal ×2 [exec 198 933-977]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_self ×1
          // [TACTIC: rwSeq [ h₅₁ ]]
          // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ) * (2 : ℕ) ^ (2 : ℕ) % (10 : ℕ), ((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ) % (10 : ℕ) * ((2 : ℕ) ^ (2 : ℕ) % (10…, fun (_a : ℕ) => _a = (4 : ℕ)): no library counterpart (not stated) [exec 203 986-998]
          assert ((((Int.pow((2 * 2 * 2 * 2), 502) % 10) * ((2 * 2) % 10)) % 10) == 4) by {  // sub-goal before `have` (Lean state) // @tac 1007-1396 // @tac 1405-1457 // @tac 1466-1526 // @tac 1466-1508 // @tac 1466-1487
            // have h₅₂ : ( 2 ^ 4 : ℕ ) ^ 502 % 10 == 6  [type from Lean state]
            assert ((Int.pow((2 * 2 * 2 * 2), 502) % 10) == 6) by { // @tac 1067-1122 // @tac 1133-1369 // @tac 1380-1396
              // have h₅₂₁ : ( 2 ^ 4 : ℕ ) % 10 == 6  [type from Lean state]
              assert (((2 * 2 * 2 * 2) % 10) == 6); // @tac 1114-1122
                // [TACTIC: «Norm_num[_]At___»]
              // UNCITED-APPLIED internal ×13 [exec 262 1114-1122]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×2, of_eq_true ×1, eq_true ×1 (+5 more heads, ×5)
              // have h₅₂₂ : ( 2 ^ 4 : ℕ ) ^ 502 % 10 == 6  [type from Lean state]
              assert ((Int.pow((2 * 2 * 2 * 2), 502) % 10) == 6) by { // @tac 1198-1247
                // [TACTIC: rwSeq [ ← Nat.mod_add_div ( ( 2 ^ 4 : ℕ ) ^ 502 ) 10 ]]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                assert ((10) > 0);  // precondition of NatModAddDiv (Lean: Nat.mod_add_div)
                NatModAddDiv(Int.pow((2 * 2 * 2 * 2), 502), 10);  // cite: Nat.mod_add_div
                // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ), ((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ) % (10 : ℕ) + (10 : ℕ) * (((2 : ℕ) ^ (…, fun (_a : ℕ) => _a % (10 : ℕ) = (6 : ℕ)): no library counterpart (not stated) [exec 283 1198-1247]
                assert ((((Int.pow((2 * 2 * 2 * 2), 502) % 10) + (10 * (Int.pow((2 * 2 * 2 * 2), 502) / 10))) % 10) == 6) by {  // sub-goal before `simp` (Lean state) // @tac 1260-1369 // @tac 1260-1347 // @tac 1260-1322
                  // [TACTIC: «_<;>_» [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] <;> norm_num norm_num <;> omega omega]
                  // [TACTIC: simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ]]
                  // UNCITED Nat.pow_mod: no Lean instance recorded (arguments unknown), not guessed
                  // UNCITED Nat.mul_mod: no Lean instance recorded (arguments unknown), not guessed
                  // UNCITED Nat.add_mod: no Lean instance recorded (arguments unknown), not guessed
                  // `simp` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED internal ×2 [exec 320 1260-1322]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_self ×1
                }
              }
              // [TACTIC: exact h₅₂₂]
              assert ((Int.pow((2 * 2 * 2 * 2), 502) % 10) == 6);
            }
            // have h₅₃ : ( 2 ^ 2 : ℕ ) % 10 == 4  [type from Lean state]
            assert (((2 * 2) % 10) == 4); // @tac 1449-1457
              // [TACTIC: «Norm_num[_]At___»]
            // UNCITED-APPLIED internal ×10 [exec 350 1449-1457]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4)
            // [TACTIC: «_<;>_» [ h₅₂ , h₅₃ ] rw [ h₅₂ , h₅₃ ] <;> norm_num norm_num <;> omega omega]
            // [TACTIC: rwSeq [ h₅₂ , h₅₃ ]]
            // `rw` closed the goal; the rest of the chain did not run
            // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (4 : ℕ)) ^ (502 : ℕ) % (10 : ℕ), (6 : ℕ), fun (_a : ℕ) => _a * ((2 : ℕ) ^ (2 : ℕ) % (10 : ℕ)) % (10 : ℕ) = (4 :…): no library counterpart (not stated) [exec 365 1466-1487]
            // UNCITED-APPLIED congrArg((2 : ℕ) ^ (2 : ℕ) % (10 : ℕ), (4 : ℕ), fun (_a : ℕ) => (6 : ℕ) * _a % (10 : ℕ) = (4 : ℕ)): no library counterpart (not stated) [exec 365 1466-1487]
          }
        }
        // [TACTIC: exact h₅]
        assert (((Int.pow((2 * 2 * 2 * 2), 502) * (2 * 2)) % 10) == 4);
      }
    }
    // [TACTIC: exact h₃]
    assert ((Int.pow(2, 2010) % 10) == 4);
  }
  // [TACTIC: exact h₀]
  assert ((Int.pow(2, 2010) % 10) == 4);
}



// ===== closed lemma for line 71 (from closed/mathd_numbertheory_175-71.dfy) =====

lemma {:induction false} vc_mathd_numbertheory_175_L71()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  ensures   Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
{
  NatMulMod(Int.pow(2 * 2 * 2 * 2, 502), 2 * 2, 10);  // [ADDED]
}

