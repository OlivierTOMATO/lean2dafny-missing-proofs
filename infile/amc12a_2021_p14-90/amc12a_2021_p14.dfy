// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2021_p14.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅/h₅₅`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_1(k: nat)
  requires (0.0 < (k as real))
  requires (0.0 < Real.log(5.0))
  ensures (0.0 < ((k as real) * Real.log(5.0)))
{
  MulPos((k as real), Real.log(5.0));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2()
  ensures (-(Real.log(5.0)) + Real.log(5.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3()
  ensures (-(Real.log(3.0)) + Real.log(3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(k: nat)
  requires (0.0 < (k as real))
  requires (0.0 < (2.0 * Real.log(3.0)))
  ensures (0.0 < ((k as real) * (2.0 * Real.log(3.0))))
{
  MulPos((k as real), (2.0 * Real.log(3.0)));
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2021_p14()
  ensures ((Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) // @tac 574-2443 // @tac 2449-3676 // @tac 3682-6106 // @tac 6112-6809 // @tac 6815-7498 // @tac 7504-8415 // @tac 8421-8431
{
  // have h₁ : ∀ k ∈ Finset.Icc ( 1 : ℕ ) 20 , Real.logb ( ( 5 : ℝ ) ^ k ) ( ( 3 : ℝ   [type from Lean state]
  forall k: nat | (k in IccN(1, 20)) // @tac 707-717
    ensures (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == ((k as real) * Real.logb(5.0, 3.0))) // @tac 722-806 // @tac 811-896 // @tac 901-946 // @tac 951-997 // @tac 1002-2428 // @tac 2433-2443
  {
    // [TACTIC: intro k hk]
    // have h₁ : 1 <=   [type from Lean state]
    assert (1 <= k) by { // @tac 762-789 // @tac 796-806
      // [TACTIC: simp [ Finset.mem_Icc ] at hk]
      // UNCITED Finset.mem_Icc: no Lean instance recorded (arguments unknown), not guessed
      assert ((1 <= k) && (k <= 20));  // hypothesis hk after `simp` (Lean state) // @tac-hyp 762-789
      // [TACTIC: exact hk . 1]
    }
    // have h₂ :  <= 20  [type from Lean state]
    assert (k <= 20) by { // @tac 852-879 // @tac 886-896
      // [TACTIC: simp [ Finset.mem_Icc ] at hk]
      // UNCITED Finset.mem_Icc: no Lean instance recorded (arguments unknown), not guessed
      assert ((1 <= k) && (k <= 20));  // hypothesis hk after `simp` (Lean state) // @tac-hyp 852-879
      // [TACTIC: exact hk . 2]
    }
    // have h₃ : k >= 1  [type from Lean state]
    assert (k >= 1); // @tac 927-946
      // [TACTIC: Exact_mod_cast h₁]
    // have h₄ : k <= 20  [type from Lean state]
    assert (k <= 20); // @tac 978-997
      // [TACTIC: Exact_mod_cast h₂]
    // have h₅ : Real.logb ( ( 5 ^ k ) , ( 3 ^ ( k ^ 2 ) ) ) ==  * Real.logb ( 5 , 3 )  [type from Lean state]
    assert (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == ((k as real) * Real.logb(5.0, 3.0))) by { // @tac 1102-1326 // @tac 1333-1345
      // have h₅₁ : Real.logb ( ( 5 ^ k ) , ( 3 ^ ( k ^ 2 ) ) ) == Real.log ( ( 3 ^ ( k ^   [type from Lean state]
      assert (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k, 2))), Real.log(Real.pow(5.0, k)))); // @tac 1239-1326 // @tac 1239-1309 // @tac 1239-1286 // @tac 1239-1253
      // UNCITED-APPLIED congrArg(logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ)), Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)) / Real.log ((5 : ℝ) ^ k), fun (_a : ℝ) => _a = Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)) / Real.log ((5 …): no library counterpart (not stated) [exec 148 1239-1253]
      // UNCITED-APPLIED Real.logb.eq_1((5 : ℝ) ^ k, (3 : ℝ) ^ k ^ (2 : ℕ)): no library counterpart (not stated) [exec 148 1239-1253]
        // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
        // [TACTIC: rwSeq [ Real.logb ]]
        // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
        // `rw` closed the goal; the rest of the chain did not run
      // [TACTIC: rwSeq [ h₅₁ ]]
      // UNCITED-APPLIED congrArg(logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ)), Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)) / Real.log ((5 : ℝ) ^ k), fun (_a : ℝ) => _a = ↑k * logb (5 : ℝ) (3 : ℝ)): no library counterpart (not stated) [exec 191 1333-1345]
      assert (Real.div(Real.log(Real.pow(3.0, Int.pow(k, 2))), Real.log(Real.pow(5.0, k))) == ((k as real) * Real.logb(5.0, 3.0))) by {  // sub-goal before `have` (Lean state) // @tac 1352-1520 // @tac 1527-1685 // @tac 1692-1713
        // have h₅₂ : Real.log ( ( 3 ^ ( k ^ 2 ) ) ) == k ^ 2 * Real.log ( 3 )  [type from Lean state]
        assert 0 <= k;  /* [IN-FILE CHECK] requires 1 of vc_amc12a_2021_p14_L90 */
        assert 0 <= 1;  /* [IN-FILE CHECK] requires 2 of vc_amc12a_2021_p14_L90 */
        assert 0 <= 20;  /* [IN-FILE CHECK] requires 3 of vc_amc12a_2021_p14_L90 */
        assert k in IccN(1, 20);  /* [IN-FILE CHECK] requires 4 of vc_amc12a_2021_p14_L90 */
        assert 1 <= k;  /* [IN-FILE CHECK] requires 5 of vc_amc12a_2021_p14_L90 */
        assert k <= 20;  /* [IN-FILE CHECK] requires 6 of vc_amc12a_2021_p14_L90 */
        assert k >= 1;  /* [IN-FILE CHECK] requires 7 of vc_amc12a_2021_p14_L90 */
        assert 0 <= 2;  /* [IN-FILE CHECK] requires 8 of vc_amc12a_2021_p14_L90 */
        assert 0 <= Int.pow(k, 2);  /* [IN-FILE CHECK] requires 9 of vc_amc12a_2021_p14_L90 */
        assert Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k, 2))), Real.log(Real.pow(5.0, k)));  /* [IN-FILE CHECK] requires 10 of vc_amc12a_2021_p14_L90 */
        assert Real.log(Real.pow(3.0, Int.pow(k, 2))) == (Int.pow(k, 2) as real) * Real.log(3.0);  /* [IN-FILE CHECK] requires 11 of vc_amc12a_2021_p14_L90 */
        assert ((k * k) as real) * Real.log(3.0) == (k as real) * (k as real) * Real.log(3.0);  /* [IN-FILE CHECK] requires 12 of vc_amc12a_2021_p14_L90 */
        vc_amc12a_2021_p14_L90(k);  /* [IN-FILE CHECK] the closed lemma for line 90 */
        assert (Real.log(Real.pow(3.0, Int.pow(k, 2))) == (((k as real) * (k as real)) * Real.log(3.0))) by { // @tac 1441-1520 // @tac 1441-1503 // @tac 1441-1480 // @tac 1441-1458
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(Int.pow(k, 2), 3.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)), ↑(k ^ (2 : ℕ)) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = ↑k ^ (2 : ℕ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 253 1441-1458]
          assert ((((k * k) as real) * Real.log(3.0)) == (((k as real) * (k as real)) * Real.log(3.0))) by {  // sub-goal of `norm_cast` (Lean state) // @tac 1471-1480
            assert ((((k * k) as real) * Real.log(3.0)) == (((k * k) as real) * Real.log(3.0)));  // sub-goal of `norm_cast` (Lean state)
            // UNCITED-APPLIED internal ×1 [exec 294 1471-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
          }
        }
        // have h₅₃ : Real.log ( ( 5 ^ k ) ) ==  * Real.log ( 5 )  [type from Lean state]
        assert (Real.log(Real.pow(5.0, k)) == ((k as real) * Real.log(5.0))) by { // @tac 1606-1685 // @tac 1606-1668 // @tac 1606-1645 // @tac 1606-1623
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
          // [TACTIC: rwSeq [ Real.log_pow ]]
          RealLogPow(k, 5.0);  // cite: Real.log_pow
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ k), ↑k * Real.log (5 : ℝ), fun (_a : ℝ) => _a = ↑k * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 357 1606-1623]
        }
        // [TACTIC: rwSeq [ h₅₂ , h₅₃ ]]
        // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)), ↑k ^ (2 : ℕ) * Real.log (3 : ℝ), fun (_a : ℝ) => _a / Real.log ((5 : ℝ) ^ k) = ↑k * logb (5 : ℝ) (3 : …): no library counterpart (not stated) [exec 400 1692-1713]
        // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ k), ↑k * Real.log (5 : ℝ), fun (_a : ℝ) => ↑k ^ (2 : ℕ) * Real.log (3 : ℝ) / _a = ↑k * logb (5 :…): no library counterpart (not stated) [exec 400 1692-1713]
        assert (Real.div((((k as real) * (k as real)) * Real.log(3.0)), ((k as real) * Real.log(5.0))) == ((k as real) * Real.logb(5.0, 3.0))) by {  // sub-goal before `have` (Lean state) // @tac 1720-1876 // @tac 1883-2349 // @tac 2356-2428 // @tac 2356-2413 // @tac 2356-2392 // @tac 2356-2377
          // have h₅₄ : Real.logb ( 5 , 3 ) == Real.log ( 3 ) / Real.log ( 5 )  [type from Lean state]
          assert (Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))); // @tac 1789-1876 // @tac 1789-1859 // @tac 1789-1836 // @tac 1789-1803
          // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log (3 : ℝ) / Real.log (5 : ℝ)): no library counterpart (not stated) [exec 463 1789-1803]
          // UNCITED-APPLIED Real.logb.eq_1((5 : ℝ), (3 : ℝ)): no library counterpart (not stated) [exec 463 1789-1803]
            // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
            // [TACTIC: rwSeq [ Real.logb ]]
            // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
            // `rw` closed the goal; the rest of the chain did not run
          // have h₅₅ : k ^ 2 * Real.log ( 3 ) / (  * Real.log ( 5 ) ) ==  * ( Real.log ( 3 )   [type from Lean state]
          assert (Real.div((((k as real) * (k as real)) * Real.log(3.0)), ((k as real) * Real.log(5.0))) == ((k as real) * Real.div(Real.log(3.0), Real.log(5.0)))) by { // @tac 2006-2094 // @tac 2103-2349 // @tac 2103-2332 // @tac 2103-2296 // @tac 2103-2218 // @tac 2103-2196 // @tac 2103-2179 // @tac 2103-2143 // @tac 2103-2126
            // have h₅₅₁ :  != 0  [type from Lean state]
            assert ((k as real) != 0.0) by { // @tac 2056-2094 // @tac 2056-2074
              // [TACTIC: «_<;>_» at hk ⊢ <;> omega omega]
              // [TACTIC: «Norm_num[_]At___» at hk ⊢]
              // UNCITED-APPLIED internal ×1 [exec 539 2056-2074]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
              assert ((1 <= k) && (k <= 20));  // hypothesis hk after `norm_num` (Lean state) // @tac-hyp 2056-2074
              assert !(k == 0) by {  // sub-goal of `omega` (Lean state) // @tac 2089-2094
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×32 [exec 548 2089-2094]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Eq.trans ×4, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+9 more heads, ×12)
              }
            }
            // [TACTIC: «_<;>_» [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring <;> field_simp [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring <;> norm_cast norm_cast norm_cast <;> simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] <;> field_simp [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring]
            // [TACTIC: choice [ h₅₅₁ ] field_simp [ h₅₅₁ ]]
            if (0.0 < ((k as real))) && (0.0 < (Real.log(5.0))) { MulPos((k as real), Real.log(5.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
            // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2103-2126 exec 584)
            if (0.0 < (k as real)) && (0.0 < Real.log(5.0)) { cert_piece_1(k); }  // cert: mul_pos
            // UNCITED-APPLIED internal ×13 [exec 584 2103-2126]: applications made inside the tactic's own automation, not stated — ne_of_gt ×2, mul_div_assoc' ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, div_mul_eq_mul_div ×1, Nat.cast_pos ×1, lt_of_lt_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
            assert (((((k as real) * (k as real)) * Real.log(3.0)) * Real.log(5.0)) == (((k as real) * Real.log(3.0)) * ((k as real) * Real.log(5.0))));  // sub-goal of `ring` (Lean state) // @tac 2139-2143
            // UNCITED-APPLIED internal ×56 [exec 597 2139-2143]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.mul_pf_left ×6, Mathlib.Tactic.Ring.mul_congr ×5 (+19 more heads, ×33)
          }
          // [TACTIC: «_<;>_» [ h₅₅ , h₅₄ ] rw [ h₅₅ , h₅₄ ] <;> ring <;> field_simp field_simp <;> ring]
          // [TACTIC: rwSeq [ h₅₅ , h₅₄ ]]
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(↑k ^ (2 : ℕ) * Real.log (3 : ℝ) / (↑k * Real.log (5 : ℝ)), ↑k * (Real.log (3 : ℝ) / Real.log (5 : ℝ)), fun (_a : ℝ) => _a = ↑k * logb (5 : ℝ) (3 : ℝ)): no library counterpart (not stated) [exec 653 2356-2377]
          // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => ↑k * (Real.log (3 : ℝ) / Real.log (5 : ℝ)) = ↑k * _a): no library counterpart (not stated) [exec 653 2356-2377]
        }
      }
    }
    // [TACTIC: exact h₅]
    assert (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == ((k as real) * Real.logb(5.0, 3.0)));
  }
  // have h₂ : ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ)) = (210 : ℝ) * Real.logb (5   [type from Lean state]
  assert (Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == (210.0 * Real.logb(5.0, 3.0))) by { // @tac 2577-2816 // @tac 2821-2833
    // have h₂₁ : ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ)) = ∑ k ∈ Finset.Icc (1 : ℕ)   [type from Lean state]
    assert (Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == Real.sum(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0))))) by { // @tac 2752-2778
      // [TACTIC: apply Finset.sum_congr rfl]
      assert (forall x: nat :: ((x in IccN(1, 20)) ==> (Real.logb(Real.pow(5.0, x), Real.pow(3.0, Int.pow(x, 2))) == ((x as real) * Real.logb(5.0, 3.0))))) by {  // sub-goal before `intro` (Lean state) // @tac 2785-2795
        // [TACTIC: intro k hk]
        forall k: nat | ((k in IccN(1, 20)))
          ensures (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == ((k as real) * Real.logb(5.0, 3.0)))  // sub-goal before `rw` (Lean state) // @tac 2802-2816
        {
          // [TACTIC: rwSeq [ h₁ k hk ]]
          assert (Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))) == ((k as real) * Real.logb(5.0, 3.0)));  // instance of h₁ (Lean state)
          // UNCITED-APPLIED congrArg(logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ)), ↑k * logb (5 : ℝ) (3 : ℝ), fun (_a : ℝ) => _a = ↑k * logb (5 : ℝ) (3 : ℝ)): no library counterpart (not stated) [exec 736 2802-2816]
        }
      }
      assert (forall x :: x in (IccN(1, 20)) ==> (((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))))(x) == (((k: nat) => ((k as real) * Real.logb(5.0, 3.0))))(x));  // precondition of FinsetSumApply (Lean: Finset.sum_congr; `apply`: proved by the steps above)
      FinsetSumApply(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2)))), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0))));  // cite: Finset.sum_congr
    }
    // [TACTIC: rwSeq [ h₂₁ ]]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ …, ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k * logb (5 : ℝ) (3 : ℝ), fun (_a : ℝ) => _a = (210 : ℝ) * logb (5 : ℝ) (3 : ℝ)): no library counterpart (not stated) [exec 761 2821-2833]
    assert (Real.sum(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0)))) == (210.0 * Real.logb(5.0, 3.0))) by {  // sub-goal before `have` (Lean state) // @tac 2838-3440 // @tac 3445-3457
      // have h₂₂ : ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k * Real.logb (5 : ℝ) (3 : ℝ) = (∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k) *   [type from Lean state]
      assert (Real.sum(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0)))) == (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) * Real.logb(5.0, 3.0))) by { // @tac 2991-3440
        // calc ( Real.sum(Finset.Icc ( 1 , 20 ), (k: int) =>  * Real.logb ( ...  (carrier real from the Lean state; 3/3 steps typed)
        calc {
          Real.sum(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0))));
          == {
            assert (Real.sum(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0)))) == Real.sum(IccN(1, 20), ((k: nat) => (Real.logb(5.0, 3.0) * (k as real))))) by {  // sub-goal before `apply` (Lean state) // @tac 3146-3172
              // [TACTIC: apply Finset.sum_congr rfl]
              assert (forall x: nat :: ((x in IccN(1, 20)) ==> (((x as real) * Real.logb(5.0, 3.0)) == (Real.logb(5.0, 3.0) * (x as real))))) by {  // sub-goal before `intro` (Lean state) // @tac 3183-3192
                // [TACTIC: intro k _]
                forall k: nat | ((k in IccN(1, 20)))
                  ensures (((k as real) * Real.logb(5.0, 3.0)) == (Real.logb(5.0, 3.0) * (k as real)))  // sub-goal before `ring` (Lean state) // @tac 3203-3207
                {
                  // [TACTIC: Ring]
                  // UNCITED-APPLIED internal ×19 [exec 819 3203-3207]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+7 more heads, ×11)
                }
              }
              assert (forall x :: x in (IccN(1, 20)) ==> (((k: nat) => ((k as real) * Real.logb(5.0, 3.0))))(x) == (((k: nat) => (Real.logb(5.0, 3.0) * (k as real))))(x));  // precondition of FinsetSumApply (Lean: Finset.sum_congr; `apply`: proved by the steps above)
              FinsetSumApply(IccN(1, 20), ((k: nat) => ((k as real) * Real.logb(5.0, 3.0))), ((k: nat) => (Real.logb(5.0, 3.0) * (k as real))));  // cite: Finset.sum_congr
            }
          }
          Real.sum(IccN(1, 20), ((k: nat) => (Real.logb(5.0, 3.0) * (k as real))));
          == {
            assert (Real.sum(IccN(1, 20), ((k: nat) => (Real.logb(5.0, 3.0) * (k as real)))) == (Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((k: nat) => (k as real))))) by {  // sub-goal before `rw` (Lean state) // @tac 3296-3345 // @tac 3296-3315
              // [TACTIC: «_<;>_» [ Finset.mul_sum ] rw [ Finset.mul_sum ] <;> simp [ mul_comm ] simp [ mul_comm ] simp [ mul_comm ]]
              // [TACTIC: rwSeq [ Finset.mul_sum ]]
              // UNCITED Finset.mul_sum: recorded instance not expressible here (sort/type/scope), not guessed
              // `rw` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ) * ∑ i ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑i, ∑ i ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb (5 : ℝ) (3 : ℝ) * ↑i, fun (_a : ℝ) => ∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb (5 : ℝ) (3 : …): no library counterpart (not stated) [exec 833 3296-3315]
            }
          }
          (Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((k: nat) => (k as real))));
          == {
            assert ((Real.logb(5.0, 3.0) * Real.sum(IccN(1, 20), ((k: nat) => (k as real)))) == (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) * Real.logb(5.0, 3.0))) by {  // sub-goal before `ring` (Lean state) // @tac 3436-3440
              // [TACTIC: Ring]
              // UNCITED-APPLIED internal ×19 [exec 868 3436-3440]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+7 more heads, ×11)
            }
          }
          (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) * Real.logb(5.0, 3.0));
        }
      }
      // [TACTIC: rwSeq [ h₂₂ ]]
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k * logb (5 : ℝ) (3 : ℝ), (∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k) * logb (5 : ℝ) (3 : ℝ), fun (_a : ℝ) => _a = (210 : ℝ) * logb (5 : ℝ) (3 : ℝ)): no library counterpart (not stated) [exec 873 3445-3457]
      assert ((Real.sum(IccN(1, 20), ((k: nat) => (k as real))) * Real.logb(5.0, 3.0)) == (210.0 * Real.logb(5.0, 3.0))) by {  // sub-goal before `have` (Lean state) // @tac 3462-3589 // @tac 3594-3676 // @tac 3594-3663 // @tac 3594-3644 // @tac 3594-3619 // @tac 3594-3606
        // have h₂₃ : ( /* untranslated bigSum */ ) == 210  [type from Lean state]
        assert (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0) by { // @tac 3541-3589 // @tac 3541-3575
          // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top ] norm_num [ Finset.sum_Icc_succ_top ] <;> rfl rfl]
          // [TACTIC: «Norm_num[_]At___» [ Finset.sum_Icc_succ_top ]]
          // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
          FinsetIccSelfNat(1);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
          // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          assert ((1) <= (1) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 1, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (2) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 2, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (3) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 3, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (4) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 4, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (5) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 5, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (6) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 6, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (7) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 7, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (8) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 8, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (9) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 9, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (10) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 10, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (11) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 11, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (12) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 12, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (13) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 13, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (14) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 14, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (15) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 15, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (16) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 16, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (17) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 17, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (18) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 18, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= (19) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, 19, ((x: nat) => (x as real)));  // cite: Finset.sum_Icc_succ_top
          // `norm_num` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×68 [exec 921 3541-3575]: applications made inside the tactic's own automation, not stated — Finset.sum_congr ×1, Finset.sum_singleton ×1; machinery/glue: congrArg ×8, Mathlib.Meta.NormNum.isNat_le_true ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_add ×8 (+7 more heads, ×34) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], Finset.sum_Icc_succ_top [Lean recorded ×19], Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: «_<;>_» [ h₂₃ ] rw [ h₂₃ ] <;> ring <;> simp [ Real.logb ] simp [ Real.logb ] simp [ Real.logb ] <;> field_simp field_simp <;> ring]
        // [TACTIC: rwSeq [ h₂₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), ↑k, (210 : ℝ), fun (_a : ℝ) => _a * logb (5 : ℝ) (3 : ℝ) = (210 : ℝ) * logb (5 : ℝ) …): no library counterpart (not stated) [exec 952 3594-3606]
      }
    }
  }
  // have h₃ : ∀ k ∈ Finset.Icc ( 1 : ℕ ) 100 , Real.logb ( ( 9 : ℝ ) ^ k ) ( ( 25 :   [type from Lean state]
  forall k: nat | (k in IccN(1, 100)) // @tac 3799-3809
    ensures (Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)) == Real.logb(3.0, 5.0)) // @tac 3814-4022 // @tac 4027-4039
  {
    // [TACTIC: intro k hk]
    // have h₃₁ : Real.logb ( ( 9 ^ k ) , ( 25 ^ k ) ) == ( Real.log ( ( 25 ^ k ) ) / Re  [type from Lean state]
    assert (Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)) == Real.div(Real.log(Real.pow(25.0, k)), Real.log(Real.pow(9.0, k)))); // @tac 3941-4022 // @tac 3941-4007 // @tac 3941-3986 // @tac 3941-3955
    // UNCITED-APPLIED congrArg(logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k), Real.log ((25 : ℝ) ^ k) / Real.log ((9 : ℝ) ^ k), fun (_a : ℝ) => _a = Real.log ((25 : ℝ) ^ k) / Real.log ((9 : ℝ) ^ k)): no library counterpart (not stated) [exec 1053 3941-3955]
    // UNCITED-APPLIED Real.logb.eq_1((9 : ℝ) ^ k, (25 : ℝ) ^ k): no library counterpart (not stated) [exec 1053 3941-3955]
      // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ Real.logb ]]
      // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
      // `rw` closed the goal; the rest of the chain did not run
    // [TACTIC: rwSeq [ h₃₁ ]]
    // UNCITED-APPLIED congrArg(logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k), Real.log ((25 : ℝ) ^ k) / Real.log ((9 : ℝ) ^ k), fun (_a : ℝ) => _a = logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 1096 4027-4039]
    assert (Real.div(Real.log(Real.pow(25.0, k)), Real.log(Real.pow(9.0, k))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4044-4196 // @tac 4201-4351 // @tac 4356-4377
      // have h₃₂ : Real.log ( ( 25 ^ k ) ) ==  * Real.log ( 25 )  [type from Lean state]
      assert (Real.log(Real.pow(25.0, k)) == ((k as real) * Real.log(25.0))) by { // @tac 4123-4196 // @tac 4123-4181 // @tac 4123-4160 // @tac 4123-4140
        // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
        // [TACTIC: rwSeq [ Real.log_pow ]]
        RealLogPow(k, 25.0);  // cite: Real.log_pow
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((25 : ℝ) ^ k), ↑k * Real.log (25 : ℝ), fun (_a : ℝ) => _a = ↑k * Real.log (25 : ℝ)): no library counterpart (not stated) [exec 1158 4123-4140]
      }
      // have h₃₃ : Real.log ( ( 9 ^ k ) ) ==  * Real.log ( 9 )  [type from Lean state]
      assert (Real.log(Real.pow(9.0, k)) == ((k as real) * Real.log(9.0))) by { // @tac 4278-4351 // @tac 4278-4336 // @tac 4278-4315 // @tac 4278-4295
        // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
        // [TACTIC: rwSeq [ Real.log_pow ]]
        RealLogPow(k, 9.0);  // cite: Real.log_pow
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log ((9 : ℝ) ^ k), ↑k * Real.log (9 : ℝ), fun (_a : ℝ) => _a = ↑k * Real.log (9 : ℝ)): no library counterpart (not stated) [exec 1232 4278-4295]
      }
      // [TACTIC: rwSeq [ h₃₂ , h₃₃ ]]
      // UNCITED-APPLIED congrArg(Real.log ((25 : ℝ) ^ k), ↑k * Real.log (25 : ℝ), fun (_a : ℝ) => _a / Real.log ((9 : ℝ) ^ k) = logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 1275 4356-4377]
      // UNCITED-APPLIED congrArg(Real.log ((9 : ℝ) ^ k), ↑k * Real.log (9 : ℝ), fun (_a : ℝ) => ↑k * Real.log (25 : ℝ) / _a = logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 1275 4356-4377]
      assert (Real.div(((k as real) * Real.log(25.0)), ((k as real) * Real.log(9.0))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4382-4673 // @tac 4678-4967 // @tac 4972-4993
        // have h₃₄ : Real.log ( 25 ) == 2 * Real.log ( 5 )  [type from Lean state]
        assert (Real.log(25.0) == (2.0 * Real.log(5.0))) by { // @tac 4438-4501 // @tac 4508-4523
          // have h₃₄₁ : Real.log ( 25 ) == Real.log ( ( 5 ^ 2 ) )  [type from Lean state]
          assert (Real.log(25.0) == Real.log(Real.pow(5.0, 2))); // @tac 4493-4501
            // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×11 [exec 1335 4493-4501]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
          // [TACTIC: rwSeq [ h₃₄₁ ]]
          // UNCITED-APPLIED congrArg(Real.log (25 : ℝ), Real.log ((5 : ℝ) ^ (2 : ℕ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1340 4508-4523]
          assert (Real.log(Real.pow(5.0, 2)) == (2.0 * Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 4530-4651 // @tac 4658-4673
            // have h₃₄₂ : Real.log ( ( 5 ^ 2 ) ) == 2 * Real.log ( 5 )  [type from Lean state]
            assert (Real.log(Real.pow(5.0, 2)) == (2.0 * Real.log(5.0))) by { // @tac 4596-4651 // @tac 4596-4634 // @tac 4596-4613
              // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> ring]
              // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
              RealLogPow(2, 5.0);  // cite: Real.log_pow
              // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1397 4596-4613]
              assert (((2 as real) * Real.log(5.0)) == (2.0 * Real.log(5.0)));  // sub-goal of `norm_num` (Lean state) // @tac 4626-4634
              // UNCITED-APPLIED internal ×8 [exec 1432 4626-4634]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
            }
            // [TACTIC: rwSeq [ h₃₄₂ ]]
            // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1443 4658-4673]
          }
        }
        // have h₃₅ : Real.log ( 9 ) == 2 * Real.log ( 3 )  [type from Lean state]
        assert (Real.log(9.0) == (2.0 * Real.log(3.0))) by { // @tac 4733-4795 // @tac 4802-4817
          // have h₃₅₁ : Real.log ( 9 ) == Real.log ( ( 3 ^ 2 ) )  [type from Lean state]
          assert (Real.log(9.0) == Real.log(Real.pow(3.0, 2))); // @tac 4787-4795
            // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×11 [exec 1496 4787-4795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
          // [TACTIC: rwSeq [ h₃₅₁ ]]
          // UNCITED-APPLIED congrArg(Real.log (9 : ℝ), Real.log ((3 : ℝ) ^ (2 : ℕ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1501 4802-4817]
          assert (Real.log(Real.pow(3.0, 2)) == (2.0 * Real.log(3.0))) by {  // sub-goal before `have` (Lean state) // @tac 4824-4945 // @tac 4952-4967
            // have h₃₅₂ : Real.log ( ( 3 ^ 2 ) ) == 2 * Real.log ( 3 )  [type from Lean state]
            assert (Real.log(Real.pow(3.0, 2)) == (2.0 * Real.log(3.0))) by { // @tac 4890-4945 // @tac 4890-4928 // @tac 4890-4907
              // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> ring]
              // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
              RealLogPow(2, 3.0);  // cite: Real.log_pow
              // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1558 4890-4907]
              assert (((2 as real) * Real.log(3.0)) == (2.0 * Real.log(3.0)));  // sub-goal of `norm_num` (Lean state) // @tac 4920-4928
              // UNCITED-APPLIED internal ×8 [exec 1593 4920-4928]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
            }
            // [TACTIC: rwSeq [ h₃₅₂ ]]
            // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1604 4952-4967]
          }
        }
        // [TACTIC: rwSeq [ h₃₄ , h₃₅ ]]
        // UNCITED-APPLIED congrArg(Real.log (25 : ℝ), (2 : ℝ) * Real.log (5 : ℝ), fun (_a : ℝ) => ↑k * _a / (↑k * Real.log (9 : ℝ)) = logb (3 : ℝ) (5 :…): no library counterpart (not stated) [exec 1629 4972-4993]
        // UNCITED-APPLIED congrArg(Real.log (9 : ℝ), (2 : ℝ) * Real.log (3 : ℝ), fun (_a : ℝ) => ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * _a) = logb …): no library counterpart (not stated) [exec 1629 4972-4993]
        assert (Real.div(((k as real) * (2.0 * Real.log(5.0))), ((k as real) * (2.0 * Real.log(3.0)))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4998-5304 // @tac 5309-5354 // @tac 5359-5480 // @tac 5485-5606 // @tac 5611-6106 // @tac 5611-6090 // @tac 5611-5980 // @tac 5611-5964 // @tac 5611-5854 // @tac 5611-5838 // @tac 5611-5728 // @tac 5611-5712
          // have h₃₆ :  != 0  [type from Lean state]
          assert ((k as real) != 0.0) by { // @tac 5041-5304 // @tac 5041-5249 // @tac 5041-5164 // @tac 5041-5112 // @tac 5041-5087 // @tac 5041-5059
            // [TACTIC: «_<;>_» at hk ⊢ <;> ( try omega omega ) <;> ( try linarith linarith ) <;> ( try { aesop } ) <;> ( try { norm_num at hk ⊢ <;> omega omega } ) <;> ( try { linarith linarith } )]
            // [TACTIC: «Norm_num[_]At___» at hk ⊢]
            // UNCITED-APPLIED internal ×1 [exec 1698 5041-5059]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
            assert ((1 <= k) && (k <= 100));  // hypothesis hk after `norm_num` (Lean state) // @tac-hyp 5041-5059
            assert !(k == 0) by {  // sub-goal of `omega` (Lean state) // @tac 5077-5086 // @tac 5081-5086
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×32 [exec 1714 5081-5086]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Eq.trans ×4, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+9 more heads, ×12)
            }
            // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { aesop }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { aesop } )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { norm_num at hk ⊢ <;> omega omega }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { norm_num at hk ⊢ <;> omega omega } )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { linarith linarith }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { linarith linarith } )]  NOT RUN in Lean (no execution recorded)
          }
          // have h₃₇ : 2 != 0  [type from Lean state]
          assert (2.0 != 0.0) by { // @tac 5346-5354
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1755 5346-5354]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // have h₃₈ : Real.log ( 5 ) != 0  [type from Lean state]
          assert (Real.log(5.0) != 0.0) by { // @tac 5403-5465 // @tac 5472-5480
            // have h₃₈₁ : Real.log ( 5 ) > 0  [type from Lean state]
            assert (Real.log(5.0) > 0.0) by {
              assert (1.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 5456-5464
                // [TACTIC: «Norm_num[_]At___»]
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 1786 5456-5464]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              }
              // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
              assert (1.0 < (5.0));  // precondition of RealLogPos (Lean: Real.log_pos)
              RealLogPos(5.0);  // cite: Real.log_pos
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5472-5480 exec 1789)
            cert_identity_2();  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×5 [exec 1789 5472-5480]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×20 [exec 1790 5472-5480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1790)]
          }
          // have h₃₉ : Real.log ( 3 ) != 0  [type from Lean state]
          assert (Real.log(3.0) != 0.0) by { // @tac 5529-5591 // @tac 5598-5606
            // have h₃₉₁ : Real.log ( 3 ) > 0  [type from Lean state]
            assert (Real.log(3.0) > 0.0) by {
              assert (1.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 5582-5590
                // [TACTIC: «Norm_num[_]At___»]
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 1821 5582-5590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              }
              // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
              assert (1.0 < (3.0));  // precondition of RealLogPos (Lean: Real.log_pos)
              RealLogPos(3.0);  // cite: Real.log_pos
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5598-5606 exec 1824)
            cert_identity_3();  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×5 [exec 1824 5598-5606]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×20 [exec 1825 5598-5606]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1825)]
          }
          // [TACTIC: «_<;>_» [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf]
          // [TACTIC: choice [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ]]
          // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_mul: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_rpow: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_pow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          if (0.0 < ((k as real))) && (0.0 < ((2.0 * Real.log(3.0)))) { MulPos((k as real), (2.0 * Real.log(3.0))); }  // cite: mul_pos [applied by the tactic, not named in it]
          if (0.0 < (2.0)) && (0.0 < (Real.log(3.0))) { MulPos(2.0, Real.log(3.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
          // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5611-5712 exec 1861)
          if (0.0 < (k as real)) && (0.0 < (2.0 * Real.log(3.0))) { cert_piece_4(k); }  // cert: mul_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log (3 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.log(3.0))
          // UNCITED-APPLIED internal ×10 [exec 1861 5611-5712]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.lt_of_le_of_ne' ×1, Nat.cast_nonneg ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, congrArg ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
          assert ((((k as real) * (2.0 * Real.log(5.0))) * Real.log(3.0)) == (Real.log(5.0) * ((k as real) * (2.0 * Real.log(3.0))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5721-5728
            PowOne((k as real));  // cite: pow_one [applied by the tactic, not named in it]
            PowOne(Real.log(5.0));  // cite: pow_one [applied by the tactic, not named in it]
            PowOne(Real.log(3.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×75 [exec 1870 5721-5728]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×6 (+16 more heads, ×46) (cited in this block, not counted here: pow_one [Lean recorded ×3])
          }
        }
      }
    }
  }
  // have h₄ : ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), Real.logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k) = (100 : ℝ) * Real.logb (3 : ℝ) (5   [type from Lean state]
  assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == (100.0 * Real.logb(3.0, 5.0))) by { // @tac 6236-6466 // @tac 6471-6483
    // have h₄₁ : ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), Real.logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k) = ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ  [type from Lean state]
    assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == Real.sum(IccN(1, 100), ((k: nat) => Real.logb(3.0, 5.0)))) by { // @tac 6402-6428
      // [TACTIC: apply Finset.sum_congr rfl]
      assert (forall x: nat :: ((x in IccN(1, 100)) ==> (Real.logb(Real.pow(9.0, x), Real.pow(25.0, x)) == Real.logb(3.0, 5.0)))) by {  // sub-goal before `intro` (Lean state) // @tac 6435-6445
        // [TACTIC: intro k hk]
        forall k: nat | ((k in IccN(1, 100)))
          ensures (Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)) == Real.logb(3.0, 5.0))  // sub-goal before `rw` (Lean state) // @tac 6452-6466
        {
          // [TACTIC: rwSeq [ h₃ k hk ]]
          assert (Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)) == Real.logb(3.0, 5.0));  // instance of h₃ (Lean state)
          // UNCITED-APPLIED congrArg(logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k), logb (3 : ℝ) (5 : ℝ), fun (_a : ℝ) => _a = logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 1949 6452-6466]
        }
      }
      assert (forall x :: x in (IccN(1, 100)) ==> (((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))(x) == (((k: nat) => Real.logb(3.0, 5.0)))(x));  // precondition of FinsetSumApply (Lean: Finset.sum_congr; `apply`: proved by the steps above)
      FinsetSumApply(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))), ((k: nat) => Real.logb(3.0, 5.0)));  // cite: Finset.sum_congr
    }
    // [TACTIC: rwSeq [ h₄₁ ]]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k), ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ), fun (_a : ℝ) => _a = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 1974 6471-6483]
    assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(3.0, 5.0))) == (100.0 * Real.logb(3.0, 5.0))) by {  // sub-goal before `have` (Lean state) // @tac 6488-6735 // @tac 6740-6809 // @tac 6740-6796 // @tac 6740-6777 // @tac 6740-6752
      // have h₄₂ : ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), Real.logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * Real.logb (3 : ℝ) (5 : ℝ)  [type from Lean state]
      assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(3.0, 5.0))) == (100.0 * Real.logb(3.0, 5.0))) by { // @tac 6596-6735 // @tac 6596-6720 // @tac 6596-6699 // @tac 6596-6672 // @tac 6596-6657 // @tac 6596-6638
        // [TACTIC: «_<;>_» [ Finset.sum_const , Finset.card_range ] simp [ Finset.sum_const , Finset.card_range ] simp [ Finset.sum_const , Finset.card_range ] <;> norm_num norm_num <;> ring <;> simp [ Real.logb ] simp [ Real.logb ] simp [ Real.logb ] <;> field_simp field_simp <;> ring]
        // [TACTIC: simp [ Finset.sum_const , Finset.card_range ]]
        FinsetSumConst(IccN(1, 100), Real.logb(3.0, 5.0));  // cite: Finset.sum_const
        // UNCITED Finset.card_range: no Lean instance recorded (arguments unknown), not guessed
        // `simp` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×9 [exec 2042 6596-6638]: applications made inside the tactic's own automation, not stated — Nat.card_Icc ×1, nsmul_eq_mul ×1; machinery/glue: Eq.trans ×3, congrArg ×2, of_eq_true ×1, eq_self ×1 (cited in this block, not counted here: Finset.sum_const [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» [ h₄₂ ] rw [ h₄₂ ] <;> simp [ Real.logb ] simp [ Real.logb ] simp [ Real.logb ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ h₄₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ), (100 : ℝ) * logb (3 : ℝ) (5 : ℝ), fun (_a : ℝ) => _a = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)): no library counterpart (not stated) [exec 2092 6740-6752]
    }
  }
  // have h₅ : Real.logb ( 5 , 3 ) * Real.logb ( 3 , 5 ) == 1  [type from Lean state]
  assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by { // @tac 6871-7019 // @tac 7024-7172 // @tac 7177-7198
    // have h₅₁ : Real.logb ( 5 , 3 ) == Real.log ( 3 ) / Real.log ( 5 )  [type from Lean state]
    assert (Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))); // @tac 6938-7019 // @tac 6938-7004 // @tac 6938-6983 // @tac 6938-6952
    // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log (3 : ℝ) / Real.log (5 : ℝ)): no library counterpart (not stated) [exec 2182 6938-6952]
    // UNCITED-APPLIED Real.logb.eq_1((5 : ℝ), (3 : ℝ)): no library counterpart (not stated) [exec 2182 6938-6952]
      // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ Real.logb ]]
      // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
      // `rw` closed the goal; the rest of the chain did not run
    // have h₅₂ : Real.logb ( 3 , 5 ) == Real.log ( 5 ) / Real.log ( 3 )  [type from Lean state]
    assert (Real.logb(3.0, 5.0) == Real.div(Real.log(5.0), Real.log(3.0))); // @tac 7091-7172 // @tac 7091-7157 // @tac 7091-7136 // @tac 7091-7105
    // UNCITED-APPLIED congrArg(logb (3 : ℝ) (5 : ℝ), Real.log (5 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => _a = Real.log (5 : ℝ) / Real.log (3 : ℝ)): no library counterpart (not stated) [exec 2256 7091-7105]
    // UNCITED-APPLIED Real.logb.eq_1((3 : ℝ), (5 : ℝ)): no library counterpart (not stated) [exec 2256 7091-7105]
      // [TACTIC: «_<;>_» [ Real.logb ] rw [ Real.logb ] <;> simp [ Real.log_rpow ] simp [ Real.log_rpow ] simp [ Real.log_rpow ] <;> field_simp field_simp <;> ring]
      // [TACTIC: rwSeq [ Real.logb ]]
      // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
      // `rw` closed the goal; the rest of the chain did not run
    // [TACTIC: rwSeq [ h₅₁ , h₅₂ ]]
    // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ), Real.log (3 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => _a * logb (3 : ℝ) (5 : ℝ) = (1 : ℝ)): no library counterpart (not stated) [exec 2299 7177-7198]
    // UNCITED-APPLIED congrArg(logb (3 : ℝ) (5 : ℝ), Real.log (5 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => Real.log (3 : ℝ) / Real.log (5 : ℝ) * _a = (1 : ℝ)): no library counterpart (not stated) [exec 2299 7177-7198]
    assert ((Real.div(Real.log(3.0), Real.log(5.0)) * Real.div(Real.log(5.0), Real.log(3.0))) == 1.0) by {  // sub-goal before `have` (Lean state) // @tac 7203-7299 // @tac 7304-7400 // @tac 7405-7498 // @tac 7405-7485 // @tac 7405-7447 // @tac 7405-7434
      // have h₅₃ : Real.log ( 3 ) != 0  [type from Lean state]
      assert (Real.log(3.0) != 0.0) by {
        assert (0.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 7276-7284
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2341 7276-7284]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (3.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 7290-7298
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2346 7290-7298]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_ne_zero_of_pos_of_ne_one ( ( by norm_num norm_num ) , ( by norm_num norm_num ) )]
        assert (0.0 < (3.0)) && ((3.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(3.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
      }
      // have h₅₄ : Real.log ( 5 ) != 0  [type from Lean state]
      assert (Real.log(5.0) != 0.0) by {
        assert (0.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 7377-7385
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2363 7377-7385]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (5.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 7391-7399
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 2368 7391-7399]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_ne_zero_of_pos_of_ne_one ( ( by norm_num norm_num ) , ( by norm_num norm_num ) )]
        assert (0.0 < (5.0)) && ((5.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(5.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
      }
      // [TACTIC: «_<;>_» [ h₅₃ , h₅₄ ] field_simp [ h₅₃ , h₅₄ ] <;> ring <;> field_simp [ h₅₃ , h₅₄ ] field_simp [ h₅₃ , h₅₄ ] <;> ring]
      // [TACTIC: «Field_simp[_]At___» [ h₅₃ , h₅₄ ]]
      // `field_simp` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED internal ×14 [exec 2386 7405-7434]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, div_self ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, eq_false ×1 (+1 more heads, ×1)
    }
  }
  // have h₆ : (∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ (2 : ℕ))) * ∑ k ∈ Finset.Icc (1 : ℕ  [type from Lean state]
  assert ((Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) by { // @tac 7650-7765
    assert (Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == (210.0 * Real.logb(5.0, 3.0))) by {  // sub-goal of `by` (Lean state) // @tac 7748-7764
      // [TACTIC: simpa using h₂]
    }
    // [TACTIC: rwSeq [ show ( ∑ k in Finset.Icc 1 20 , Real.logb ( 5 ^ k ) ( 3 ^ k ^ 2 ) ) = 210 * Real.logb 5 3 by simpa using h₂ simpa using h₂ ]]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (20 : ℕ), logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ k ^ …, (210 : ℝ) * logb (5 : ℝ) (3 : ℝ), fun (_a : ℝ) => _a * ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb ((9 : ℝ…): no library counterpart (not stated) [exec 2425 7650-7765]
    assert (((210.0 * Real.logb(5.0, 3.0)) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) by {  // sub-goal before `rw` (Lean state) // @tac 7770-7883
      assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == (100.0 * Real.logb(3.0, 5.0))) by {  // sub-goal of `by` (Lean state) // @tac 7866-7882
        // [TACTIC: simpa using h₄]
      }
      // [TACTIC: rwSeq [ show ( ∑ k in Finset.Icc 1 100 , Real.logb ( 9 ^ k ) ( 25 ^ k ) ) = 100 * Real.logb 3 5 by simpa using h₄ simpa using h₄ ]]
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k), (100 : ℝ) * logb (3 : ℝ) (5 : ℝ), fun (_a : ℝ) => (210 : ℝ) * logb (5 : ℝ) (3 : ℝ) * _a = (21000 : ℝ)): no library counterpart (not stated) [exec 2461 7770-7883]
      assert (((210.0 * Real.logb(5.0, 3.0)) * (100.0 * Real.logb(3.0, 5.0))) == 21000.0) by {  // sub-goal before `have` (Lean state) // @tac 7888-8381 // @tac 8386-8415 // @tac 8386-8398
        // have h₆₁ : 210 * Real.logb ( 5 , 3 ) * 100 * Real.logb ( 3 , 5 ) == 21000  [type from Lean state]
        assert (((210.0 * Real.logb(5.0, 3.0)) * (100.0 * Real.logb(3.0, 5.0))) == 21000.0) by { // @tac 7981-8037 // @tac 8044-8137 // @tac 8144-8381
          // have h₆₂ : Real.logb ( 5 , 3 ) * Real.logb ( 3 , 5 ) == 1  [type from Lean state]
          assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by {
            // [TACTIC: exact h₅]
            assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0);
          }
          // have h₆₃ : Real.logb ( 5 , 3 ) * Real.logb ( 3 , 5 ) == 1  [type from Lean state]
          assert ((Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)) == 1.0) by { // @tac 8115-8137
            // [TACTIC: Exact_mod_cast h₆₂]
            // UNCITED-APPLIED Eq.symm((1 as real), 1.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
            // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`exact` exec 2538)]
            // UNCITED-APPLIED congrArg((1 : ℝ), ↑(1 : ℕ), Eq (logb ↑(5 : ℕ) ↑(3 : ℕ) * logb ↑(3 : ℕ) ↑(5 : ℕ))): no library counterpart (not stated) [exec 2538 8115-8137]
            // UNCITED-APPLIED congrArg(↑(1 : ℕ), (1 : ℝ), Eq (logb (5 : ℝ) (3 : ℝ) * logb (3 : ℝ) (5 : ℝ))): no library counterpart (not stated) [exec 2538 8115-8137]
            // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 2538 8115-8137]
          }
          // calc 210 * Real.logb ( 5 , 3 ) * 100 * Real.logb ( 3 , 5 ) ...  (carrier real from the Lean state; 3/3 steps typed)
          calc {
            ((210.0 * Real.logb(5.0, 3.0)) * (100.0 * Real.logb(3.0, 5.0)));
            == {
              assert (((210.0 * Real.logb(5.0, 3.0)) * (100.0 * Real.logb(3.0, 5.0))) == ((210.0 * 100.0) * (Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)))) by {  // sub-goal before `ring` (Lean state) // @tac 8291-8295
                // [TACTIC: Ring]
                // UNCITED-APPLIED internal ×56 [exec 2548 8291-8295]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.mul_pf_right ×6 (+13 more heads, ×32)
              }
            }
            ((210.0 * 100.0) * (Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0)));
            == {
              assert (((210.0 * 100.0) * (Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0))) == ((210.0 * 100.0) * 1.0)) by {  // sub-goal before `rw` (Lean state) // @tac 8336-8348
                // [TACTIC: rwSeq [ h₆₃ ]]
                // UNCITED-APPLIED congrArg(logb (5 : ℝ) (3 : ℝ) * logb (3 : ℝ) (5 : ℝ), (1 : ℝ), fun (_a : ℝ) => (210 : ℝ) * (100 : ℝ) * _a = (210 : ℝ) * (100 : ℝ) * …): no library counterpart (not stated) [exec 2557 8336-8348]
              }
            }
            ((210.0 * 100.0) * 1.0);
            == {
              assert (((210.0 * 100.0) * 1.0) == 21000.0) by {  // sub-goal before `norm_num` (Lean state) // @tac 8373-8381
                // [TACTIC: «Norm_num[_]At___»]
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×9 [exec 2582 8373-8381]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isNat_mul ×2, of_eq_true ×1, eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              }
            }
            21000.0;
          }
        }
        // [TACTIC: «_<;>_» [ h₆₁ ] rw [ h₆₁ ] <;> norm_num norm_num]
        // [TACTIC: rwSeq [ h₆₁ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg((210 : ℝ) * logb (5 : ℝ) (3 : ℝ) * ((100 : ℝ) * logb (3 : ℝ) (5 : ℝ)), (21000 : ℝ), fun (_a : ℝ) => _a = (21000 : ℝ)): no library counterpart (not stated) [exec 2592 8386-8398]
      }
    }
  }
  // [TACTIC: exact h₆]
  assert ((Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0);
}



