// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-293: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 293 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert (tsub((((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))), (2 * (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))))) == (((I
// Lean step: cases k with
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 211 verified, 1 error, 6 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L293(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
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
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  ensures   false /*VC_GAP*/
{
          // cases k (zero / succ) — branches with their Lean states
          if k_0_0 == 0 {
            if ((f((2 * 0)) == ((Int.pow(4, (2 * 0)) + Int.pow(6, (2 * 0))) + Int.pow(9, (2 * 0))))) && ((f(0) == ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)))) && ((Int.pow(4, (2 * 0)) == (Int.pow(4, 0) * Int.pow(4, 0)))) && ((Int.pow(6, (2 * 0)) == (Int.pow(6, 0) * Int.pow(6, 0)))) && ((Int.pow(9, (2 * 0)) == (Int.pow(9, 0) * Int.pow(9, 0)))) && (((((Int.pow(4, 0) * Int.pow(4, 0)) + (Int.pow(6, 0) * Int.pow(6, 0))) + (Int.pow(9, 0) * Int.pow(9, 0))) == tsub((((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))), (2 * (((Int.pow(4, 0) * Int.pow(6, 0)) + (Int.pow(4, 0) * Int.pow(9, 0))) + (Int.pow(6, 0) * Int.pow(9, 0))))))) && (((((Int.pow(4, 0) * Int.pow(6, 0)) + (Int.pow(4, 0) * Int.pow(9, 0))) + (Int.pow(6, 0) * Int.pow(9, 0))) == (Int.pow(6, 0) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))))) {  // sub-goal of `cases` (Lean state)
              // [TACTIC: «Norm_num[_]At___» [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ]]
              // UNCITED pow_zero: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
              // UNCITED Nat.mul_sub_left_distrib: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
              // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
              assert (tsub((((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))), (2 * (Int.pow(6, 0) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))))) == (((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * tsub(((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)), (2 * Int.pow(6, 0)))));  // sub-goal of `cases` (Lean state) // @tac 4176-4254
              // UNCITED-APPLIED internal ×23 [exec 1225 4176-4254]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_mul ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_pow ×3, Mathlib.Meta.NormNum.natPow_zero ×3 (+5 more heads, ×7)
            }
          } else {
            var k_0_0: nat := k_0_0 - 1;
            if ((f((2 * (k_0_0 + 1))) == ((Int.pow(4, (2 * (k_0_0 + 1))) + Int.pow(6, (2 * (k_0_0 + 1)))) + Int.pow(9, (2 * (k_0_0 + 1)))))) && ((f((k_0_0 + 1)) == ((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1))))) && ((Int.pow(4, (2 * (k_0_0 + 1))) == (Int.pow(4, (k_0_0 + 1)) * Int.pow(4, (k_0_0 + 1))))) && ((Int.pow(6, (2 * (k_0_0 + 1))) == (Int.pow(6, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1))))) && ((Int.pow(9, (2 * (k_0_0 + 1))) == (Int.pow(9, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1))))) && (((((Int.pow(4, (k_0_0 + 1)) * Int.pow(4, (k_0_0 + 1))) + (Int.pow(6, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1)))) + (Int.pow(9, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1)))) == tsub((((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1))) * ((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1)))), (2 * (((Int.pow(4, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1))) + (Int.pow(4, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1)))) + (Int.pow(6, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1)))))))) && (((((Int.pow(4, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1))) + (Int.pow(4, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1)))) + (Int.pow(6, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1)))) == (Int.pow(6, (k_0_0 + 1)) * ((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1)))))) {  // sub-goal of `cases` (Lean state)
              // [TACTIC: «_<;>_» [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega]
              // [TACTIC: choice [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ]]
              NatMulSubLeftDistrib((Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))), (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))), (2 * Int.pow(6, (k_0_0 + 1))));  // cite: Nat.mul_sub_left_distrib
              // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
              // UNCITED Nat.add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := (4 : ℕ) ^ (k + (1 : ℕ)), m := (6 : ℕ) ^ (k + (1 : ℕ)), k := (9 : ℕ) ^ (k + (1 : ℕ)))
              // GAP: Nat.mul_sub_left_distrib: this execution also rewrote the hypotheses h₁, h₂, h₇; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // UNCITED-APPLIED internal ×8 [exec 1244 4277-4354]: applications made inside the tactic's own automation, not stated — Nat.add_assoc ×1; machinery/glue: congrArg ×4, congr ×3 (cited in this block, not counted here: Nat.mul_sub_left_distrib [Lean recorded ×1])
              assert (forall x: nat :: (f(x) == (Int.pow(4, x) + (Int.pow(6, x) + Int.pow(9, x)))));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert ((0 < m) && (0 < n));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (m <= n);  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (((Int.pow(4, (k_0_0 + 1)) * Int.pow(4, (k_0_0 + 1))) + ((Int.pow(6, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1))) + (Int.pow(9, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1))))) == tsub(((Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))), (2 * (Int.pow(6, (k_0_0 + 1)) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (((Int.pow(4, (k_0_0 + 1)) * Int.pow(6, (k_0_0 + 1))) + ((Int.pow(4, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1))) + (Int.pow(6, (k_0_0 + 1)) * Int.pow(9, (k_0_0 + 1))))) == (Int.pow(6, (k_0_0 + 1)) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))));  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (tsub(((Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))), (2 * (Int.pow(6, (k_0_0 + 1)) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))))) == tsub(((Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))) * (Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1))))), ((Int.pow(4, (k_0_0 + 1)) + (Int.pow(6, (k_0_0 + 1)) + Int.pow(9, (k_0_0 + 1)))) * (2 * Int.pow(6, (k_0_0 + 1)))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4365-4377
                NatPowOne(k_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := k)
                // UNCITED-APPLIED internal ×187 [exec 1253 4365-4377]: applications made inside the tactic's own automation, not stated — add_zero ×5, mul_one ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+33 more heads, ×149) (cited in this block, not counted here: pow_one [Lean recorded ×1])
              }
              assert (tsub((((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1))) * ((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1)))), (2 * (Int.pow(6, (k_0_0 + 1)) * ((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1)))))) == (((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1))) * tsub(((Int.pow(4, (k_0_0 + 1)) + Int.pow(6, (k_0_0 + 1))) + Int.pow(9, (k_0_0 + 1))), (2 * Int.pow(6, (k_0_0 + 1))))));  // sub-goal of `cases` (Lean state) // @tac 4277-4417 // @tac 4277-4401 // @tac 4277-4377 // @tac 4277-4354
            }
          }
          // UNCITED-APPLIED Eq.symm(k, (0 : ℕ)): library counterpart exists, but the translation of this tactic states no such instance [exec 1220 4143-4417]
          // UNCITED-APPLIED Eq.symm(k✝, k + (1 : ℕ)): library counterpart exists, but the translation of this tactic states no such instance [exec 1220 4143-4417]
}

