// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-227: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 227 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert ((((Int.pow(2, k) * Int.pow(3, k)) * (Int.pow(2, (2 * k)) + Int.pow(3, (2 * k)))) + (Int.pow(2, (2 * k)) * Int.pow(3, (2 * k)))) == ((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(2, (2 * k)) + (I
// Lean step: have h₁₃ : (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ (2 * k) + (3 : ℕ) ^ (2 * k)) + (2 : ℕ) ^ (2 * k) * (3 : ℕ) ^ (2 * k) = (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ (2 * k) + (2 : ℕ) ^ k * (3 : ℕ) ^ k + (3
// hypotheses: 25 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 41 verified, 0 errors, 5 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L227(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires Int.pow(6, k_0_0) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0)
  requires Int.pow(4, k_0_0) == Int.pow(2, 2 * k_0_0)
  requires Int.pow(9, k_0_0) == Int.pow(3, 2 * k_0_0)
  ensures   Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(2, 2 * k_0_0) + Int.pow(3, 2 * k_0_0)) + Int.pow(2, 2 * k_0_0) * Int.pow(3, 2 * k_0_0) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(2, 2 * k_0_0) + Int.pow(2, k_0_0) * Int.pow(3, k_0_0) + Int.pow(3, 2 * k_0_0))
{
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

