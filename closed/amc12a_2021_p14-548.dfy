// NOT CLOSED — failing line amc12a_2021_p14-548: theorem amc12a_2021_p14, Dafny line 548 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (((210.0 * Real.logb(5.0, 3.0)) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) by {
// Lean step: rw [show (∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 100 * Real.logb 3 5 by
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2pow=oor, K3=failed; this file is the honest base attempt
// Dafny: finished with 25 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L548()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
  ensures   210.0 * Real.logb(5.0, 3.0) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 21000.0
{
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

