// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-150: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 150 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert ((((Int.pow(4, k) * Int.pow(4, k)) + (Int.pow(6, k) * Int.pow(6, k))) + (Int.pow(9, k) * Int.pow(9, k))) == tsub((((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * ((Int.pow(4, k) + Int.pow(6
// Lean step: have h₇ : ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) * ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) = (4 : ℕ) ^ k * (4 : ℕ) ^ k + (6 : ℕ) ^ k * (6 : ℕ) ^ k + (9 : ℕ) ^ k * (9 : ℕ) ^ k + 2 * ((4 : ℕ) ^ k *
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — library Int.pow without the recursive ensures `if k == 0 then p == 1 else p == b * pow(b, k - 1)` (work/shard_051/_k2pow; body and sign ensures unchanged)
// Dafny: finished with 22 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-150/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-150/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L150(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
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
  requires (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) == Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) + 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0))
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0)
  ensures  (0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))) && ((0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))) ==> (0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))) && (((0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))) && (0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))) ==> (Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) == tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))))
{

          // have h₇ : ( 4 ^ k + 6 ^ k + 9 ^ k ) * ( 4 ^ k + 6 ^ k + 9 ^ k ) == 4 ^ k * 4 ^ k  [type from Lean state]
          assert ((((Int.pow(4, k_0_0) + Int.pow(6, k_0_0)) + Int.pow(9, k_0_0)) * ((Int.pow(4, k_0_0) + Int.pow(6, k_0_0)) + Int.pow(9, k_0_0))) == ((((Int.pow(4, k_0_0) * Int.pow(4, k_0_0)) + (Int.pow(6, k_0_0) * Int.pow(6, k_0_0))) + (Int.pow(9, k_0_0) * Int.pow(9, k_0_0))) + (2 * (((Int.pow(4, k_0_0) * Int.pow(6, k_0_0)) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0))) + (Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))))); // @tac 1838-1842
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×112 [exec 480 1838-1842]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7 (+24 more heads, ×81)
          // have h₈ : 4 ^ k * 6 ^ k + 4 ^ k * 9 ^ k + 6 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 9 ^  [type from Lean state]
          assert ((((Int.pow(4, k_0_0) * Int.pow(6, k_0_0)) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0))) + (Int.pow(6, k_0_0) * Int.pow(9, k_0_0))) == ((Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0))) + (Int.pow(4, k_0_0) * Int.pow(9, k_0_0)))); // @tac 2051-2055
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×76 [exec 501 2051-2055]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+17 more heads, ×49)
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×66 [exec 502 2062-2067]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×8, Int.ofNat_mul ×8, Int.sub_eq_zero_of_eq ×7, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×1, Int.ofNat_nonneg ×1; machinery/glue: Eq.symm ×20, Lean.Omega.Int.ofNat_congr ×6, Lean.Omega.Int.ofNat_lt_of_lt ×3, Lean.Omega.Int.ofNat_pow ×3 (+3 more heads, ×3)
}

