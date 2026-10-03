// NOT CLOSED — failing line aime_1999_p11-1161: theorem aime_1999_p11, Dafny line 1161 (OOR: Verification out of resource (aime_1999_p11))
// failing Dafny line: assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2))) by {
// Lean step: norm_cast at h₃ ⊢
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K4=oor, K3=oor, pair_K3_K4=oor; this file is the honest base attempt
// Dafny: finished with 21 verified, 1 error, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L1161(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  requires 180.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.div(Real.cos(2.5 * Real.pi() / 180.0), Real.sin(2.5 * Real.pi() / 180.0))
  requires 72.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(35.0 * Real.pi() / 72.0)
  requires Real.tan(m.to_real() * Real.pi() / 180.0) == Real.tan(35.0 * Real.pi() / 72.0)
  requires m.to_real() * Real.pi() / 180.0 == 35.0 * Real.pi() / 72.0
  requires 2.0 != 0.0
  requires m.to_real() == 175.0 / 2.0
  requires Rat.of_int(2).Rational?
  requires Rat.mul(m, Rat.of_int(2)).Rational?
  requires Rat.of_int(175).Rational?
  requires Rat.div(Rat.of_int(175), Rat.of_int(2)).Rational?
  ensures   m == Rat.div(Rat.of_int(175), Rat.of_int(2))
{
        // [TACTIC: «_<;>_» at h₃ ⊢ norm_cast at h₃ ⊢ <;> field_simp at h₃ ⊢ <;> norm_cast at h₃ ⊢ norm_cast at h₃ ⊢ <;> ring_nf at h₃ ⊢ <;> norm_num at h₃ ⊢ <;> ( try norm_num norm_num ) <;> ( try linarith linarith ) <;> ( try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ] ) <;> simp_all [ Rat.ext_iff , Nat.cast_inj ] simp_all [ Rat.ext_iff , Nat.cast_inj ] simp_all [ Rat.ext_iff , Nat.cast_inj ] <;> norm_num at * <;> ring_nf at * <;> norm_num at * <;> linarith linarith]
        // [TACTIC: choice at h₃ ⊢ norm_cast at h₃ ⊢]
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
        assert (((m).to_real() * 2.0) == 175.0);  // hypothesis h₃ after `field_simp` (Lean state) // @tac-hyp 11777-11799
        assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175)) by {  // sub-goal of `norm_cast` (Lean state) // @tac 11810-11831
          // UNCITED-APPLIED Eq.symm((Rat.of_int(2)).to_real(), 2.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          // UNCITED-APPLIED Eq.symm((Rat.of_int(175)).to_real(), 175.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℚ and ℝ in this proof; the record does not say which)
          assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175));  // hypothesis h₃ after `norm_cast` (Lean state) // @tac-hyp 11810-11831
          // UNCITED-APPLIED congrArg(↑m * (2 : ℝ), ↑(m * ↑(2 : ℕ)), fun (x : ℝ) => x = ↑(175 : ℕ)): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED congrArg((2 : ℝ), ↑(2 : ℚ), HMul.hMul ↑m): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED congrArg((175 : ℝ), ↑(175 : ℚ), Eq ↑(m * ↑(2 : ℕ))): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Eq.trans(↑m * (2 : ℝ), ↑m * ↑(2 : ℚ), ↑(m * ↑(2 : ℕ))): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Rat.cast_ofNat(nat_lit 2): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED Rat.cast_ofNat(nat_lit 175): no library counterpart (not stated) [exec 2799 11810-11831]
          // UNCITED-APPLIED internal ×3 [exec 2799 11810-11831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Meta.NormNum.isNat_eq_false ×1
        }
        // UNCITED-APPLIED internal ×4 [exec 2770 11777-11799]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Meta.NormNum.isNat_eq_false ×1
        // [TACTIC: try norm_num norm_num]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try norm_num norm_num )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ]]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try nlinarith [ Real.pi_gt_three ] nlinarith [ Real.pi_gt_three ] )]  NOT RUN in Lean (no execution recorded)
}

