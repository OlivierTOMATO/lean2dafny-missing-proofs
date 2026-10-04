// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2008_p4.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2008_p4()
  ensures (Real.prod(IccN(1, 501), ((k: nat) => Real.div(((4.0 * (k as real)) + 4.0), (4.0 * (k as real))))) == 502.0) // @tac 521-1368 // @tac 521-1353 // @tac 521-1342 // @tac 521-1327 // @tac 521-1312 // @tac 521-1301 // @tac 521-1286 // @tac 521-1271 // @tac 521-1260 // @tac 521-1245 // @tac 521-1230 // @tac 521-1219 // @tac 521-1204 // @tac 521-1189 // @tac 521-1178 // @tac 521-1163 // @tac 521-1148 // @tac 521-1137 // @tac 521-1122 // @tac 521-1107 // @tac 521-1096 // @tac 521-1081 // @tac 521-1066 // @tac 521-1055 // @tac 521-1040 // @tac 521-1025 // @tac 521-1014 // @tac 521-999 // @tac 521-984 // @tac 521-973 // @tac 521-958 // @tac 521-943 // @tac 521-932 // @tac 521-917 // @tac 521-902 // @tac 521-891 // @tac 521-876 // @tac 521-861 // @tac 521-850 // @tac 521-835 // @tac 521-820 // @tac 521-809 // @tac 521-794 // @tac 521-779 // @tac 521-768 // @tac 521-753 // @tac 521-738 // @tac 521-727 // @tac 521-712 // @tac 521-697 // @tac 521-686 // @tac 521-671 // @tac 521-635 // @tac 521-619 // @tac 521-569 // @tac 521-554
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
      vc_amc12a_2008_p4_L22();  /* [IN-FILE CHECK] the closed lemma for line 22 */
    }
    // UNCITED-APPLIED congrArg((4 : ℝ), ↑(4 : ℚ), fun (_a : ℝ) => (∏ x ∈ Finset.Icc (1 : ℕ) (501 : ℕ), (_a * ↑x + _a)) …): no library counterpart (not stated) [exec 301 576-619]
  }
}



// ===== closed lemma for line 22 (from closed/amc12a_2008_p4-22.dfy) =====

lemma {:induction false} vc_amc12a_2008_p4_L22()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures   Real.div(Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real())), Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real)))) == 502.0
{
  NatCastProdReal(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real()));  // [ADDED]
  NatCastProdReal(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i), ((x: nat) => Rat.of_int(4).to_real() * (x as real)));  // [ADDED]
      // UNCITED-APPLIED Eq.symm(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.prod(IccN(1, 501), ((x: nat) => Rat.add(Rat.mul(Rat.of_int(4), Rat.of_int(x)), Rat.of…): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm((Rat.of_int(502)).to_real(), 502.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm: 1 more recorded instance (↑↑x, ↑x) not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_add: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_mul: recorded instance not expressible here (sort/type/scope), not guessed
      assert (Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => (4 * i))))) == Rat.of_int(502));  // sub-goal of `norm_cast` (Lean state)
      // UNCITED-APPLIED internal ×33 [exec 347 626-635]: applications made inside the tactic's own automation, not stated — Finset.prod_congr ×5, Rat.cast_natCast ×2, Nat.cast_add ×2, Nat.cast_mul ×2, Finset.prod_natCast ×1, Rat.cast_ofNat ×1; machinery/glue: congrArg ×8, Eq.trans ×6, Eq.symm ×4, congr ×2
}

// side checks at the same line (not the reported failure): 4 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side1()  // [ADDED DECLARATION]
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side2()  // [ADDED DECLARATION]
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 501
{ }


// K4 (work copy only): exact Mathlib Nat.cast_prod / Finset.prod_natCast (↑(∏ i ∈ s, f i) = ∏ i ∈ s, ↑(f i)),
// with Finset.prod_congr folded in (h agrees pointwise with the cast of f: Nat.cast_add/Nat.cast_mul/Rat.cast_ofNat).
// All recorded at Lean exec 347 (norm_cast).
lemma {:axiom} NatCastProdReal(s: set<nat>, f: nat -> int, h: nat -> real)  // [ADDED DECLARATION]
  requires forall x :: x in s ==> f(x) >= 0
  requires forall x :: x in s ==> h(x) == f(x) as real
  ensures Real.prod(s, h) == Int.prod(s, f) as real
