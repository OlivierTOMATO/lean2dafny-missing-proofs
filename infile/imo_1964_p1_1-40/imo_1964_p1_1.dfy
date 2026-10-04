// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1964_p1_1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1964_p1_1(n: nat)
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  ensures NatDvd(3, n) // @tac 264-663 // @tac 669-994 // @tac 1000-1778 // @tac 1784-1812
{
  // have h₁ : 2 ^ n ≡ 1 [ZMOD 7 ]  [type from Lean state]
  assert (IntMod(Int.pow(2, n), 7) == IntMod(1, 7)) by { // @tac 382-396
    // [TACTIC: rwSeq [ Int.ModEq ]]
    // UNCITED Int.ModEq: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 24 382-396]
    // UNCITED-APPLIED Int.ModEq.eq_1((7 : ℤ), (2 : ℤ) ^ n, (1 : ℤ)): no library counterpart (not stated) [exec 24 382-396]
    assert ((Int.pow(2, n) % 7) == (1 % 7)) by {  // sub-goal before `rw` (Lean state) // @tac 473-505 // @tac 566-586
      // [TACTIC: rwSeq [ ← Int.coe_nat_dvd ] at h₀]
      // UNCITED Int.coe_nat_dvd: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      assert IntDvd((7 as int), (tsub(Int.pow(2, n), 1) as int));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 473-505
      // [TACTIC: «Norm_num[_]At___» at h₀ ⊢]
      // UNCITED-APPLIED internal ×6 [exec 82 566-586]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1, Mathlib.Meta.NormNum.isInt_emod ×1 (+1 more heads, ×1)
      assert IntDvd(7, (Int.pow(2, n) - 1));  // hypothesis h₀ after `norm_num` (Lean state) // @tac-hyp 566-586
      assert ((Int.pow(2, n) % 7) == 1) by {  // sub-goal before `omega` (Lean state) // @tac 658-663
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // SORT_GAP: Nat.cast_zero is used at carrier nat; library NatCastZero/NatCastZeroInt/NatCastZeroRat is not over nat (no faithful counterpart, not cited)
        NatCastPowInt(2, n);  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        IntCoeNatDvd(7, tsub(Int.pow(2, n), 1));  // cite: Int.coe_nat_dvd [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×101 [exec 83 658-663]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Int.emod_def ×2, Int.lt_or_gt_of_ne ×1, Int.emod_eq_zero_of_dvd ×1, Nat.cast_pred ×1, Nat.cast_zero ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Eq.trans ×7, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+23 more heads, ×47) (cited in this block, not counted here: Int.coe_nat_dvd [Lean recorded ×1], Nat.cast_pow [Lean recorded ×1])
      }
    }
  }
  // have h₂ : orderOf ( 2 ) == 3  [type from Lean state]
  assert (orderOf(2, 7) == 3) by { // @tac 768-915 // @tac 978-994
    // have h₂ : orderOf ( 2 ) == 3  [type from Lean state]
    assert (orderOf(2, 7) == 3) by { // @tac 885-915 // @tac 885-904
      // [TACTIC: «_<;>_» [ orderOf_eq_iff ] rw [ orderOf_eq_iff ] <;> decide decide]
      // [TACTIC: choice [ orderOf_eq_iff ] rw [ orderOf_eq_iff ]]
      // UNCITED orderOf_eq_iff: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 125 885-904]
      assert ((((2 * 2 * 2) % 7) == (1 % 7)) && (forall m: nat :: ((m < 3) ==> ((0 < m) ==> ((Int.pow(2, m) % 7) != (1 % 7))))));  // sub-goal of `decide` (Lean state) // @tac 909-915
      assert (0 < 3);  // sub-goal of `decide` (Lean state) // @tac 909-915
      // UNCITED-APPLIED internal ×1 [exec 160 909-915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
      // UNCITED-APPLIED internal ×1 [exec 163 909-915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
      vc_imo_1964_p1_1_L40(n);  /* [IN-FILE CHECK] the closed lemma for line 40 */
    }
    // [TACTIC: simpa using h₂]
  }
  // have h₃ : 3 ∣ n  [type from Lean state]
  assert NatDvd(3, n) by { // @tac 1030-1052 // @tac 1057-1074 // @tac 1079-1107
    // [TACTIC: rwSeq [ Int.ModEq ] at h₁]
    // UNCITED Int.ModEq: no Lean instance recorded (arguments unknown), not guessed
    assert ((Int.pow(2, n) % 7) == (1 % 7));  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 1030-1052
    // [TACTIC: Norm_cast at h₁]
    assert ((Int.pow(2, n) % 7) == (1 % 7));  // hypothesis h₁ after `norm_cast` (Lean state) // @tac-hyp 1057-1074
    // [TACTIC: rwSeq [ Nat.dvd_iff_mod_eq_zero ]]
    assert (0 < (3));  // precondition of NatDvdIffModEqZero (Lean: Nat.dvd_iff_mod_eq_zero)
    NatDvdIffModEqZero(3, n);  // cite: Nat.dvd_iff_mod_eq_zero
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 240 1079-1107]
    assert ((n % 3) == 0) by {  // sub-goal before `have` (Lean state) // @tac 1151-1168 // @tac 1173-1209 // @tac 1257-1327 // @tac 1414-1725 // @tac 1768-1778
      // have h₃ :   [type from Lean state]
      {  // proof of the have (plain block: the statement has a literal division)
        // [TACTIC: exact h₁]
        assert ((Int.pow(2, n) % 7) == (1 % 7));  // hypothesis h₁ at `exact` (Lean state)
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        NatCastOneInt();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`refine` exec 276)]
        // UNCITED-APPLIED congrArg((1 : ℤ), ↑(1 : ℕ), fun (x : ℤ) => ↑(2 : ℕ) ^ n % ↑(7 : ℕ) = x % ↑(7 : ℕ)): no library counterpart (not stated) [exec 276 1151-1168]
        // UNCITED-APPLIED congrArg(↑(2 : ℕ) ^ n, ↑((2 : ℕ) ^ n), fun (x : ℤ) => x % ↑(7 : ℕ) = ↑((1 : ℕ) % (7 : ℕ))): no library counterpart (not stated) [exec 276 1151-1168]
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 276 1151-1168]
        // UNCITED-APPLIED Int.ModEq.eq_1((7 : ℤ), (2 : ℤ) ^ n, (1 : ℤ)): no library counterpart (not stated) [exec 276 1151-1168]
        // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 276 1151-1168]
      }
      // have h₃ : (its statement, proved in the plain block above)
      assert ((Int.pow(2, n) % 7) == (1 % 7));
      // [TACTIC: rwSeq [ ← Nat.mod_add_div n 3 ] at h₃]
      // UNCITED Nat.mod_add_div: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      assert ((Int.pow(2, ((n % 3) + (3 * (n / 3)))) % 7) == (1 % 7));  // hypothesis h₃ after `rw` (Lean state) // @tac-hyp 1173-1209
      // [TACTIC: simp [ pow_add , pow_mul , Nat.pow_mod , Nat.mul_mod , Nat.mod_mod ] at h₃]
      // UNCITED pow_add: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      // UNCITED pow_mul: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.pow_mod: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.mul_mod: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.mod_mod: no Lean instance recorded (arguments unknown), not guessed
      assert ((Int.pow((2 % 7), (n % 3)) % 7) == 1);  // hypothesis h₃ after `simp` (Lean state) // @tac-hyp 1257-1327
      // have h₄ : n % 3 == 0  [type from Lean state]
      assert ((n % 3) == 0) by { // @tac 1448-1504 // @tac 1559-1725 // @tac 1559-1653 // @tac 1559-1587
        // have [anonymous] : n % 3 == 0 || n % 3 == 1 || n % 3 == 2  [type from Lean state]
        assert (((n % 3) == 0) || (((n % 3) == 1) || ((n % 3) == 2))); // @tac 1499-1504
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×47 [exec 343 1499-1504]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×7, Nat.lt_or_gt_of_ne ×3, Int.ofNat_emod ×1, Int.emod_def ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×14, Lean.Omega.Int.ofNat_lt_of_lt ×6, Decidable.byContradiction ×1, Lean.Omega.and_not_not_of_not_or ×1 (+3 more heads, ×3)
        // [TACTIC: «_<;>_» this with ( h | h | h ) <;> simp [ h , h₂ , Nat.pow_mod , Nat.mul_mod , Nat.mod_mod ] at h₃ simp [ h , h₂ , Nat.pow_mod , Nat.mul_mod , Nat.mod_mod ] at h₃ simp [ h , h₂ , Nat.pow_mod , Nat.mul_mod , Nat.mod_mod ] at h₃ <;> omega omega]
        // [TACTIC: rcases this with ( h | h | h )]
        if (((n % 3) == 0)) {  // sub-goal of `simp` (Lean state)
          // UNCITED Nat.pow_mod: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.mul_mod: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.mod_mod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          assert ((n % 3) == 0);  // sub-goal of `simp` (Lean state) // @tac 1592-1653 // @tac 1720-1725
          // UNCITED-APPLIED internal ×38 [exec 378 1720-1725]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×9, Lean.Omega.LinearCombo.sub_eval ×4, Lean.Omega.combo_sat' ×2, Lean.Omega.Constraint.addInequality_sat ×2 (+12 more heads, ×13)
        }
        if (((n % 3) == 1)) {  // sub-goal of `simp` (Lean state)
          NatPowMod(8, (n / 3), 7);  // cite: Nat.pow_mod
          // UNCITED Nat.mod_mod: no Lean instance recorded (arguments unknown), not guessed
          NatPowOne(2);  // cite: pow_one [applied by the tactic, not named in it]
          NatPowAdd(2, (n % 3), (3 * (n / 3)));  // cite: pow_add [applied by the tactic, not named in it]
          NatPowMul(2, 3, (n / 3));  // cite: pow_mul [applied by the tactic, not named in it]
          OnePowNat((n / 3));  // cite: one_pow [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := ((2 : ℕ) % (7 : ℕ)) ^ (n % (3 : ℕ)) % (7 : ℕ))
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          if ((3) > 0) { NatModAddDiv(n, 3); }  // cite: Nat.mod_add_div [applied by the tactic, not named in it]
          assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
          NatMulMod(Int.pow(2, (n % 3)), Int.pow(8, (n / 3)), 7);  // cite: Nat.mul_mod
          assert ((7) >= 1);  // precondition of NatPowMod (Lean: Nat.pow_mod)
          NatPowMod(2, (n % 3), 7);  // cite: Nat.pow_mod
          // GAP: Nat.pow_mod: this execution also rewrote the hypotheses h₃; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Nat.mul_mod: this execution also rewrote the hypotheses h₃; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert ((n % 3) == 0);  // sub-goal of `simp` (Lean state) // @tac 1592-1653
          // UNCITED-APPLIED internal ×22 [exec 366 1592-1653]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1, mul_one ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.mod_add_div [Lean recorded ×1], Nat.mul_mod [Lean recorded ×1], Nat.pow_mod [Lean recorded ×2], one_pow [Lean recorded ×1], pow_add [Lean recorded ×1], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×1])
        }
        if (((n % 3) == 2)) {  // sub-goal of `simp` (Lean state)
          NatPowMod(8, (n / 3), 7);  // cite: Nat.pow_mod
          // UNCITED Nat.mod_mod: no Lean instance recorded (arguments unknown), not guessed
          NatPowAdd(2, (n % 3), (3 * (n / 3)));  // cite: pow_add [applied by the tactic, not named in it]
          NatPowMul(2, 3, (n / 3));  // cite: pow_mul [applied by the tactic, not named in it]
          OnePowNat((n / 3));  // cite: one_pow [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := ((2 : ℕ) % (7 : ℕ)) ^ (n % (3 : ℕ)) % (7 : ℕ))
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          if ((3) > 0) { NatModAddDiv(n, 3); }  // cite: Nat.mod_add_div [applied by the tactic, not named in it]
          assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
          NatMulMod(Int.pow(2, (n % 3)), Int.pow(8, (n / 3)), 7);  // cite: Nat.mul_mod
          assert ((7) >= 1);  // precondition of NatPowMod (Lean: Nat.pow_mod)
          NatPowMod(2, (n % 3), 7);  // cite: Nat.pow_mod
          // GAP: Nat.pow_mod: this execution also rewrote the hypotheses h₃; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Nat.mul_mod: this execution also rewrote the hypotheses h₃; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert ((n % 3) == 0);  // sub-goal of `simp` (Lean state) // @tac 1592-1653
          // UNCITED-APPLIED internal ×22 [exec 369 1592-1653]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1, mul_one ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.mod_add_div [Lean recorded ×1], Nat.mul_mod [Lean recorded ×1], Nat.pow_mod [Lean recorded ×2], one_pow [Lean recorded ×1], pow_add [Lean recorded ×1], pow_mul [Lean recorded ×1])
        }
      }
      // [TACTIC: exact h₄]
      assert ((n % 3) == 0);
    }
  }
  // [TACTIC: rwSeq [ ← Nat.mod_add_div n 3 ]]
  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
  assert ((3) > 0);  // precondition of NatModAddDiv (Lean: Nat.mod_add_div)
  NatModAddDiv(n, 3);  // cite: Nat.mod_add_div
  // UNCITED-APPLIED congrArg(n, n % (3 : ℕ) + (3 : ℕ) * (n / (3 : ℕ)), fun (_a : ℕ) => (3 : ℕ) ∣ _a): no library counterpart (not stated) [exec 384 1784-1812]
  assert NatDvd(3, ((n % 3) + (3 * (n / 3)))) by {  // sub-goal before `simp_all` (Lean state) // @tac 1815-1858 // @tac 1815-1846 // @tac 1853-1858
    // [TACTIC: «_<;>_» [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] <;> omega omega]
    // [TACTIC: choice [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ]]
    // UNCITED Int.ModEq: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Nat.ModEq: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    assert ((Int.pow(2, n) % 7) == 1);  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 1815-1846
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    assert (NatDvd((3), (n)));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
    NatModEqZeroOfDvd(3, n);  // cite: Nat.mod_eq_zero_of_dvd [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×57 [exec 425 1853-1858]: applications made inside the tactic's own automation, not stated — Int.ofNat_emod ×2, Int.emod_def ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1, Int.lt_mul_ediv_self_add ×1, Int.ofNat_add ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1, Nat.emod_pos_of_not_dvd ×1; machinery/glue: Eq.symm ×14, Lean.Omega.LinearCombo.sub_eval ×5, Lean.Omega.Int.mul_congr ×3, Lean.Omega.LinearCombo.add_eval ×3 (+14 more heads, ×18) (cited in this block, not counted here: Nat.mod_eq_zero_of_dvd [Lean recorded ×1])
  }
}



// ===== closed lemma for line 40 (from closed/imo_1964_p1_1-40.dfy) =====

lemma {:induction false} vc_imo_1964_p1_1_L40(n: nat)
  requires 0 <= n
  ensures   orderOf(2, 7) == 3
{
  assert Int.pow(2, 0) == 1;  // [ADDED]
  assert Int.pow(2, 1) == 2;  // [ADDED]
  assert Int.pow(2, 2) == 4;  // [ADDED]
  assert Int.pow(2, 3) == 8;  // [ADDED]
  assert Int.pow(2, 3) % 7 == 1;  // [ADDED]
  forall j: nat | 0 < j < 3 ensures Int.pow(2, j) % 7 != 1 {  // [ADDED]
    if j == 1 { assert Int.pow(2, j) == 2; } else { assert j == 2; assert Int.pow(2, j) == 4; }  // [ADDED]
  }
  OrderOfEqIff(2, 7, 3);  // [ADDED]
}

