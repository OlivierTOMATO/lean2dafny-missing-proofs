// CLOSED — failing line amc12a_2021_p19-1352: theorem amc12a_2021_p19, Dafny line 1352 (ERR: assertion might not hold)
// failing Dafny line: assert (x == (Real.pi() / 2.0)) by {
// Lean step: apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
// hypotheses: 19 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: K1 — RealInjOnCos(x, Real.pi() / 2.0)  [Lean's Set.InjOn.eq_iff (injOn_cos) at its recorded arguments]
// Dafny: finished with 30 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1352(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  requires 1.0 - Real.cos(x_0_0_0_0) == Real.sin(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) == 1.0 - Real.cos(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) * Real.sin(x_0_0_0_0) + Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) >= 0.0
  requires (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) == 1.0 - Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)
  requires Real.cos(x_0_0_0_0) == 0.0
  requires Real.cos(x_0_0_0_0) == 0.0 || Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) == 1.0
  requires Real.cos(x_0_0_0_0) == Real.cos(Real.pi() / 2.0)
  requires Real.sin(x_0_0_0_0) == Real.sin(Real.pi() / 2.0)
  ensures   x_0_0_0_0 == Real.pi() / 2.0
{
  RealInjOnCos(x_0_0_0_0, Real.pi() / 2.0);  // [ADDED]
                                    assert (0.0 <= x_0_0_0_0) by {  // sub-goal of `by` (Lean state) // @tac 7490-7524
                                      // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7490-7524 exec 1568)
                                      cert_identity_50(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×26 [exec 1568 7490-7524]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+18 more heads, ×18) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert (x_0_0_0_0 <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 7529-7563
                                      // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7529-7563 exec 1581)
                                      cert_identity_51(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×40 [exec 1581 7529-7563]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+22 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert (0.0 <= (Real.pi() / 2.0)) by {  // sub-goal of `by` (Lean state) // @tac 7573-7595
                                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7573-7595 exec 1594)
                                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() / 2.0) < 0.0); (2.0 > 0.0)
                                      // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                      cert_identity_52(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×51 [exec 1594 7573-7595]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, CancelDenoms.div_subst ×1, lt_zero_of_zero_gt ×1; machinery/glue: congrArg ×2, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+31 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×14 [exec 1595 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×6 [exec 1596 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×5 [exec 1597 7573-7595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    assert ((Real.pi() / 2.0) <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 7600-7622
                                      // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7600-7622 exec 1610)
                                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (π - π / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - (Real.pi() / 2.0)) < 0.0); (2.0 > 0.0)
                                      // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                      cert_identity_53(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                      // UNCITED-APPLIED internal ×70 [exec 1610 7600-7622]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, congrArg ×2, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+35 more heads, ×53) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×14 [exec 1611 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×6 [exec 1612 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                                      // UNCITED-APPLIED internal ×5 [exec 1613 7600-7622]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                      // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                                    }
                                    // [TACTIC: «_<;>_» ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 <;> simp_all [ h₅₁₆₆ , h₅₁₆₇ ] simp_all [ h₅₁₆₆ , h₅₁₆₇ ] simp_all [ h₅₁₆₆ , h₅₁₆₇ ] <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
                                    // [TACTIC: choice ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1]
                                    // UNCITED injOn_cos.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
                                    // NOT APPLIED Real.pi_pos: named here, but no record of Lean's proof at this tactic applies it
                                    // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Icc (0 : ℝ) π, cos, x, π / (2 : ℝ)): library counterpart RealInjOnCosEqIff (Mathlib `injOn_cos.eq_iff`) exists, but the translation of this tactic states no such instance [exec 1563 7460-7628]
                                    assert (Real.cos(x_0_0_0_0) == Real.cos((Real.pi() / 2.0)));  // sub-goal of `simp_all` (Lean state) // @tac 7659-7698
                                    // UNCITED-APPLIED internal ×6 [exec 1630 7659-7698]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
}

