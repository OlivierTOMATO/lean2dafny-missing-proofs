// CLOSED — failing line algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-1502: theorem algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3, Dafny line 1502 (ERR: assertion might not hold)
// failing Dafny line: assert (a <= (1.0 / 3.0)) by {
// Lean step: nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
// hypotheses: 25 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 13 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3.dfy"
lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires 0.0 <= a
  requires 1.0 <= c
  requires 3.0 != 0.0
  requires c <= 4.0 / 3.0
  requires a + b == 2.0 - c
  requires a * b == (c - 1.0) * (c - 1.0)
  requires c >= 1.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires ((0.0 <= a - 0.0) && (0.0 <= b - a) && (0.0 <= (a - 0.0) * (b - a)) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= a - 0.0 && 0.0 <= b - a)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (a + b + c - 2.0 == 0.0) && ((b - c) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(b - c <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (3.0 * c - 1.0 * 4.0 <= 0.0) && (0.0 <= (b - c) * (3.0 * c - 1.0 * 4.0))) || (!(b - c <= 0.0 && 3.0 * c - 1.0 * 4.0 <= 0.0))
  requires 2.0 * (a - b) + (0.0 - 2.0 * (a + b + c - 2.0)) + 6.0 * (a * b - (c - 1.0) * (c - 1.0)) + 2.0 * (1.0 * 1.0 - 3.0 * a) + (0.0 - 3.0 * ((a - 0.0) * (b - a))) + (0.0 - 3.0 * ((a - b) * (a + b + c - 2.0))) + (0.0 - 3.0 * ((b - c) * (a + b + c - 2.0))) + (0.0 - (b - c) * (3.0 * c - 1.0 * 4.0)) == 0.0
  requires (0.0 <= a - 0.0) == (0.0 <= a)
  requires (0.0 <= b - a) == (a <= b)
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires 0.0 <= a - 0.0
  requires 0.0 <= b - a
  requires 0.0 <= (a - 0.0) * (b - a)
  ensures   a <= 1.0 / 3.0
{
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 1 ) , mul_nonneg ( sub_nonneg.mpr h₀ . 1 ) ( sub_nonneg.mpr h₀ . 2 ) , mul_nonneg ( sub_nonneg.mpr h₃ ) ( sub_nonneg.mpr h₀ . 2 ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4620-4887 exec 1272)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * (a - b) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - b) <= 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(a + b + c - (2 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((a + b) + c) - 2.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a * b) - ((c - 1.0) * (c - 1.0))) == 0.0); (6.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * (1 : ℝ) - (3 : ℝ) * a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 1.0) - (3.0 * a)) < 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((1 / 3 : ℝ) - a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 / 3.0) - a) < 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -((a - (0 : ℝ)) * (b - a)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a - 0.0) * (b - a))); (3.0 > 0.0)
      if (0.0 <= (a - 0.0)) && (0.0 <= (b - a)) { cert_piece_68(a, b, c); }  // cert: mul_nonneg
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((a - b) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((a - b) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((a - b) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((a - b) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((b - c) * (a + b + c - (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((b - c) * (((a + b) + c) - 2.0))) == 0.0); (3.0 > 0.0)
      if ((b - c) <= 0.0) && ((((a + b) + c) - 2.0) == 0.0) { assert (((b - c) * (((a + b) + c) - 2.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
      if ((b - c) <= 0.0) && (((3.0 * c) - (1.0 * 4.0)) <= 0.0) { cert_piece_69(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * (c - (4 / 3 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((c - (4.0 / 3.0)) <= 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…`
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) + (2 : ℝ) * ((1 : ℝ)…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      // UNCITED-APPLIED Linarith.le_of_le_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a - b) + (2 : ℝ) * -(a + b + c - (2 : ℝ)) + (6 : ℝ) * (a * b - (c - (1 : ℝ)) ^ (2 : ℕ)) ≤ (0 : ℝ)`
      cert_identity_70(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×36 [exec 1272 4620-4887]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×3, neg_eq_zero ×3, sub_eq_zero_of_eq ×2, CancelDenoms.sub_subst ×2, CancelDenoms.div_subst ×2, neg_nonpos_of_nonneg ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, add_lt_of_le_of_neg ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_nonpos ×3, Linarith.le_of_le_of_eq ×2, Linarith.mul_neg ×2 (+4 more heads, ×6) (cited in this block, not counted here: mul_nonneg [Lean recorded ×1], sub_nonneg [Lean recorded ×2])
      // UNCITED-APPLIED internal ×5 [exec 1283 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1284 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1285 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1274 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1286 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1278 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1281 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1287 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1276 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 1277 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1288 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // NOT APPLIED sq_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      SubNonneg(a, 0.0);  // cite: sub_nonneg
      SubNonneg(b, a);  // cite: sub_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1273, 1274, 1276, 1277 / `ring1` exec 1282)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1275, 1278, 1281, 1283, 1284, 1285 … / `ring1` exec 1282)]
      // NOT APPLIED 2 of the 3 named instances of mul_nonneg: Lean's records at this tactic hold only 1 distinct application of it (which named ones: not identified)
      assert (0.0 <= ((a - 0.0))) && (0.0 <= ((b - a)));  // precondition of MulNonneg (Lean: mul_nonneg)
      MulNonneg((a - 0.0), (b - a));  // cite: mul_nonneg
      // UNCITED-APPLIED internal ×268 [exec 1282 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.sub_congr ×8, Mathlib.Tactic.Ring.sub_pf ×8, Mathlib.Tactic.Ring.neg_add ×8 (+44 more heads, ×236) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 1273 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1275 4620-4887]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
}

