// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 129 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert (Int.pow(9, (2 * k)) == (Int.pow(9, k) * Int.pow(9, k))) by {
// Lean step: rw [show (2 * k : ℕ) = k + k by ring]
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — library Int.pow without the recursive ensures `if k == 0 then p == 1 else p == b * pow(b, k - 1)` (work/shard_051/_k2pow; body and sign ensures unchanged)
// Dafny: finished with 21 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L129(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires 2 * k_0_0 == k_0_0 + k_0_0
  requires 0 <= k_0_0 + k_0_0
  requires Int.pow(9, k_0_0 + k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  ensures   Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
{

        assert ((2 * k_0_0) == (k_0_0 + k_0_0)) by {  // sub-goal of `by` (Lean state) // @tac 1126-1130
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×19 [exec 350 1126-1130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
        }
        // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (9 : ℕ) ^ _a = (9 : ℕ) ^ k * (9 : ℕ) ^ k): no library counterpart (not stated) [exec 339 1092-1131]
        assert (Int.pow(9, (k_0_0 + k_0_0)) == (Int.pow(9, k_0_0) * Int.pow(9, k_0_0))) by {  // sub-goal before `rw` (Lean state) // @tac 1138-1165 // @tac 1138-1150
          // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
          // [TACTIC: rwSeq [ pow_add ]]
          NatPowAdd(9, k_0_0, k_0_0);  // cite: pow_add
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((9 : ℕ) ^ (k + k), (9 : ℕ) ^ k * (9 : ℕ) ^ k, fun (_a : ℕ) => _a = (9 : ℕ) ^ k * (9 : ℕ) ^ k): no library counterpart (not stated) [exec 384 1138-1150]
        }
}

