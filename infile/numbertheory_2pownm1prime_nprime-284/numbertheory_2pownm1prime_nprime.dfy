// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/numbertheory_2pownm1prime_nprime.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(n: int)
  ensures ((-(1) + (((n as int) + 1) - 2)) + ((1 + 1) - (n as int))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₁₀/h₁₀₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(n: int, m: int)
  ensures ((-(1) + ((n as int) - (m as int))) + (((m as int) + 1) - (n as int))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₁₀/h₁₀₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(n: int, m: int)
  ensures ((-(1) + ((m as int) - (n as int))) + (((n as int) + 1) - (m as int))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(n: nat, m: nat)
  ensures ((-(1) + (((tsub(Int.pow(2, m), 1) as int) + 1) - (tsub(Int.pow(2, n), 1) as int))) + -(((tsub(Int.pow(2, m), 1) as int) - (tsub(Int.pow(2, n), 1) as int)))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma numbertheory_2pownm1prime_nprime(n: nat)
  requires (0 < n)
  requires prime(tsub(Int.pow(2, n), 1))
  ensures prime(n) // @tac 305-587 // @tac 593-5496 // @tac 5499-5509
{
  // have h₂ : n >= 2  [type from Lean state]
  assert (n >= 2) by { // @tac 335-346
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 27 335-346]
    // by_contra h
    if !((n >= 2)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 448-482 // @tac 487-522 // @tac 527-544 // @tac 549-587 // @tac 549-565
        // have h₃ : n <= 1  [type from Lean state]
        assert (n <= 1) by { // @tac 474-482
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 474-482 exec 44)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (↑n + (1 : ℤ) - (2 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_1(n);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×14 [exec 44 474-482]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Eq.trans ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×56 [exec 45 474-482]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+25 more heads, ×41)
          NatCastOneInt();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₄ : n == 1  [type from Lean state]
        assert (n == 1); // @tac 517-522
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×52 [exec 62 517-522]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×4, Nat.lt_or_gt_of_ne ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×6, Eq.trans ×5, Lean.Omega.Constraint.addInequality_sat ×4, Lean.Omega.Int.ofNat_lt_of_lt ×4 (+11 more heads, ×19)
        // [TACTIC: rwSeq [ h₄ ] at h₁]
        assert prime(tsub((2), 1));  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 527-544
        // [TACTIC: «_<;>_» at h₁ norm_num at h₁ <;> contradiction contradiction]
        // [TACTIC: «Norm_num[_]At___» at h₁]
        // `norm_num` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×8 [exec 99 549-565]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_prime_1 ×1, Mathlib.Meta.NormNum.isNat_natSub ×1 (+3 more heads, ×3)
      }
      assert false;
    }
  }
  // have h₃ : Nat.Prime ( n )  [type from Lean state]
  assert prime(n) by { // @tac 627-638
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 129 627-638]
    // by_contra h
    if !(prime(n)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 729-759 // @tac 764-1606 // @tac 1611-1654
        // have h₄ : ¬ Nat.Prime n  [type from Lean state]
        assert !(prime(n)) by {
          // [TACTIC: exact h]
          assert !(prime(n));  // hypothesis h at `exact` (Lean state)
        }
        // have h₅ : ∃ m , m ∣ n m ∣ n ∧ m ≠ 1 ∧ m ≠ n  [type from Lean state]
        assert (exists m: nat :: (NatDvd(m, n) && ((m != 1) && (m != n)))) by { // @tac 902-938 // @tac 945-975 // @tac 982-1586 // @tac 1593-1606
          // have h₅₁ : ¬ Nat.Prime n  [type from Lean state]
          assert !(prime(n)) by {
            // [TACTIC: exact h₄]
            assert !(prime(n));
          }
          // have h₅₂ : n >= 2  [type from Lean state]
          assert (n >= 2) by {
            // [TACTIC: exact h₂]
            assert (n >= 2);
          }
          // have h₅₃ : ∃ m , m ∣ n m ∣ n ∧ m ≠ 1 ∧ m ≠ n  [type from Lean state]
          assert (exists m: nat :: (NatDvd(m, n) && ((m != 1) && (m != n)))) by { // @tac 1125-1198 // @tac 1207-1246
            // have h₅₄ :   [type from Lean state]
            assert (exists m: nat :: (NatDvd(m, n) && ((2 <= m) && (m < n)))) by {
              assert 2 <= (n) && !prime(n);  // precondition of ExistsDvdOfNotPrime2 (Lean: Nat.exists_dvd_of_not_prime2)
              ExistsDvdOfNotPrime2(n);  // cite: Nat.exists_dvd_of_not_prime2 (proof term)
              assert (n >= 2) by {  // sub-goal of `by` (Lean state) // @tac 1174-1179
                // [TACTIC: omega]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×29 [exec 212 1174-1179]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Eq.trans ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2 (+11 more heads, ×12)
              }
              // [TACTIC: exact Nat.exists_dvd_of_not_prime2 ( by omega omega , h₅₁ )]
            }
            // obtain ⟨m⟩ := h₅₄
            assert exists m: nat :: (NatDvd(m, n) && ((2 <= m) && (m < n)));
            var m: nat :| (NatDvd(m, n) && ((2 <= m) && (m < n)));
            if (NatDvd(m, n)) && (((2 <= m) && (m < n))) {  // sub-goal before `refine'` (Lean state)
              // [TACTIC: refine' ⟨ m , hm₁ , _ ⟩ ⟨ m , hm₁ , _ ⟩]
              assert ((m != 1) && (m != n)) by {  // sub-goal of `refine'` (Lean state) // @tac 1332-1436 // @tac 1445-1549 // @tac 1558-1586
                // have h₅₅ : m != 1  [type from Lean state]
                assert (m != 1) by { // @tac 1371-1388
                  // by_contra h
                  if !((m != 1)) {
                    if ((m == 1)) {  // sub-goal before `rw` (Lean state)
                      // [TACTIC: rwSeq [ h₅₅ ] at hm₂]
                      assert ((2 <= 1) && (1 < n));  // hypothesis hm₂ after `rw` (Lean state) // @tac-hyp 1399-1420
                      // [TACTIC: omega]
                      assert false;  // sub-goal before `rw` (Lean state) // @tac 1399-1420 // @tac 1431-1436
                      // UNCITED-APPLIED internal ×8 [exec 271 1431-1436]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Lean.Omega.Constraint.not_sat'_of_isImpossible ×1, of_decide_eq_true ×1, Lean.Omega.tidy_sat ×1, Lean.Omega.Constraint.addInequality_sat ×1 (+2 more heads, ×2)
                    }
                    assert false;
                  }
                }
                // have h₅₆ : m != n  [type from Lean state]
                assert (m != n) by { // @tac 1484-1501
                  // by_contra h
                  if !((m != n)) {
                    if ((m == n)) {  // sub-goal before `rw` (Lean state)
                      // [TACTIC: rwSeq [ h₅₆ ] at hm₂]
                      assert ((2 <= n) && (n < n));  // hypothesis hm₂ after `rw` (Lean state) // @tac-hyp 1512-1533
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      assert false;  // sub-goal before `rw` (Lean state) // @tac 1512-1533 // @tac 1544-1549
                      // UNCITED-APPLIED internal ×19 [exec 326 1544-1549]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×3, Eq.trans ×2, Lean.Omega.Constraint.not_sat'_of_isImpossible ×1, of_decide_eq_true ×1 (+9 more heads, ×9)
                    }
                    assert false;
                  }
                }
                // [TACTIC: exact ⟨ h₅₅ , h₅₆ ⟩ ⟨ h₅₅ , h₅₆ ⟩]
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
              }
              assert (exists m: nat :: (NatDvd(m, n) && ((m != 1) && (m != n))));  // sub-goal before `refine'` (Lean state) // @tac 1255-1280
            }
          }
          // [TACTIC: exact h₅₃]
          assert (exists m: nat :: (NatDvd(m, n) && ((m != 1) && (m != n))));
        }
        // obtain ⟨m⟩ := h₅
        assert exists m: nat :: (NatDvd(m, n) && ((m != 1) && (m != n)));
        var m: nat :| (NatDvd(m, n) && ((m != 1) && (m != n)));
        if (NatDvd(m, n)) && ((m != 1)) && ((m != n)) {  // sub-goal before `have` (Lean state)
          // have h₆ : m ∣ n  [type from Lean state]
          assert NatDvd(m, n);
            // [TACTIC: exact hm₁]
          // have h₇ : m != 1  [type from Lean state]
          assert (m != 1);
            // [TACTIC: exact hm₂]
          // have h₈ : m != n  [type from Lean state]
          assert (m != n);
            // [TACTIC: exact hm₃]
          // have h₉ : m >= 2  [type from Lean state]
          assert (m >= 2) by { // @tac 1790-1804
            // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 389 1790-1804]
            // by_contra h
            if !((m >= 2)) {
              assert false by {  // sub-goal before `have` (Lean state) // @tac 1811-1845 // @tac 1852-1902 // @tac 1909-2220
                // have h₉₁ : m <= 1  [type from Lean state]
                assert (m <= 1); // @tac 1840-1845
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×35 [exec 406 1840-1845]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_of_not_le ×2, Int.ofNat_nonneg ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×3, Eq.trans ×3, Lean.Omega.Constraint.combine_sat' ×2 (+10 more heads, ×13)
                // have h₉₂ : m == 0 || m == 1  [type from Lean state]
                assert ((m == 0) || (m == 1)); // @tac 1897-1902
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×70 [exec 423 1897-1902]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×6, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×5, Nat.lt_or_gt_of_ne ×2, Int.ofNat_nonneg ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×7, Lean.Omega.Constraint.addInequality_sat ×6, Eq.trans ×6, Lean.Omega.Int.ofNat_lt_of_lt ×5 (+12 more heads, ×26)
                // `cases`: 2 cases (Lean states); 2 branch bodies
                if ((m == 0)) {  // sub-goal of `cases` (Lean state)
                  // have h₉₃ : m == 0  [type from Lean state]
                  assert (m == 0) by {
                    // [TACTIC: exact h₉₂]
                    assert (m == 0);
                  }
                  // [TACTIC: rwSeq [ h₉₃ ] at h₆]
                  assert NatDvd(0, n);  // hypothesis h₆ after `rw` (Lean state) // @tac-hyp 1999-2019
                  // have h₉₄ : ( 0 : ℕ ) ∣ n  [type from Lean state]
                  assert NatDvd(0, n) by {
                    // [TACTIC: exact h₆]
                    assert NatDvd(0, n);  // hypothesis h₆ at `exact` (Lean state)
                    // UNCITED-APPLIED congrArg(m, (0 : ℕ), fun (_a : ℕ) => _a ∣ n): no library counterpart (not stated) [exec 481 2028-2066]
                  }
                  // have h₉₅ : n == 0  [type from Lean state]
                  assert (n == 0); // @tac 2102-2121
                    // [TACTIC: simpa using h₉₄]
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  assert (NatDvd((0), (n)));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
                  NatModEqZeroOfDvd(0, n);  // cite: Nat.mod_eq_zero_of_dvd [applied by the tactic, not named in it]
                  assert false;  // sub-goal of `cases` (Lean state) // @tac 1959-1990 // @tac 1999-2019 // @tac 2028-2066 // @tac 2075-2121 // @tac 2130-2135
                  // UNCITED-APPLIED internal ×35 [exec 501 2130-2135]: applications made inside the tactic's own automation, not stated — Int.ofNat_emod ×1, Int.emod_def ×1, Int.ediv_zero ×1, Int.sub_eq_zero_of_eq ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.trans ×8, Eq.symm ×5, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×2 (+11 more heads, ×11) (cited in this block, not counted here: Nat.mod_eq_zero_of_dvd [Lean recorded ×1])
                }
                if ((m == 1)) {  // sub-goal of `cases` (Lean state)
                  // have h₉₃ : m == 1  [type from Lean state]
                  assert (m == 1) by {
                    // [TACTIC: exact h₉₂]
                    assert (m == 1);
                  }
                  // [TACTIC: contradiction]
                  assert false;  // sub-goal of `cases` (Lean state) // @tac 2167-2198 // @tac 2207-2220
                }
              }
              assert false;
            }
          }
          // have h₁₀ : m < n  [type from Lean state]
          assert (m < n) by { // @tac 2258-2275
            // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 541 2258-2275]
            // by_contra h
            if !((m < n)) {
              assert false by {  // sub-goal before `have` (Lean state) // @tac 2282-2319 // @tac 2326-2359 // @tac 2366-2430 // @tac 2437-2483 // @tac 2490-2503
                // have h₁₀₁ : m >= n  [type from Lean state]
                assert (m >= n); // @tac 2314-2319
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×32 [exec 558 2314-2319]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Nat.le_of_not_lt ×1; machinery/glue: Eq.symm ×5, Eq.trans ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2 (+12 more heads, ×13)
                // have h₁₀₂ : m ∣ n  [type from Lean state]
                assert NatDvd(m, n) by {
                  // [TACTIC: exact h₆]
                  assert NatDvd(m, n);
                }
                // have h₁₀₃ : m <= n  [type from Lean state]
                assert (m <= n) by {
                  assert (0 < n) by {  // sub-goal of `by` (Lean state) // @tac 2413-2418
                    // [TACTIC: omega]
                  }
                  // [TACTIC: exact Nat.le_of_dvd ( ( by omega omega ) , h₁₀₂ )]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  assert (0 < (n)) && (NatDvd((m), (n)));  // precondition of NatLeOfDvd (Lean: Nat.le_of_dvd)
                  NatLeOfDvd(m, n);  // cite: Nat.le_of_dvd
                  // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 3 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(Lean.Omega.LinearCombo.eval (Lean.Omega.LinearCombo.coordinate (0 : ℕ…, ↑n); Eq.symm(Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [] } - { c…, Lean.Omega.LinearCombo.eval { const := (0 : ℤ), coeffs := [] } (Lean.…); Eq.symm(Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [(1 : ℤ)] …, Lean.Omega.LinearCombo.eval { const := (0 : ℤ), coeffs := [(1 : ℤ)] }…) [exec 580 2366-2430]
                  // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED of_decide_eq_true: no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED le_of_le_of_eq((0 : ℤ), ↑(0 : ℕ) - ↑n, Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [] } - { c…): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED le_of_le_of_eq((0 : ℤ), ↑n - ↑(2 : ℕ), Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [(1 : ℤ)] …): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED Int.sub_nonneg_of_le(↑(0 : ℕ), ↑n): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED Int.sub_nonneg_of_le(↑n, ↑(2 : ℕ)): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED Nat.le_of_not_lt((0 : ℕ), n): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED Eq.trans(↑(0 : ℕ) - ↑n, Lean.Omega.LinearCombo.eval { const := (0 : ℤ), coeffs := [] } (Lean.…, Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [] } - { c…): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED Eq.trans(↑n - ↑(2 : ℕ), Lean.Omega.LinearCombo.eval (Lean.Omega.LinearCombo.coordinate (0 : ℕ…, Lean.Omega.LinearCombo.eval ({ const := (0 : ℤ), coeffs := [(1 : ℤ)] …): no library counterpart (not stated) [exec 580 2366-2430]
                  // UNCITED-APPLIED internal ×12 [exec 580 2366-2430]: applications made inside the tactic's own automation, not stated — machinery/glue: Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.ofNat_le_of_le ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+4 more heads, ×4)
                }
                // have h₁₀₄ : m == n  [type from Lean state]
                assert (m == n) by { // @tac 2475-2483
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2475-2483 exec 604)
                  // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (↑n - ↑m) < (0 : ℤ)`
                  cert_identity_2(n, m);  // cert: add_lt_of_neg_of_le
                  cert_identity_3(n, m);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×84 [exec 604 2475-2483]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×4, sub_nonpos_of_le ×4, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, le_of_not_gt ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×5 (+26 more heads, ×48)
                }
                // [TACTIC: contradiction]
              }
              assert false;
            }
          }
          // have h₁₁ : 2 ^ m - 1 ∣ 2 ^ n - 1  [type from Lean state]
          assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, n), 1)) by { // @tac 2559-2592 // @tac 2599-2631
            // have h₁₁₁ : m ∣ n  [type from Lean state]
            assert NatDvd(m, n) by {
              // [TACTIC: exact h₆]
              assert NatDvd(m, n);
            }
            // obtain ⟨k, hk⟩ := h₁₁₁
            assert exists k: nat :: (n) == (m) * k by {  // the ∃ of `m ∣ n` (Dvd.dvd unfolded)
              if (m) == 0 { assert (n) == (m) * 0; }
              else { assert (n) == (m) * ((n) / (m)); }
              vc_numbertheory_2pownm1prime_nprime_L284(k, k_1_0_0_2_2_3, m, m_1_0_0_2, m_1_0_0_3, m_1_0_0_5, m_1_0_0_5_0, m_1_0_0_6, n);  /* [IN-FILE CHECK] the closed lemma for line 284 */
            }
            var k: nat :| (n) == (m) * k;  // obtain: hk : n = m * k  (Lean's ∣ witness equation; k arbitrary)
            if ((n == (m * k))) {  // sub-goal before `rw` (Lean state)
              // [TACTIC: rwSeq [ hk ]]
              // UNCITED-APPLIED congrArg(n, m * k, fun (_a : ℕ) => (2 : ℕ) ^ m - (1 : ℕ) ∣ (2 : ℕ) ^ _a - (1 : ℕ)): no library counterpart (not stated) [exec 641 2638-2645]
              assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, (m * k)), 1)) by {  // sub-goal before `have` (Lean state) // @tac 2652-2854 // @tac 2861-2903
                // have h₁₁₂ : 2 ^ m - 1 ∣ 2 ^ ( m * k ) - 1  [type from Lean state]
                assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, (m * k)), 1)) by { // @tac 2714-2829 // @tac 2838-2854
                  // have h₁₁₃ : 2 ^ m - 1 ∣ 2 ^ ( m * k ) - 1  [type from Lean state]
                  assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, (m * k)), 1)) by { // @tac 2778-2829
                    // [TACTIC: simpa [ pow_mul ] using nat_sub_dvd_pow_sub_pow _ 1 k]
                    NatPowMul(2, m, k);  // cite: pow_mul
                    NatSubDvdPowSubPow(Int.pow(2, m), 1, k);  // cite: nat_sub_dvd_pow_sub_pow
                    OnePowNat(k);  // cite: one_pow [applied by the tactic, not named in it]
                    // UNCITED-APPLIED internal ×2 [exec 700 2778-2829]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2 (cited in this block, not counted here: nat_sub_dvd_pow_sub_pow [Lean recorded ×1], one_pow [Lean recorded ×1], pow_mul [Lean recorded ×1])
                  }
                  // [TACTIC: exact h₁₁₃]
                  assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, (m * k)), 1));
                }
                // [TACTIC: simpa [ pow_mul , mul_comm ] using h₁₁₂]
                NatPowMul(2, m, k);  // cite: pow_mul
                // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
                // UNCITED-APPLIED internal ×1 [exec 702 2861-2903]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1 (cited in this block, not counted here: pow_mul [Lean recorded ×1])
              }
              assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, n), 1));  // sub-goal before `rw` (Lean state) // @tac 2638-2645
            }
          }
          // have h₁₂ : 2 ^ m - 1 > 1  [type from Lean state]
          assert (tsub(Int.pow(2, m), 1) > 1) by { // @tac 2949-2982 // @tac 2989-3326 // @tac 3333-3349
            // have h₁₂₁ : m >= 2  [type from Lean state]
            assert (m >= 2) by {
              // [TACTIC: exact h₉]
              assert (m >= 2);
            }
            // have h₁₂₂ : 2 ^ m - 1 > 1  [type from Lean state]
            assert (tsub(Int.pow(2, m), 1) > 1) by { // @tac 3035-3121 // @tac 3130-3193 // @tac 3202-3248 // @tac 3257-3312 // @tac 3321-3326
              // have h₁₂₃ : 2 ^ m >= 2 ^ 2  [type from Lean state]
              assert (Int.pow(2, m) >= (2 * 2)) by {
                assert (2 > 0) by {  // sub-goal of `by` (Lean state) // @tac 3103-3109
                  // [TACTIC: decide]
                  // UNCITED-APPLIED internal ×1 [exec 761 3103-3109]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                }
                // [TACTIC: exact Nat.pow_le_pow_of_le_right ( ( by decide decide ) , h₁₂₁ )]
                // UNCITED Nat.pow_le_pow_of_le_right: applied by `exact` here; no library counterpart, its instance is not stated
              }
              // have h₁₂₄ : 2 ^ m - 1 >= 2 ^ 2 - 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) >= tsub((2 * 2), 1)); // @tac 3188-3193
                // [TACTIC: omega]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×60 [exec 780 3188-3193]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×2, Int.ofNat_nonneg ×1, Nat.lt_of_not_le ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×10, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5, Lean.Omega.Constraint.addInequality_sat ×4 (+16 more heads, ×24)
              // have h₁₂₅ : 2 ^ 2 - 1 == 3  [type from Lean state]
              assert (tsub((2 * 2), 1) == 3); // @tac 3240-3248
                // [TACTIC: «Norm_num[_]At___»]
              // UNCITED-APPLIED internal ×10 [exec 797 3240-3248]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+4 more heads, ×4)
              // have h₁₂₆ : 2 ^ m - 1 >= 3  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) >= 3); // @tac 3307-3312
                // [TACTIC: omega]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×26 [exec 814 3307-3312]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+10 more heads, ×10)
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×22 [exec 815 3321-3326]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Nat.le_of_not_lt ×1; machinery/glue: Eq.symm ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.ofNat_le_of_le ×2, Lean.Omega.Int.sub_congr ×2 (+7 more heads, ×8)
            }
            // [TACTIC: exact h₁₂₂]
            assert (tsub(Int.pow(2, m), 1) > 1);
          }
          // have h₁₃ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
          assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by { // @tac 3403-3437 // @tac 3444-3528 // @tac 3535-4633 // @tac 4640-4656
            // have h₁₃₁ : m < n  [type from Lean state]
            assert (m < n) by {
              // [TACTIC: exact h₁₀]
              assert (m < n);
            }
            // have h₁₃₂ : 2 ^ m < 2 ^ n  [type from Lean state]
            assert (Int.pow(2, m) < Int.pow(2, n)) by {
              assert (1 < 2) by {  // sub-goal of `by` (Lean state) // @tac 3510-3516
                // [TACTIC: decide]
                // UNCITED-APPLIED internal ×1 [exec 859 3510-3516]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
              }
              // [TACTIC: exact Nat.pow_lt_pow_of_lt_right ( ( by decide decide ) , h₁₃₁ )]
              assert ((2) >= 2) && ((m) < (n));  // precondition of NatPowLtPowOfLtRight (Lean: Nat.pow_lt_pow_of_lt_right)
              NatPowLtPowOfLtRight(2, m, n);  // cite: Nat.pow_lt_pow_of_lt_right
            }
            // have h₁₃₃ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
            assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by { // @tac 3589-3781 // @tac 3790-3870 // @tac 3879-4608 // @tac 4617-4633
              // have h₁₃₄ : 2 ^ m >= 2  [type from Lean state]
              assert (Int.pow(2, m) >= 2) by { // @tac 3635-3668 // @tac 3679-3765 // @tac 3776-3781
                // have h₁₃₅ : m >= 2  [type from Lean state]
                assert (m >= 2) by {
                  // [TACTIC: exact h₉]
                  assert (m >= 2);
                }
                // have h₁₃₆ : 2 ^ m >= 2 ^ 2  [type from Lean state]
                assert (Int.pow(2, m) >= (2 * 2)) by {
                  assert (2 > 0) by {  // sub-goal of `by` (Lean state) // @tac 3747-3753
                    // [TACTIC: decide]
                    // UNCITED-APPLIED internal ×1 [exec 920 3747-3753]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                  }
                  // [TACTIC: exact Nat.pow_le_pow_of_le_right ( ( by decide decide ) , h₁₃₅ )]
                  // UNCITED Nat.pow_le_pow_of_le_right: applied by `exact` here; no library counterpart, its instance is not stated
                }
                // [TACTIC: omega]
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×25 [exec 923 3776-3781]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+12 more heads, ×12)
              }
              // have h₁₃₅ : 2 ^ n >= 2 ^ 2  [type from Lean state]
              assert (Int.pow(2, n) >= (2 * 2)) by {
                assert (2 > 0) by {  // sub-goal of `by` (Lean state) // @tac 3858-3864
                  // [TACTIC: decide]
                  // UNCITED-APPLIED internal ×1 [exec 938 3858-3864]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                }
                // [TACTIC: exact Nat.pow_le_pow_of_le_right ( ( by decide decide ) , h₂ )]
                // UNCITED Nat.pow_le_pow_of_le_right: applied by `exact` here; no library counterpart, its instance is not stated
              }
              // have h₁₃₆ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by { // @tac 3935-3980 // @tac 3991-4581 // @tac 4592-4608
                // have h₁₃₇ : 2 ^ m < 2 ^ n  [type from Lean state]
                assert (Int.pow(2, m) < Int.pow(2, n)) by {
                  // [TACTIC: exact h₁₃₂]
                  assert (Int.pow(2, m) < Int.pow(2, n));
                }
                // have h₁₃₈ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
                assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by { // @tac 4049-4104 // @tac 4117-4321 // @tac 4334-4552 // @tac 4565-4581
                  // have h₁₃₉ : 2 ^ m >= 2  [type from Lean state]
                  assert (Int.pow(2, m) >= 2); // @tac 4099-4104
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×25 [exec 1001 4099-4104]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2, Decidable.byContradiction ×1 (+12 more heads, ×12)
                  // have h₁₄₀ : 2 ^ n >= 2  [type from Lean state]
                  assert (Int.pow(2, n) >= 2) by { // @tac 4167-4200 // @tac 4215-4301 // @tac 4316-4321
                    // have h₁₄₁ : n >= 2  [type from Lean state]
                    assert (n >= 2) by {
                      // [TACTIC: exact h₂]
                      assert (n >= 2);
                    }
                    // have h₁₄₂ : 2 ^ n >= 2 ^ 2  [type from Lean state]
                    assert (Int.pow(2, n) >= (2 * 2)) by {
                      assert (2 > 0) by {  // sub-goal of `by` (Lean state) // @tac 4283-4289
                        // [TACTIC: decide]
                        // UNCITED-APPLIED internal ×1 [exec 1044 4283-4289]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
                      }
                      // [TACTIC: exact Nat.pow_le_pow_of_le_right ( ( by decide decide ) , h₁₄₁ )]
                      // UNCITED Nat.pow_le_pow_of_le_right: applied by `exact` here; no library counterpart, its instance is not stated
                    }
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×28 [exec 1047 4316-4321]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
                  }
                  // have h₁₄₃ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
                  assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by { // @tac 4394-4439 // @tac 4454-4521 // @tac 4536-4552
                    // have h₁₄₄ : 2 ^ m < 2 ^ n  [type from Lean state]
                    assert (Int.pow(2, m) < Int.pow(2, n)) by {
                      // [TACTIC: exact h₁₃₂]
                      assert (Int.pow(2, m) < Int.pow(2, n));
                    }
                    // have h₁₄₅ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
                    assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)); // @tac 4516-4521
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×84 [exec 1092 4516-4521]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×6, Int.add_one_le_of_lt ×3, Int.sub_eq_zero_of_eq ×2, Nat.le_of_not_lt ×1; machinery/glue: Eq.symm ×18, Lean.Omega.LinearCombo.sub_eval ×8, Lean.Omega.Constraint.addInequality_sat ×6, Lean.Omega.tidy_sat ×4 (+18 more heads, ×36)
                    // [TACTIC: exact h₁₄₅]
                    assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
                  }
                  // [TACTIC: exact h₁₄₃]
                  assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
                }
                // [TACTIC: exact h₁₃₈]
                assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
              }
              // [TACTIC: exact h₁₃₆]
              assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
            }
            // [TACTIC: exact h₁₃₃]
            assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
          }
          // have h₁₄ : 2 ^ m - 1 != 1  [type from Lean state]
          assert (tsub(Int.pow(2, m), 1) != 1); // @tac 4704-4709
            // [TACTIC: omega]
            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
            // UNCITED-APPLIED internal ×21 [exec 1114 4704-4709]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×4, Lean.Omega.Int.sub_congr ×2, Lean.Omega.LinearCombo.sub_eval ×2, Lean.Omega.Constraint.not_sat'_of_isImpossible ×1 (+8 more heads, ×8)
          // have h₁₅ : 2 ^ m - 1 != 2 ^ n - 1  [type from Lean state]
          assert (tsub(Int.pow(2, m), 1) != tsub(Int.pow(2, n), 1)) by { // @tac 4765-4778
            if (tsub(Int.pow(2, m), 1) == tsub(Int.pow(2, n), 1)) {
              // have h₁₅₁ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by {
                // [TACTIC: exact h₁₃]
                assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
              }
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4842-4850 exec 1144)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (↑((2 : ℕ) ^ m - (1 : ℕ)) + (1 : ℤ) - ↑((2 : ℕ) ^ n - (1 : ℕ))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_4(n, m);  // cert: Linarith.lt_of_lt_of_eq
              assert false; // @tac 4785-4835 // @tac 4842-4850
              // UNCITED-APPLIED internal ×60 [exec 1144 4842-4850]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+26 more heads, ×40)
            }
          }
          // have h₁₆ : ¬ Nat.Prime ( 2 ^ n - 1 )  [type from Lean state]
          assert !(prime(tsub(Int.pow(2, n), 1))) by { // @tac 4906-4919
            if (prime(tsub(Int.pow(2, n), 1))) {
              // have h₁₇ :   [type from Lean state]
              assert (tsub(Int.pow(2, n), 1) != 1);
                // [TACTIC: exact Nat.Prime.ne_one ( h₁₆ )]
                // UNCITED Nat.Prime.ne_one: applied by `exact` here; no library counterpart, its instance is not stated
              // have h₁₈ :   [type from Lean state]
              assert (tsub(Int.pow(2, n), 1) != 0) by {
                // [TACTIC: exact Nat.Prime.ne_zero ( h₁₆ )]
                assert (prime((tsub(Int.pow(2, n), 1))));  // precondition of NatPrimeNeZero (Lean: Nat.Prime.ne_zero)
                NatPrimeNeZero(tsub(Int.pow(2, n), 1));  // cite: Nat.Prime.ne_zero
              }
              // have h₁₉ : 2 ^ m - 1 ∣ 2 ^ n - 1  [type from Lean state]
              assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, n), 1)) by {
                // [TACTIC: exact h₁₁]
                assert NatDvd(tsub(Int.pow(2, m), 1), tsub(Int.pow(2, n), 1));
              }
              // have h₂₀ : 2 ^ m - 1 != 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) != 1) by {
                // [TACTIC: exact h₁₄]
                assert (tsub(Int.pow(2, m), 1) != 1);
              }
              // have h₂₁ : 2 ^ m - 1 != 2 ^ n - 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) != tsub(Int.pow(2, n), 1)) by {
                // [TACTIC: exact h₁₅]
                assert (tsub(Int.pow(2, m), 1) != tsub(Int.pow(2, n), 1));
              }
              // have h₂₂ : 2 ^ m - 1 < 2 ^ n - 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1)) by {
                // [TACTIC: exact h₁₃]
                assert (tsub(Int.pow(2, m), 1) < tsub(Int.pow(2, n), 1));
              }
              // have h₂₃ : 2 ^ m - 1 > 1  [type from Lean state]
              assert (tsub(Int.pow(2, m), 1) > 1) by {
                // [TACTIC: exact h₁₂]
                assert (tsub(Int.pow(2, m), 1) > 1);
              }
              // have h₂₄ : ¬ Nat.Prime ( 2 ^ n - 1 )  [type from Lean state]
              assert !(prime(tsub(Int.pow(2, n), 1))) by { // @tac 5334-5347
                if (prime(tsub(Int.pow(2, n), 1))) {
                  // have h₂₅ :   [type from Lean state]
                  assert ((tsub(Int.pow(2, m), 1) == 1) || (tsub(Int.pow(2, m), 1) == tsub(Int.pow(2, n), 1))) by {
                    // [TACTIC: exact Nat.Prime.eq_one_or_self_of_dvd ( h₂₄ , ( 2 ^ m - 1 ) , h₁₁ )]
                    assert (prime((tsub(Int.pow(2, n), 1)))) && (NatDvd((tsub(Int.pow(2, m), 1)), (tsub(Int.pow(2, n), 1))));  // precondition of NatPrimeEqOneOrSelfOfDvd (Lean: Nat.Prime.eq_one_or_self_of_dvd)
                    NatPrimeEqOneOrSelfOfDvd(tsub(Int.pow(2, n), 1), tsub(Int.pow(2, m), 1));  // cite: Nat.Prime.eq_one_or_self_of_dvd
                  }
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  assert false; // @tac 5356-5431 // @tac 5440-5445
                  // UNCITED-APPLIED internal ×43 [exec 1276 5440-5445]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, le_of_le_of_eq ×1; machinery/glue: Eq.symm ×9, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4, Lean.Omega.Constraint.not_sat'_of_isImpossible ×2 (+12 more heads, ×17)
                }
              }
              // [TACTIC: exact h₂₄ h₁₆]
              assert !(prime(tsub(Int.pow(2, n), 1)));
              assert false; // @tac 4926-4966 // @tac 4973-5014 // @tac 5021-5070 // @tac 5077-5118 // @tac 5125-5174 // @tac 5181-5228 // @tac 5235-5274 // @tac 5281-5445 // @tac 5452-5473
            }
          }
          // [TACTIC: exact h₁₆ h₁]
          assert !(prime(tsub(Int.pow(2, n), 1)));
          assert false;  // sub-goal before `have` (Lean state) // @tac 1659-1687 // @tac 1692-1720 // @tac 1725-1753 // @tac 1758-2220 // @tac 2225-2503 // @tac 2508-2903 // @tac 2908-3349 // @tac 3354-4656 // @tac 4661-4709 // @tac 4714-4850 // @tac 4855-5473 // @tac 5478-5496
        }
      }
      assert false;
    }
  }
  // [TACTIC: exact h₃]
  assert prime(n);
}



