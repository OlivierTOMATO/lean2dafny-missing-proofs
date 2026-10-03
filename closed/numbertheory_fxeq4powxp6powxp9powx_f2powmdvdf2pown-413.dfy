// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-413: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 413 (ERR: assertion might not hold)
// failing Dafny line: assert (exists t: nat :: (n == (m + t))) by {
// Lean step: use n - m
// hypotheses: 18 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K4=failed, K3=failed; this file is the honest base attempt
// Dafny: finished with 27 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L413(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: nat, n: nat, t_3_0: int, t_3_5: int)
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
  requires forall k_0_1: nat :: true ==> f.requires(2 * k_0_1) && f.requires(k_0_1) && f.requires(k_0_1)
  requires forall k_0_1: nat :: true ==> f(2 * k_0_1) == f(k_0_1) * tsub(f(k_0_1), 2 * Int.pow(6, k_0_1))
  requires forall k_1_1: nat :: true ==> f.requires(k_1_1) && f.requires(2 * k_1_1)
  requires forall k_1_1: nat :: true ==> NatDvd(f(k_1_1), f(2 * k_1_1))
  requires forall t_2_3: nat :: true ==> f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_3))
  requires forall t_2_3: nat :: true ==> NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_3)))
  requires (0 <= t_3_0) || (t_3_0 < 0)
  ensures   exists t_3_1: nat :: n == m + t_3_1
{
      // [TACTIC: Use n - m]
      assert (n == (m + tsub(n, m))) by {  // sub-goal of `use` (Lean state) // @tac 5778-5805 // @tac 5812-5954 // @tac 5961-5966
        // have h₄ : m <= n  [type from Lean state]
        assert (m <= n) by {
          // [TACTIC: exact h₂]
          assert (m <= n);
        }
        // have h₅ : n - m + m == n  [type from Lean state]
        assert ((tsub(n, m) + m) == n) by { // @tac 5852-5879 // @tac 5888-5935 // @tac 5944-5954
          // have h₆ : m <= n  [type from Lean state]
          assert (m <= n) by {
            // [TACTIC: exact h₂]
            assert (m <= n);
          }
          // have h₇ : n - m + m == n  [type from Lean state]
          assert ((tsub(n, m) + m) == n); // @tac 5930-5935
            // [TACTIC: omega]
            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
            // UNCITED-APPLIED internal ×73 [exec 1679 5930-5935]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_add ×1; machinery/glue: Eq.symm ×12, Eq.trans ×8, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+15 more heads, ×29)
          // [TACTIC: exact h₇]
          assert ((tsub(n, m) + m) == n);
        }
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×58 [exec 1681 5961-5966]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×11, Eq.trans ×8, Lean.Omega.Int.add_congr ×4, Lean.Omega.LinearCombo.add_eval ×4 (+14 more heads, ×21)
      }
}

