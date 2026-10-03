// NOT CLOSED — failing line mathd_numbertheory_175-79: theorem mathd_numbertheory_175, Dafny line 79 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert ((((Int.pow((2 * 2 * 2 * 2), 502) % 10) * ((2 * 2) % 10)) % 10) == 4) by {
// Lean step: have h₅₂ : (2 ^ 4 : ℕ) ^ 502 % 10 = 6 := by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2=oor, K2pow=oor, K3=oor, opaque=failed; this file is the honest base attempt
// Dafny: finished with 35 verified, 0 errors, 4 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L79()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  requires Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
  requires 10 != 0
  ensures   Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10 == 4
{
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

