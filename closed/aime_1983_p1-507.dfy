// CLOSED — failing line aime_1983_p1-507: theorem aime_1983_p1, Dafny line 507 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.log(((x as real) * (y as real))) == (Real.log((x as real)) + Real.log((y as real)))) by {
// Lean step: have h₃ : 0 < (x : ℝ) := by positivity
// hypotheses: 18 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 4); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1983_p1.dfy"
lemma {:induction false} vc_aime_1983_p1_L507(w: int, x: int, y: int, z: int)
  requires 0 <= x
  requires 0 <= y
  requires 0 <= z
  requires 0 <= w
  requires 1 < x
  requires 1 < y
  requires 1 < z
  requires Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0
  requires Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0
  requires Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0
  requires (x as real) > 1.0
  requires (y as real) > 1.0
  requires (z as real) > 1.0
  requires (x as real) * (y as real) * (z as real) > 1.0
  requires Real.log((x as real)) > 0.0
  requires Real.log((y as real)) > 0.0
  requires Real.log((z as real)) > 0.0
  requires Real.log((x as real) * (y as real) * (z as real)) == Real.log((x as real) * (y as real)) + Real.log((z as real))
  ensures   Real.log((x as real) * (y as real)) == Real.log((x as real)) + Real.log((y as real))
{
        // have h₃ : 0 <   [type from Lean state]
        assert (0.0 < (x as real)); // @tac 1934-1944
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 561 1934-1944]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        // have h₄ : 0 <   [type from Lean state]
        assert (0.0 < (y as real)); // @tac 1983-1993
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 578 1983-1993]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        assert ((x as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2021-2031
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×5 [exec 590 2021-2031]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        assert ((y as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2037-2047
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×5 [exec 595 2037-2047]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert (((x as real)) != 0.0) && (((y as real)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul((x as real), (y as real));  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a = Real.log ↑x + Real.log ↑y): no library counterpart (not stated) [exec 583 2000-2049]
}

