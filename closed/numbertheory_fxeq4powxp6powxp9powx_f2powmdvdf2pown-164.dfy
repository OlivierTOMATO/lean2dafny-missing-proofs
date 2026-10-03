// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-164: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 164 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert ((((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k))) == (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)))) by {
// Lean step: have h₈ : (4 : ℕ) ^ k * (6 : ℕ) ^ k + (4 : ℕ) ^ k * (9 : ℕ) ^ k + (6 : ℕ) ^ k * (9 : ℕ) ^ k = (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 : ℕ) ^ k := by
// hypotheses: 23 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 59 verified, 0 errors, 6 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L164(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
  requires forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 <= m0 && 0 <= n0 && (forall x_2: nat :: f(x_2) == Int.pow(4, x_2) + Int.pow(6, x_2) + Int.pow(9, x_2)) && 0 < m0 && 0 < n0 && m0 <= n0 && ((0 <= m0 && m0 < m) || (m0 == m && 0 <= n0 && n0 < n)) ==> f.requires(Int.pow(2, m0)) && f.requires(Int.pow(2, n0)) && NatDvd(f(Int.pow(2, m0)), f(Int.pow(2, n0))))
  requires 0 <= k_0_0
  requires 0 <= 2 * k_0_0
  requires f(2 * k_0_0) == Int.pow(4, 2 * k_0_0) + Int.pow(6, 2 * k_0_0) + Int.pow(9, 2 * k_0_0)
  requires f(k_0_0) == Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)
  requires Int.pow(4, 2 * k_0_0) == Int.pow(4, k_0_0) * Int.pow(4, k_0_0)
  requires Int.pow(6, 2 * k_0_0) == Int.pow(6, k_0_0) * Int.pow(6, k_0_0)
  requires Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  requires 0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  requires 0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0))
  requires Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) == tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0)
  requires Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  ensures   Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
{
          // have h₈ : 4 ^ k * 6 ^ k + 4 ^ k * 9 ^ k + 6 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 9 ^  [type from Lean state]
          assert ((((Int.pow(4, k_0_0) * Int.pow(6, k_0_0)) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0))) + (Int.pow(6, k_0_0) * Int.pow(9, k_0_0))) == ((Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0))) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0)))); // @tac 2458-2462
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×76 [exec 539 2458-2462]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+17 more heads, ×49)
          // have h₉ : 6 ^ k * ( 4 ^ k + 9 ^ k ) + 4 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 6 ^ k +  [type from Lean state]
          assert (((Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0))) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0))) == (Int.pow(6, k_0_0) * ((Int.pow(4, k_0_0) + Int.pow(6, k_0_0)) + Int.pow(9, k_0_0)))) by { // @tac 2641-2799 // @tac 2808-2820
            // have h₁₀ : 6 ^ k == 2 ^ k * 3 ^ k  [type from Lean state]
            assert (Int.pow(6, k_0_0) == (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) by { // @tac 2718-2757
              assert (6 == (2 * 3)) by {  // sub-goal of `by` (Lean state) // @tac 2748-2756
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED internal ×7 [exec 583 2748-2756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
              }
              // [TACTIC: rwSeq [ show ( 6 : ℕ ) = 2 * 3 by norm_num norm_num ]]
              // UNCITED-APPLIED congrArg((6 : ℕ), (2 : ℕ) * (3 : ℕ), fun (_a : ℕ) => _a ^ k = (2 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 576 2718-2757]
              assert (Int.pow((2 * 3), k_0_0) == (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 2768-2799 // @tac 2768-2780
                // [TACTIC: «_<;>_» [ mul_pow ] rw [ mul_pow ] <;> ring]
                // [TACTIC: rwSeq [ mul_pow ]]
                MulPowInt(2, 3, k_0_0);  // cite: mul_pow
                // `rw` closed the goal; the rest of the chain did not run
                // UNCITED-APPLIED congrArg(((2 : ℕ) * (3 : ℕ)) ^ k, (2 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 617 2768-2780]
              }
            }
            // [TACTIC: rwSeq [ h₁₀ ]]
            // UNCITED-APPLIED congrArg((6 : ℕ) ^ k, (2 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 :…): no library counterpart (not stated) [exec 648 2808-2820]
            assert ((((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0))) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0))) == ((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * ((Int.pow(4, k_0_0) + (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) + Int.pow(9, k_0_0)))) by {  // sub-goal before `have` (Lean state) // @tac 2829-2984 // @tac 2993-3148 // @tac 3157-3178
              // have h₁₁ : 4 ^ k == 2 ^ ( 2 * k )  [type from Lean state]
              assert (Int.pow(4, k_0_0) == Int.pow(2, (2 * k_0_0))) by { // @tac 2896-2935
                assert (4 == (2 * 2)) by {  // sub-goal of `by` (Lean state) // @tac 2926-2934
                  // [TACTIC: «Norm_num[_]At___»]
                  // UNCITED-APPLIED internal ×8 [exec 702 2926-2934]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
                }
                // [TACTIC: rwSeq [ show ( 4 : ℕ ) = 2 ^ 2 by norm_num norm_num ]]
                // UNCITED-APPLIED congrArg((4 : ℕ), (2 : ℕ) ^ (2 : ℕ), fun (_a : ℕ) => _a ^ k = (2 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 695 2896-2935]
                assert (Int.pow((2 * 2), k_0_0) == Int.pow(2, (2 * k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 2946-2984 // @tac 2946-2962
                  // [TACTIC: «_<;>_» [ ← pow_mul ] rw [ ← pow_mul ] <;> ring_nf ring_nf]
                  // [TACTIC: rwSeq [ ← pow_mul ]]
                  NatPowMul(2, 2, k_0_0);  // cite: pow_mul
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // `rw` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (2 : ℕ)) ^ k, (2 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => _a = (2 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 736 2946-2962]
                }
              }
              // have h₁₂ : 9 ^ k == 3 ^ ( 2 * k )  [type from Lean state]
              assert (Int.pow(9, k_0_0) == Int.pow(3, (2 * k_0_0))) by { // @tac 3060-3099
                assert (9 == (3 * 3)) by {  // sub-goal of `by` (Lean state) // @tac 3090-3098
                  // [TACTIC: «Norm_num[_]At___»]
                  // UNCITED-APPLIED internal ×9 [exec 790 3090-3098]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
                }
                // [TACTIC: rwSeq [ show ( 9 : ℕ ) = 3 ^ 2 by norm_num norm_num ]]
                // UNCITED-APPLIED congrArg((9 : ℕ), (3 : ℕ) ^ (2 : ℕ), fun (_a : ℕ) => _a ^ k = (3 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 783 3060-3099]
                assert (Int.pow((3 * 3), k_0_0) == Int.pow(3, (2 * k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 3110-3148 // @tac 3110-3126
                  // [TACTIC: «_<;>_» [ ← pow_mul ] rw [ ← pow_mul ] <;> ring_nf ring_nf]
                  // [TACTIC: rwSeq [ ← pow_mul ]]
                  NatPowMul(3, 2, k_0_0);  // cite: pow_mul
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // `rw` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED congrArg(((3 : ℕ) ^ (2 : ℕ)) ^ k, (3 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => _a = (3 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 824 3110-3126]
                }
              }
              // [TACTIC: rwSeq [ h₁₁ , h₁₂ ]]
              // UNCITED-APPLIED congrArg((4 : ℕ) ^ k, (2 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * (_a + (9 : ℕ) ^ k) + _a *…): no library counterpart (not stated) [exec 855 3157-3178]
              // UNCITED-APPLIED congrArg((9 : ℕ) ^ k, (3 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) …): no library counterpart (not stated) [exec 855 3157-3178]
              assert ((((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * (Int.pow(2, (2 * k_0_0)) + Int.pow(3, (2 * k_0_0)))) + (Int.pow(2, (2 * k_0_0)) * Int.pow(3, (2 * k_0_0)))) == ((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * ((Int.pow(2, (2 * k_0_0)) + (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) + Int.pow(3, (2 * k_0_0))))) by {  // sub-goal before `have` (Lean state) // @tac 3187-3956 // @tac 3965-4102 // @tac 3965-3997 // @tac 3965-3977
                // have h₁₃ : 2 ^ k * 3 ^ k * ( 2 ^ ( 2 * k ) + 3 ^ ( 2 * k ) ) + 2 ^ ( 2 * k ) * 3   [type from Lean state]
                assert ((((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * (Int.pow(2, (2 * k_0_0)) + Int.pow(3, (2 * k_0_0)))) + (Int.pow(2, (2 * k_0_0)) * Int.pow(3, (2 * k_0_0)))) == ((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * ((Int.pow(2, (2 * k_0_0)) + (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) + Int.pow(3, (2 * k_0_0))))) by { // @tac 3448-3618 // @tac 3629-3799 // @tac 3810-3831
                  // have h₁₄ : 2 ^ ( 2 * k ) == 2 ^ k * 2 ^ k  [type from Lean state]
                  assert (Int.pow(2, (2 * k_0_0)) == (Int.pow(2, k_0_0) * Int.pow(2, k_0_0))) by { // @tac 3533-3572
                    assert ((2 * k_0_0) == (k_0_0 + k_0_0)) by {  // sub-goal of `by` (Lean state) // @tac 3567-3571
                      // [TACTIC: Ring]
                      // UNCITED-APPLIED internal ×19 [exec 930 3567-3571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
                    }
                    // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
                    // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (2 : ℕ) ^ _a = (2 : ℕ) ^ k * (2 : ℕ) ^ k): no library counterpart (not stated) [exec 919 3533-3572]
                    assert (Int.pow(2, (k_0_0 + k_0_0)) == (Int.pow(2, k_0_0) * Int.pow(2, k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 3585-3618 // @tac 3585-3597
                      // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
                      // [TACTIC: rwSeq [ pow_add ]]
                      NatPowAdd(2, k_0_0, k_0_0);  // cite: pow_add
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg((2 : ℕ) ^ (k + k), (2 : ℕ) ^ k * (2 : ℕ) ^ k, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (2 : ℕ) ^ k): no library counterpart (not stated) [exec 964 3585-3597]
                    }
                  }
                  // have h₁₅ : 3 ^ ( 2 * k ) == 3 ^ k * 3 ^ k  [type from Lean state]
                  assert (Int.pow(3, (2 * k_0_0)) == (Int.pow(3, k_0_0) * Int.pow(3, k_0_0))) by { // @tac 3714-3753
                    assert ((2 * k_0_0) == (k_0_0 + k_0_0)) by {  // sub-goal of `by` (Lean state) // @tac 3748-3752
                      // [TACTIC: Ring]
                      // UNCITED-APPLIED internal ×19 [exec 1022 3748-3752]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
                    }
                    // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
                    // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (3 : ℕ) ^ _a = (3 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 1011 3714-3753]
                    assert (Int.pow(3, (k_0_0 + k_0_0)) == (Int.pow(3, k_0_0) * Int.pow(3, k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 3766-3799 // @tac 3766-3778
                      // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
                      // [TACTIC: rwSeq [ pow_add ]]
                      NatPowAdd(3, k_0_0, k_0_0);  // cite: pow_add
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg((3 : ℕ) ^ (k + k), (3 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a = (3 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 1056 3766-3778]
                    }
                  }
                  // [TACTIC: rwSeq [ h₁₄ , h₁₅ ]]
                  // UNCITED-APPLIED congrArg((2 : ℕ) ^ ((2 : ℕ) * k), (2 : ℕ) ^ k * (2 : ℕ) ^ k, fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * (_a + (3 : ℕ) ^ ((2 : ℕ) …): no library counterpart (not stated) [exec 1087 3810-3831]
                  // UNCITED-APPLIED congrArg((3 : ℕ) ^ ((2 : ℕ) * k), (3 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ k * (2 : ℕ) ^ …): no library counterpart (not stated) [exec 1087 3810-3831]
                  assert ((((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * ((Int.pow(2, k_0_0) * Int.pow(2, k_0_0)) + (Int.pow(3, k_0_0) * Int.pow(3, k_0_0)))) + ((Int.pow(2, k_0_0) * Int.pow(2, k_0_0)) * (Int.pow(3, k_0_0) * Int.pow(3, k_0_0)))) == ((Int.pow(2, k_0_0) * Int.pow(3, k_0_0)) * (((Int.pow(2, k_0_0) * Int.pow(2, k_0_0)) + (Int.pow(2, k_0_0) * Int.pow(3, k_0_0))) + (Int.pow(3, k_0_0) * Int.pow(3, k_0_0))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 3842-3956 // @tac 3842-3849
                    // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ] nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ]]
                    // [TACTIC: Ring_nfAt]
                    NatPowOne(k_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                    // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := k); (a := (3 : ℕ) ^ (k * (3 : ℕ))); (a := (3 : ℕ) ^ (k * (2 : ℕ))); (a := (3 : ℕ) ^ k)
                    // `ring_nf` closed the goal; the rest of the chain did not run
                    // [TACTIC: «Norm_num[_]At___»]
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED internal ×120 [exec 1120 3842-3849]: applications made inside the tactic's own automation, not stated — mul_one ×4, add_zero ×3; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+29 more heads, ×81) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                  }
                }
                // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> ring_nf ring_nf <;> nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ] nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ]]
                // [TACTIC: rwSeq [ h₁₃ ]]
                // `rw` closed the goal; the rest of the chain did not run
                // [TACTIC: «Norm_num[_]At___»]
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED congrArg((2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) + (3 : ℕ) ^ ((2 …, (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) + (2 : ℕ) ^ k * …, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) …): no library counterpart (not stated) [exec 1141 3965-3977]
              }
            }
          }
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×28 [exec 1174 4109-4114]: applications made inside the tactic's own automation, not stated — Int.ofNat_mul ×5, Int.ofNat_add ×3, Int.sub_eq_zero_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×7, Lean.Omega.Int.ofNat_congr ×2, Lean.Omega.Int.ofNat_lt_of_lt ×2, Decidable.byContradiction ×1 (+1 more heads, ×1)
}

