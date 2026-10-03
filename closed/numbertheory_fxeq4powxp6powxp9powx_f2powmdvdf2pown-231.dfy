// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-231: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 231 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert (Int.pow(2, (2 * k)) == (Int.pow(2, k) * Int.pow(2, k))) by {
// Lean step: rw [show (2 * k : ℕ) = k + k by ring]
// hypotheses: 28 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — library copy without Int.pow's recursive postcondition (kinds/work/shard_052/_k2pow)
// Dafny: finished with 26 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-231/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-231/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L231(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires 2 * k_0_0 == k_0_0 + k_0_0
  requires 0 <= k_0_0 + k_0_0
  requires Int.pow(2, k_0_0 + k_0_0) == Int.pow(2, k_0_0) * Int.pow(2, k_0_0)
  ensures   Int.pow(2, 2 * k_0_0) == Int.pow(2, k_0_0) * Int.pow(2, k_0_0)
{
 
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

