// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2003_p25.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2003_p25(a: real, b: real, f: real -> real)
  requires (0.0 < b)
  requires (forall x: real :: (f(x) == Real.sqrt(((a * (x * x)) + (b * x)))))
  requires ((iset x: real | (0.0 <= f(x))) == (iset y: real | exists x_1: real :: x_1 in (iset x: real | (0.0 <= f(x))) && y == f(x_1)))
  ensures ((a == 0.0) || (a == (-4.0))) // @tac 722-739 // @tac 742-830 // @tac 833-852 // @tac 855-874 // @tac 877-899 // @tac 902-921 // @tac 924-946 // @tac 949-981 // @tac 984-1001 // @tac 1004-1016 // @tac 1019-1039 // @tac 1042-1057 // @tac 1060-1081
{
  // have h₃ :   [type from Lean state]
  assert ((iset x: real | (0.0 <= f(x))) == (iset y: real | exists x_1: real :: x_1 in (iset x: real | (0.0 <= f(x))) && y == f(x_1))) by {
    // [TACTIC: exact h₂]
    assert ((iset x: real | (0.0 <= f(x))) == (iset y: real | exists x_1: real :: x_1 in (iset x: real | (0.0 <= f(x))) && y == f(x_1)));
  }
  // [TACTIC: simp only [ Set.ext_iff , h₁ , Set.mem_setOf_eq , Set.mem_image , Real.sqrt_nonneg ] at h₃]
  // UNCITED Real.sqrt_nonneg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
  // UNCITED Set.ext_iff: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
  // UNCITED Set.mem_setOf_eq: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
  // UNCITED Set.mem_image: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
  assert (forall x: real :: (true <==> (exists x_1: real :: (true && (Real.sqrt(((a * (x_1 * x_1)) + (b * x_1))) == x)))));  // hypothesis h₃ after `simp` (Lean state) // @tac-hyp 742-830
  // have h₄ :   [type from Lean state]
  assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == 0.0))));
    // [TACTIC: exact h₃ ( 0 )]
  // have h₅ :   [type from Lean state]
  assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == 1.0))));
    // [TACTIC: exact h₃ ( 1 )]
  // have h₆ :   [type from Lean state]
  assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == -(1.0)))));
    // [TACTIC: exact h₃ ( ( - 1 ) )]
  // have h₇ :   [type from Lean state]
  assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == 2.0))));
    // [TACTIC: exact h₃ ( 2 )]
  // have h₈ :   [type from Lean state]
  assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == -(2.0)))));
    // [TACTIC: exact h₃ ( ( - 2 ) )]
  // [TACTIC: simp at h₄ h₅ h₆ h₇ h₈]
  assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == 0.0));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 949-981
  assert (exists x: real :: (((a * (x * x)) + (b * x)) == 1.0));  // hypothesis h₅ after `simp` (Lean state) // @tac-hyp 949-981
  assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == -(1.0)));  // hypothesis h₆ after `simp` (Lean state) // @tac-hyp 949-981
  assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == 2.0));  // hypothesis h₇ after `simp` (Lean state) // @tac-hyp 949-981
  assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == -(2.0)));  // hypothesis h₈ after `simp` (Lean state) // @tac-hyp 949-981
  // have h₉ :   [type from Lean state]
  assert 0.0 < b;  /* [IN-FILE CHECK] requires 1 of vc_amc12a_2003_p25_L49 */
  assert forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1);  /* [IN-FILE CHECK] requires 2 of vc_amc12a_2003_p25_L49 */
  assert (iset y_2: real | 0.0 <= f(y_2)) == (iset y_3: real | exists x_1_4: real :: 0.0 <= f(x_1_4) && y_3 == f(x_1_4));  /* [IN-FILE CHECK] requires 3 of vc_amc12a_2003_p25_L49 */
  assert forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_1_17 * x_1_17) + b * x_1_17) == x_19);  /* [IN-FILE CHECK] requires 4 of vc_amc12a_2003_p25_L49 */
  assert true == (exists x_21: real :: Real.sqrt(a * (x_21 * x_21) + b * x_21) == 0.0);  /* [IN-FILE CHECK] requires 5 of vc_amc12a_2003_p25_L49 */
  assert true == (exists x_23: real :: Real.sqrt(a * (x_23 * x_23) + b * x_23) == 1.0);  /* [IN-FILE CHECK] requires 6 of vc_amc12a_2003_p25_L49 */
  assert true == (exists x_25: real :: Real.sqrt(a * (x_25 * x_25) + b * x_25) == 0.0 - 1.0);  /* [IN-FILE CHECK] requires 7 of vc_amc12a_2003_p25_L49 */
  assert true == (exists x_27: real :: Real.sqrt(a * (x_27 * x_27) + b * x_27) == 2.0);  /* [IN-FILE CHECK] requires 8 of vc_amc12a_2003_p25_L49 */
  assert true == (exists x_29: real :: Real.sqrt(a * (x_29 * x_29) + b * x_29) == 0.0 - 2.0);  /* [IN-FILE CHECK] requires 9 of vc_amc12a_2003_p25_L49 */
  assert exists x_31: real :: Real.sqrt(a * (x_31 * x_31) + b * x_31) == 0.0;  /* [IN-FILE CHECK] requires 10 of vc_amc12a_2003_p25_L49 */
  assert exists x_33: real :: a * (x_33 * x_33) + b * x_33 == 1.0;  /* [IN-FILE CHECK] requires 11 of vc_amc12a_2003_p25_L49 */
  assert exists x_35: real :: Real.sqrt(a * (x_35 * x_35) + b * x_35) == 0.0 - 1.0;  /* [IN-FILE CHECK] requires 12 of vc_amc12a_2003_p25_L49 */
  assert exists x_37: real :: Real.sqrt(a * (x_37 * x_37) + b * x_37) == 2.0;  /* [IN-FILE CHECK] requires 13 of vc_amc12a_2003_p25_L49 */
  assert exists x_39: real :: Real.sqrt(a * (x_39 * x_39) + b * x_39) == 0.0 - 2.0;  /* [IN-FILE CHECK] requires 14 of vc_amc12a_2003_p25_L49 */
  assert exists x_1_1: real :: a * (x_1_1 * x_1_1) + b * x_1_1 == 1.0;  /* [IN-FILE CHECK] requires 15 of vc_amc12a_2003_p25_L49 */
  vc_amc12a_2003_p25_L49(a, b, f);  /* [IN-FILE CHECK] the closed lemma for line 49 */
  assert (exists x: real :: (((a * (x * x)) + (b * x)) == 1.0)) by {
    // [TACTIC: exact h₅]
    assert (exists x: real :: (((a * (x * x)) + (b * x)) == 1.0));  // hypothesis h₅ at `exact` (Lean state)
    // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (1 : ℝ), fun (x : ℝ) => a * x ^ (2 : ℕ) + b * x = (1 : ℝ)): no library counterpart (not stated) [exec 87 984-1001]
    // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 87 984-1001]
    // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 87 984-1001]
  }
  // [TACTIC: simp at h₉]
  // have h₁₀ :   [type from Lean state]
  assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == -(1.0))) by {
    // [TACTIC: exact h₆]
    assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == -(1.0)));  // hypothesis h₆ at `exact` (Lean state)
    // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (-1 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (-1 : ℝ)): no library counterpart (not stated) [exec 100 1019-1039]
    // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 100 1019-1039]
    // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 100 1019-1039]
  }
  // [TACTIC: simp at h₁₀]
  // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 104 1060-1081]
  // UNCITED-APPLIED congrArg(fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (0 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (0 : ℝ), fun (x : ℝ → Prop) => True ↔ Exists x): no library counterpart (not stated) [exec 104 1060-1081]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (0 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (0 : ℝ)): no library counterpart (not stated) [exec 104 1060-1081]
  // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 104 1060-1081]
  // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 104 1060-1081]
  // obtain ⟨x, hx⟩ := h₄
  assert exists x: real {:trigger Real.sqrt(((a * (x * x)) + (b * x)))} :: Real.sqrt(((a * (x * x)) + (b * x))) == 0.0;  // cert: type of h₄
  var x: real :| Real.sqrt(((a * (x * x)) + (b * x))) == 0.0;
  if ((Real.sqrt(((a * (x * x)) + (b * x))) == 0.0)) {  // sub-goal before `cases'` (Lean state)
    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 105 1084-1105]
    // UNCITED-APPLIED congrArg(fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (2 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (2 : ℝ), fun (x : ℝ → Prop) => True ↔ Exists x): no library counterpart (not stated) [exec 105 1084-1105]
    // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (2 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (2 : ℝ)): no library counterpart (not stated) [exec 105 1084-1105]
    // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 105 1084-1105]
    // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 105 1084-1105]
    // obtain ⟨x, hx⟩ := h₇
    assert exists x_1: real {:trigger Real.sqrt(((a * (x_1 * x_1)) + (b * x_1)))} :: Real.sqrt(((a * (x_1 * x_1)) + (b * x_1))) == 2.0;  // cert: type of h₇
    var x_1: real :| Real.sqrt(((a * (x_1 * x_1)) + (b * x_1))) == 2.0;
    if ((Real.sqrt(((a * (x_1 * x_1)) + (b * x_1))) == 2.0)) {  // sub-goal before `cases'` (Lean state)
      // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 106 1108-1129]
      // UNCITED-APPLIED congrArg(fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (-2 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (-2 : ℝ), fun (x : ℝ → Prop) => True ↔ Exists x): no library counterpart (not stated) [exec 106 1108-1129]
      // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (-2 : ℝ), fun (x : ℝ) => √(a * x ^ (2 : ℕ) + b * x) = (-2 : ℝ)): no library counterpart (not stated) [exec 106 1108-1129]
      // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 106 1108-1129]
      // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 106 1108-1129]
      // obtain ⟨x, hx⟩ := h₈
      assert exists x_2: real {:trigger Real.sqrt(((a * (x_2 * x_2)) + (b * x_2)))} :: Real.sqrt(((a * (x_2 * x_2)) + (b * x_2))) == -2.0;  // cert: type of h₈
      var x_2: real :| Real.sqrt(((a * (x_2 * x_2)) + (b * x_2))) == -2.0;
      if ((Real.sqrt(((a * (x_2 * x_2)) + (b * x_2))) == -(2.0))) {  // sub-goal before `nlinarith` (Lean state)
        // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( a * x ^ 2 + b * x ) , Real.sqrt_nonneg ( a * 2 ^ 2 + b * 2 ) , Real.sqrt_nonneg ( a * ( - 2 ) ^ 2 + b * ( - 2 ) ) , Real.sqrt_nonneg ( a * 1 ^ 2 + b * 1 ) , Real.sqrt_nonneg ( a * ( - 1 ) ^ 2 + b * ( - 1 ) ) ]]
        // (n)linarith certificate (Lean execution 1132-1352 exec 107): nothing of it stated; Lean's records:
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(2 : ℝ) * (-1 : ℝ) + (√(a * x ^ (2 : ℕ) + b * x) - (-2 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        // GAP: recorded certificate sum names a binder the translation renamed (Lean shadowed it): which one is unknown, not instantiated
        // UNCITED-APPLIED internal ×65 [exec 107 1132-1352]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_congr ×3 (+31 more heads, ×46) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.sqrt_nonneg [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 109 1132-1352]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        RealSqrtNonneg(((a * (x_2 * x_2)) + (b * x_2)));  // cite: Real.sqrt_nonneg
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // NOT APPLIED `Real.sqrt_nonneg ( a * 2 ^ 2 + b * 2 )`, `Real.sqrt_nonneg ( a * ( - 2 ) ^ 2 + b * ( - 2 ) )`, `Real.sqrt_nonneg ( a * 1 ^ 2 + b * 1 )`, `Real.sqrt_nonneg ( a * ( - 1 ) ^ 2 + b * ( - 1 ) )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 5 named instances match a recorded application)
        assert ((a == 0.0) || (a == -(4.0)));  // sub-goal before `nlinarith` (Lean state) // @tac 1132-1352
      }
      assert ((a == 0.0) || (a == -(4.0)));  // sub-goal before `cases'` (Lean state) // @tac 1108-1129
    }
    assert ((a == 0.0) || (a == -(4.0)));  // sub-goal before `cases'` (Lean state) // @tac 1084-1105
  }
  // GAP: recorded applications of Lean executions this translation states nowhere:
  // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED Eq.trans(f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | (0 : ℝ)…, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED Eq.trans(f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | (0 : ℝ)…, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED Eq.trans(f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | (0 : ℝ)…, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED Eq.trans(f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | (0 : ℝ)…, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED Eq.trans ×4: no library counterpart (not stated) — further recorded instances: Eq.trans; Eq.trans(f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | (0 : ℝ)…, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}); Eq.trans … [exec 74 924-946; exec 74 924-946; exec 87 984-1001; exec 100 1019-1039]
  // UNCITED-APPLIED congr(Eq {x : ℝ | (0 : ℝ) ≤ f x}, Eq {x : ℝ | True}, f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED congr(Eq {x : ℝ | (0 : ℝ) ≤ f x}, Eq {x : ℝ | True}, f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED congr(Eq {x : ℝ | (0 : ℝ) ≤ f x}, Eq {x : ℝ | True}, f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED congr(Eq {x : ℝ | (0 : ℝ) ≤ f x}, Eq {x : ℝ | True}, f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED congr(Eq {x : ℝ | (0 : ℝ) ≤ f x}, Eq {x : ℝ | True}, f '' {x : ℝ | (0 : ℝ) ≤ f x}, (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1)) '' {x : ℝ | True}): no library counterpart (not stated) [exec 74 924-946]
  // UNCITED-APPLIED congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => Eq (setOf x)): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED congrArg(f x, √(a * x ^ (2 : ℕ) + b * x), LE.le (0 : ℝ)): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1…): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED congrArg(Iff True): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => Eq (setOf x)): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED congrArg(f x, √(a * x ^ (2 : ℕ) + b * x), LE.le (0 : ℝ)): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1…): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED congrArg(Iff True): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED congrArg ×15: no library counterpart (not stated) — further recorded instances: congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => Eq (setOf x)); congrArg(f x, √(a * x ^ (2 : ℕ) + b * x), LE.le (0 : ℝ)); congrArg(fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True, fun (x : ℝ → Prop) => (fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1…) … [exec 50 877-899; exec 50 877-899; exec 50 877-899; exec 50 877-899; exec 62 902-921; exec 62 902-921]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True): no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True): no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => (0 : ℝ) ≤ f x, fun (x : ℝ) => True): no library counterpart (not stated) [exec 74 924-946]
  // UNCITED-APPLIED Set.image_congr(f, fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1), {x : ℝ | (0 : ℝ) ≤ f x}): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED Set.image_congr(f, fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1), {x : ℝ | (0 : ℝ) ≤ f x}): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED Set.image_congr(f, fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1), {x : ℝ | (0 : ℝ) ≤ f x}): no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED Set.image_congr(f, fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1), {x : ℝ | (0 : ℝ) ≤ f x}): no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED Set.image_congr(f, fun (a_1 : ℝ) => √(a * a_1 ^ (2 : ℕ) + b * a_1), {x : ℝ | (0 : ℝ) ≤ f x}): no library counterpart (not stated) [exec 74 924-946]
  // UNCITED-APPLIED forall_congr(fun (a_1 : ℝ) => True ↔ a_1 ∈ (fun (a_2 : ℝ) => √(a * a_2 ^ (2 : ℕ) +…, fun (a_1 : ℝ) => True ↔ ∃ x ∈ {x : ℝ | True}, √(a * x ^ (2 : ℕ) + b *…): no library counterpart (not stated) [exec 26 833-852]
  // UNCITED-APPLIED forall_congr(fun (a_1 : ℝ) => True ↔ a_1 ∈ (fun (a_2 : ℝ) => √(a * a_2 ^ (2 : ℕ) +…, fun (a_1 : ℝ) => True ↔ ∃ x ∈ {x : ℝ | True}, √(a * x ^ (2 : ℕ) + b *…): no library counterpart (not stated) [exec 38 855-874]
  // UNCITED-APPLIED forall_congr(fun (a_1 : ℝ) => True ↔ a_1 ∈ (fun (a_2 : ℝ) => √(a * a_2 ^ (2 : ℕ) +…, fun (a_1 : ℝ) => True ↔ ∃ x ∈ {x : ℝ | True}, √(a * x ^ (2 : ℕ) + b *…): no library counterpart (not stated) [exec 50 877-899]
  // UNCITED-APPLIED forall_congr(fun (a_1 : ℝ) => True ↔ a_1 ∈ (fun (a_2 : ℝ) => √(a * a_2 ^ (2 : ℕ) +…, fun (a_1 : ℝ) => True ↔ ∃ x ∈ {x : ℝ | True}, √(a * x ^ (2 : ℕ) + b *…): no library counterpart (not stated) [exec 62 902-921]
  // UNCITED-APPLIED forall_congr(fun (a_1 : ℝ) => True ↔ a_1 ∈ (fun (a_2 : ℝ) => √(a * a_2 ^ (2 : ℕ) +…, fun (a_1 : ℝ) => True ↔ ∃ x ∈ {x : ℝ | True}, √(a * x ^ (2 : ℕ) + b *…): no library counterpart (not stated) [exec 74 924-946]
  // UNCITED-APPLIED instance of h₁: `f x = √(a * x ^ (2 : ℕ) + b * x)` — Lean's proof of h₄ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f a = √(a✝¹ * a ^ (2 : ℕ) + b * a)` — Lean's proof of h₄ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f x = √(a * x ^ (2 : ℕ) + b * x)` — Lean's proof of h₅ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f a = √(a✝¹ * a ^ (2 : ℕ) + b * a)` — Lean's proof of h₅ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f x = √(a * x ^ (2 : ℕ) + b * x)` — Lean's proof of h₆ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f a = √(a✝¹ * a ^ (2 : ℕ) + b * a)` — Lean's proof of h₆ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f x = √(a * x ^ (2 : ℕ) + b * x)` — Lean's proof of h₇ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f a = √(a✝¹ * a ^ (2 : ℕ) + b * a)` — Lean's proof of h₇ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f x = √(a * x ^ (2 : ℕ) + b * x)` — Lean's proof of h₈ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  // UNCITED-APPLIED instance of h₁: `f a = √(a✝¹ * a ^ (2 : ℕ) + b * a)` — Lean's proof of h₈ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
}



