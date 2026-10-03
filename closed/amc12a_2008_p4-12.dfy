// NOT CLOSED — failing line amc12a_2008_p4-12: theorem amc12a_2008_p4, Dafny line 12 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: 
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 3); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K5=failed; this file is the honest base attempt
// Dafny: finished with 16 verified, 3 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2008_p4.dfy"
lemma {:induction false} vc_amc12a_2008_p4_L12()
  ensures   Real.prod(IccN(1, 501), ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real)))) == 502.0
{
  // [TACTIC: «_<;>_» [ Finset.prod_range_succ ] norm_num [ Finset.prod_range_succ ] <;> norm_num norm_num <;> rw [ show ( 4 : ℝ ) = ( 4 : ℚ ) by norm_num norm_num ] rw [ show ( 4 : ℝ ) = ( 4 : ℚ ) by norm_num norm_num ] <;> norm_cast norm_cast norm_cast <;> simp [ Finset.prod_range_succ ] simp [ Finset.prod_range_succ ] simp [ Finset.prod_range_succ ] <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all <;> norm_num norm_num <;> ring <;> simp_all simp_all simp_all]
  // [TACTIC: choice [ Finset.prod_range_succ ] norm_num [ Finset.prod_range_succ ]]
  // UNCITED Finset.prod_range_succ: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
  // UNCITED-APPLIED internal ×2 [exec 279 521-554]: applications made inside the tactic's own automation, not stated — Finset.prod_div_distrib ×1; machinery/glue: congrArg ×1
  assert (Real.div(Real.prod(IccN(1, 501), ((x: nat) => ((4.0 * (x as real)) + 4.0))), Real.prod(IccN(1, 501), ((x: nat) => (4.0 * (x as real))))) == 502.0) by {  // sub-goal of `rw` (Lean state) // @tac 561-569 // @tac 576-619
    assert (4.0 == (Rat.of_int(4)).to_real()) by {  // sub-goal of `by` (Lean state) // @tac 610-618
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×6 [exec 308 610-618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
    }
    assert (Real.div(Real.prod(IccN(1, 501), ((x: nat) => (((Rat.of_int(4)).to_real() * (x as real)) + (Rat.of_int(4)).to_real()))), Real.prod(IccN(1, 501), ((x: nat) => ((Rat.of_int(4)).to_real() * (x as real))))) == 502.0) by {  // sub-goal of `norm_cast` (Lean state) // @tac 626-635
      // UNCITED-APPLIED Eq.symm(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.prod(IccN(1, 501), ((x: nat) => Rat.add(Rat.mul(Rat.of_int(4), Rat.of_int(x)), Rat.of…): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm((Rat.of_int(502)).to_real(), 502.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm: 1 more recorded instance (↑↑x, ↑x) not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_add: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_mul: recorded instance not expressible here (sort/type/scope), not guessed
      assert (Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => (4 * i))))) == Rat.of_int(502));  // sub-goal of `norm_cast` (Lean state)
      // UNCITED-APPLIED internal ×33 [exec 347 626-635]: applications made inside the tactic's own automation, not stated — Finset.prod_congr ×5, Rat.cast_natCast ×2, Nat.cast_add ×2, Nat.cast_mul ×2, Finset.prod_natCast ×1, Rat.cast_ofNat ×1; machinery/glue: congrArg ×8, Eq.trans ×6, Eq.symm ×4, congr ×2
    }
    // UNCITED-APPLIED congrArg((4 : ℝ), ↑(4 : ℚ), fun (_a : ℝ) => (∏ x ∈ Finset.Icc (1 : ℕ) (501 : ℕ), (_a * ↑x + _a)) …): no library counterpart (not stated) [exec 301 576-619]
  }
}

