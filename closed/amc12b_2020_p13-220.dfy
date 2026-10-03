// CLOSED — failing line amc12b_2020_p13-220: theorem amc12b_2020_p13, Dafny line 220 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((Real.log(2.0) + Real.log(3.0)), Real.log(3.0)) == (1.0 + Real.div(Real.log(2.0), Real.log(3.0)))) by {
// Lean step: field_simp [Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 3) (by norm_num : (3 : ℝ) ≠ 1)]
// hypotheses: 5 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 6); nothing assumed beyond the facts in scope
// how it closes: K5 — AddDivPrime(Real.log(2.0), 1.0, Real.log(3.0)); with exact Mathlib add_div' (b + a / c = (b * c + a) / c, c ≠ 0) added to the work copy as {:axiom}
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p13.dfy"
lemma {:axiom} AddDivPrime(a: real, b: real, c: real)
  requires c != 0.0
  ensures b + Real.div(a, c) == Real.div(b * c + a, c)

lemma {:induction false} vc_amc12b_2020_p13_L220()
  requires Real.log(6.0) == Real.log(2.0) + Real.log(3.0)
  requires Real.div(Real.log(6.0), Real.log(2.0)) == 1.0 + Real.div(Real.log(3.0), Real.log(2.0))
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  requires Real.log(3.0) != 0.0
  ensures   Real.div(Real.log(2.0) + Real.log(3.0), Real.log(3.0)) == 1.0 + Real.div(Real.log(2.0), Real.log(3.0))
{
  AddDivPrime(Real.log(2.0), 1.0, Real.log(3.0));  // K5: add_div' (internal cite of field_simp exec)
        assert (0.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 1558-1566
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (3.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 1588-1596
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: choice [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×21 [exec 313 1508-1616]: applications made inside the tactic's own automation, not stated — add_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, one_mul ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.log_ne_zero_of_pos_of_ne_one [Lean recorded ×1])
        assert ((Real.log(2.0) + Real.log(3.0)) == (Real.log(3.0) + Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1627-1634
          PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(Real.log(3.0));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ)); (a := Real.log (3 : ℝ))
          // UNCITED-APPLIED internal ×28 [exec 332 1627-1634]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×7, congrArg ×7, congr ×3, Mathlib.Tactic.Ring.atom_pf ×2 (+6 more heads, ×6) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        }
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        assert (0.0 < (3.0)) && ((3.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(3.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
}

