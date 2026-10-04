// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2009_p6.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2009_p6(m: real, n: real, p: real, q: real)
  requires (p == Real.rpow(2.0, m))
  requires (q == Real.rpow(3.0, n))
  ensures ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == Real.rpow(12.0, (m * n))) // @tac 530-1140 // @tac 1146-1740 // @tac 1746-2096 // @tac 2102-2495 // @tac 2501-4019 // @tac 4025-4261 // @tac 4267-4621 // @tac 4627-4929 // @tac 4935-5321 // @tac 5327-6250 // @tac 6256-6535 // @tac 6541-6630 // @tac 6636-6810 // @tac 6636-6793 // @tac 6636-6772 // @tac 6636-6694 // @tac 6636-6673 // @tac 6636-6648
{
  // have h₂ : p ^ ( 2 * n ) == 2 ^ ( m * ( 2 * n ) )  [type from Lean state]
  assert (Real.rpow(p, (2.0 * n)) == Real.rpow(2.0, (m * (2.0 * n)))) by { // @tac 592-601
    // [TACTIC: rwSeq [ h₀ ]]
    // UNCITED-APPLIED congrArg(p, (2 : ℝ) ^ m, fun (_a : ℝ) => _a ^ ((2 : ℝ) * n) = (2 : ℝ) ^ (m * ((2 : ℝ) * n))): no library counterpart (not stated) [exec 24 592-601]
    assert (Real.rpow(Real.rpow(2.0, m), (2.0 * n)) == Real.rpow(2.0, (m * (2.0 * n)))) by {  // sub-goal before `have` (Lean state) // @tac 606-663 // @tac 668-821 // @tac 826-1140 // @tac 826-1123 // @tac 826-1097 // @tac 826-1019 // @tac 826-994 // @tac 826-838
      // have h₂₁ : 2 ^ m > 0  [type from Lean state]
      assert (Real.rpow(2.0, m) > 0.0) by { // @tac 653-663
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×2 [exec 67 653-663]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
        assert (0.0 < (2.0));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
        RealRpowPosOfPos(2.0, m);  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
      }
      // have h₂₂ : 2 ^ m ^ 2 * n == 2 ^ ( m * ( 2 * n ) )  [type from Lean state]
      assert (Real.rpow(Real.rpow(2.0, m), (2.0 * n)) == Real.rpow(2.0, (m * (2.0 * n)))) by { // @tac 761-821 // @tac 761-808 // @tac 761-795 // @tac 761-783
        // [TACTIC: «_<;>_» [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
        // [TACTIC: choice [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ]]
        // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, (m * (2.0 * n))), Real.rpow(Real.rpow(2.0, m), (2.0 * n))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
        assert (0.0 <= (2.0));  // precondition of RealRpowMul (Lean: Real.rpow_mul)
        RealRpowMul(2.0, m, (2.0 * n));  // cite: Real.rpow_mul
        // UNCITED-APPLIED congrArg(((2 : ℝ) ^ m) ^ ((2 : ℝ) * n), (2 : ℝ) ^ (m * ((2 : ℝ) * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ (m * ((2 : ℝ) * n))): no library counterpart (not stated) [exec 103 761-783]
        // (`rw` closed `(2 : ℝ) ^ (m * ((2 : ℝ) * n)) = (2 : ℝ) ^ (m * ((2 : ℝ) * n))` itself, e.g. by its trailing rfl)
        assert (0.0 <= 2.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 788-795 // @tac 800-808
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 141 800-808]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      // [TACTIC: «_<;>_» [ h₂₂ ] rw [ h₂₂ ] <;> simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> norm_num at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₂₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(((2 : ℝ) ^ m) ^ ((2 : ℝ) * n), (2 : ℝ) ^ (m * ((2 : ℝ) * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ (m * ((2 : ℝ) * n))): no library counterpart (not stated) [exec 177 826-838]
    }
  }
  // have h₃ : q ^ m == 3 ^ ( n * m )  [type from Lean state]
  assert (Real.rpow(q, m) == Real.rpow(3.0, (n * m))) by { // @tac 1196-1205
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(q, (3 : ℝ) ^ n, fun (_a : ℝ) => _a ^ m = (3 : ℝ) ^ (n * m)): no library counterpart (not stated) [exec 248 1196-1205]
    assert (Real.rpow(Real.rpow(3.0, n), m) == Real.rpow(3.0, (n * m))) by {  // sub-goal before `have` (Lean state) // @tac 1210-1267 // @tac 1272-1421 // @tac 1426-1740 // @tac 1426-1723 // @tac 1426-1697 // @tac 1426-1619 // @tac 1426-1594 // @tac 1426-1438
      // have h₃₁ : 3 ^ n > 0  [type from Lean state]
      assert (Real.rpow(3.0, n) > 0.0) by { // @tac 1257-1267
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×2 [exec 291 1257-1267]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
        assert (0.0 < (3.0));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
        RealRpowPosOfPos(3.0, n);  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
      }
      // have h₃₂ : 3 ^ n ^  == 3 ^ n * m  [type from Lean state]
      assert (Real.rpow(Real.rpow(3.0, n), m) == Real.rpow(3.0, (n * m))) by { // @tac 1361-1421 // @tac 1361-1408 // @tac 1361-1395 // @tac 1361-1383
        // [TACTIC: «_<;>_» [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
        // [TACTIC: choice [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ]]
        // UNCITED-APPLIED Eq.symm(Real.rpow(3.0, (n * m)), Real.rpow(Real.rpow(3.0, n), m)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
        assert (0.0 <= (3.0));  // precondition of RealRpowMul (Lean: Real.rpow_mul)
        RealRpowMul(3.0, n, m);  // cite: Real.rpow_mul
        // UNCITED-APPLIED congrArg(((3 : ℝ) ^ n) ^ m, (3 : ℝ) ^ (n * m), fun (_a : ℝ) => _a = (3 : ℝ) ^ (n * m)): no library counterpart (not stated) [exec 327 1361-1383]
        // (`rw` closed `(3 : ℝ) ^ (n * m) = (3 : ℝ) ^ (n * m)` itself, e.g. by its trailing rfl)
        assert (0.0 <= 3.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 1388-1395 // @tac 1400-1408
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 365 1400-1408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      // [TACTIC: «_<;>_» [ h₃₂ ] rw [ h₃₂ ] <;> simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ h₀ , h₁ , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> norm_num at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₃₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(((3 : ℝ) ^ n) ^ m, (3 : ℝ) ^ (n * m), fun (_a : ℝ) => _a = (3 : ℝ) ^ (n * m)): no library counterpart (not stated) [exec 401 1426-1438]
    }
  }
  // have h₄ : p ^ ( 2 * n ) * q ^ m == 2 ^ ( m * ( 2 * n ) ) * 3 ^ ( n * m )  [type from Lean state]
  assert ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == (Real.rpow(2.0, (m * (2.0 * n))) * Real.rpow(3.0, (n * m)))); // @tac 1838-2096 // @tac 1838-2075 // @tac 1838-2050 // @tac 1838-1902 // @tac 1838-1882 // @tac 1838-1853
  // UNCITED-APPLIED congrArg(p ^ ((2 : ℝ) * n), (2 : ℝ) ^ (m * ((2 : ℝ) * n)), fun (_a : ℝ) => _a * q ^ m = (2 : ℝ) ^ (m * ((2 : ℝ) * n)) * (3 : ℝ) …): no library counterpart (not stated) [exec 497 1838-1853]
  // UNCITED-APPLIED congrArg(q ^ m, (3 : ℝ) ^ (n * m), fun (_a : ℝ) => (2 : ℝ) ^ (m * ((2 : ℝ) * n)) * _a = (2 : ℝ) ^ (m * (…): no library counterpart (not stated) [exec 497 1838-1853]
    // [TACTIC: «_<;>_» [ h₂ , h₃ ] rw [ h₂ , h₃ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf ring_nf <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
    // [TACTIC: rwSeq [ h₂ , h₃ ]]
    // `rw` closed the goal; the rest of the chain did not run
  // have h₅ : 2 ^ ( m * ( 2 * n ) ) == 2 ^ ( 2 * ( m * n ) )  [type from Lean state]
  assert (Real.rpow(2.0, (m * (2.0 * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by { // @tac 2178-2235 // @tac 2240-2495 // @tac 2240-2474 // @tac 2240-2449 // @tac 2240-2301 // @tac 2240-2281 // @tac 2240-2252
    // have h₅₁ : m * ( 2 * n ) == 2 * ( m * n )  [type from Lean state]
    assert ((m * (2.0 * n)) == (2.0 * (m * n))); // @tac 2231-2235
      // [TACTIC: Ring]
    // UNCITED-APPLIED internal ×34 [exec 585 2231-2235]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_pf_right ×4 (+10 more heads, ×18)
    // [TACTIC: «_<;>_» [ h₅₁ ] rw [ h₅₁ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf ring_nf <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
    // [TACTIC: rwSeq [ h₅₁ ]]
    // `rw` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED congrArg(m * ((2 : ℝ) * n), (2 : ℝ) * (m * n), fun (_a : ℝ) => (2 : ℝ) ^ _a = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 615 2240-2252]
  }
  // have h₆ : 2 ^ ( 2 * ( m * n ) ) == 4 ^ ( m * n )  [type from Lean state]
  assert (Real.rpow(2.0, (2.0 * (m * n))) == Real.rpow(4.0, (m * n))) by { // @tac 2571-3785 // @tac 3790-4019 // @tac 3790-4002 // @tac 3790-3981 // @tac 3790-3843 // @tac 3790-3827 // @tac 3790-3802
    // have h₆₁ : 2 ^ ( 2 * ( m * n ) ) == 4 ^ ( m * n )  [type from Lean state]
    assert (Real.rpow(2.0, (2.0 * (m * n))) == Real.rpow(4.0, (m * n))) by { // @tac 2646-3539 // @tac 3546-3785 // @tac 3546-3766 // @tac 3546-3743 // @tac 3546-3603 // @tac 3546-3585 // @tac 3546-3558
      // have h₆₂ : 4 ^ ( m * n ) == 2 ^ ( 2 * ( m * n ) )  [type from Lean state]
      assert (Real.rpow(4.0, (m * n)) == Real.rpow(2.0, (2.0 * (m * n)))) by { // @tac 2723-3539
        // calc 4 ^ ( m * n ) ...  (carrier real from the Lean state; 1/2 steps typed)
        calc {
          Real.rpow(4.0, (m * n));
          == {
            assert (Real.rpow(4.0, (m * n)) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal before `have` (Lean state) // @tac 2804-2859 // @tac 2872-2884
              // have h₆₃ : 4 == 2 ^ 2  [type from Lean state]
              assert (4.0 == (2.0 * 2.0)); // @tac 2851-2859
                // [TACTIC: «Norm_num[_]At___»]
              // UNCITED-APPLIED internal ×9 [exec 735 2851-2859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
              // [TACTIC: rwSeq [ h₆₃ ]]
              // UNCITED-APPLIED congrArg((4 : ℝ), (2 : ℝ) ^ (2 : ℕ), fun (_a : ℝ) => _a ^ (m * n) = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 740 2872-2884]
              assert (Real.rpow((2.0 * 2.0), (m * n)) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal before `have` (Lean state) // @tac 2897-2954 // @tac 2967-3176 // @tac 3189-3489 // @tac 3189-3476 // @tac 3189-3446 // @tac 3189-3372 // @tac 3189-3343 // @tac 3189-3201
                // have h₆₄ : 2 ^ 2 > 0  [type from Lean state]
                assert ((2.0 * 2.0) > 0.0) by { // @tac 2944-2954
                  // [TACTIC: Positivity]
                  // positivity proof (Lean execution 2944-2954 exec 783): nothing of it stated; Lean's records:
                  // cert: pow_pos piece `(0.0 < (2.0 * 2.0))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                  // UNCITED-APPLIED internal ×2 [exec 783 2944-2954]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
                  assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
                  PowPos(2.0, 2);  // cite: pow_pos [applied by the tactic, not named in it]
                }
                // have h₆₅ : 2 ^ 2 ^ m * n == 2 ^ 2 * ( m * n )  [type from Lean state]
                assert (Real.rpow((2.0 * 2.0), (m * n)) == Real.rpow(2.0, (2.0 * (m * n)))) by { // @tac 3074-3101
                  // [TACTIC: rwSeq [ ← Real.rpow_nat_cast ]]
                  RealRpowNatCast(2.0, 2);  // cite: Real.rpow_nat_cast
                  // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, (2 as real)), (2.0 * 2.0)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                  // UNCITED-APPLIED congrArg((2 : ℝ) ^ (2 : ℕ), (2 : ℝ) ^ ↑(2 : ℕ), fun (_a : ℝ) => _a ^ (m * n) = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 804 3074-3101]
                  assert (Real.rpow(Real.rpow(2.0, (2 as real)), (m * n)) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal before `rw` (Lean state) // @tac 3116-3176 // @tac 3116-3163 // @tac 3116-3150 // @tac 3116-3138
                    // [TACTIC: «_<;>_» [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
                    // [TACTIC: choice [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ]]
                    // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, ((2 as real) * (m * n))), Real.rpow(Real.rpow(2.0, (2 as real)), (m * n))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    assert (0.0 <= (2.0));  // precondition of RealRpowMul (Lean: Real.rpow_mul)
                    RealRpowMul(2.0, (2 as real), (m * n));  // cite: Real.rpow_mul
                    // UNCITED-APPLIED congrArg(((2 : ℝ) ^ ↑(2 : ℕ)) ^ (m * n), (2 : ℝ) ^ (↑(2 : ℕ) * (m * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 850 3116-3138]
                    assert (Real.rpow(2.0, ((2 as real) * (m * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 3143-3150
                      PowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.rpow(2.0, ((m * n) * 2.0)));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) ^ (m * n * (2 : ℝ)))
                      // UNCITED-APPLIED internal ×54 [exec 885 3143-3150]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×3, Mathlib.Tactic.Ring.mul_congr ×3 (+18 more heads, ×29) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                      vc_amc12a_2009_p6_L137(m, n, p, q);  /* [IN-FILE CHECK] the closed lemma for line 137 */
                    }
                    assert (0.0 <= 2.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 3143-3150 // @tac 3155-3163
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                      // UNCITED-APPLIED internal ×5 [exec 897 3155-3163]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                    }
                  }
                }
                // [TACTIC: «_<;>_» [ h₆₅ ] rw [ h₆₅ ] <;> simp [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> norm_num at * <;> linarith linarith]
                // [TACTIC: rwSeq [ h₆₅ ]]
                // `rw` closed the goal; the rest of the chain did not run
                // UNCITED-APPLIED congrArg(((2 : ℝ) ^ (2 : ℕ)) ^ (m * n), (2 : ℝ) ^ ((2 : ℝ) * (m * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 933 3189-3201]
              }
            }
          }
          Real.rpow(2.0, (2.0 * (m * n)));
          == {
            assert (Real.rpow(2.0, (2.0 * (m * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal before `rfl` (Lean state) // @tac 3536-3539
              // [TACTIC: Rfl]
            }
          }
          Real.rpow(2.0, (2.0 * (m * n)));
        }
      }
      // [TACTIC: «_<;>_» [ h₆₂ ] rw [ h₆₂ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf ring_nf <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₆₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg((4 : ℝ) ^ (m * n), (2 : ℝ) ^ ((2 : ℝ) * (m * n)), fun (_a : ℝ) => (2 : ℝ) ^ ((2 : ℝ) * (m * n)) = _a): no library counterpart (not stated) [exec 1019 3546-3558]
    }
    // [TACTIC: «_<;>_» [ h₆₁ ] rw [ h₆₁ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf ring_nf <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub , Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
    // [TACTIC: rwSeq [ h₆₁ ]]
    // `rw` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED congrArg((2 : ℝ) ^ ((2 : ℝ) * (m * n)), (4 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (4 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1099 3790-3802]
  }
  // have h₇ : 2 ^ ( m * ( 2 * n ) ) == 4 ^ ( m * n )  [type from Lean state]
  assert (Real.rpow(2.0, (m * (2.0 * n))) == Real.rpow(4.0, (m * n))) by { // @tac 4095-4261
    // calc 2 ^ ( m * ( 2 * n ) ) ...  (carrier real from the Lean state; 3/3 steps typed)
    calc {
      Real.rpow(2.0, (m * (2.0 * n)));
      == {
        assert (Real.rpow(2.0, (m * (2.0 * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal before `rw` (Lean state) // @tac 4166-4175
          // [TACTIC: rwSeq [ h₅ ]]
          // UNCITED-APPLIED congrArg((2 : ℝ) ^ (m * ((2 : ℝ) * n)), (2 : ℝ) ^ ((2 : ℝ) * (m * n)), fun (_a : ℝ) => _a = (2 : ℝ) ^ ((2 : ℝ) * (m * n))): no library counterpart (not stated) [exec 1175 4166-4175]
        }
      }
      Real.rpow(2.0, (2.0 * (m * n)));
      == {
        assert (Real.rpow(2.0, (2.0 * (m * n))) == Real.rpow(4.0, (m * n))) by {  // sub-goal before `rw` (Lean state) // @tac 4212-4221
          // [TACTIC: rwSeq [ h₆ ]]
          // UNCITED-APPLIED congrArg((2 : ℝ) ^ ((2 : ℝ) * (m * n)), (4 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (4 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1204 4212-4221]
        }
      }
      Real.rpow(4.0, (m * n));
      == {
        assert (Real.rpow(4.0, (m * n)) == Real.rpow(4.0, (m * n))) by {  // sub-goal before `rfl` (Lean state) // @tac 4258-4261
          // [TACTIC: Rfl]
        }
      }
      Real.rpow(4.0, (m * n));
    }
  }
  // have h₈ : p ^ ( 2 * n ) * q ^ m == 4 ^ ( m * n ) * 3 ^ ( n * m )  [type from Lean state]
  assert ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (n * m)))) by { // @tac 4353-4362
    // [TACTIC: rwSeq [ h₄ ]]
    // UNCITED-APPLIED congrArg(p ^ ((2 : ℝ) * n) * q ^ m, (2 : ℝ) ^ (m * ((2 : ℝ) * n)) * (3 : ℝ) ^ (n * m), fun (_a : ℝ) => _a = (4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (n * m)): no library counterpart (not stated) [exec 1251 4353-4362]
    assert ((Real.rpow(2.0, (m * (2.0 * n))) * Real.rpow(3.0, (n * m))) == (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (n * m)))) by {  // sub-goal before `have` (Lean state) // @tac 4367-4451 // @tac 4456-4621 // @tac 4456-4600 // @tac 4456-4575 // @tac 4456-4493 // @tac 4456-4468
      // have h₈₁ : 2 ^ ( m * ( 2 * n ) ) == 4 ^ ( m * n )  [type from Lean state]
      assert (Real.rpow(2.0, (m * (2.0 * n))) == Real.rpow(4.0, (m * n))); // @tac 4442-4451
        // [TACTIC: rwSeq [ h₇ ]]
      // UNCITED-APPLIED congrArg((2 : ℝ) ^ (m * ((2 : ℝ) * n)), (4 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (4 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1298 4442-4451]
      // [TACTIC: «_<;>_» [ h₈₁ ] rw [ h₈₁ ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₈₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg((2 : ℝ) ^ (m * ((2 : ℝ) * n)), (4 : ℝ) ^ (m * n), fun (_a : ℝ) => _a * (3 : ℝ) ^ (n * m) = (4 : ℝ) ^ (m * n) * (3 : ℝ) …): no library counterpart (not stated) [exec 1343 4456-4468]
    }
  }
  // have h₉ : 3 ^ ( n * m ) == 3 ^ ( m * n )  [type from Lean state]
  assert (Real.rpow(3.0, (n * m)) == Real.rpow(3.0, (m * n))) by { // @tac 4691-4730 // @tac 4735-4929 // @tac 4735-4908 // @tac 4735-4883 // @tac 4735-4801 // @tac 4735-4776 // @tac 4735-4747
    // have h₉₁ : n * m == m * n  [type from Lean state]
    assert ((n * m) == (m * n)); // @tac 4726-4730
      // [TACTIC: Ring]
    // UNCITED-APPLIED internal ×19 [exec 1424 4726-4730]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+7 more heads, ×11)
    // [TACTIC: «_<;>_» [ h₉₁ ] rw [ h₉₁ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
    // [TACTIC: rwSeq [ h₉₁ ]]
    // `rw` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED congrArg(n * m, m * n, fun (_a : ℝ) => (3 : ℝ) ^ _a = (3 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1454 4735-4747]
  }
  // have h₁₀ : p ^ ( 2 * n ) * q ^ m == 4 ^ ( m * n ) * 3 ^ ( m * n )  [type from Lean state]
  assert ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n)))) by { // @tac 5024-5033
    // [TACTIC: rwSeq [ h₈ ]]
    // UNCITED-APPLIED congrArg(p ^ ((2 : ℝ) * n) * q ^ m, (4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (n * m), fun (_a : ℝ) => _a = (4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1525 5024-5033]
    assert ((Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (n * m))) == (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n)))) by {  // sub-goal before `have` (Lean state) // @tac 5038-5119 // @tac 5124-5321 // @tac 5124-5300 // @tac 5124-5275 // @tac 5124-5193 // @tac 5124-5168 // @tac 5124-5139
      // have h₁₀₁ : 3 ^ ( n * m ) == 3 ^ ( m * n )  [type from Lean state]
      assert (Real.rpow(3.0, (n * m)) == Real.rpow(3.0, (m * n))); // @tac 5110-5119
        // [TACTIC: rwSeq [ h₉ ]]
      // UNCITED-APPLIED congrArg((3 : ℝ) ^ (n * m), (3 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (3 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1572 5110-5119]
      // [TACTIC: «_<;>_» [ h₁₀₁ ] rw [ h₁₀₁ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₁₀₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg((3 : ℝ) ^ (n * m), (3 : ℝ) ^ (m * n), fun (_a : ℝ) => (4 : ℝ) ^ (m * n) * _a = (4 : ℝ) ^ (m * n) * (3 : ℝ) …): no library counterpart (not stated) [exec 1622 5124-5139]
    }
  }
  // have h₁₁ : 4 ^ ( m * n ) * 3 ^ ( m * n ) == 12 ^ ( m * n )  [type from Lean state]
  assert ((Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n))) == Real.rpow(12.0, (m * n))) by { // @tac 5417-6085 // @tac 6090-6250 // @tac 6090-6229 // @tac 6090-6204 // @tac 6090-6122 // @tac 6090-6105
    // have h₁₁₁ : 4 ^ ( m * n ) * 3 ^ ( m * n ) == 4 * 3 ^ ( m * n )  [type from Lean state]
    assert ((Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n))) == Real.rpow((4.0 * 3.0), (m * n))) by { // @tac 5515-5561 // @tac 5568-5614 // @tac 5621-5681 // @tac 5688-6085
      // have h₁₁₂ : 0 < 4  [type from Lean state]
      assert (0.0 < 4.0) by { // @tac 5553-5561
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 1721 5553-5561]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // have h₁₁₃ : 0 < 3  [type from Lean state]
      assert (0.0 < 3.0) by { // @tac 5606-5614
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 1738 5606-5614]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // have h₁₁₄ : 0 < 4 * 3  [type from Lean state]
      assert (0.0 < (4.0 * 3.0)) by { // @tac 5671-5681
        // [TACTIC: Positivity]
        // positivity proof (Lean execution 5671-5681 exec 1755): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (4 : ℝ) * (3 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 4.0); (0.0 < 3.0)
        // UNCITED-APPLIED internal ×4 [exec 1755 5671-5681]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
        assert (0.0 < (4.0)) && (0.0 < (3.0));  // precondition of MulPos (Lean: mul_pos)
        MulPos(4.0, 3.0);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // calc 4 ^ ( m * n ) * 3 ^ ( m * n ) ...  (carrier real from the Lean state; 2/2 steps typed)
      calc {
        (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n)));
        == {
          assert ((Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n))) == Real.rpow((4.0 * 3.0), (m * n))) by {  // sub-goal before `rw` (Lean state) // @tac 5795-6035 // @tac 5795-6002 // @tac 5795-5965 // @tac 5795-5871 // @tac 5795-5849
            assert (0.0 <= 4.0) by {  // sub-goal of `by` (Lean state) // @tac 5821-5831
              // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×2 [exec 1792 5821-5831]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
              assert ((0.0) < (4.0));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, 4.0);  // cite: le_of_lt [applied by the tactic, not named in it]
            }
            assert (0.0 <= 3.0) by {  // sub-goal of `by` (Lean state) // @tac 5837-5847
              // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×2 [exec 1797 5837-5847]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
              assert ((0.0) < (3.0));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, 3.0);  // cite: le_of_lt [applied by the tactic, not named in it]
            }
            // [TACTIC: «_<;>_» [ ← Real.mul_rpow ( by positivity ) ( by positivity ) ] rw [ ← Real.mul_rpow ( by positivity ) ( by positivity ) ] <;> ring_nf ring_nf <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
            // [TACTIC: rwSeq [ ← Real.mul_rpow ( by positivity ) ( by positivity ) ]]
            // UNCITED-APPLIED Eq.symm(Real.rpow((4.0 * 3.0), (m * n)), (Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n)))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
            // `rw` closed the goal; the rest of the chain did not run
            assert (0.0 <= (4.0)) && (0.0 <= (3.0));  // precondition of RealMulRpow (Lean: Real.mul_rpow)
            RealMulRpow(4.0, 3.0, (m * n));  // cite: Real.mul_rpow
            // UNCITED-APPLIED congrArg((4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (m * n), ((4 : ℝ) * (3 : ℝ)) ^ (m * n), fun (_a : ℝ) => _a = ((4 : ℝ) * (3 : ℝ)) ^ (m * n)): no library counterpart (not stated) [exec 1785 5795-5849]
          }
        }
        Real.rpow((4.0 * 3.0), (m * n));
        == {
          assert (Real.rpow((4.0 * 3.0), (m * n)) == Real.rpow((4.0 * 3.0), (m * n))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 6078-6085
            // [TACTIC: Ring_nfAt]
            PowOne(Real.rpow(12.0, (m * n)));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (12 : ℝ) ^ (m * n))
            // UNCITED-APPLIED internal ×34 [exec 1844 6078-6085]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×6, congrArg ×5, congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+14 more heads, ×16) (cited in this block, not counted here: pow_one [Lean recorded ×1])
          }
        }
        Real.rpow((4.0 * 3.0), (m * n));
      }
    }
    // [TACTIC: «_<;>_» [ h₁₁₁ ] rw [ h₁₁₁ ] <;> norm_num norm_num <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
    // [TACTIC: choice [ h₁₁₁ ] rw [ h₁₁₁ ]]
    // UNCITED-APPLIED congrArg((4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (m * n), ((4 : ℝ) * (3 : ℝ)) ^ (m * n), fun (_a : ℝ) => _a = (12 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1869 6090-6105]
    assert (Real.rpow((4.0 * 3.0), (m * n)) == Real.rpow(12.0, (m * n)));  // sub-goal of `norm_num` (Lean state) // @tac 6114-6122
    // UNCITED-APPLIED internal ×9 [exec 1904 6114-6122]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+4 more heads, ×4)
  }
  // have h₁₂ : p ^ ( 2 * n ) * q ^ m == 12 ^ ( m * n )  [type from Lean state]
  assert ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == Real.rpow(12.0, (m * n))) by { // @tac 6324-6336
    // [TACTIC: rwSeq [ h₁₀ ]]
    // UNCITED-APPLIED congrArg(p ^ ((2 : ℝ) * n) * q ^ m, (4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (12 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1943 6324-6336]
    assert ((Real.rpow(4.0, (m * n)) * Real.rpow(3.0, (m * n))) == Real.rpow(12.0, (m * n))) by {  // sub-goal before `rw` (Lean state) // @tac 6341-6535 // @tac 6341-6514 // @tac 6341-6489 // @tac 6341-6407 // @tac 6341-6382 // @tac 6341-6353
      // [TACTIC: «_<;>_» [ h₁₁ ] rw [ h₁₁ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
      // [TACTIC: rwSeq [ h₁₁ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg((4 : ℝ) ^ (m * n) * (3 : ℝ) ^ (m * n), (12 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (12 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 1999 6341-6353]
    }
  }
  // have h₁₃ : p ^ ( 2 * n ) * q ^ m == 12 ^ ( m * n )  [type from Lean state]
  assert ((Real.rpow(p, (2.0 * n)) * Real.rpow(q, m)) == Real.rpow(12.0, (m * n))); // @tac 6601-6630
    // [TACTIC: simpa [ h₁₂ ] using h₁₂]
  // UNCITED-APPLIED internal ×4 [exec 2066 6601-6630]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
  // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> simp [ mul_assoc ] simp [ mul_assoc ] simp [ mul_assoc ] <;> ring_nf at * <;> simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] simp_all [ Real.rpow_mul , Real.rpow_add , Real.rpow_neg , Real.rpow_sub ] <;> ring_nf at * <;> linarith linarith]
  // [TACTIC: rwSeq [ h₁₃ ]]
  // `rw` closed the goal; the rest of the chain did not run
  // GAP: recorded applications of Lean executions this translation states nowhere:
  // UNCITED-APPLIED congrArg(p ^ ((2 : ℝ) * n) * q ^ m, (12 : ℝ) ^ (m * n), fun (_a : ℝ) => _a = (12 : ℝ) ^ (m * n)): no library counterpart (not stated) [exec 2096 6636-6648]
}