// ===== closed lemma for line 284 (from closed/numbertheory_2pownm1prime_nprime-284.dfy) =====

lemma {:induction false} vc_numbertheory_2pownm1prime_nprime_L284(k_1_0_0_2_2_0: int, k_1_0_0_2_2_3: int, m_1_0_0_1_2_5: int, m_1_0_0_2: nat, m_1_0_0_3: nat, m_1_0_0_5: int, m_1_0_0_5_0: nat, m_1_0_0_6: nat, n: nat)
  requires 0 <= n
  requires 0 <= m_1_0_0_1_2_5
  requires 0 <= m_1_0_0_5
  requires 0 <= k_1_0_0_2_2_3
  requires 0 < n
  requires prime(tsub(Int.pow(2, n), 1))
  requires forall n0: nat :: 0 < n0 && prime(tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> prime(n0)
  requires n >= 2
  requires !prime(n)
  requires ((0 <= m_1_0_0_2) && (((NatDvd(m_1_0_0_2, n)) && ((m_1_0_0_2 != 1) || (m_1_0_0_2 == 1))) || (!NatDvd(m_1_0_0_2, n)))) || (m_1_0_0_2 < 0)
  requires exists m_1_0_0_1: nat :: NatDvd(m_1_0_0_1, n) && m_1_0_0_1 != 1 && m_1_0_0_1 != n
  requires ((0 <= m_1_0_0_3) && (((NatDvd(m_1_0_0_3, n)) && ((m_1_0_0_3 != 1) || (m_1_0_0_3 == 1))) || (!NatDvd(m_1_0_0_3, n)))) || (m_1_0_0_3 < 0)
  requires exists m_1_0_0_4: nat :: NatDvd(m_1_0_0_4, n) && m_1_0_0_4 != 1 && m_1_0_0_4 != n
  requires ((0 <= m_1_0_0_6) && (((NatDvd(m_1_0_0_6, n)) && ((m_1_0_0_6 != 1) || (m_1_0_0_6 == 1))) || (!NatDvd(m_1_0_0_6, n)))) || (m_1_0_0_6 < 0)
  requires (0 <= 0 && NatDvd(0, n) && 0 != 1 && 0 != n) || (0 <= 0 && NatDvd(0, n) && 0 != 1 && 0 != n) || (exists as_m1_0_0_0_1_0_0_0: nat :: NatDvd(as_m1_0_0_0_1_0_0_0, n) && as_m1_0_0_0_1_0_0_0 != 1 && as_m1_0_0_0_1_0_0_0 != n)
  requires 0 <= m_1_0_0_5_0
  requires NatDvd(m_1_0_0_5_0, n)
  requires m_1_0_0_5_0 != 1
  requires m_1_0_0_5_0 != n
  requires ((NatDvd(m_1_0_0_5_0, n)) && (((NatDvd(m_1_0_0_5_0, n)) && (m_1_0_0_5_0 != 1)) || (!(NatDvd(m_1_0_0_5_0, n) && m_1_0_0_5_0 != 1)))) || ((!NatDvd(m_1_0_0_5_0, n)) && (((NatDvd(m_1_0_0_5_0, n)) && (m_1_0_0_5_0 != 1)) || (!(NatDvd(m_1_0_0_5_0, n) && m_1_0_0_5_0 != 1))))
  requires m_1_0_0_5_0 >= 2
  requires m_1_0_0_5_0 < n
  requires ((m_1_0_0_5_0 == 0) && (n == m_1_0_0_5_0 * 0) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0))) || ((m_1_0_0_5_0 != 0) && (n == m_1_0_0_5_0 * (n / m_1_0_0_5_0)) && ((0 <= k_1_0_0_2_2_0) || (k_1_0_0_2_2_0 < 0)))
  ensures   exists k_1_0_0_2_2_1: nat :: n == m_1_0_0_5_0 * k_1_0_0_2_2_1
{
  // the base body named the witness m_1_0_0_1_2_5 (unconstrained); the destructured divisor is m_1_0_0_5_0 (>= 2, so the
  // second branch of the last hypothesis gives n == m_1_0_0_5_0 * (n / m_1_0_0_5_0))
  assert m_1_0_0_5_0 != 0;  // [ADDED]
  assert n == m_1_0_0_5_0 * (n / m_1_0_0_5_0);  // [ADDED]
  assert exists k_1_0_0_2_2_1: nat :: n == m_1_0_0_5_0 * k_1_0_0_2_2_1 by {  // [ADDED]
    var w: nat := n / m_1_0_0_5_0;  // [ADDED]
    assert n == m_1_0_0_5_0 * w;  // [ADDED]
  }
}
