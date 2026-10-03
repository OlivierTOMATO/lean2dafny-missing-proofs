// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-453: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 453 (OOR: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2))
// failing Dafny line: ensures exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))))
// Lean step: induction' hn with n hn IH
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 6); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 268 verified, 2 errors, 12 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L453(k_1_2: int, n: int, n_0_0_0: int)
  requires 0 < n
  ensures   exists k_0_0_1: nat :: Int.pow(3, Int.pow(2, n_0_0_0)) == 1 + Int.pow(2, n_0_0_0 + 2) + k_0_0_1 * Int.pow(2, n_0_0_0 + 3)
{
  // have h_main : ∃ ( k : ℕ ) , 3 ^ 2 ^ n = 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
  assert (exists k_1_2: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3)))))) by { // @tac 420-7547 // @tac 7552-7569
    // have h₁ : forall n : ℕ :: 0 < n -> ∃ ( k : ℕ ) , 3 ^ 2 ^ n = 1 + 2 ^ ( n + 2 ) +  [type from Lean state]
    forall n: nat | (0 < n) // @tac 528-538
      ensures exists k_1_2: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3))))) // @tac 545-571
    {
      // [TACTIC: intro n hn]
      // induction' n → recursive lemma induction_helper_1
      induction_helper_1(n - 1);
    }
    // [TACTIC: exact h₁ n h₀]
    assert (forall n: nat :: ((0 < n) ==> (exists k_1_2: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3))))))));
    assert (exists k_1_2: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3))))));  // instance of h₁ (Lean state)
  }
  // have h_final : ( 3 ^ 2 ^ n - 1 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
  assert (NatMod(tsub(Int.pow(3, Int.pow(2, n)), 1), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by { // @tac 7644-7672 // @tac 7677-8018 // @tac 8023-8032
    // obtain ⟨k, hk⟩ := h_main
    assert exists k_1_2: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3)))));
    var k_1_2: nat :| (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3)))));
    // have h₁ : 3 ^ 2 ^ n - 1 == 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
    assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3))))) by { // @tac 7747-7819 // @tac 7826-8001 // @tac 8008-8018
      // have h₂ : 3 ^ 2 ^ n == 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
      assert (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k_1_2 * Int.pow(2, (n + 3))))) by { // @tac 7811-7819
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7811-7819 exec 1139)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) ^ (2 : ℕ) ^ n - ((1 : ℤ) + (2 : ℤ) ^ (n + (2 : ℕ)) + ↑k * (2 : ℤ) ^ (n + (3 : ℕ)))) < (0 : ℤ)`
        cert_identity_2(n, k_1_2);  // cert: add_lt_of_neg_of_le
        cert_identity_3(n, k_1_2);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×32 [exec 1139 7811-7819]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, congr ×5, Eq.trans ×4, Linarith.lt_of_lt_of_eq ×2 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_add [Lean recorded ×2], Nat.cast_mul [Lean recorded ×1], Nat.cast_one [Lean recorded ×1], Nat.cast_pow [Lean recorded ×3])
        // UNCITED-APPLIED internal ×172 [exec 1140 7811-7819]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_add_gt ×7 (+41 more heads, ×143)
        // UNCITED-APPLIED internal ×163 [exec 1141 7811-7819]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6 (+43 more heads, ×137)
        NatCastPowInt(3, Int.pow(2, n));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastPowInt(2, (n + 2));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastPowInt(2, (n + 3));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastAddInt((1 + Int.pow(2, (n + 2))), (k_1_2 * Int.pow(2, (n + 3))));  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastAddInt(1, Int.pow(2, (n + 2)));  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastOneInt();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastMulInt(k_1_2, Int.pow(2, (n + 3)));  // cite: Nat.cast_mul [applied by the tactic, not named in it]
      }
      // have h₃ : 3 ^ 2 ^ n - 1 == 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
      assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3))))) by { // @tac 7898-7987 // @tac 7996-8001
        // have h₄ : 3 ^ 2 ^ n >= 1  [type from Lean state]
        assert (Int.pow(3, Int.pow(2, n)) >= 1) by { // @tac 7942-7987 // @tac 7942-7962
          // [TACTIC: «_<;>_» Nat.one_le_pow apply Nat.one_le_pow <;> positivity]
          // [TACTIC: choice Nat.one_le_pow apply Nat.one_le_pow]
          assert (0 < (3));  // precondition of NatOneLePow (Lean: Nat.one_le_pow)
          NatOneLePow(Int.pow(2, n), 3);  // cite: Nat.one_le_pow
          assert (0 < 3);  // sub-goal of `positivity` (Lean state) // @tac 7977-7987
          // UNCITED-APPLIED internal ×2 [exec 1188 7977-7987]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×95 [exec 1189 7996-8001]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×4, Int.ofNat_add ×3, Int.add_one_le_of_lt ×3, Int.sub_eq_zero_of_eq ×2, le_of_le_of_eq ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×18, Lean.Omega.Int.sub_congr ×6, Lean.Omega.Int.add_congr ×6, Lean.Omega.LinearCombo.add_eval ×6 (+19 more heads, ×43)
      }
      // [TACTIC: exact h₃]
      assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))));
    }
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg((3 : ℕ) ^ (2 : ℕ) ^ n - (1 : ℕ), (2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a % (2 : ℕ) ^ (n + (3 : ℕ)) = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1195 8023-8032]
    assert (NatMod((Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by {  // sub-goal before `have` (Lean state) // @tac 8037-8870 // @tac 8875-8884
      // have h₂ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
      assert (NatMod((Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by { // @tac 8135-8853 // @tac 8860-8870
        // have h₃ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == ( 2 ^ ( n + 2  [type from Lean state]
        assert (NatMod((Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by { // @tac 8237-8431 // @tac 8440-8608 // @tac 8617-8626
          // have h₄ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
          assert (NatMod((k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by { // @tac 8299-8387 // @tac 8398-8431
            // have h₅ : 2 ^ ( n + 3 ) ∣ k * 2 ^ ( n + 3 )  [type from Lean state]
            assert NatDvd(Int.pow(2, (n + 3)), (k_1_2 * Int.pow(2, (n + 3)))) by { // @tac 8361-8387 // @tac 8361-8366
              // [TACTIC: «_<;>_» k <;> ring]
              // [TACTIC: Use k]
              assert ((k_1_2 * Int.pow(2, (n + 3))) == (Int.pow(2, (n + 3)) * k_1_2));  // sub-goal of `ring` (Lean state) // @tac 8383-8387
              // UNCITED-APPLIED internal ×53 [exec 1322 8383-8387]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+22 more heads, ×37)
            }
            // [TACTIC: exact Nat.mod_eq_zero_of_dvd h₅]
            assert NatDvd(Int.pow(2, (n + 3)), (k_1_2 * Int.pow(2, (n + 3))));
            assert (NatDvd((Int.pow(2, (n + 3))), ((k_1_2 * Int.pow(2, (n + 3))))));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
            NatModEqZeroOfDvd(Int.pow(2, (n + 3)), (k_1_2 * Int.pow(2, (n + 3))));  // cite: Nat.mod_eq_zero_of_dvd
          }
          // have h₅ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == ( 2 ^ ( n + 2  [type from Lean state]
          assert (NatMod((Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3)))) by { // @tac 8590-8608
            // [TACTIC: simp [ Nat.add_mod ]]
            NatAddMod(Int.pow(2, (n + 2)), (k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)));  // cite: Nat.add_mod
            // UNCITED-APPLIED internal ×13 [exec 1340 8590-8608]: applications made inside the tactic's own automation, not stated — Nat.mul_mod_left ×1, add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
          }
          // [TACTIC: rwSeq [ h₅ ]]
          // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (…, ((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + k * (2 : ℕ) ^ (n…, fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))): no library counterpart (not stated) [exec 1345 8617-8626]
          assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {  // sub-goal before `have` (Lean state) // @tac 8635-8688 // @tac 8697-8706
            // have h₆ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
            assert (NatMod((k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by {
              // [TACTIC: exact h₄]
              assert (NatMod((k_1_2 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0);
            }
            // [TACTIC: rwSeq [ h₆ ]]
            // UNCITED-APPLIED congrArg(k * (2 : ℕ) ^ (n + (3 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), (0 : ℕ), fun (_a : ℕ) => ((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + …): no library counterpart (not stated) [exec 1388 8697-8706]
            assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + 0), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {  // sub-goal before `have` (Lean state) // @tac 8715-8835 // @tac 8844-8853
              // have h₇ : ( 2 ^ ( n + 2 ) % 2 ^ ( n + 3 ) + 0 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
              assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + 0), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))); // @tac 8817-8835
                // [TACTIC: simp [ Nat.add_mod ]]
                // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                // UNCITED-APPLIED internal ×8 [exec 1431 8817-8835]: applications made inside the tactic's own automation, not stated — add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_self ×1
              // [TACTIC: rwSeq [ h₇ ]]
              // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + (0 : ℕ)) % (2 : …, (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))): no library counterpart (not stated) [exec 1436 8844-8853]
            }
          }
        }
        // [TACTIC: exact h₃]
        assert (NatMod((Int.pow(2, (n + 2)) + (k_1_2 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))));
      }
      // [TACTIC: rwSeq [ h₂ ]]
      // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (…, (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1462 8875-8884]
      assert (NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by {  // sub-goal before `have` (Lean state) // @tac 8889-9170 // @tac 9175-9184
        // have h₃ : 2 ^ ( n + 2 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
        assert (NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by { // @tac 8953-9055 // @tac 9062-9154 // @tac 9161-9170
          // have h₄ : 2 ^ ( n + 2 ) < 2 ^ ( n + 3 )  [type from Lean state]
          assert (Int.pow(2, (n + 2)) < Int.pow(2, (n + 3))) by { // @tac 9005-9055 // @tac 9005-9037
            // [TACTIC: «_<;>_» Nat.pow_lt_pow_of_lt_right apply Nat.pow_lt_pow_of_lt_right <;> omega omega]
            // [TACTIC: choice Nat.pow_lt_pow_of_lt_right apply Nat.pow_lt_pow_of_lt_right]
            assert ((2) >= 2) && (((n + 2)) < ((n + 3)));  // precondition of NatPowLtPowOfLtRight (Lean: Nat.pow_lt_pow_of_lt_right)
            NatPowLtPowOfLtRight(2, (n + 2), (n + 3));  // cite: Nat.pow_lt_pow_of_lt_right
            assert (1 < 2);  // sub-goal of `omega` (Lean state) // @tac 9050-9055
            // UNCITED-APPLIED internal ×5 [exec 1535 9050-9055]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×1, Nat.le_of_not_lt ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.Int.ofNat_le_of_le ×1
            assert ((n + 2) < (n + 3)) by {  // sub-goal of `omega` (Lean state) // @tac 9050-9055
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×11 [exec 1538 9050-9055]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.sub_nonneg_of_le ×1, Nat.le_of_not_lt ×1; machinery/glue: Eq.symm ×4, Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.Int.ofNat_le_of_le ×1
            }
          }
          // have h₅ : 2 ^ ( n + 2 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
          assert (NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by { // @tac 9128-9154
            // [TACTIC: rwSeq [ Nat.mod_eq_of_lt h₄ ]]
            assert ((Int.pow(2, (n + 2))) < (Int.pow(2, (n + 3))));  // precondition of NatModEqOfLt (Lean: Nat.mod_eq_of_lt)
            NatModEqOfLt(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)));  // cite: Nat.mod_eq_of_lt
            // UNCITED-APPLIED congrArg((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), (2 : ℕ) ^ (n + (2 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1559 9128-9154]
          }
          // [TACTIC: rwSeq [ h₅ ]]
          // UNCITED-APPLIED congrArg((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), (2 : ℕ) ^ (n + (2 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1584 9161-9170]
        }
        // [TACTIC: rwSeq [ h₃ ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), (2 : ℕ) ^ (n + (2 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1609 9175-9184]
      }
    }
  }
  // [TACTIC: exact h_final]
  assert (NatMod(tsub(Int.pow(3, Int.pow(2, n)), 1), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2)));
}

