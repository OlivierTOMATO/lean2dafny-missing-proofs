// CLOSED — failing line amc12a_2021_p14-121: theorem amc12a_2021_p14, Dafny line 121 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((((k as real) * (k as real)) * Real.log(3.0)), ((k as real) * Real.log(5.0))) == ((k as real) * Real.div(Real.log(3.0), Real.log(5.0)))) by {
// Lean step: have h₅₅₁ : (k : ℝ) ≠ 0 := by
// hypotheses: 16 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S_split2 — 
// Dafny: finished with 22 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma s018_Step121(k: nat)  // [ADDED DECLARATION]
  requires (k as real) != 0.0
  requires (k as real) * (k as real) * Real.log(3.0) * Real.log(5.0) == (k as real) * Real.log(3.0) * ((k as real) * Real.log(5.0))
  ensures Real.div((k as real) * (k as real) * Real.log(3.0), (k as real) * Real.log(5.0)) == (k as real) * Real.div(Real.log(3.0), Real.log(5.0))
{ }

lemma {:induction false} vc_amc12a_2021_p14_L121(k_0_0: nat)
  requires 0 <= k_0_0
  requires 0 <= 1
  requires 0 <= 20
  requires k_0_0 in IccN(1, 20)
  requires 1 <= k_0_0
  requires k_0_0 <= 20
  requires k_0_0 >= 1
  requires 0 <= 2
  requires 0 <= Int.pow(k_0_0, 2)
  requires Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
  requires Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
  requires Real.log(Real.pow(5.0, k_0_0)) == (k_0_0 as real) * Real.log(5.0)
  requires Real.logb(5.0, 3.0) == Real.div(Real.log(3.0), Real.log(5.0))
  requires (k_0_0 as real) != 0.0
  requires (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0) * Real.log(5.0) == (k_0_0 as real) * Real.log(3.0) * ((k_0_0 as real) * Real.log(5.0))
  requires ((0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0))) || ((0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0)))) || ((0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0)) && ((k_0_0 as real) <= 0.0)) || ((0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0)) && ((k_0_0 as real) <= 0.0) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0)))) || ((0.0 < (k_0_0 as real)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0))) || ((0.0 < (k_0_0 as real)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0)))) || ((0.0 < (k_0_0 as real)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))) && ((k_0_0 as real) <= 0.0) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0))) || ((0.0 < (k_0_0 as real)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))) && ((k_0_0 as real) <= 0.0)) || (((k_0_0 as real) <= 0.0) && (0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0))) || (((k_0_0 as real) <= 0.0) && (0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0)) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0)))) || (((k_0_0 as real) <= 0.0) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))) && (0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) && (0.0 < (k_0_0 as real) * Real.log(5.0))) || (((k_0_0 as real) <= 0.0) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))) && (0.0 < (k_0_0 as real))) || (((k_0_0 as real) <= 0.0) && (!(0.0 < (k_0_0 as real) && 0.0 < Real.log(5.0))))
  ensures   Real.div((k_0_0 as real) * (k_0_0 as real) * Real.log(3.0), (k_0_0 as real) * Real.log(5.0)) == (k_0_0 as real) * Real.div(Real.log(3.0), Real.log(5.0))
{
  s018_Step121(k_0_0);  // [ADDED]
            // have h₅₅₁ :  != 0  [type from Lean state]
            assert ((k_0_0 as real) != 0.0) by { // @tac 2056-2094 // @tac 2056-2074
              // [TACTIC: «_<;>_» at hk ⊢ <;> omega omega]
              // [TACTIC: «Norm_num[_]At___» at hk ⊢]
              // UNCITED-APPLIED internal ×1 [exec 539 2056-2074]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
              assert ((1 <= k_0_0) && (k_0_0 <= 20));  // hypothesis hk after `norm_num` (Lean state) // @tac-hyp 2056-2074
              assert !(k_0_0 == 0) by {  // sub-goal of `omega` (Lean state) // @tac 2089-2094
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×32 [exec 548 2089-2094]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Eq.trans ×4, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+9 more heads, ×12)
              }
            }
            // [TACTIC: «_<;>_» [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring <;> field_simp [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring <;> norm_cast norm_cast norm_cast <;> simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] simp_all [ Nat.cast_pow , Nat.cast_mul , Nat.cast_add , Nat.cast_one ] <;> field_simp [ h₅₅₁ ] field_simp [ h₅₅₁ ] <;> ring]
            // [TACTIC: choice [ h₅₅₁ ] field_simp [ h₅₅₁ ]]
            if (0.0 < ((k_0_0 as real))) && (0.0 < (Real.log(5.0))) { MulPos((k_0_0 as real), Real.log(5.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
            // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2103-2126 exec 584)
            if (0.0 < (k_0_0 as real)) && (0.0 < Real.log(5.0)) { cert_piece_1(k_0_0); }  // cert: mul_pos
            // UNCITED-APPLIED internal ×13 [exec 584 2103-2126]: applications made inside the tactic's own automation, not stated — ne_of_gt ×2, mul_div_assoc' ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, div_mul_eq_mul_div ×1, Nat.cast_pos ×1, lt_of_lt_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
            assert (((((k_0_0 as real) * (k_0_0 as real)) * Real.log(3.0)) * Real.log(5.0)) == (((k_0_0 as real) * Real.log(3.0)) * ((k_0_0 as real) * Real.log(5.0))));  // sub-goal of `ring` (Lean state) // @tac 2139-2143
            // UNCITED-APPLIED internal ×56 [exec 597 2139-2143]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.mul_pf_left ×6, Mathlib.Tactic.Ring.mul_congr ×5 (+19 more heads, ×33)
}

