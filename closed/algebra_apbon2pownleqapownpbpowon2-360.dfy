// CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-360: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 360 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (Real.pow(((a + b) / 2.0), (n + 1)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by {
// Lean step: linarith
// hypotheses: 25 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 35 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L360(a: real, b: real, n: nat)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires Real.pow((a + b) / 2.0, n - 1 + 1) <= (Real.pow(a, n - 1 + 1) + Real.pow(b, n - 1 + 1)) / 2.0
  requires 0 + 1 <= n
  requires (a - b) * (Real.pow(a, n) - Real.pow(b, n)) >= 0.0
  requires 2.0 != 0.0
  requires (a + b) / 2.0 > 0.0
  requires 0 <= n + 1
  requires Real.pow((a + b) / 2.0, n + 1) == Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0)
  requires Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0)
  requires 4.0 != 0.0
  requires (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0) == (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires (Real.pow(a, n + 1) + Real.pow(b, n + 1)) / 2.0 >= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires 2.0 * (2.0 * Real.pow((a + b) / 2.0, n + 1) - 1.0 * Real.pow((a + b) / 2.0, n) * (1.0 * a + 1.0 * b)) + (1.0 * Real.pow((a + b) / 2.0, n) * (2.0 * a + 2.0 * b) - (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b))) + (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b) - 4.0 * Real.pow((a + b) / 2.0, n + 1)) == 0.0
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  ensures   Real.pow((a + b) / 2.0, n + 1) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
{
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3347-3355 exec 836)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_22(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×31 [exec 836 3347-3355]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×5, CancelDenoms.sub_subst ×3, CancelDenoms.div_subst ×3, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×2, Linarith.lt_irrefl ×1, Linarith.le_of_eq_of_le ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×180 [exec 888 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+46 more heads, ×148) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 850 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 854 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 856 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 878 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 881 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 853 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 851 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 842 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 837 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 838 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 839 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 840 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 841 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 849 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 844 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 845 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 846 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 847 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 848 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 863 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 852 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 837, 838, 839, 840, 841, 842 … / `ring1` exec 888)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 843, 852, 878, 881 / `ring1` exec 888)]
            // UNCITED-APPLIED internal ×5 [exec 843 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
}

