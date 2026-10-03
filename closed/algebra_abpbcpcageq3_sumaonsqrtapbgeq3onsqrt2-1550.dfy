// NOT CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1550: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1550 (ERR: assertion might not hold)
// failing Dafny line: assert (((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))) >= (3.0 / 4.0)) by {
// Lean step: have h₉₁ : 0 < a * b := by positivity
// hypotheses: 18 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K5=oor, K3=oor, K2K5=oor, split=oor, K2step=oor; this file is the honest base attempt
// Dafny: finished with 100 verified, 1 error, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1550(a: real, b: real, c: real)
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
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires 0.0 < a + b + 2.0
  requires 0.0 < b + c + 2.0
  requires 0.0 < c + a + 2.0
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0)
  requires 4.0 != 0.0
  ensures   Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
{
      // have h₉₁ : 0 < a * b  [type from Lean state]
      assert (0.0 < (a * b)) by { // @tac 7737-7747
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7737-7747 exec 1469)
        if (0.0 < a) && (0.0 < b) { cert_piece_43(a, b, c); }  // cert: mul_pos
        assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
        MulPos(a, b);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₉₂ : 0 < b * c  [type from Lean state]
      assert (0.0 < (b * c)) by { // @tac 7785-7795
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7785-7795 exec 1486)
        if (0.0 < b) && (0.0 < c) { cert_piece_44(a, b, c); }  // cert: mul_pos
        assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
        MulPos(b, c);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₉₃ : 0 < c * a  [type from Lean state]
      assert (0.0 < (c * a)) by { // @tac 7833-7843
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7833-7843 exec 1503)
        if (0.0 < c) && (0.0 < a) { cert_piece_45(a, b, c); }  // cert: mul_pos
        assert (0.0 < (c)) && (0.0 < (a));  // precondition of MulPos (Lean: mul_pos)
        MulPos(c, a);  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // [TACTIC: «Field_simp[_]At___»]
      assert (0.0 < (((a + b) + 2.0))) && (0.0 < (((b + c) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(((a + b) + 2.0), ((b + c) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 7850-7860 exec 1504)
      if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_46(a, b, c); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×33 [exec 1504 7850-7860]: applications made inside the tactic's own automation, not stated — add_pos ×6, ne_of_gt ×4, add_div' ×2, div_mul_eq_mul_div ×2, div_add' ×2, div_div ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Eq.trans ×7, congrArg ×6, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert ((3.0 / 4.0) <= Real.div(((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))), ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) by {  // sub-goal before `rw` (Lean state) // @tac 7867-7918
        assert (0.0 < 4.0) by {  // sub-goal of `by` (Lean state) // @tac 7890-7900
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×2 [exec 1516 7890-7900]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        }
        assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) by {  // sub-goal of `by` (Lean state) // @tac 7906-7916
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 7906-7916 exec 1521)
          if (0.0 < (((a + b) + 2.0) * ((b + c) + 2.0))) && (0.0 < ((c + a) + 2.0)) { cert_piece_47(a, b, c); }  // cert: mul_pos
          if (0.0 < ((a + b) + 2.0)) && (0.0 < ((b + c) + 2.0)) { cert_piece_48(a, b, c); }  // cert: mul_pos
          // UNCITED-APPLIED internal ×8 [exec 1521 7906-7916]: applications made inside the tactic's own automation, not stated — add_pos ×6, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
          assert (0.0 < ((((a + b) + 2.0) * ((b + c) + 2.0)))) && (0.0 < (((c + a) + 2.0)));  // precondition of MulPos (Lean: mul_pos)
          MulPos((((a + b) + 2.0) * ((b + c) + 2.0)), ((c + a) + 2.0));  // cite: mul_pos [applied by the tactic, not named in it]
          // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + 2.0), ((b + c) + 2.0));]
        }
        // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
        assert (0.0 < (4.0)) && (0.0 < (((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
        DivLeDivIff(3.0, 4.0, ((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))), ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)));  // cite: div_le_div_iff
        assert ((3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) <= (((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 7925-8057
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , sq_nonneg ( a - 1 ) , sq_nonneg ( b - 1 ) , sq_nonneg ( c - 1 ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7925-8057 exec 1546)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0); (612.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + c + (2…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0); (42.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && (0.0 <= ((b - 1.0) * (b - 1.0))) { cert_piece_49(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
          SqNonneg((b - 1.0)); assert (0.0 <= ((b - 1.0) * (b - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(c - a) ^ (2 : ℕ) * -a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - a) * (c - a)) * a)); (12.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && (0.0 <= a) { cert_piece_50(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(c - a) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((c - a) * (c - a))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_51(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= ((a - b) * (a - b))) && (0.0 <= ((c - 1.0) * (c - 1.0))) { cert_piece_52(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
          SqNonneg((c - 1.0)); assert (0.0 <= ((c - 1.0) * (c - 1.0)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(a - b) ^ (2 : ℕ) * -b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - b) * (a - b)) * b)); (12.0 > 0.0)
          if (0.0 <= ((a - b) * (a - b))) && (0.0 <= b) { cert_piece_53(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(a - b) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((a - b) * (a - b))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_54(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= ((b - c) * (b - c))) { cert_piece_55(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((a - 1.0)); assert (0.0 <= ((a - 1.0) * (a - 1.0)));  // cert: sq_nonneg
          SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(a - (1 : ℝ)) ^ (2 : ℕ) * -b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - 1.0) * (a - 1.0)) * b)); (180.0 > 0.0)
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= b) { cert_piece_56(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(a - (1 : ℝ)) ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((a - 1.0) * (a - 1.0)) * (a * b))); (24.0 > 0.0)
          if (0.0 <= ((a - 1.0) * (a - 1.0))) && (0.0 <= (a * b)) { cert_piece_57(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(12 : ℝ) * -(-(b - c) ^ (2 : ℕ) * -c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - c) * (b - c)) * c)); (12.0 > 0.0)
          if (0.0 <= ((b - c) * (b - c))) && (0.0 <= c) { cert_piece_58(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(b - c) ^ (2 : ℕ) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (3.0 > 0.0)
          if (0.0 <= ((b - c) * (b - c))) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_59(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -a) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * a)); (180.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= a) { cert_piece_60(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(c - (1 : ℝ)) ^ (2 : ℕ) * -(c * a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((c - 1.0) * (c - 1.0)) * (c * a))); (24.0 > 0.0)
          if (0.0 <= ((c - 1.0) * (c - 1.0))) && (0.0 <= (c * a)) { cert_piece_61(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(180 : ℝ) * -(-(b - (1 : ℝ)) ^ (2 : ℕ) * -c) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - 1.0) * (b - 1.0)) * c)); (180.0 > 0.0)
          if (0.0 <= ((b - 1.0) * (b - 1.0))) && (0.0 <= c) { cert_piece_62(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(24 : ℝ) * -(-(b - (1 : ℝ)) ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((b - 1.0) * (b - 1.0)) * (b * c))); (24.0 > 0.0)
          if (0.0 <= ((b - 1.0) * (b - 1.0))) && (0.0 <= (b * c)) { cert_piece_63(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-a * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= a) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_64(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-a * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < a) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_65(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-b * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= b) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_66(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-b * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < b) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_67(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(116 : ℝ) * -(-c * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c * (3.0 - (((a * b) + (b * c)) + (c * a)))) <= 0.0); (116.0 > 0.0)
          if (0.0 <= c) && ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_68(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-c * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a + (2 : ℝ)) + c * ((a + b + (2 : ℝ)) * (b + …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))) < 0.0); (6.0 > 0.0)
          if (0.0 < c) && (((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0) { cert_piece_69(a, b, c); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(40 : ℝ) * -(((3 : ℝ) - (a * b + b * c + c * a)) * ((3 : ℝ) - (a * b + b * c + c * a))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a))))); (40.0 > 0.0)
          if ((3.0 - (((a * b) + (b * c)) + (c * a))) <= 0.0) { cert_piece_70(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(52 : ℝ) * -(((3 : ℝ) - (a + b + c)) * ((3 : ℝ) - (a + b + c))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c)))); (52.0 > 0.0)
          if ((3.0 - ((a + b) + c)) <= 0.0) { cert_piece_71(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED add_lt_of_neg_of_le ×19: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…`
          // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…`
          // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(612 : ℝ) * ((3 : ℝ) - (a * b + b * c + c * a)) + (42 : ℝ) * (((a * (b + c + (2 : ℝ)) + b * (a + b + (2 : ℝ))) * (c + a…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_72(a, b, c);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×39 [exec 1546 7925-8057]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×6, mul_pos_of_neg_of_neg ×3, sub_nonpos_of_le ×2, le_of_not_gt ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], sq_nonneg [Lean recorded ×6])
          // UNCITED-APPLIED internal ×5 [exec 1549 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1550 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1551 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1552 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1553 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1554 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1555 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1556 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1557 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1558 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1559 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1560 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1561 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1562 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1563 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1564 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1565 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1566 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1567 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1568 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1569 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg((c - a));  // cite: sq_nonneg
          SqNonneg((b - 1.0));  // cite: sq_nonneg
          SqNonneg((a - b));  // cite: sq_nonneg
          SqNonneg((c - 1.0));  // cite: sq_nonneg
          SqNonneg((a - 1.0));  // cite: sq_nonneg
          SqNonneg((b - c));  // cite: sq_nonneg
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1547)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1548, 1549, 1550, 1551, 1552, 1553 … / `ring1` exec 1547)]
          if ((-(a)) < (0.0)) { LeOfLt(-(a), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-(b)) < (0.0)) { LeOfLt(-(b), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-(c)) < (0.0)) { LeOfLt(-(c), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((c * a))) < (0.0)) { LeOfLt(-((c * a)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×302 [exec 1547 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+43 more heads, ×270) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1548 7925-8057]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 1509 7867-7918]
      }
}

