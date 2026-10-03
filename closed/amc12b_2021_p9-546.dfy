// CLOSED — failing line amc12b_2021_p9-546: theorem amc12b_2021_p9, Dafny line 546 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.div((Real.log(80.0) * Real.log(40.0)), (Real.log(2.0) * Real.log(2.0))) - Real.div((Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)))) == Real.div(((Real.log(80.0) * Re
// Lean step: field_simp [h₇₅]
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: sc_divsubdivsame — DivSubDivSame(A, B, L2*L2) (exact Mathlib div_sub_div_same, added)
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p9.dfy"
lemma {:axiom} DivSubDivSame(a: real, b: real, c: real)  // [ADDED DECLARATION]
  ensures Real.div(a, c) - Real.div(b, c) == Real.div(a - b, c)

lemma {:induction false} vc_amc12b_2021_p9_L546()
  requires Real.log(80.0) == 4.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(40.0) == 3.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(160.0) == 5.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(20.0) == 2.0 * Real.log(2.0) + Real.log(5.0)
  requires Real.log(80.0) * Real.log(40.0) == 12.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  requires Real.log(160.0) * Real.log(20.0) == 10.0 * (Real.log(2.0) * Real.log(2.0)) + 7.0 * Real.log(2.0) * Real.log(5.0) + Real.log(5.0) * Real.log(5.0)
  requires Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0) == 2.0 * (Real.log(2.0) * Real.log(2.0))
  requires Real.div(Real.div(Real.log(80.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(40.0))) == Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0))
  requires Real.div(Real.div(Real.log(160.0), Real.log(2.0)), Real.div(Real.log(2.0), Real.log(20.0))) == Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
  requires Real.log(2.0) != 0.0
  requires ((0.0 < Real.log(2.0)) && (0 <= 2) && (0.0 < Real.pow(Real.log(2.0), 2))) || (Real.log(2.0) <= 0.0)
  ensures   Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0)) - Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
{
  DivSubDivSame((Real.log(80.0) * Real.log(40.0)), (Real.log(160.0) * Real.log(20.0)), (Real.log(2.0) * Real.log(2.0)));  // [ADDED]
          // [TACTIC: «_<;>_» [ h₇₅ ] field_simp [ h₇₅ ] <;> ring_nf ring_nf]
          // [TACTIC: «Field_simp[_]At___» [ h₇₅ ]]
          if (0.0 < (Real.log(2.0))) { PowPos(Real.log(2.0), 2); }  // cite: pow_pos [applied by the tactic, not named in it]
          // `fieldSimp` step's recorded applications (Lean execution 7754-7774 exec 1882): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (Real.log(2.0) * Real.log(2.0)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // `field_simp` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×18 [exec 1882 7754-7774]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×2, IsUnit.mul_div_cancel_right ×2, sub_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Eq.trans ×4, congrArg ×4, of_eq_true ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_pos [Lean recorded ×1])
}