// ===== closed lemma for line 137 (from closed/amc12a_2009_p6-137.dfy) =====

lemma {:induction false} vc_amc12a_2009_p6_L137(m: real, n: real, p: real, q: real)
  requires p == Real.rpow(2.0, m)
  requires q == Real.rpow(3.0, n)
  requires Real.rpow(p, 2.0 * n) == Real.rpow(2.0, m * (2.0 * n))
  requires Real.rpow(q, m) == Real.rpow(3.0, n * m)
  requires Real.rpow(p, 2.0 * n) * Real.rpow(q, m) == Real.rpow(2.0, m * (2.0 * n)) * Real.rpow(3.0, n * m)
  requires Real.rpow(2.0, m * (2.0 * n)) == Real.rpow(2.0, 2.0 * (m * n))
  requires 4.0 == 2.0 * 2.0
  requires 2.0 * 2.0 > 0.0
  requires 0 <= 2
  requires Real.rpow(2.0, (2 as real)) == Real.pow(2.0, 2)
  requires 0.0 <= 2.0
  requires Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(Real.rpow(2.0, (2 as real)), m * n)
  requires Real.pow(m, 1) == m
  requires Real.pow(n, 1) == n
  requires Real.pow(Real.rpow(2.0, m * n * 2.0), 1) == Real.rpow(2.0, m * n * 2.0)
  ensures   Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(2.0, 2.0 * (m * n))
{
  // K2: ring_nf normal form of the rpow exponent (exec 885: both sides normalised to m * n * 2)
  assert (2 as real) * (m * n) == m * n * 2.0;  // [ADDED]
  assert 2.0 * (m * n) == m * n * 2.0;  // [ADDED]
                      PowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.rpow(2.0, ((m * n) * 2.0)));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) ^ (m * n * (2 : ℝ)))
                      // UNCITED-APPLIED internal ×54 [exec 885 3143-3150]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×3, Mathlib.Tactic.Ring.mul_congr ×3 (+18 more heads, ×29) (cited in this block, not counted here: pow_one [Lean recorded ×3])
}

