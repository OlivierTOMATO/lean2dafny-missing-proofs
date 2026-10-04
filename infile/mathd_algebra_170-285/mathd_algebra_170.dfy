// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_170.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(S: set<int>, n: int)
  ensures ((-(1) + ((n - 2) - 5)) + ((5 + 1) - (n - 2))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₃/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(S: set<int>, n: int)
  ensures ((-(1) + (-((n - 2)) - 5)) + ((5 + 1) - -((n - 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(S: set<int>, n: int)
  ensures ((-(1) + ((n - 2) - 5)) + ((5 + 1) - (n - 2))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₄/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(S: set<int>, n: int)
  ensures ((-(1) + (-(3) - n)) + ((5 + 1) - -((n - 2)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(S: set<int>, n: int)
  ensures ((-(1) + (n - 7)) + ((5 + 1) - (n - 2))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(S: set<int>, n: int)
  ensures ((-(1) + (-(3) - n)) + ((5 + 1) - -((n - 2)))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_170(S: set<int>)
  requires (forall n: int :: ((n in S) <==> (IntAbs((n - 2)) <= (5 + (6 / 10)))))
  ensures (|S| == 11) // @tac 316-2429 // @tac 2435-2629 // @tac 2635-2645
{
  // have h₁ : S == Finset.Icc ( ( - 3 ) , 7 )  [type from Lean state]
  assert (S == Icc(-(3), 7)) by { // @tac 360-376
    // [TACTIC: apply Finset.ext]
    assert (forall a: int :: ((a in S) <==> (a in Icc(-(3), 7)))) by {  // sub-goal before `intro` (Lean state) // @tac 381-388
      // [TACTIC: intro n]  (lowered: its recorded goal under the new binders)
      forall n: int
        ensures ((n in S) <==> (n in Icc(-(3), 7)))  // sub-goal of `intro` (Lean state) // @tac 393-425
      {
        // [TACTIC: simp only [ Finset.mem_Icc , h₀ ]]
        assert ((n in S) <==> (IntAbs((n - 2)) <= (5 + (6 / 10))));  // instance of h₀ (Lean state)
        // UNCITED Finset.mem_Icc: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×2 [exec 22 393-425]: applications made inside the tactic's own automation, not stated — machinery/glue: congr ×1, congrArg ×1
        assert ((IntAbs((n - 2)) <= (5 + (6 / 10))) <==> ((-(3) <= n) && (n <= 7))) by {  // sub-goal before `constructor` (Lean state) // @tac 430-441
          // [TACTIC: constructor]
          // `constructor`: 2 cases (Lean states); 2 branch bodies
          assert ((IntAbs((n - 2)) <= (5 + (6 / 10))) ==> ((-(3) <= n) && (n <= 7))) by {  // sub-goal of `constructor` (Lean state) // @tac 449-456 // @tac 446-1654
            // intro h: P → Q  (N7 if-wrapper)
            if (IntAbs((n - 2)) <= (5 + (6 / 10))) {
              assert ((-(3) <= n) && (n <= 7)) by {  // sub-goal before `have` (Lean state) // @tac 463-762 // @tac 769-1194 // @tac 1201-1625 // @tac 1632-1654
                // have h₂ : abs ( ( n - 2 ) ) <= 5  [type from Lean state]
                assert (IntAbs((n - 2)) <= 5) by { // @tac 507-762 // @tac 507-736 // @tac 507-556 // @tac 507-524 // @tac 546-555 // @tac 550-555
                  // [TACTIC: «_<;>_» at h ⊢ <;> ( try omega omega ) <;> ( try { cases' le_or_lt 0 ( n - 2 ) with h₃ h₃ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] <;> omega omega } ) <;> omega omega]
                  // [TACTIC: «Norm_num[_]At___» at h ⊢]
                  assert (IntAbs((n - 2)) <= 5);  // hypothesis h after `norm_num` (Lean state) // @tac-hyp 507-524
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×32 [exec 76 550-555]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Lean.Omega.Constraint.addInequality_sat ×2, Eq.trans ×2 (+15 more heads, ×17)
                  // [TACTIC: try { cases' le_or_lt 0 ( n - 2 ) with h₃ h₃ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_no]  NOT RUN in Lean (no execution recorded)
                  // [TACTIC: ( try { cases' le_or_lt 0 ( n - 2 ) with h₃ h₃ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_]  NOT RUN in Lean (no execution recorded)
                }
                // have h₃ : - 3 <= n  [type from Lean state]
                assert (-(3) <= n) by { // @tac 804-841 // @tac 850-890
                  // have h₄ : abs ( ( n - 2 ) ) <= 5  [type from Lean state]
                  assert (IntAbs((n - 2)) <= 5) by {
                    // [TACTIC: exact h₂]
                    assert (IntAbs((n - 2)) <= 5);
                  }
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  // case split: le_or_lt (0 <= (n - 2) ∨ …)
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  if 0 <= (n - 2) {
                    if ((0 <= (n - 2))) {  // sub-goal before `have` (Lean state)
                      // have h₆ : n - 2 <= 5  [type from Lean state]
                      assert ((n - 2) <= 5) by { // @tac 975-1006 // @tac 1019-1027
                        // [TACTIC: rwSeq [ abs_of_nonneg h₅ ] at h₄]
                        // UNCITED abs_of_nonneg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                        assert ((n - 2) <= 5);  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 975-1006
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1019-1027 exec 169)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (n - (2 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_1(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×89 [exec 169 1019-1027]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+26 more heads, ×61) (cited in this block, not counted here: abs_of_nonneg [Lean recorded ×1])
                        assert (0 <= ((n - 2)));  // precondition of IntAbsOfNonneg (Lean: abs_of_nonneg; a hypothesis of Lean's state here)
                        IntAbsOfNonneg((n - 2));  // cite: abs_of_nonneg [applied by the tactic, not named in it]
                      }
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      assert (-(3) <= n);  // sub-goal before `have` (Lean state) // @tac 933-1027 // @tac 899-1043 // @tac 1038-1043
                      // UNCITED-APPLIED internal ×35 [exec 171 1038-1043]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×5, Eq.trans ×4, Lean.Omega.Constraint.addInequality_sat ×3, Lean.Omega.Int.sub_congr ×3 (+10 more heads, ×14)
                    }
                  } else {
                    if (((n - 2) < 0)) {  // sub-goal before `have` (Lean state)
                      // have h₆ : - ( n - 2 ) <= 5  [type from Lean state]
                      assert (-((n - 2)) <= 5) by { // @tac 1129-1157 // @tac 1170-1178
                        // [TACTIC: rwSeq [ abs_of_neg h₅ ] at h₄]
                        // UNCITED abs_of_neg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                        assert (-((n - 2)) <= 5);  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 1129-1157
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1170-1178 exec 223)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (-(n - (2 : ℤ)) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_2(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×100 [exec 223 1170-1178]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+26 more heads, ×70) (cited in this block, not counted here: abs_of_neg [Lean recorded ×1])
                        assert (((n - 2)) < 0);  // precondition of IntAbsOfNeg (Lean: abs_of_neg; a hypothesis of Lean's state here)
                        IntAbsOfNeg((n - 2));  // cite: abs_of_neg [applied by the tactic, not named in it]
                      }
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      assert (-(3) <= n);  // sub-goal before `have` (Lean state) // @tac 1084-1178 // @tac 1052-1194 // @tac 1189-1194
                      // UNCITED-APPLIED internal ×49 [exec 225 1189-1194]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×8, Eq.trans ×7, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+12 more heads, ×18)
                    }
                  }
                }
                // have h₄ : n <= 7  [type from Lean state]
                assert (n <= 7) by { // @tac 1235-1272 // @tac 1281-1321
                  // have h₅ : abs ( ( n - 2 ) ) <= 5  [type from Lean state]
                  assert (IntAbs((n - 2)) <= 5) by {
                    // [TACTIC: exact h₂]
                    assert (IntAbs((n - 2)) <= 5);
                  }
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  // case split: le_or_lt (0 <= (n - 2) ∨ …)
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  if 0 <= (n - 2) {
                    if ((0 <= (n - 2))) {  // sub-goal before `have` (Lean state)
                      // have h₇ : n - 2 <= 5  [type from Lean state]
                      assert ((n - 2) <= 5) by { // @tac 1406-1437 // @tac 1450-1458
                        // [TACTIC: rwSeq [ abs_of_nonneg h₆ ] at h₅]
                        // UNCITED abs_of_nonneg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                        assert ((n - 2) <= 5);  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 1406-1437
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1450-1458 exec 306)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (n - (2 : ℤ) - (5 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_3(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×89 [exec 306 1450-1458]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsInt.of_raw ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+26 more heads, ×61) (cited in this block, not counted here: abs_of_nonneg [Lean recorded ×1])
                        assert (0 <= ((n - 2)));  // precondition of IntAbsOfNonneg (Lean: abs_of_nonneg; a hypothesis of Lean's state here)
                        IntAbsOfNonneg((n - 2));  // cite: abs_of_nonneg [applied by the tactic, not named in it]
                      }
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      assert (n <= 7);  // sub-goal before `have` (Lean state) // @tac 1364-1458 // @tac 1330-1474 // @tac 1469-1474
                      // UNCITED-APPLIED internal ×30 [exec 308 1469-1474]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×3, Eq.trans ×3, Lean.Omega.Int.sub_congr ×3 (+8 more heads, ×11)
                    }
                  } else {
                    if (((n - 2) < 0)) {  // sub-goal before `have` (Lean state)
                      // have h₇ : - ( n - 2 ) <= 5  [type from Lean state]
                      assert (-((n - 2)) <= 5) by { // @tac 1560-1588 // @tac 1601-1609
                        // [TACTIC: rwSeq [ abs_of_neg h₆ ] at h₅]
                        // UNCITED abs_of_neg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
                        assert (-((n - 2)) <= 5);  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 1560-1588
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1601-1609 exec 360)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((-3 : ℤ) - n) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_4(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×99 [exec 360 1601-1609]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_one_mul ×5 (+27 more heads, ×68)
                      }
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      assert (n <= 7);  // sub-goal before `have` (Lean state) // @tac 1515-1609 // @tac 1483-1625 // @tac 1620-1625
                      // UNCITED-APPLIED internal ×40 [exec 362 1620-1625]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×6, Eq.trans ×5, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+10 more heads, ×13)
                    }
                  }
                }
                // [TACTIC: exact ⟨ h₃ , h₄ ⟩ ⟨ h₃ , h₄ ⟩]
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
              }
            }
          }
          assert (((-(3) <= n) && (n <= 7)) ==> (IntAbs((n - 2)) <= (5 + (6 / 10)))) by {  // sub-goal of `constructor` (Lean state) // @tac 1662-1669 // @tac 1659-2429
            // intro h: P → Q  (N7 if-wrapper)
            if ((-(3) <= n) && (n <= 7)) {
              assert (IntAbs((n - 2)) <= (5 + (6 / 10))) by {  // sub-goal before `have` (Lean state) // @tac 1676-1703 // @tac 1710-1736 // @tac 1743-2184 // @tac 2191-2429 // @tac 2191-2407 // @tac 2191-2239 // @tac 2191-2211
                // have h₂ : - 3 <= n  [type from Lean state]
                assert (-(3) <= n);
                  // [TACTIC: exact h . 1]
                // have h₃ : n <= 7  [type from Lean state]
                assert (n <= 7);
                  // [TACTIC: exact h . 2]
                // have h₄ : abs ( ( n - 2 ) ) <= 5  [type from Lean state]
                assert (IntAbs((n - 2)) <= 5) by { // @tac 1787-1815 // @tac 1824-1851 // @tac 1860-1900
                  // have h₅ : - 3 <= n  [type from Lean state]
                  assert (-(3) <= n) by {
                    // [TACTIC: exact h₂]
                    assert (-(3) <= n);
                  }
                  // have h₆ : n <= 7  [type from Lean state]
                  assert (n <= 7) by {
                    // [TACTIC: exact h₃]
                    assert (n <= 7);
                  }
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  // case split: le_or_lt (0 <= (n - 2) ∨ …)
                  LeOrLtInt(0, (n - 2));  // cite: le_or_lt
                  if 0 <= (n - 2) {
                    if ((0 <= (n - 2))) {  // sub-goal before `have` (Lean state)
                      // have h₈ : n - 2 <= 5  [type from Lean state]
                      assert ((n - 2) <= 5); // @tac 1985-1990
                        // [TACTIC: omega]
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED internal ×38 [exec 454 1985-1990]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×5, Lean.Omega.Constraint.addInequality_sat ×4, Eq.trans ×4, Lean.Omega.Int.sub_congr ×4 (+8 more heads, ×13)
                      // [TACTIC: rwSeq [ abs_of_nonneg h₇ ]]
                      if (0 <= ((n - 2))) { IntAbsOfNonneg((n - 2)); }  // cite: abs_of_nonneg
                      // UNCITED-APPLIED congrArg(|n - (2 : ℤ)|, n - (2 : ℤ), fun (_a : ℤ) => _a ≤ (5 : ℤ)): no library counterpart (not stated) [exec 459 2001-2024]
                      assert ((n - 2) <= 5) by {  // sub-goal before `linarith` (Lean state) // @tac 2035-2043
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2035-2043 exec 486)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (n - (7 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_5(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×88 [exec 486 2035-2043]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+26 more heads, ×60)
                      }
                      assert (IntAbs((n - 2)) <= 5);  // sub-goal before `have` (Lean state) // @tac 1943-1990 // @tac 1909-2043 // @tac 2001-2024
                    }
                  } else {
                    if (((n - 2) < 0)) {  // sub-goal before `have` (Lean state)
                      // have h₈ : - ( n - 2 ) <= 5  [type from Lean state]
                      assert (-((n - 2)) <= 5); // @tac 2129-2134
                        // [TACTIC: omega]
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED internal ×54 [exec 508 2129-2134]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2; machinery/glue: Eq.symm ×8, Eq.trans ×7, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+12 more heads, ×19)
                      // [TACTIC: rwSeq [ abs_of_neg h₇ ]]
                      if (((n - 2)) < 0) { IntAbsOfNeg((n - 2)); }  // cite: abs_of_neg
                      // UNCITED-APPLIED congrArg(|n - (2 : ℤ)|, -(n - (2 : ℤ)), fun (_a : ℤ) => _a ≤ (5 : ℤ)): no library counterpart (not stated) [exec 513 2145-2165]
                      assert (-((n - 2)) <= 5) by {  // sub-goal before `linarith` (Lean state) // @tac 2176-2184
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2176-2184 exec 540)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((-3 : ℤ) - n) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_6(S, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×99 [exec 540 2176-2184]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_one_mul ×5 (+27 more heads, ×68)
                      }
                      assert (IntAbs((n - 2)) <= 5);  // sub-goal before `have` (Lean state) // @tac 2084-2134 // @tac 2052-2184 // @tac 2145-2165
                    }
                  }
                }
                // [TACTIC: «_<;>_» at h₄ ⊢ <;> ( try omega omega ) <;> ( try { cases' le_or_lt 0 ( n - 2 ) with h₅ h₅ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] <;> omega omega } ) <;> omega omega]
                // [TACTIC: «Norm_num[_]At___» at h₄ ⊢]
                // UNCITED-APPLIED internal ×10 [exec 557 2191-2211]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
                assert (IntAbs((n - 2)) <= 5) by {  // sub-goal of `omega` (Lean state) // @tac 2229-2238 // @tac 2233-2238
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×23 [exec 573 2233-2238]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×3, Lean.Omega.Constraint.addInequality_sat ×2, Eq.trans ×2, Lean.Omega.Int.sub_congr ×2 (+8 more heads, ×9)
                }
                // [TACTIC: try { cases' le_or_lt 0 ( n - 2 ) with h₅ h₅ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_no]  NOT RUN in Lean (no execution recorded)
                // [TACTIC: ( try { cases' le_or_lt 0 ( n - 2 ) with h₅ h₅ <;> simp_all [ abs_of_nonneg , abs_of_neg , le_of_lt ] simp_all [ abs_of_]  NOT RUN in Lean (no execution recorded)
              }
            }
          }
        }
      }
    }
    assert (forall a :: a in (S) <==> a in (Icc(-(3), 7)));  // precondition of FinsetExt (Lean: Finset.ext; `apply`: proved by the steps above)
    FinsetExt(S, Icc(-(3), 7));  // cite: Finset.ext
  }
  // have h₂ : S.card == 11  [type from Lean state]
  assert (|S| == 11) by { // @tac 2469-2478
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(S, Finset.Icc (-3 : ℤ) (7 : ℤ), fun (_a : Finset ℤ) => Finset.card _a = (11 : ℕ)): no library counterpart (not stated) [exec 606 2469-2478]
    assert forall n_1: int :: (n_1 in S) == (IntAbs(n_1 - 2) <= 5 + 6 / 10);  /* [IN-FILE CHECK] requires 1 of vc_mathd_algebra_170_L285 */
    assert S == Icc(0 - 3, 7);  /* [IN-FILE CHECK] requires 2 of vc_mathd_algebra_170_L285 */
    vc_mathd_algebra_170_L285(S);  /* [IN-FILE CHECK] the closed lemma for line 285 */
    assert (|Icc(-(3), 7)| == 11) by {  // sub-goal before `rfl` (Lean state) // @tac 2626-2629
      // [TACTIC: Rfl]
    }
  }
  // [TACTIC: apply h₂]
}



// ===== closed lemma for line 285 (from closed/mathd_algebra_170-285.dfy) =====

lemma {:induction false} vc_mathd_algebra_170_L285(S: set<int>)
  requires forall n_1: int :: (n_1 in S) == (IntAbs(n_1 - 2) <= 5 + 6 / 10)
  requires S == Icc(0 - 3, 7)
  ensures   |Icc(0 - 3, 7)| == 11
{
  assert Icc(0 - 3, 7) == {-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7};  // [ADDED]
      // [TACTIC: Rfl]
}

