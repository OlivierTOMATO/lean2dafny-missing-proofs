// CLOSED — failing line mathd_algebra_598-542: theorem mathd_algebra_598, Dafny line 542 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((3.0 * Real.log(2.0)), (2.0 * Real.log(2.0))) == (3.0 / 2.0)) by {
// Lean step: have h₁₂₃ : Real.log 2 ≠ 0 := by
// hypotheses: 13 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: SC_library — DivEqIff(3.0*log2, 3/2, 2.0*log2) with exact Mathlib div_eq_iff added to the work copy
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_598.dfy"
lemma {:axiom} DivEqIff(a: real, b: real, c: real)  // [ADDED DECLARATION]
  requires c != 0.0
  ensures a / c == b <==> a == b * c

lemma {:induction false} vc_mathd_algebra_598_L542(a: real, b: real, c: real, d: real)
  requires Real.rpow(4.0, a) == 5.0
  requires Real.rpow(5.0, b) == 6.0
  requires Real.rpow(6.0, c) == 7.0
  requires Real.rpow(7.0, d) == 8.0
  requires a == Real.div(Real.log(5.0), Real.log(4.0))
  requires b == Real.div(Real.log(6.0), Real.log(5.0))
  requires c == Real.div(Real.log(7.0), Real.log(6.0))
  requires d == Real.div(Real.log(8.0), Real.log(7.0))
  requires a * b * c * d == Real.div(Real.log(8.0), Real.log(4.0))
  requires Real.log(8.0) == 3.0 * Real.log(2.0)
  requires Real.log(4.0) == 2.0 * Real.log(2.0)
  requires (0 as real) == 0.0
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0))))
  ensures   Real.div(3.0 * Real.log(2.0), 2.0 * Real.log(2.0)) == 3.0 / 2.0
{
  DivEqIff(3.0 * Real.log(2.0), 3.0 / 2.0, 2.0 * Real.log(2.0));  // [ADDED]
        // have h₁₂₃ : Real.log ( 2 ) != 0  [type from Lean state]
        assert (Real.log(2.0) != 0.0) by { // @tac 4053-4115 // @tac 4122-4130
          // have h₁₂₄ : Real.log ( 2 ) > 0  [type from Lean state]
          assert (Real.log(2.0) > 0.0) by {
            assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 4106-4114
              // [TACTIC: «Norm_num[_]At___»]
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 1339 4106-4114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            }
            // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
            assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
            RealLogPos(2.0);  // cite: Real.log_pos
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4122-4130 exec 1342)
          cert_identity_16(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×5 [exec 1342 4122-4130]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×20 [exec 1346 4122-4130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1346)]
        }
        // [TACTIC: «_<;>_» [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> ring_nf ring_nf <;> field_simp [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> linarith linarith]
        // [TACTIC: choice [ h₁₂₃ ] field_simp [ h₁₂₃ ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        if (0.0 < (2.0)) && (0.0 < (Real.log(2.0))) { MulPos(2.0, Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications (Lean execution 4135-4158 exec 1362): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log (2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.log(2.0))
        // UNCITED-APPLIED internal ×9 [exec 1362 4135-4158]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, congrArg ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (((3.0 * Real.log(2.0)) * 2.0) == (3.0 * (2.0 * Real.log(2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4167-4174
          PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×49 [exec 1371 4167-4174]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+17 more heads, ×31) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        }
}