// ===== closed lemma for line 90 (from closed/amc12a_2021_p14-90.dfy) =====

lemma {:induction false} vc_amc12a_2021_p14_L90(k_0_0: nat)
  requires 0 <= k_0_0
  requires 0 <= 1
  requires 0 <= 20
  requires k_0_0 in IccN(1, 20)
  requires 1 <= k_0_0
  requires k_0_0 <= 20
  requires k_0_0 >= 1
  requires 0 <= 2
  requires 0 <= Int.pow(k_0_0, 2)
  requires Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
  requires Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (Int.pow(k_0_0, 2) as real) * Real.log(3.0)
  requires ((k_0_0 * k_0_0) as real) * Real.log(3.0) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
  ensures   Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
{
  assert Int.pow(k_0_0, 2) == k_0_0 * k_0_0;  // computed: k^2 = k*k  // [ADDED]
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(Int.pow(k_0_0, 2), 3.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)), ↑(k ^ (2 : ℕ)) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = ↑k ^ (2 : ℕ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 253 1441-1458]
          assert ((((k_0_0 * k_0_0) as real) * Real.log(3.0)) == (((k_0_0 as real) * (k_0_0 as real)) * Real.log(3.0))) by {  // sub-goal of `norm_cast` (Lean state) // @tac 1471-1480
            assert ((((k_0_0 * k_0_0) as real) * Real.log(3.0)) == (((k_0_0 * k_0_0) as real) * Real.log(3.0)));  // sub-goal of `norm_cast` (Lean state)
            // UNCITED-APPLIED internal ×1 [exec 294 1471-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
          }
}

