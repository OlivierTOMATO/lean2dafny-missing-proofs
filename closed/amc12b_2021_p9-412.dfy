// CLOSED — failing line amc12b_2021_p9-412: theorem amc12b_2021_p9, Dafny line 412 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.div(Real.log(80.0), Real.log(2.0)) * Real.div(Real.log(40.0), Real.log(2.0))) == Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0)))) by {
// Lean step: field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)]
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 3); this variant also drops 9 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3 — all requires dropped except 0<2, 2≠1 (field_simp used no context hypothesis)
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p9.dfy"
lemma {:induction false} vc_amc12b_2021_p9_L412()
  ensures   Real.div(Real.log(80.0), Real.log(2.0)) * Real.div(Real.log(40.0), Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0))
{

        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 5543-5551
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 5573-5581
          // [TACTIC: «Norm_num[_]At___»]
        }
        // UNCITED Real.log_ne_zero_of_pos_of_ne_one: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
        if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
        if (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(2.0))) { MulPos(Real.log(2.0), Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5493-5601 exec 1518)
        // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
        if (0.0 < Real.log(2.0)) { cert_piece_2(); }  // cert: mul_pos
        assert ((Real.log(2.0) * Real.log(2.0)) == (Real.log(2.0) * Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5612-5619
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ) ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×24 [exec 1537 5612-5619]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Tactic.Ring.mul_congr ×1 (+13 more heads, ×13)
        }
        // UNCITED-APPLIED internal ×22 [exec 1518 5493-5601]: applications made inside the tactic's own automation, not stated — ne_of_gt ×4, Mathlib.Meta.Positivity.log_pos_of_isNat ×3, div_mul_eq_mul_div ×2, mul_div_assoc' ×1, div_div ×1, or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
}

