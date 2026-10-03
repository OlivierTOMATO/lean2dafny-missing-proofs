// NOT CLOSED — failing line amc12a_2021_p14-219: theorem amc12a_2021_p14, Dafny line 219 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(IccN(1, 20), ((k: nat) => (k as real))) == 210.0) by {
// Lean step: norm_num [Finset.sum_Icc_succ_top]
// hypotheses: 6 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=error, K2pow=error, K5=error, K3=error, S_cite=error; this file is the honest base attempt
// Dafny: 1 parse errors detected in H_amc12a_2021_p14-219_H0.dfy  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L219()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)))
  requires Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0))) == Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real))) * Real.logb(5.0, 3.0)
  requires IccN(1, 1) == 
{
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

