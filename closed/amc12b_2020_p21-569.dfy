// NOT CLOSED — failing line amc12b_2020_p21-569: theorem amc12b_2020_p21, Dafny line 569 (ERR: assertion might not hold)
// failing Dafny line: assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real)) by {
// Lean step: nlinarith [Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ)), h₉]
// hypotheses: 29 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 18 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p21.dfy"
lemma {:induction false} vc_amc12b_2020_p21_L569(S: set<nat>, k_0_0_0_0_0_0_0_0_2: int, k_0_0_0_0_0_0_0_0_3: int, k_0_0_0_0_0_0_0_0_5: int, k_0_0_0_0_0_0_0_0_5_0: int, k_0_0_0_0_0_0_0_0_6: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0)) || (n_0_0_0_0 <= 0)
  requires 0 < n_0_0_0_0
  requires ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)
  requires 70 != 0
  requires (n_0_0_0_0 + 1000) % 70 == 0
  requires n_0_0_0_0 % 70 == 50
  requires (0 <= k_0_0_0_0_0_0_0_0_2) || (k_0_0_0_0_0_0_0_0_2 < 0)
  requires exists k_0_0_0_0_0_0_0_0_1: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_1 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_3) || (k_0_0_0_0_0_0_0_0_3 < 0)
  requires exists k_0_0_0_0_0_0_0_0_4: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_4 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_6) || (k_0_0_0_0_0_0_0_0_6 < 0)
  requires (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (exists as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0: nat :: n_0_0_0_0 == 70 * as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 + 50)
  requires 0 <= k_0_0_0_0_0_0_0_0_5_0
  requires n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_5_0 + 50
  requires k_0_0_0_0_0_0_0_0_5_0 + 15 == floor(Real.sqrt((n_0_0_0_0 as real)))
  requires (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= (n_0_0_0_0 as real)
  requires (0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) || ((k_0_0_0_0_0_0_0_0_5_0 as real) < 0.0)
  requires ((0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) && ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) <= 0.0)) || (!(0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real) && (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0))
  requires (((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && (0.0 <= ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))))) || (0.0 < (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))
  requires 30.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) + ((n_0_0_0_0 as real) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0)) + (Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) - (n_0_0_0_0 as real)) + 2.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) + (0.0 - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) == 0.0
  requires ((0.0 < (n_0_0_0_0 as real)) && (0.0 < (n_0_0_0_0 as real)) && (0.0 <= (n_0_0_0_0 as real))) || ((n_0_0_0_0 as real) <= 0.0)
  requires Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) == (n_0_0_0_0 as real)
  ensures   ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) <= (n_0_0_0_0 as real)
{
                        assert (0.0 <= (n_0_0_0_0 as real)) by {  // sub-goal of `by` (Lean state) // @tac 3853-3863
                          // [TACTIC: Positivity]
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by positivity : 0 ≤ ( n : ℝ ) ) , h₉ ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3825-3889 exec 957)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0); (30.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-↑k * (↑k + (15 : ℝ) - √↑n)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((k as real) * (((k as real) + 15.0) - Real.sqrt((n as real)))) <= 0.0); (2.0 > 0.0)
                        if (0.0 <= (k_0_0_0_0_0_0_0_0_2 as real)) && ((((k_0_0_0_0_0_0_0_0_2 as real) + 15.0) - Real.sqrt((n_0_0_0_0 as real))) <= 0.0) { cert_piece_8(S, k_0_0_0_0_0_0_0_0_2, n_0_0_0_0); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        if ((((k_0_0_0_0_0_0_0_0_2 as real) + 15.0) - Real.sqrt((n_0_0_0_0 as real))) <= 0.0) { cert_piece_9(S, k_0_0_0_0_0_0_0_0_2, n_0_0_0_0); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) + (√↑n ^ (2 : ℕ) - ↑n) + (2 : ℝ) * -(-↑k * (↑k + (1…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) + (√↑n ^ (2 : ℕ) - ↑n) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_10(S, k_0_0_0_0_0_0_0_0_2, n_0_0_0_0);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×258 [exec 957 3825-3889]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_lt_of_neg_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, Nat.cast_zero ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1, Nat.cast_pos ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+51 more heads, ×212) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], le_of_lt [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 970 3825-3889]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×6 [exec 971 3825-3889]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        if ((0.0) < ((n_0_0_0_0 as real))) { LeOfLt(0.0, (n_0_0_0_0 as real)); }  // cite: le_of_lt [applied by the tactic, not named in it]
                        assert (0.0 <= ((n_0_0_0_0 as real)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                        RealSqSqrt((n_0_0_0_0 as real));  // cite: Real.sq_sqrt
}

