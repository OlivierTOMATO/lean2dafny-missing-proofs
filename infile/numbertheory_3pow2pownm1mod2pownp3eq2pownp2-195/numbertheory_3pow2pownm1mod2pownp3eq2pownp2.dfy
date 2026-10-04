// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../closed/alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195/library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₁/h₃/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(n: int)
  ensures ((-(1) + -((n as int))) + ((n as int) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction' n` (from-1 / Nat.le): proves P(n+1) for n >= 0
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat)
  ensures exists k: nat :: (Int.pow(3, Int.pow(2, (n + 1))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (k * Int.pow(2, ((n + 1) + 3)))))
  decreases n
{
  if n == 0 {
    // base: P(1) — Lean base case
    assert (exists k: nat :: (Int.pow(3, Int.pow(2, (0 + 1))) == ((1 + Int.pow(2, ((0 + 1) + 2))) + (k * Int.pow(2, ((0 + 1) + 3)))))) by {  // sub-goal before `use` (Lean state) // @tac 609-614 // @tac 578-631
      // [TACTIC: Use 0]
      assert (Int.pow(3, Int.pow(2, (0 + 1))) == ((1 + Int.pow(2, ((0 + 1) + 2))) + (0 * Int.pow(2, ((0 + 1) + 3))))) by {  // sub-goal of `use` (Lean state) // @tac 623-631
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×26 [exec 65 623-631]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isNat_add ×4, Mathlib.Meta.NormNum.IsNatPowT.run ×3 (+9 more heads, ×11)
      }
    }
  } else {
    induction_helper_1(n - 1);   // IH: P(n)
    if (((0 + 1) <= n)) {  // sub-goal before `obtain` (Lean state)
      // obtain ⟨k, hk⟩ := IH
      assert exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))));
      var k: nat :| (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))));
      // [TACTIC: Use ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) + 2 * k * 2 ^ ( 2 * n + 5 ) ) / 2 ^ ( n + 4 )]
      assert (Int.pow(3, Int.pow(2, (n + 1))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, ((n + 1) + 3))))) by {  // sub-goal of `use` (Lean state) // @tac 865-1051 // @tac 1060-1073
        // have h₂ : 3 ^ 2 ^ ( n + 1 ) == ( 3 ^ 2 ^ n ) ^ 2  [type from Lean state]
        assert (Int.pow(3, Int.pow(2, (n + 1))) == (Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n)))) by { // @tac 927-1051 // @tac 927-1029 // @tac 927-982 // @tac 927-960
          // [TACTIC: «_<;>_» [ pow_succ , pow_mul , pow_two ] simp [ pow_succ , pow_mul , pow_two ] simp [ pow_succ , pow_mul , pow_two ] <;> ring_nf ring_nf <;> simp [ pow_add , pow_mul , pow_two ] simp [ pow_add , pow_mul , pow_two ] simp [ pow_add , pow_mul , pow_two ] <;> ring_nf ring_nf]
          // [TACTIC: simp [ pow_succ , pow_mul , pow_two ]]
          NatPowSucc(2, n);  // cite: pow_succ
          NatPowSucc(Int.pow(3, Int.pow(2, n)), 1);  // cite: pow_succ
          NatPowSucc(Int.pow(3, Int.pow(2, n)), 0);  // cite: pow_succ
          NatPowMul(3, Int.pow(2, n), 2);  // cite: pow_mul
          // UNCITED pow_two: no Lean instance recorded (arguments unknown), not guessed
          NatPowZero(Int.pow(3, Int.pow(2, n)));  // cite: pow_zero [applied by the tactic, not named in it]
          // `simp` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×14 [exec 121 927-960]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: Eq.trans ×6, congrArg ×4, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_mul [Lean recorded ×1], pow_succ [Lean recorded ×3], pow_zero [Lean recorded ×1])
        }
        // [TACTIC: rwSeq [ h₂ , hk ]]
        // UNCITED-APPLIED congrArg((3 : ℕ) ^ (2 : ℕ) ^ (n + (1 : ℕ)), ((3 : ℕ) ^ (2 : ℕ) ^ n) ^ (2 : ℕ), fun (_a : ℕ) => _a = (1 : ℕ) + (2 : ℕ) ^ (succ n + (2 : ℕ)) + ((2 : ℕ…): no library counterpart (not stated) [exec 144 1060-1073]
        // UNCITED-APPLIED congrArg((3 : ℕ) ^ (2 : ℕ) ^ n, (1 : ℕ) + (2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a ^ (2 : ℕ) = (1 : ℕ) + (2 : ℕ) ^ (succ n + (2 : ℕ))…): no library counterpart (not stated) [exec 144 1060-1073]
        assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, ((n + 1) + 3))))) by {  // sub-goal before `have` (Lean state) // @tac 1082-2050 // @tac 2059-2068
          // have h₃ : ( 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) ^ 2 == 1 + 2 ^ ( n + 3 ) + (  [type from Lean state]
          assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))))) by { // @tac 1258-1292 // @tac 1303-1358 // @tac 1369-1424 // @tac 1435-1490 // @tac 1501-2050
            // have h₄ : n >= 0  [type from Lean state]
            assert (n >= 0) by { // @tac 1284-1292
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1284-1292 exec 204)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + -↑n < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_1(n);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×43 [exec 204 1284-1292]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, congrArg ×2, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+24 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZeroInt();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            }
            // have h₅ : 2 * n + 4 >= n + 4  [type from Lean state]
            assert (((2 * n) + 4) >= (n + 4)); // @tac 1353-1358
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 222 1353-1358]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // have h₆ : 2 * n + 6 >= n + 4  [type from Lean state]
            assert (((2 * n) + 6) >= (n + 4)); // @tac 1419-1424
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 239 1419-1424]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // have h₇ : 2 * n + 5 >= n + 4  [type from Lean state]
            assert (((2 * n) + 5) >= (n + 4)); // @tac 1485-1490
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 256 1485-1490]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // calc ( 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) ^ 2 ...  (carrier nat from the Lean state; 2/2 steps typed)
            calc {
              (((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))));
              == {
                assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 1686-1904 // @tac 1686-1864 // @tac 1686-1817 // @tac 1686-1698
                  // [TACTIC: «_<;>_» at * <;> simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] <;> ring_nf at * <;> omega omega]
                  // [TACTIC: Ring_nfAt at *]
                  NatPowOne(k);  // cite: pow_one [applied by the tactic, not named in it]
                  NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                  // UNCITED-APPLIED internal ×233 [exec 277 1686-1698]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congrArg ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.single_pow ×8 (+43 more heads, ×198) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                  // `ring_nf` closed the goal; the rest of the chain did not run
                }
              }
              ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
              == {
                assert (((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))))) by {  // sub-goal before `rfl` (Lean state) // @tac 2047-2050
                  // [TACTIC: Rfl]
                }
              }
              ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
            }
          }
          // [TACTIC: rwSeq [ h₃ ]]
          // UNCITED-APPLIED congrArg(((1 : ℕ) + (2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) ^ (…, (1 : ℕ) + (2 : ℕ) ^ (n + (3 : ℕ)) + ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)…, fun (_a : ℕ) => _a = (1 : ℕ) + (2 : ℕ) ^ (succ n + (2 : ℕ)) + ((2 : ℕ…): no library counterpart (not stated) [exec 306 2059-2068]
          assert (((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, ((n + 1) + 3))))) by {  // sub-goal before `have` (Lean state) // @tac 2077-4423 // @tac 4432-6861 // @tac 6870-7441 // @tac 7450-7547 // @tac 7450-7537 // @tac 7450-7520 // @tac 7450-7459
            // have h₄ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
            assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 2211-2310 // @tac 2321-2405 // @tac 2416-2730 // @tac 2741-3368 // @tac 3379-3909 // @tac 3920-4399 // @tac 4410-4423
              // have h₅ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by { // @tac 2273-2292
                // [TACTIC: apply pow_dvd_pow 2]
                assert ((n + 4) <= ((2 * n) + 4)) by {  // sub-goal before `omega` (Lean state) // @tac 2305-2310
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×16 [exec 366 2305-2310]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×6, Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                }
                assert (((n + 4)) <= (((2 * n) + 4)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                NatPowDvdPow(2, (n + 4), ((2 * n) + 4));  // cite: pow_dvd_pow
              }
              // have h₆ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4)))) by { // @tac 2383-2405
                assert ((k * Int.pow(2, (n + 4))) == (Int.pow(2, (n + 4)) * k)) by {  // sub-goal of `by` (Lean state) // @tac 2398-2402
                  // [TACTIC: Ring]
                }
                // [TACTIC: exact ⟨ k , by ring ⟩ ⟨ k , by ring ⟩]
                assert (if ((Int.pow(2, (n + 4)) as int)) == 0 then (((k * Int.pow(2, (n + 4))) as int)) == 0 else (((k * Int.pow(2, (n + 4))) as int)) % ((Int.pow(2, (n + 4)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                // UNCITED-APPLIED internal ×55 [exec 383 2383-2405]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+23 more heads, ×39)
              }
              // have h₇ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 2486-2589 // @tac 2602-2707 // @tac 2720-2730
                // have h₈ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6))) by { // @tac 2550-2569
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 6)) by {  // sub-goal before `omega` (Lean state) // @tac 2584-2589
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 426 2584-2589]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 6)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 6));  // cite: pow_dvd_pow
                }
                // have h₉ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 2674-2707
                  // [TACTIC: exact dvd_mul_of_dvd_right h₈ _]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)));
                  assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 6)))));  // precondition of NatDvdMulOfDvdRight (Lean: dvd_mul_of_dvd_right)
                  NatDvdMulOfDvdRight(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)), (k * k));  // cite: dvd_mul_of_dvd_right
                }
                // [TACTIC: exact h₉]
                assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6))));
              }
              // have h₈ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 2811-2914 // @tac 2927-3342 // @tac 3355-3368
                // have h₉ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by { // @tac 2875-2894
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 5)) by {  // sub-goal before `omega` (Lean state) // @tac 2909-2914
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 478 2909-2914]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 5)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 5));  // cite: pow_dvd_pow
                }
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 3002-3056 // @tac 3071-3314 // @tac 3329-3342
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by {
                    // [TACTIC: exact h₉]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5)));
                  }
                  // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 3148-3314
                    assert NatDvd(Int.pow(2, ((2 * n) + 5)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {  // sub-goal of `by` (Lean state) // @tac 3288-3314
                      assert (((2 * k) * Int.pow(2, ((2 * n) + 5))) == (Int.pow(2, ((2 * n) + 5)) * (2 * k))) by {  // sub-goal of `by` (Lean state) // @tac 3307-3311
                        // [TACTIC: Ring]
                      }
                      // [TACTIC: exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                      assert (if ((Int.pow(2, ((2 * n) + 5)) as int)) == 0 then ((((2 * k) * Int.pow(2, ((2 * n) + 5))) as int)) == 0 else ((((2 * k) * Int.pow(2, ((2 * n) + 5))) as int)) % ((Int.pow(2, ((2 * n) + 5)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                      // UNCITED-APPLIED internal ×72 [exec 528 3288-3314]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.zero_mul ×6, Mathlib.Tactic.Ring.mul_pf_right ×5 (+25 more heads, ×49)
                    }
                    // [TACTIC: calc_unparsed 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) := h₁₁ _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) := by exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩ exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                    // GAP: calc chain not lowered (relation outside Dafny calc, e.g. ∣); its step proofs follow, each with its recorded goal; the chain itself is not composed
                  }
                  // [TACTIC: exact h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact h₁₀]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5))));
              }
              // have h₉ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
              assert 0 <= n;  /* [IN-FILE CHECK] requires 1 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= k;  /* [IN-FILE CHECK] requires 2 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert n != 0;  /* [IN-FILE CHECK] requires 3 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 + 1 <= n;  /* [IN-FILE CHECK] requires 4 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, n);  /* [IN-FILE CHECK] requires 5 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= n + 2;  /* [IN-FILE CHECK] requires 6 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= n + 3;  /* [IN-FILE CHECK] requires 7 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= k;  /* [IN-FILE CHECK] requires 8 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= n + 1;  /* [IN-FILE CHECK] requires 9 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, n + 1);  /* [IN-FILE CHECK] requires 10 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= 2 * n + 4;  /* [IN-FILE CHECK] requires 11 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= n + 4;  /* [IN-FILE CHECK] requires 12 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= 2 * n + 6;  /* [IN-FILE CHECK] requires 13 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= 2 * n + 5;  /* [IN-FILE CHECK] requires 14 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, n + 4);  /* [IN-FILE CHECK] requires 15 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, 2 * n + 4);  /* [IN-FILE CHECK] requires 16 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= k * Int.pow(2, n + 4);  /* [IN-FILE CHECK] requires 17 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * Int.pow(2, n + 4));  /* [IN-FILE CHECK] requires 18 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= k * k * Int.pow(2, 2 * n + 6);  /* [IN-FILE CHECK] requires 19 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * k * Int.pow(2, 2 * n + 6));  /* [IN-FILE CHECK] requires 20 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= 2 * k * Int.pow(2, 2 * n + 5);  /* [IN-FILE CHECK] requires 21 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), 2 * k * Int.pow(2, 2 * n + 5));  /* [IN-FILE CHECK] requires 22 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0);  /* [IN-FILE CHECK] requires 23 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 24 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k * Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 25 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 26 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4));  /* [IN-FILE CHECK] requires 27 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0;  /* [IN-FILE CHECK] requires 28 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4);  /* [IN-FILE CHECK] requires 29 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 30 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 31 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * k * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k * k * Int.pow(2, 2 * n + 6) == 0);  /* [IN-FILE CHECK] requires 32 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), k * k * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k * k * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 33 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6));  /* [IN-FILE CHECK] requires 34 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0;  /* [IN-FILE CHECK] requires 35 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6);  /* [IN-FILE CHECK] requires 36 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) == 0);  /* [IN-FILE CHECK] requires 37 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 38 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), 2 * k * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k * Int.pow(2, 2 * n + 5) == 0);  /* [IN-FILE CHECK] requires 39 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), 2 * k * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0);  /* [IN-FILE CHECK] requires 40 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) + 2 * k * Int.pow(2, 2 * n + 5));  /* [IN-FILE CHECK] requires 41 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) + 2 * k * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) + 2 * k * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0;  /* [IN-FILE CHECK] requires 42 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              assert 0 <= Int.pow(2, 2 * n + 4) + k * Int.pow(2, n + 4) + k * k * Int.pow(2, 2 * n + 6) + 2 * k * Int.pow(2, 2 * n + 5);  /* [IN-FILE CHECK] requires 43 of vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195 */
              vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195(k, k, k, k, n);  /* [IN-FILE CHECK] the closed lemma for line 195 */
              assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 3511-3565 // @tac 3578-3632 // @tac 3645-3707 // @tac 3720-3782 // @tac 3841-3909
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by {
                  // [TACTIC: exact h₅]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                }
                // have h₁₁ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4)))) by {
                  // [TACTIC: exact h₆]
                  assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4))));
                }
                // have h₁₂ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by {
                  // [TACTIC: exact h₇]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6))));
                }
                // have h₁₃ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {
                  // [TACTIC: exact h₈]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact Nat.dvd_add ( Nat.dvd_add ( Nat.dvd_add h₁₀ h₆ ) h₇ ) h₈]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 4))))) && (NatDvd((Int.pow(2, (n + 4))), ((k * Int.pow(2, (n + 4))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)), (k * Int.pow(2, (n + 4))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), ((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4))))))) && (NatDvd((Int.pow(2, (n + 4))), (((k * k) * Int.pow(2, ((2 * n) + 6))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), (Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))), ((k * k) * Int.pow(2, ((2 * n) + 6))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6))))))) && (NatDvd((Int.pow(2, (n + 4))), (((2 * k) * Int.pow(2, ((2 * n) + 5))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), ((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))), ((2 * k) * Int.pow(2, ((2 * n) + 5))));  // cite: Nat.dvd_add
              }
              // have h₁₀ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
              assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 4059-4183 // @tac 4196-4373 // @tac 4386-4399
                // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by {
                  // [TACTIC: exact h₉]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
                }
                // have h₁₂ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
                assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 4337-4373
                  // [TACTIC: exact Nat.mod_eq_zero_of_dvd h₁₁]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
                  assert (NatDvd((Int.pow(2, (n + 4))), ((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))))));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
                  NatModEqZeroOfDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));  // cite: Nat.mod_eq_zero_of_dvd
                }
                // [TACTIC: exact h₁₂]
                assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0);
              }
              // [TACTIC: exact h₁₀]
              assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0);
            }
            // have h₅ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
            assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 4666-6151 // @tac 6162-6837 // @tac 6848-6861
              // have h₆ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 4798-4901 // @tac 4914-5000 // @tac 5013-5351 // @tac 5364-6024 // @tac 6083-6151
                // have h₇ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by { // @tac 4862-4881
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 4)) by {  // sub-goal before `omega` (Lean state) // @tac 4896-4901
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 701 4896-4901]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 4)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 4));  // cite: pow_dvd_pow
                }
                // have h₈ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (k * Int.pow(2, (n + 4)))) by { // @tac 4978-5000
                  assert ((k * Int.pow(2, (n + 4))) == (Int.pow(2, (n + 4)) * k)) by {  // sub-goal of `by` (Lean state) // @tac 4993-4997
                    // [TACTIC: Ring]
                  }
                  // [TACTIC: exact ⟨ k , by ring ⟩ ⟨ k , by ring ⟩]
                  assert (if ((Int.pow(2, (n + 4)) as int)) == 0 then (((k * Int.pow(2, (n + 4))) as int)) == 0 else (((k * Int.pow(2, (n + 4))) as int)) % ((Int.pow(2, (n + 4)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                  // UNCITED-APPLIED internal ×55 [exec 718 4978-5000]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+23 more heads, ×39)
                }
                // have h₉ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 5085-5195 // @tac 5210-5323 // @tac 5338-5351
                  // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 6 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6))) by { // @tac 5154-5173
                    // [TACTIC: apply pow_dvd_pow 2]
                    assert ((n + 4) <= ((2 * n) + 6)) by {  // sub-goal before `omega` (Lean state) // @tac 5190-5195
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×11 [exec 761 5190-5195]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                    }
                    assert (((n + 4)) <= (((2 * n) + 6)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                    NatPowDvdPow(2, (n + 4), ((2 * n) + 6));  // cite: pow_dvd_pow
                  }
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 5287-5323
                    // [TACTIC: exact dvd_mul_of_dvd_right h₁₀ _]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)));
                    assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 6)))));  // precondition of NatDvdMulOfDvdRight (Lean: dvd_mul_of_dvd_right)
                    NatDvdMulOfDvdRight(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)), (k * k));  // cite: dvd_mul_of_dvd_right
                  }
                  // [TACTIC: exact h₁₁]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k * k) * Int.pow(2, ((2 * n) + 6))));
                }
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5439-5549 // @tac 5564-5996 // @tac 6011-6024
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by { // @tac 5508-5527
                    // [TACTIC: apply pow_dvd_pow 2]
                    assert ((n + 4) <= ((2 * n) + 5)) by {  // sub-goal before `omega` (Lean state) // @tac 5544-5549
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×11 [exec 813 5544-5549]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                    }
                    assert (((n + 4)) <= (((2 * n) + 5)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                    NatPowDvdPow(2, (n + 4), ((2 * n) + 5));  // cite: pow_dvd_pow
                  }
                  // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5641-5698 // @tac 5715-5966 // @tac 5983-5996
                    // have h₁₃ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by {
                      // [TACTIC: exact h₁₁]
                      assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5)));
                    }
                    // have h₁₄ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                    assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5794-5966
                      assert NatDvd(Int.pow(2, ((2 * n) + 5)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {  // sub-goal of `by` (Lean state) // @tac 5940-5966
                        assert (((2 * k) * Int.pow(2, ((2 * n) + 5))) == (Int.pow(2, ((2 * n) + 5)) * (2 * k))) by {  // sub-goal of `by` (Lean state) // @tac 5959-5963
                          // [TACTIC: Ring]
                        }
                        // [TACTIC: exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                        assert (if ((Int.pow(2, ((2 * n) + 5)) as int)) == 0 then ((((2 * k) * Int.pow(2, ((2 * n) + 5))) as int)) == 0 else ((((2 * k) * Int.pow(2, ((2 * n) + 5))) as int)) % ((Int.pow(2, ((2 * n) + 5)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                        // UNCITED-APPLIED internal ×72 [exec 863 5940-5966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.zero_mul ×6, Mathlib.Tactic.Ring.mul_pf_right ×5 (+25 more heads, ×49)
                      }
                      // [TACTIC: calc_unparsed 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) := h₁₃ _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) := by exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩ exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                      // GAP: calc chain not lowered (relation outside Dafny calc, e.g. ∣); its step proofs follow, each with its recorded goal; the chain itself is not composed
                    }
                    // [TACTIC: exact h₁₄]
                    assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5))));
                  }
                  // [TACTIC: exact h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact Nat.dvd_add ( Nat.dvd_add ( Nat.dvd_add h₇ h₈ ) h₉ ) h₁₀]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 4))))) && (NatDvd((Int.pow(2, (n + 4))), ((k * Int.pow(2, (n + 4))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)), (k * Int.pow(2, (n + 4))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), ((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4))))))) && (NatDvd((Int.pow(2, (n + 4))), (((k * k) * Int.pow(2, ((2 * n) + 6))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), (Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))), ((k * k) * Int.pow(2, ((2 * n) + 6))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6))))))) && (NatDvd((Int.pow(2, (n + 4))), (((2 * k) * Int.pow(2, ((2 * n) + 5))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), ((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))), ((2 * k) * Int.pow(2, ((2 * n) + 5))));  // cite: Nat.dvd_add
              }
              // have h₁₁ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
              assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 6401-6525 // @tac 6538-6811 // @tac 6824-6837
                // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by {
                  // [TACTIC: exact h₆]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
                }
                // have h₁₃ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
                assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 6779-6811
                  // [TACTIC: exact Nat.div_mul_cancel h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
                  assert (NatDvd((Int.pow(2, (n + 4))), ((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))))));  // precondition of NatDivMulCancel (Lean: Nat.div_mul_cancel)
                  NatDivMulCancel((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4)));  // cite: Nat.div_mul_cancel
                }
                // [TACTIC: exact h₁₃]
                assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
              }
              // [TACTIC: exact h₁₁]
              assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))));
            }
            // have h₆ : 1 + 2 ^ ( n + 3 ) + ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 *   [type from Lean state]
            assert (((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, ((n + 1) + 3))))) by { // @tac 7150-7190 // @tac 7201-7241 // @tac 7252-7296 // @tac 7307-7441 // @tac 7307-7431 // @tac 7307-7402
              // have h₇ : n + 3 == n + 1 + 2  [type from Lean state]
              assert ((n + 3) == ((n + 1) + 2)); // @tac 7186-7190
                // [TACTIC: Ring]
              // UNCITED-APPLIED internal ×19 [exec 959 7186-7190]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_add_gt ×2 (+7 more heads, ×8)
              // have h₈ : n + 4 == n + 1 + 3  [type from Lean state]
              assert ((n + 4) == ((n + 1) + 3)); // @tac 7237-7241
                // [TACTIC: Ring]
              // UNCITED-APPLIED internal ×19 [exec 980 7237-7241]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_add_gt ×2 (+7 more heads, ×8)
              // have h₉ : 2 * n + 4 == 2 * n + 4  [type from Lean state]
              assert (((2 * n) + 4) == ((2 * n) + 4)); // @tac 7292-7296
                // [TACTIC: Ring]
              // UNCITED-APPLIED internal ×16 [exec 1001 7292-7296]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+10 more heads, ×10)
              // [TACTIC: «_<;>_» [ h₇ , h₈ , h₉ , pow_add , pow_mul , Nat.mul_div_assoc , Nat.div_eq_of_lt ] at h₄ h₅ ⊢ simp [ h₇ , h₈ , h₉ , pow_add , pow_mul , Nat.mul_div_assoc , Nat.div_eq_of_lt ] at h₄ h₅ ⊢ <;> ring_nf at h₄ h₅ ⊢ <;> omega omega]
              // [TACTIC: choice [ h₇ , h₈ , h₉ , pow_add , pow_mul , Nat.mul_div_assoc , Nat.div_eq_of_lt ] at h₄ h₅ ⊢ simp [ h₇ , h₈ , h₉ , pow_add , pow_mul , Nat.mul_div_assoc , Nat.div_eq_of_lt ] at h₄ h₅ ⊢]
              NatPowAdd(2, (n + 1), 2);  // cite: pow_add
              NatPowAdd(2, n, 1);  // cite: pow_add
              NatPowAdd(2, (2 * n), 4);  // cite: pow_add
              NatPowAdd(2, (n + 1), 3);  // cite: pow_add
              NatPowAdd(2, (2 * n), 6);  // cite: pow_add
              NatPowAdd(2, (2 * n), 5);  // cite: pow_add
              NatPowMul(2, 2, n);  // cite: pow_mul
              // UNCITED Nat.mul_div_assoc: no Lean instance recorded (arguments unknown), not guessed
              // UNCITED Nat.div_eq_of_lt: no Lean instance recorded (arguments unknown), not guessed
              NatPowOne(2);  // cite: pow_one [applied by the tactic, not named in it]
              // GAP: pow_add: this execution also rewrote the hypotheses h₄, h₅; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // GAP: pow_mul: this execution also rewrote the hypotheses h₄, h₅; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // UNCITED-APPLIED internal ×22 [exec 1012 7307-7402]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×8, congrArg ×8, congr ×6 (cited in this block, not counted here: pow_add [Lean recorded ×6], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×1])
              assert (NatMod(((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))), ((Int.pow(2, n) * 2) * 8)) == 0);  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 7307-7402
              assert ((NatDiv(((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))), ((Int.pow(2, n) * 2) * 8)) * ((Int.pow(2, n) * 2) * 8)) == ((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))));  // hypothesis h₅ after `simp` (Lean state) // @tac-hyp 7307-7402
              assert (((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))) == (NatDiv(((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))), ((Int.pow(2, n) * 2) * 8)) * ((Int.pow(2, n) * 2) * 8))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 7407-7431
                NatPowOne(k);  // cite: pow_one [applied by the tactic, not named in it]
                NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                NatPowOne(NatDiv((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + ((Int.pow(k, 2) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)));  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                assert (NatMod((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + (((k * k) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) == 0);  // hypothesis h₄ after `ring_nf` (Lean state) // @tac-hyp 7407-7431
                assert (((NatDiv((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + (((k * k) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) * Int.pow(2, n)) * 16) == (((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + (((k * k) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)));  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 7407-7431
                assert ((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + (((k * k) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)) == ((NatDiv((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + (((k * k) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) * Int.pow(2, n)) * 16)) by {  // sub-goal of `omega` (Lean state) // @tac 7436-7441
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(k);]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(n);]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(NatDiv((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + ((Int.pow(k, 2) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)));]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(2);]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 4);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (n + 1), 3);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, n, 1);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 6);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 5);]
                  // cite: pow_mul [same instance stated in an enclosing scope: NatPowMul(2, 2, n);]
                  // UNCITED-APPLIED internal ×170 [exec 1030 7436-7441]: applications made inside the tactic's own automation, not stated — Int.ofNat_mul ×8, add_zero ×5, Int.ofNat_add ×3, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+34 more heads, ×115) (cited in this block, not counted here: pow_add [Lean recorded ×5], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×4])
                }
                // UNCITED-APPLIED internal ×146 [exec 1021 7407-7431]: applications made inside the tactic's own automation, not stated — add_zero ×5, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+29 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×3])
              }
            }
            // [TACTIC: «_<;>_» [ h₆ ] rw [ h₆ ] <;> simp [ h₅ , Nat.mul_div_assoc , Nat.div_eq_of_lt ] simp [ h₅ , Nat.mul_div_assoc , Nat.div_eq_of_lt ] simp [ h₅ , Nat.mul_div_assoc , Nat.div_eq_of_lt ] <;> ring_nf at * <;> omega omega]
            // [TACTIC: rwSeq [ h₆ ]]
            // `rw` closed the goal; the rest of the chain did not run
            // UNCITED-APPLIED congrArg((1 : ℕ) + (2 : ℕ) ^ (n + (3 : ℕ)) + ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)…, (1 : ℕ) + (2 : ℕ) ^ (n + (1 : ℕ) + (2 : ℕ)) + ((2 : ℕ) ^ ((2 : ℕ) * n…, fun (_a : ℕ) => _a = (1 : ℕ) + (2 : ℕ) ^ (succ n + (2 : ℕ)) + ((2 : ℕ…): no library counterpart (not stated) [exec 1050 7450-7459]
          }
        }
      }
      assert (exists k: nat :: (Int.pow(3, Int.pow(2, (n + 1))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (k * Int.pow(2, ((n + 1) + 3))))));  // sub-goal before `obtain` (Lean state) // @tac 718-742 // @tac 638-7547 // @tac 751-856
    }
  }
}

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₁/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(n: nat, k: nat)
  ensures ((-(1) + -((Int.pow(3, Int.pow(2, n)) - ((1 + Int.pow(2, (n + 2))) + ((k as int) * Int.pow(2, (n + 3))))))) + ((Int.pow(3, Int.pow(2, n)) + 1) - ((1 + Int.pow(2, (n + 2))) + ((k as int) * Int.pow(2, (n + 3)))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_final/h₁/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(n: nat, k: nat)
  ensures ((-(1) + (Int.pow(3, Int.pow(2, n)) - ((1 + Int.pow(2, (n + 2))) + ((k as int) * Int.pow(2, (n + 3)))))) + ((((1 + Int.pow(2, (n + 2))) + ((k as int) * Int.pow(2, (n + 3)))) + 1) - Int.pow(3, Int.pow(2, n)))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma numbertheory_3pow2pownm1mod2pownp3eq2pownp2(n: nat)
  requires (0 < n)
  ensures (NatMod(tsub(Int.pow(3, Int.pow(2, n)), 1), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) // @tac 335-7569 // @tac 7575-9184 // @tac 9190-9203
{
  // have h_main : ∃ ( k : ℕ ) , 3 ^ 2 ^ n = 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
  assert (exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))))) by { // @tac 420-7547 // @tac 7552-7569
    // have h₁ : forall n : ℕ :: 0 < n -> ∃ ( k : ℕ ) , 3 ^ 2 ^ n = 1 + 2 ^ ( n + 2 ) +  [type from Lean state]
    forall n: nat | (0 < n) // @tac 528-538
      ensures exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) // @tac 545-571
    {
      // [TACTIC: intro n hn]
      // induction' n → recursive lemma induction_helper_1
      induction_helper_1(n - 1);
    }
    // [TACTIC: exact h₁ n h₀]
    assert (forall n: nat :: ((0 < n) ==> (exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))))));
    assert (exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))));  // instance of h₁ (Lean state)
  }
  // have h_final : ( 3 ^ 2 ^ n - 1 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
  assert (NatMod(tsub(Int.pow(3, Int.pow(2, n)), 1), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by { // @tac 7644-7672 // @tac 7677-8018 // @tac 8023-8032
    // obtain ⟨k, hk⟩ := h_main
    assert exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))));
    var k: nat :| (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))));
    // have h₁ : 3 ^ 2 ^ n - 1 == 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
    assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3))))) by { // @tac 7747-7819 // @tac 7826-8001 // @tac 8008-8018
      // have h₂ : 3 ^ 2 ^ n == 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
      assert (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) by { // @tac 7811-7819
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7811-7819 exec 1139)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -((3 : ℤ) ^ (2 : ℕ) ^ n - ((1 : ℤ) + (2 : ℤ) ^ (n + (2 : ℕ)) + ↑k * (2 : ℤ) ^ (n + (3 : ℕ)))) < (0 : ℤ)`
        cert_identity_2(n, k);  // cert: add_lt_of_neg_of_le
        cert_identity_3(n, k);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×32 [exec 1139 7811-7819]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×8, congr ×5, Eq.trans ×4, Linarith.lt_of_lt_of_eq ×2 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_add [Lean recorded ×2], Nat.cast_mul [Lean recorded ×1], Nat.cast_one [Lean recorded ×1], Nat.cast_pow [Lean recorded ×3])
        // UNCITED-APPLIED internal ×172 [exec 1140 7811-7819]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.add_pf_add_gt ×7 (+41 more heads, ×143)
        // UNCITED-APPLIED internal ×163 [exec 1141 7811-7819]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6 (+43 more heads, ×137)
        NatCastPowInt(3, Int.pow(2, n));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastPowInt(2, (n + 2));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastPowInt(2, (n + 3));  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        NatCastAddInt((1 + Int.pow(2, (n + 2))), (k * Int.pow(2, (n + 3))));  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastAddInt(1, Int.pow(2, (n + 2)));  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastOneInt();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastMulInt(k, Int.pow(2, (n + 3)));  // cite: Nat.cast_mul [applied by the tactic, not named in it]
      }
      // have h₃ : 3 ^ 2 ^ n - 1 == 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 )  [type from Lean state]
      assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3))))) by { // @tac 7898-7987 // @tac 7996-8001
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
      assert (tsub(Int.pow(3, Int.pow(2, n)), 1) == (Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))));
    }
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg((3 : ℕ) ^ (2 : ℕ) ^ n - (1 : ℕ), (2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a % (2 : ℕ) ^ (n + (3 : ℕ)) = (2 : ℕ) ^ (n + (2 : ℕ))): no library counterpart (not stated) [exec 1195 8023-8032]
    assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == Int.pow(2, (n + 2))) by {  // sub-goal before `have` (Lean state) // @tac 8037-8870 // @tac 8875-8884
      // have h₂ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
      assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by { // @tac 8135-8853 // @tac 8860-8870
        // have h₃ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == ( 2 ^ ( n + 2  [type from Lean state]
        assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by { // @tac 8237-8431 // @tac 8440-8608 // @tac 8617-8626
          // have h₄ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
          assert (NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by { // @tac 8299-8387 // @tac 8398-8431
            // have h₅ : 2 ^ ( n + 3 ) ∣ k * 2 ^ ( n + 3 )  [type from Lean state]
            assert NatDvd(Int.pow(2, (n + 3)), (k * Int.pow(2, (n + 3)))) by { // @tac 8361-8387 // @tac 8361-8366
              // [TACTIC: «_<;>_» k <;> ring]
              // [TACTIC: Use k]
              assert ((k * Int.pow(2, (n + 3))) == (Int.pow(2, (n + 3)) * k));  // sub-goal of `ring` (Lean state) // @tac 8383-8387
              // UNCITED-APPLIED internal ×53 [exec 1322 8383-8387]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+22 more heads, ×37)
            }
            // [TACTIC: exact Nat.mod_eq_zero_of_dvd h₅]
            assert NatDvd(Int.pow(2, (n + 3)), (k * Int.pow(2, (n + 3))));
            assert (NatDvd((Int.pow(2, (n + 3))), ((k * Int.pow(2, (n + 3))))));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
            NatModEqZeroOfDvd(Int.pow(2, (n + 3)), (k * Int.pow(2, (n + 3))));  // cite: Nat.mod_eq_zero_of_dvd
          }
          // have h₅ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == ( 2 ^ ( n + 2  [type from Lean state]
          assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3)))) by { // @tac 8590-8608
            // [TACTIC: simp [ Nat.add_mod ]]
            NatAddMod(Int.pow(2, (n + 2)), (k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)));  // cite: Nat.add_mod
            // UNCITED-APPLIED internal ×13 [exec 1340 8590-8608]: applications made inside the tactic's own automation, not stated — Nat.mul_mod_left ×1, add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
          }
          // [TACTIC: rwSeq [ h₅ ]]
          // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (…, ((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + k * (2 : ℕ) ^ (n…, fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))): no library counterpart (not stated) [exec 1345 8617-8626]
          assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {  // sub-goal before `have` (Lean state) // @tac 8635-8688 // @tac 8697-8706
            // have h₆ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
            assert (NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by {
              // [TACTIC: exact h₄]
              assert (NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0);
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
        assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))));
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



// ===== closed lemma for line 195 (from closed/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195.dfy) =====

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires 0 <= k_1_0_2_0
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  ensures   ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)))
{
  // Lean: exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4));  // h₁₀ = h₅ (in scope as the two dvd/mod disjunctions; 2^(n+4) > 0)  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4), k_1_0_2_0 * Int.pow(2, n + 4));  // cite: Nat.dvd_add  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6));  // cite: Nat.dvd_add  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // cite: Nat.dvd_add  // [ADDED]
}
