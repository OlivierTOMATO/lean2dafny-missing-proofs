// CLOSED — failing line amc12b_2021_p9-562: theorem amc12b_2021_p9, Dafny line 562 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((2.0 * (Real.log(2.0) * Real.log(2.0))), (Real.log(2.0) * Real.log(2.0))) == 2.0) by {
// Lean step: field_simp [h₇₅]
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2021_p9.dfy"
lemma {:induction false} vc_amc12b_2021_p9_L562()
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
  requires Real.div(Real.log(80.0) * Real.log(40.0), Real.log(2.0) * Real.log(2.0)) - Real.div(Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0)) == Real.div(Real.log(80.0) * Real.log(40.0) - Real.log(160.0) * Real.log(20.0), Real.log(2.0) * Real.log(2.0))
  ensures   Real.div(2.0 * (Real.log(2.0) * Real.log(2.0)), Real.log(2.0) * Real.log(2.0)) == 2.0
{
              // [TACTIC: «_<;>_» [ h₇₅ ] field_simp [ h₇₅ ] <;> ring_nf ring_nf <;> field_simp [ h₇₅ ] field_simp [ h₇₅ ] <;> nlinarith nlinarith]
              // [TACTIC: «Field_simp[_]At___» [ h₇₅ ]]
              // `field_simp` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED internal ×6 [exec 1982 7950-7970]: applications made inside the tactic's own automation, not stated — IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, eq_self ×1
}

