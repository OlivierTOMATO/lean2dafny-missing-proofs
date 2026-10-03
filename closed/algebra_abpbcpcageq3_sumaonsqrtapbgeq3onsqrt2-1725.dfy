// CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1725: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1725 (ERR: assertion might not hold)
// failing Dafny line: assert (((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)))) >= ((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0))) by {
// Lean step: gcongr
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 5); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1725(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires forall x_1_1: real, y_1_1: real :: 0.0 < x_1_1 && 0.0 < y_1_1 ==> Real.sqrt(x_1_1 + y_1_1) <= Real.div(x_1_1 + y_1_1 + 2.0, 2.0 * Real.sqrt(2.0))
  requires Real.div(a, Real.sqrt(a + b)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0)
  requires Real.div(b, Real.sqrt(b + c)) >= Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0)
  requires Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires Real.div(a, Real.sqrt(a + b)) + Real.div(b, Real.sqrt(b + c)) + Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires 0.0 < Real.sqrt(2.0)
  requires 0.0 < a + b + 2.0
  requires 0.0 < b + c + 2.0
  requires 0.0 < c + a + 2.0
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)
  requires 4.0 != 0.0
  requires Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
  requires Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0) == 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires 2.0 * Real.sqrt(2.0) * (3.0 / 4.0) <= 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < 2.0)) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0))))
  ensures   2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0)) >= 2.0 * Real.sqrt(2.0) * (3.0 / 4.0)
{
        // [TACTIC: «_<;>_» <;> linarith linarith]
        // [TACTIC: Gcongr]
        // gcongr: side goal 0 ≤ c (Lean: positivity), main goal X ≤ Y (Lean: closed by assumption inside gcongr), then mul_le_mul_of_nonneg_left
        assert (0.0 <= (2.0 * Real.sqrt(2.0)));  // side goal of `gcongr` (Lean state)
        assert (3.0 / 4.0) <= ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)));  // sub-goal of `gcongr` (its main goal X <= Y, split from the Lean state X*c <= Y*c; Lean closed it by assumption)
        gcongr_mul_le_mul_left((3.0 / 4.0), ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))), (2.0 * Real.sqrt(2.0)));  // gcongr: mul_le_mul_of_nonneg_left
        assert ((0.0) < ((2.0 * Real.sqrt(2.0))));  // precondition of LeOfLt (Lean: le_of_lt)
        LeOfLt(0.0, (2.0 * Real.sqrt(2.0)));  // cite: le_of_lt [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 1688)]
        if (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0))) { MulPos(2.0, Real.sqrt(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 1688)]
        // positivity proof (Lean execution 8736-8742 exec 1688): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
        // UNCITED-APPLIED internal ×1 [exec 1686 8736-8742]: applications made inside the tactic's own automation, not stated — mul_le_mul_of_nonneg_left ×1
        // UNCITED-APPLIED internal ×3 [exec 1688 8736-8742]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1])
        // `gcongr` closed the goal; the rest of the chain did not run
}