// ===== closed lemma for line 49 (from closed/amc12a_2003_p25-49.dfy) =====

lemma {:induction false} vc_amc12a_2003_p25_L49(a: real, b: real, f: real -> real)
  requires 0.0 < b
  requires forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)
  requires (iset y_2: real | 0.0 <= f(y_2)) == (iset y_3: real | exists x_1_4: real :: 0.0 <= f(x_1_4) && y_3 == f(x_1_4))
  requires forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_1_17 * x_1_17) + b * x_1_17) == x_19)
  requires true == (exists x_21: real :: Real.sqrt(a * (x_21 * x_21) + b * x_21) == 0.0)
  requires true == (exists x_23: real :: Real.sqrt(a * (x_23 * x_23) + b * x_23) == 1.0)
  requires true == (exists x_25: real :: Real.sqrt(a * (x_25 * x_25) + b * x_25) == 0.0 - 1.0)
  requires true == (exists x_27: real :: Real.sqrt(a * (x_27 * x_27) + b * x_27) == 2.0)
  requires true == (exists x_29: real :: Real.sqrt(a * (x_29 * x_29) + b * x_29) == 0.0 - 2.0)
  requires exists x_31: real :: Real.sqrt(a * (x_31 * x_31) + b * x_31) == 0.0
  requires exists x_33: real :: a * (x_33 * x_33) + b * x_33 == 1.0
  requires exists x_35: real :: Real.sqrt(a * (x_35 * x_35) + b * x_35) == 0.0 - 1.0
  requires exists x_37: real :: Real.sqrt(a * (x_37 * x_37) + b * x_37) == 2.0
  requires exists x_39: real :: Real.sqrt(a * (x_39 * x_39) + b * x_39) == 0.0 - 2.0
  requires exists x_1_1: real :: a * (x_1_1 * x_1_1) + b * x_1_1 == 1.0
  ensures   exists x_41: real :: a * (x_41 * x_41) + b * x_41 == 1.0
{
  forall t: real ensures 0.0 <= Real.sqrt(t) { RealSqrtNonneg(t); }  // K5: Mathlib Real.sqrt_nonneg (named in Lean simp only set, line 15; used by nlinarith)  // [ADDED]
    // [TACTIC: exact h₅]
    assert (exists x_14: real :: (((a * (x_14 * x_14)) + (b * x_14)) == 1.0));  // hypothesis h₅ at `exact` (Lean state)
    // UNCITED-APPLIED funext(fun (x : ℝ) => Prop, fun (x : ℝ) => True ∧ √(a * x ^ (2 : ℕ) + b * x) = (1 : ℝ), fun (x : ℝ) => a * x ^ (2 : ℕ) + b * x = (1 : ℝ)): no library counterpart (not stated) [exec 87 984-1001]
    // UNCITED-APPLIED true_and: no library counterpart (not stated) [exec 87 984-1001]
    // UNCITED-APPLIED true_iff: no library counterpart (not stated) [exec 87 984-1001]
}

