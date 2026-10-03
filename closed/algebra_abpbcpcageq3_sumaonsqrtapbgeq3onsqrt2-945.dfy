// CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-945: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 945 (ERR: assertion might not hold)
// failing Dafny line: assert ((x + y) <= (Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))) * Real.div(((x + y) + 2.0), (2.0 * Real.sqrt(2.0))))) by {
// Lean step: field_simp [h₅.ne']
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — assert (N/D)*(N/D) == (N*N)/(D*D) over Real.div (field_simp's before/after goals), checked
// Dafny: finished with 28 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L945(a: real, b: real, c: real, x_1_0: real, y_1_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires 0.0 < x_1_0
  requires 0.0 < y_1_0
  requires 0.0 < x_1_0 + y_1_0
  requires 0.0 < Real.sqrt(2.0)
  requires 0.0 < Real.sqrt(2.0) * (x_1_0 + y_1_0)
  requires 0.0 < Real.sqrt(2.0) * 2.0
  requires 0.0 <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))
  requires (Real.sqrt(x_1_0 + y_1_0) <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))) == (x_1_0 + y_1_0 <= Real.pow(Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0)), 2))
  requires x_1_0 + y_1_0 <= Real.div((x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0), 2.0 * Real.sqrt(2.0) * (2.0 * Real.sqrt(2.0)))
  ensures   x_1_0 + y_1_0 <= Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0)) * Real.div(x_1_0 + y_1_0 + 2.0, 2.0 * Real.sqrt(2.0))
{
  assert Real.div((x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0))) * Real.div((x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0))) == Real.div((x_1_0 + y_1_0 + 2.0) * (x_1_0 + y_1_0 + 2.0), (2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)));  // field_simp before/after goals: (N/D)^2 = N^2/D^2 (checked)  // [ADDED]
          // [TACTIC: «Field_simp[_]At___» [ h₅.ne' ]]
          // UNCITED h₅.ne': a projection of the local hypothesis h₅ handed to the tactic; its fact is not stated here
          // UNCITED-APPLIED internal ×2 [exec 267 1515-1536]: applications made inside the tactic's own automation, not stated — div_pow ×1; machinery/glue: congrArg ×1
          assert ((x_1_0 + y_1_0) <= Real.div((((x_1_0 + y_1_0) + 2.0) * ((x_1_0 + y_1_0) + 2.0)), ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 1545-1576
            assert (0.0 < ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) by {  // sub-goal of `by` (Lean state) // @tac 1564-1574
              // [TACTIC: Positivity]
              // positivity proof (Lean execution 1564-1574 exec 279): nothing of it stated; Lean's records:
              // cert: pow_pos piece `(0.0 < ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * √(2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.sqrt(2.0))
              // UNCITED-APPLIED internal ×3 [exec 279 1564-1574]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
              assert (0.0 < ((2.0 * Real.sqrt(2.0))));  // precondition of PowPos (Lean: pow_pos)
              PowPos((2.0 * Real.sqrt(2.0)), 2);  // cite: pow_pos [applied by the tactic, not named in it]
              assert (0.0 < (2.0)) && (0.0 < (Real.sqrt(2.0)));  // precondition of MulPos (Lean: mul_pos)
              MulPos(2.0, Real.sqrt(2.0));  // cite: mul_pos [applied by the tactic, not named in it]
            }
            // [TACTIC: rwSeq [ le_div_iff ( by positivity ) ]]
            assert (0.0 < (((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))));  // precondition of LeDivIff (Lean: le_div_iff)
            LeDivIff((x_1_0 + y_1_0), (((x_1_0 + y_1_0) + 2.0) * ((x_1_0 + y_1_0) + 2.0)), ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))));  // cite: le_div_iff
            assert (((x_1_0 + y_1_0) * ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) <= (((x_1_0 + y_1_0) + 2.0) * ((x_1_0 + y_1_0) + 2.0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1585-1798
              assert (0.0 <= 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1626-1634
                // [TACTIC: «Norm_num[_]At___»]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 309 1626-1634]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              }
              assert (0.0 <= (x_1_0 + y_1_0)) by {  // sub-goal of `by` (Lean state) // @tac 1763-1773
                // [TACTIC: Positivity]
                // UNCITED-APPLIED internal ×1 [exec 314 1763-1773]: applications made inside the tactic's own automation, not stated — add_pos ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
                assert ((0.0) < ((x_1_0 + y_1_0)));  // precondition of LeOfLt (Lean: le_of_lt)
                LeOfLt(0.0, (x_1_0 + y_1_0));  // cite: le_of_lt [applied by the tactic, not named in it]
              }
              // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ 2 by norm_num norm_num ) , sq_nonneg ( x + y - 2 ) , sq_nonneg ( Real.sqrt 2 * Real.sqrt ( x + y ) - 2 ) , Real.sq_sqrt ( show 0 ≤ x + y by positivity ) , sq_nonneg ( x + y - 2 ) ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1585-1798 exec 304)
              SqNonneg(((x_1_0 + y_1_0) - 2.0)); assert (0.0 <= (((x_1_0 + y_1_0) - 2.0) * ((x_1_0 + y_1_0) - 2.0)));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(8 : ℝ) * (√(x + y) ^ (2 : ℕ) - (x + y)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((x + y)) * Real.sqrt((x + y))) - (x + y)) == 0.0); (8.0 > 0.0)
              if (0.0 <= ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0)))) && (((Real.sqrt((x_1_0 + y_1_0)) * Real.sqrt((x_1_0 + y_1_0))) - (x_1_0 + y_1_0)) == 0.0) { assert (-((((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))) * ((Real.sqrt((x_1_0 + y_1_0)) * Real.sqrt((x_1_0 + y_1_0))) - (x_1_0 + y_1_0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
              SqNonneg((2.0 * Real.sqrt(2.0))); assert (0.0 <= ((2.0 * Real.sqrt(2.0)) * (2.0 * Real.sqrt(2.0))));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(-√(x + y) ^ (2 : ℕ) * (√(2 : ℝ) ^ (2 : ℕ) - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.sqrt((x + y)) * Real.sqrt((x + y))) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0)) == 0.0); (4.0 > 0.0)
              if (0.0 <= (Real.sqrt((x_1_0 + y_1_0)) * Real.sqrt((x_1_0 + y_1_0)))) && (((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0) == 0.0) { assert (-(((Real.sqrt((x_1_0 + y_1_0)) * Real.sqrt((x_1_0 + y_1_0))) * ((Real.sqrt(2.0) * Real.sqrt(2.0)) - 2.0))) == 0.0); }  // cert: Linarith.mul_zero_eq
              SqNonneg(Real.sqrt((x_1_0 + y_1_0))); assert (0.0 <= (Real.sqrt((x_1_0 + y_1_0)) * Real.sqrt((x_1_0 + y_1_0))));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x + y - (2 : ℝ)) ^ (2 : ℕ) + ((x + y + (2 : ℝ)) ^ (2 : ℕ) - (x + y) * ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ)) + (8 : ℝ) * (√(…`
              // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `-(x + y - (2 : ℝ)) ^ (2 : ℕ) + ((x + y + (2 : ℝ)) ^ (2 : ℕ) - (x + y) * ((2 : ℝ) * √(2 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_11(a, b, c, x_1_0, y_1_0);  // cert: Linarith.lt_of_lt_of_eq
              // UNCITED-APPLIED internal ×16 [exec 304 1585-1798]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, sub_eq_zero_of_eq ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1, neg_eq_zero ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.mul_eq ×2, Linarith.mul_zero_eq ×2, Linarith.lt_irrefl ×1 (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×2], sq_nonneg [Lean recorded ×3])
              // UNCITED-APPLIED internal ×5 [exec 317 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              SqNonneg(((x_1_0 + y_1_0) - 2.0));  // cite: sq_nonneg
              SqNonneg((2.0 * Real.sqrt(2.0)));  // cite: sq_nonneg
              SqNonneg(Real.sqrt((x_1_0 + y_1_0)));  // cite: sq_nonneg
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 316, 317 / `ring1` exec 315)]
              // NOT APPLIED `sq_nonneg ( Real.sqrt 2 * Real.sqrt ( x + y ) - 2 )`: named here, but no application Lean recorded at this tactic has its arguments (1 of the 2 named instances match a recorded application)
              // UNCITED-APPLIED internal ×264 [exec 315 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8 (+50 more heads, ×232) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 316 1585-1798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              assert (0.0 <= (2.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
              RealSqSqrt(2.0);  // cite: Real.sq_sqrt
              assert (0.0 <= ((x_1_0 + y_1_0)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
              RealSqSqrt((x_1_0 + y_1_0));  // cite: Real.sq_sqrt
            }
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 272 1545-1576]
          }
}

