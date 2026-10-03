// CLOSED — failing line amc12a_2021_p19-1564: theorem amc12a_2021_p19, Dafny line 1564 (ERR: assertion might not hold)
// failing Dafny line: assert (x == 0.0) by {
// Lean step: apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: K1 — RealInjOnCos(x_0_0_0_0, 0.0);  // Set.InjOn.eq_iff injOn_cos at (x,0), exec 1960 (named by Lean)
// Dafny: finished with 43 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p19.dfy"
lemma {:induction false} vc_amc12a_2021_p19_L1564(S: set<real>, x_0_0_0_0: real)
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
  requires Real.cos(x_0_0_0_0) == 0.0 || Real.cos(x_0_0_0_0) == 1.0
  requires Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) == 0.0
  requires Real.cos(x_0_0_0_0) == Real.cos(0.0)
  requires Real.sin(x_0_0_0_0) == Real.sin(0.0)
  requires (Real.cos(x_0_0_0_0) != 0.0) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0))
  ensures   x_0_0_0_0 == 0.0
{
  RealInjOnCos(x_0_0_0_0, 0.0);  // Lean: Set.InjOn.eq_iff injOn_cos at (x, 0), exec 1960
                              assert (0.0 <= x_0_0_0_0) by {  // sub-goal of `by` (Lean state) // @tac 9484-9518
                                // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9484-9518 exec 1965)
                                cert_identity_62(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×26 [exec 1965 9484-9518]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1 (+18 more heads, ×18) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              assert (x_0_0_0_0 <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 9523-9557
                                // [TACTIC: «Linarith[_]At___» [ h₂ , h₃ , Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9523-9557 exec 1978)
                                cert_identity_63(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×40 [exec 1978 9523-9557]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+22 more heads, ×28) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              assert (0.0 <= 0.0) by {  // sub-goal of `by` (Lean state) // @tac 9567-9589
                                // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                // UNCITED-APPLIED internal ×4 [exec 1991 9567-9589]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1999)]
                                // UNCITED-APPLIED internal ×5 [exec 1999 9567-9589]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.cast_zero ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                              }
                              assert (0.0 <= Real.pi()) by {  // sub-goal of `by` (Lean state) // @tac 9594-9616
                                // [TACTIC: «Linarith[_]At___» [ Real.pi_pos ]]
                                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 9594-9616 exec 2004)
                                // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - π) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                                cert_identity_64(S, x_0_0_0_0);  // cert: add_lt_of_le_of_neg
                                // UNCITED-APPLIED internal ×38 [exec 2004 9594-9616]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2, Mathlib.Tactic.Ring.neg_mul ×2 (+21 more heads, ×24) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                                // UNCITED Real.pi_pos: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
                                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                              }
                              // [TACTIC: «_<;>_» ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 <;> simp_all [ h₅₁₅₇ , h₅₁₅₈ ] simp_all [ h₅₁₅₇ , h₅₁₅₈ ] simp_all [ h₅₁₅₇ , h₅₁₅₈ ] <;> linarith [ Real.pi_gt_three ] linarith [ Real.pi_gt_three ]]
                              // [TACTIC: choice ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1 apply ( injOn_cos.eq_iff ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] , by linarith [ h₂ , h₃ , Real.pi_pos ] linarith [ h₂ , h₃ , Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ⟨ by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] , by linarith [ Real.pi_pos ] linarith [ Real.pi_pos ] ⟩ ) . 1]
                              // UNCITED injOn_cos.eq_iff: Lean records its application under the generic head Set.InjOn.eq_iff (marked UNCITED-APPLIED at its execution), not matched to this name here; not stated
                              // NOT APPLIED Real.pi_pos: named here, but no record of Lean's proof at this tactic applies it
                              // UNCITED-APPLIED Set.InjOn.eq_iff(Set.Icc (0 : ℝ) π, cos, x, (0 : ℝ)): library counterpart RealInjOnCosEqIff (Mathlib `injOn_cos.eq_iff`) exists, but the translation of this tactic states no such instance [exec 1960 9454-9622]
                              assert (Real.cos(x_0_0_0_0) == Real.cos(0.0));  // sub-goal of `simp_all` (Lean state) // @tac 9647-9686
                              // UNCITED-APPLIED internal ×6 [exec 2021 9647-9686]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, congr ×1 (+1 more heads, ×1)
}

