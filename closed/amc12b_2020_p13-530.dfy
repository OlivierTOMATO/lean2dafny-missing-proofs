// CLOSED — failing line amc12b_2020_p13-530: theorem amc12b_2020_p13, Dafny line 530 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sqrt(((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Rea
// Lean step: rw [Real.sqrt_sq (by positivity)]
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: K2 — assert Real.pow(s, 2) == s * s;  (s = Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))); Lean's s ^ 2 normal form, checked)
// Dafny: finished with 21 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p13.dfy"
lemma {:induction false} vc_amc12b_2020_p13_L530()
  requires Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0)) == Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0
  requires Real.sqrt(Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0))) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0)
  requires Real.div(Real.log(3.0), Real.log(2.0)) > 0.0
  requires Real.div(Real.log(2.0), Real.log(3.0)) > 0.0
  requires Real.div(Real.log(3.0), Real.log(2.0)) * Real.div(Real.log(2.0), Real.log(3.0)) == 1.0
  requires Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0 == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))
  requires Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0) == Real.sqrt((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))
  requires Real.sqrt(Real.pow(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))), 2)) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))
  ensures   Real.sqrt((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))
{
  assert Real.pow(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))), 2) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));  // K2: Lean's s ^ 2 normal form (checked)  // [ADDED]
          assert (0.0 <= (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by {  // sub-goal of `by` (Lean state) // @tac 6345-6355
            // [TACTIC: Positivity]
            // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 6345-6355 exec 1086)
            if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_13(); }  // cert: div_pos
            if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_14(); }  // cert: div_pos
            // UNCITED-APPLIED internal ×7 [exec 1086 6345-6355]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.log_pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×2], le_of_lt [Lean recorded ×1])
            assert ((0.0) < ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of LeOfLt (Lean: le_of_lt)
            LeOfLt(0.0, (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: le_of_lt [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos [applied by the tactic, not named in it]
          }
          // [TACTIC: rwSeq [ Real.sqrt_sq ( by positivity ) ]]
          assert (0.0 <= ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of RealSqrtSq (Lean: Real.sqrt_sq)
          RealSqrtSq((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: Real.sqrt_sq
          // UNCITED-APPLIED congrArg(√((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1079 6324-6357]
}

