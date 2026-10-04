// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2021_p1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h_pi_lb`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(S: set<int>)
  ensures ((-((53097.0 * 1.0)) + (3.0 * ((1.0 * 392699.0) - (125000.0 * Real.pi())))) + (125000.0 * ((3.0 * Real.pi()) - 9.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_pi_ub`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(S: set<int>)
  ensures (((575221.0 * (9.0 - (3.0 * Real.pi()))) + (3.0 * ((1000000.0 * Real.pi()) - (1.0 * 3141593.0)))) + (424779.0 * (10.0 - (3.0 * Real.pi())))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_S_eq/h₂/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(S: set<int>, x: int)
  ensures ((-(1) + ((x + 1) - -(9))) + ((-(10) + 1) - x)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_S_eq/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(S: set<int>, x: int)
  ensures ((((3.0 * Real.pi()) - 10.0) + (abs((x as real)) - (3.0 * Real.pi()))) + (10.0 - abs((x as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_S_eq/h₃/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(S: set<int>, x: int)
  ensures ((-(1) + ((9 + 1) - x)) + ((x + 1) - 10)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_S_eq/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(S: set<int>, x: int)
  ensures ((((3.0 * Real.pi()) - 10.0) + (abs((x as real)) - (3.0 * Real.pi()))) + (10.0 - abs((x as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_S_eq/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(S: set<int>, x: int)
  ensures (((9.0 - (3.0 * Real.pi())) + (abs((x as real)) - 9.0)) + ((3.0 * Real.pi()) - abs((x as real)))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2021_p1(S: set<int>)
  requires (forall x: int :: ((x in S) <==> ((IntAbs(x) as real) < (3.0 * Real.pi()))))
  ensures (|S| == 19) // @tac 420-537 // @tac 543-661 // @tac 667-3510 // @tac 3516-3640 // @tac 3646-3717 // @tac 3723-3735
{
  // have h_pi_lb : 9 < 3 * Real.pi  [type from Lean state]
  assert (9.0 < (3.0 * Real.pi())) by { // @tac 469-495 // @tac 500-537 // @tac 500-520 // @tac 529-537
    // have [anonymous] :   [type from Lean state]
    assert (3.141592 < Real.pi()) by {
      // [TACTIC: exact Real.pi_gt_3141592]
      RealPiGt3141592();  // cite: Real.pi_gt_3141592 [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
    }
    // [TACTIC: «_<;>_» at this ⊢ <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» at this ⊢]
    assert ((392699.0 / 125000.0) < Real.pi());  // hypothesis this after `norm_num` (Lean state) // @tac-hyp 500-520
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 47, 48 / `ring1` exec 50)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 49, 51, 52, 53 / `ring1` exec 50)]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 529-537 exec 46)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(53097 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (53097.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((1 : ℝ) * (392699 : ℝ) - (125000 : ℝ) * π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 392699.0) - (125000.0 * Real.pi())) < 0.0); (3.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(125000 : ℝ) * ((392699 / 125000 : ℝ) - π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((392699.0 / 125000.0) - Real.pi()) < 0.0); (125000.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(125000 : ℝ) * ((3 : ℝ) * π - (9 : ℝ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((3.0 * Real.pi()) - 9.0) <= 0.0); (125000.0 > 0.0)
    // UNCITED-APPLIED Left.add_neg: certificate sum `(53097 : ℝ) * (-1 : ℝ) + (3 : ℝ) * ((1 : ℝ) * (392699 : ℝ) - (125000 : ℝ) * π) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_1(S);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×50 [exec 46 529-537]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×4, Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Linarith.mul_neg ×3, Mathlib.Meta.NormNum.IsNat.raw_refl ×3 (+20 more heads, ×27)
    // UNCITED-APPLIED internal ×129 [exec 50 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+33 more heads, ×97) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 51 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×14 [exec 47 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    // UNCITED-APPLIED internal ×6 [exec 48 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 49 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 52 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 53 529-537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h_pi_ub : 3 * Real.pi < 10  [type from Lean state]
  assert ((3.0 * Real.pi()) < 10.0) by { // @tac 593-619 // @tac 624-661 // @tac 624-644 // @tac 653-661
    // have [anonymous] :   [type from Lean state]
    assert (Real.pi() < 3.141593) by {
      // [TACTIC: exact Real.pi_lt_3141593]
      RealPiLt3141593();  // cite: Real.pi_lt_3141593 [a constant: the harvest records no applications of it; this tactic cannot succeed without using it]
    }
    // [TACTIC: «_<;>_» at this ⊢ <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» at this ⊢]
    assert (Real.pi() < (3141593.0 / 1000000.0));  // hypothesis this after `norm_num` (Lean state) // @tac-hyp 624-644
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 97, 98 / `ring1` exec 100)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 99, 101, 102, 103 / `ring1` exec 100)]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 653-661 exec 96)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(575221 : ℝ) * ((9 : ℝ) - (3 : ℝ) * π) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((9.0 - (3.0 * Real.pi())) < 0.0); (575221.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * ((1000000 : ℝ) * π - (1 : ℝ) * (3141593 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1000000.0 * Real.pi()) - (1.0 * 3141593.0)) < 0.0); (3.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(1000000 : ℝ) * (π - (3141593 / 1000000 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pi() - (3141593.0 / 1000000.0)) < 0.0); (1000000.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(424779 : ℝ) * ((10 : ℝ) - (3 : ℝ) * π) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((10.0 - (3.0 * Real.pi())) <= 0.0); (424779.0 > 0.0)
    // UNCITED-APPLIED Left.add_neg: certificate sum `(575221 : ℝ) * ((9 : ℝ) - (3 : ℝ) * π) + (3 : ℝ) * ((1000000 : ℝ) * π - (1 : ℝ) * (3141593 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_2(S);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×49 [exec 96 653-661]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×4, Mathlib.Meta.NormNum.IsNat.to_isRat ×4, Linarith.mul_neg ×3, Mathlib.Meta.NormNum.IsNat.raw_refl ×3 (+20 more heads, ×27)
    // UNCITED-APPLIED internal ×142 [exec 100 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.IsNat.to_isInt ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×8 (+33 more heads, ×110) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 101 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×14 [exec 97 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    // UNCITED-APPLIED internal ×6 [exec 98 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 99 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 102 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 103 653-661]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h_S_eq : S == Finset.Icc ( - 9 , 9 )  [type from Lean state]
  assert (S == Icc(-(9), 9)) by { // @tac 719-735
    // [TACTIC: apply Finset.ext]
    assert (forall a: int :: ((a in S) <==> (a in Icc(-(9), 9)))) by {  // sub-goal before `intro` (Lean state) // @tac 740-747
      // [TACTIC: intro x]  (lowered: its recorded goal under the new binders)
      forall x: int
        ensures ((x in S) <==> (x in Icc(-(9), 9)))  // sub-goal of `intro` (Lean state) // @tac 752-784
      {
        // [TACTIC: simp only [ Finset.mem_Icc , h₀ ]]
        assert ((x in S) <==> ((IntAbs(x) as real) < (3.0 * Real.pi())));  // instance of h₀ (Lean state)
        // UNCITED Finset.mem_Icc: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×2 [exec 122 752-784]: applications made inside the tactic's own automation, not stated — machinery/glue: congr ×1, congrArg ×1
        assert (((IntAbs(x) as real) < (3.0 * Real.pi())) <==> ((-(9) <= x) && (x <= 9))) by {  // sub-goal before `constructor` (Lean state) // @tac 789-800
          // [TACTIC: constructor]
          // `constructor`: 2 cases (Lean states); 2 branch bodies
          assert (((IntAbs(x) as real) < (3.0 * Real.pi())) ==> ((-(9) <= x) && (x <= 9))) by {  // sub-goal of `constructor` (Lean state) // @tac 878-885 // @tac 805-2544
            // intro h: P → Q  (N7 if-wrapper)
            if ((IntAbs(x) as real) < (3.0 * Real.pi())) {
              assert ((-(9) <= x) && (x <= 9)) by {  // sub-goal before `have` (Lean state) // @tac 892-954 // @tac 961-1737 // @tac 1744-2515 // @tac 2522-2544
                // have h₁ : abs ( x ) < 3 * Real.pi  [type from Lean state]
                assert (abs((x as real)) < (3.0 * Real.pi())); // @tac 938-954
                  // [TACTIC: Exact_mod_cast h]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED congrArg(|↑x|, ↑|x|, fun (x : ℝ) => x < ↑(3 : ℕ) * π): no library counterpart (not stated) [exec 146 938-954]
                // have h₂ : - 9 <=   [type from Lean state]
                assert (-(9) <= x) by { // @tac 1004-1018
                  // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 170 1004-1018]
                  // by_contra h
                  if !((-(9) <= x)) {
                    assert false by {  // sub-goal before `have` (Lean state) // @tac 1064-1110 // @tac 1119-1720 // @tac 1729-1737
                      // have h₃ : x <= - 10  [type from Lean state]
                      assert (x <= -(10)) by { // @tac 1102-1110
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1102-1110 exec 187)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (x + (1 : ℤ) - (-9 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_3(S, x);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×12 [exec 187 1102-1110]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×73 [exec 188 1102-1110]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_one_mul ×4 (+25 more heads, ×56)
                      }
                      // have h₄ : abs ( x ) >= 10  [type from Lean state]
                      assert (abs((x as real)) >= 10.0) by { // @tac 1168-1197 // @tac 1208-1618 // @tac 1629-1699 // @tac 1710-1720
                        // have h₅ : x <= - 10  [type from Lean state]
                        assert (x <= -(10)) by {
                          // [TACTIC: exact h₃]
                          assert (x <= -(10));
                        }
                        // have h₆ : abs ( x ) >= 10  [type from Lean state]
                        assert (IntAbs(x) >= 10) by { // @tac 1251-1618 // @tac 1251-1444 // @tac 1251-1314 // @tac 1251-1284
                          // [TACTIC: «_<;>_» abs_cases x with h₇ h₇ <;> ( try omega omega ) <;> ( try { norm_cast at h₇ ⊢ norm_cast at h₇ ⊢ <;> omega omega } ) <;> ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] <;> omega omega } )]
                          // [TACTIC: Cases'_With abs_cases x with h₇ h₇]
                          AbsCasesInt(x);  // cite: abs_cases
                          if (((IntAbs(x) == x) && (0 <= x))) {  // sub-goal of `omega` (Lean state)
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            assert (IntAbs(x) >= 10);  // sub-goal of `omega` (Lean state) // @tac 1304-1313 // @tac 1308-1313
                            // UNCITED-APPLIED internal ×35 [exec 264 1308-1313]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_eq_zero_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×6, Eq.trans ×4, Lean.Omega.combo_sat' ×2, Lean.Omega.tidy_sat ×2 (+13 more heads, ×16)
                          }
                          if (((IntAbs(x) == -(x)) && (x < 0))) {  // sub-goal of `omega` (Lean state)
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            assert (IntAbs(x) >= 10);  // sub-goal of `omega` (Lean state) // @tac 1304-1313 // @tac 1308-1313
                            // UNCITED-APPLIED internal ×50 [exec 274 1308-1313]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×9, Eq.trans ×7, Lean.Omega.tidy_sat ×3, Lean.Omega.Int.sub_congr ×3 (+15 more heads, ×21)
                          }
                          // [TACTIC: try { norm_cast at h₇ ⊢ norm_cast at h₇ ⊢ <;> omega omega }]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: ( try { norm_cast at h₇ ⊢ norm_cast at h₇ ⊢ <;> omega omega } )]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_a]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp]  NOT RUN in Lean (no execution recorded)
                        }
                        // have h₇ : abs ( x ) >= 10  [type from Lean state]
                        assert (abs((x as real)) >= 10.0); // @tac 1680-1699
                          // [TACTIC: Exact_mod_cast h₆]
                          // UNCITED-APPLIED Eq.symm((10 as real), 10.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                          // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                          // UNCITED-APPLIED congrArg(|↑x|, ↑|x|, fun (x : ℝ) => x ≥ ↑(10 : ℕ)): no library counterpart (not stated) [exec 304 1680-1699]
                          // UNCITED-APPLIED congrArg((10 : ℝ), ↑(10 : ℤ), GE.ge ↑|x|): no library counterpart (not stated) [exec 304 1680-1699]
                          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 304 1680-1699]
                          // UNCITED-APPLIED Int.cast_ofNat(nat_lit 10): no library counterpart (not stated) [exec 304 1680-1699]
                        // [TACTIC: exact h₇]
                        assert (abs((x as real)) >= 10.0);
                      }
                      // [TACTIC: «Linarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1729-1737 exec 306)
                      // UNCITED-APPLIED Left.add_neg: certificate sum `(3 : ℝ) * π - (10 : ℝ) + (|↑x| - (3 : ℝ) * π) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_4(S, x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×7 [exec 306 1729-1737]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED-APPLIED internal ×68 [exec 307 1729-1737]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+28 more heads, ×56) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 307)]
                    }
                    assert false;
                  }
                }
                // have h₃ :  <= 9  [type from Lean state]
                assert (x <= 9) by { // @tac 1786-1800
                  // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 331 1786-1800]
                  // by_contra h
                  if !((x <= 9)) {
                    assert false by {  // sub-goal before `have` (Lean state) // @tac 1844-1889 // @tac 1898-2498 // @tac 2507-2515
                      // have h₄ : x >= 10  [type from Lean state]
                      assert (x >= 10) by { // @tac 1881-1889
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1881-1889 exec 348)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((9 : ℤ) + (1 : ℤ) - x) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_5(S, x);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×12 [exec 348 1881-1889]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                        // UNCITED-APPLIED internal ×61 [exec 349 1881-1889]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Tactic.Ring.cast_pos ×3 (+25 more heads, ×46)
                      }
                      // have h₅ : abs ( x ) >= 10  [type from Lean state]
                      assert (abs((x as real)) >= 10.0) by { // @tac 1947-1975 // @tac 1986-2396 // @tac 2407-2477 // @tac 2488-2498
                        // have h₆ : x >= 10  [type from Lean state]
                        assert (x >= 10) by {
                          // [TACTIC: exact h₄]
                          assert (x >= 10);
                        }
                        // have h₇ : abs ( x ) >= 10  [type from Lean state]
                        assert (IntAbs(x) >= 10) by { // @tac 2029-2396 // @tac 2029-2222 // @tac 2029-2092 // @tac 2029-2062
                          // [TACTIC: «_<;>_» abs_cases x with h₈ h₈ <;> ( try omega omega ) <;> ( try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega } ) <;> ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] <;> omega omega } )]
                          // [TACTIC: Cases'_With abs_cases x with h₈ h₈]
                          AbsCasesInt(x);  // cite: abs_cases
                          if (((IntAbs(x) == x) && (0 <= x))) {  // sub-goal of `omega` (Lean state)
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            assert (IntAbs(x) >= 10);  // sub-goal of `omega` (Lean state) // @tac 2082-2091 // @tac 2086-2091
                            // UNCITED-APPLIED internal ×41 [exec 425 2086-2091]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×7, Eq.trans ×5, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+13 more heads, ×16)
                          }
                          if (((IntAbs(x) == -(x)) && (x < 0))) {  // sub-goal of `omega` (Lean state)
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            assert (IntAbs(x) >= 10);  // sub-goal of `omega` (Lean state) // @tac 2082-2091 // @tac 2086-2091
                            // UNCITED-APPLIED internal ×44 [exec 435 2086-2091]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×8, Eq.trans ×6, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+15 more heads, ×17)
                          }
                          // [TACTIC: try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega }]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: ( try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega } )]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_a]  NOT RUN in Lean (no execution recorded)
                          // [TACTIC: ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp]  NOT RUN in Lean (no execution recorded)
                        }
                        // have h₈ : abs ( x ) >= 10  [type from Lean state]
                        assert (abs((x as real)) >= 10.0); // @tac 2458-2477
                          // [TACTIC: Exact_mod_cast h₇]
                          // UNCITED-APPLIED Eq.symm((10 as real), 10.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                          // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                          // UNCITED-APPLIED congrArg(|↑x|, ↑|x|, fun (x : ℝ) => x ≥ ↑(10 : ℕ)): no library counterpart (not stated) [exec 465 2458-2477]
                          // UNCITED-APPLIED congrArg((10 : ℝ), ↑(10 : ℤ), GE.ge ↑|x|): no library counterpart (not stated) [exec 465 2458-2477]
                          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 465 2458-2477]
                          // UNCITED-APPLIED Int.cast_ofNat(nat_lit 10): no library counterpart (not stated) [exec 465 2458-2477]
                        // [TACTIC: exact h₈]
                        assert (abs((x as real)) >= 10.0);
                      }
                      // [TACTIC: «Linarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2507-2515 exec 467)
                      // UNCITED-APPLIED Left.add_neg: certificate sum `(3 : ℝ) * π - (10 : ℝ) + (|↑x| - (3 : ℝ) * π) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_6(S, x);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×7 [exec 467 2507-2515]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, add_lt_of_neg_of_le ×1, Left.add_neg ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED-APPLIED internal ×68 [exec 468 2507-2515]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+28 more heads, ×56) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 468)]
                    }
                    assert false;
                  }
                }
                // [TACTIC: exact ⟨ h₂ , h₃ ⟩ ⟨ h₂ , h₃ ⟩]
                // goal closed by `exact ⟨…⟩` (Lean state) = the enclosing statement
              }
            }
          }
          assert (((-(9) <= x) && (x <= 9)) ==> ((IntAbs(x) as real) < (3.0 * Real.pi()))) by {  // sub-goal of `constructor` (Lean state) // @tac 2622-2629 // @tac 2549-3510
            // intro h: P → Q  (N7 if-wrapper)
            if ((-(9) <= x) && (x <= 9)) {
              assert ((IntAbs(x) as real) < (3.0 * Real.pi())) by {  // sub-goal before `have` (Lean state) // @tac 2636-2671 // @tac 2678-2712 // @tac 2719-3484 // @tac 3491-3510
                // have h₁ : - 9 <=   [type from Lean state]
                assert (-(9) <= x);
                  // [TACTIC: exact h . 1]
                // have h₂ :  <= 9  [type from Lean state]
                assert (x <= 9);
                  // [TACTIC: exact h . 2]
                // have h₃ : abs ( x ) < 3 * Real.pi  [type from Lean state]
                assert (abs((x as real)) < (3.0 * Real.pi())) by { // @tac 2773-3336 // @tac 3345-3412 // @tac 3421-3467 // @tac 3476-3484
                  // have h₄ : abs ( x ) <= 9  [type from Lean state]
                  assert (IntAbs(x) <= 9) by { // @tac 2813-2849 // @tac 2860-2895 // @tac 2906-3315 // @tac 3326-3336
                    // have h₅ : - 9 <=   [type from Lean state]
                    assert (-(9) <= x) by {
                      // [TACTIC: exact h₁]
                      assert (-(9) <= x);
                    }
                    // have h₆ :  <= 9  [type from Lean state]
                    assert (x <= 9) by {
                      // [TACTIC: exact h₂]
                      assert (x <= 9);
                    }
                    // have h₇ : abs ( x ) <= 9  [type from Lean state]
                    assert (IntAbs(x) <= 9) by { // @tac 2948-3315 // @tac 2948-3141 // @tac 2948-3011 // @tac 2948-2981
                      // [TACTIC: «_<;>_» abs_cases x with h₈ h₈ <;> ( try omega omega ) <;> ( try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega } ) <;> ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] <;> omega omega } )]
                      // [TACTIC: Cases'_With abs_cases x with h₈ h₈]
                      AbsCasesInt(x);  // cite: abs_cases
                      if (((IntAbs(x) == x) && (0 <= x))) {  // sub-goal of `omega` (Lean state)
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert (IntAbs(x) <= 9);  // sub-goal of `omega` (Lean state) // @tac 3001-3010 // @tac 3005-3010
                        // UNCITED-APPLIED internal ×47 [exec 602 3005-3010]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×7, Eq.trans ×5, Lean.Omega.Constraint.addInequality_sat ×4, Lean.Omega.Int.sub_congr ×4 (+11 more heads, ×18)
                      }
                      if (((IntAbs(x) == -(x)) && (x < 0))) {  // sub-goal of `omega` (Lean state)
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert (IntAbs(x) <= 9);  // sub-goal of `omega` (Lean state) // @tac 3001-3010 // @tac 3005-3010
                        // UNCITED-APPLIED internal ×61 [exec 612 3005-3010]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×10, Eq.trans ×8, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+15 more heads, ×22)
                      }
                      // [TACTIC: try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega }]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { norm_cast at h₈ ⊢ norm_cast at h₈ ⊢ <;> omega omega } )]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_a]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp_all [ abs_of_nonneg , abs_of_nonpos , le_of_lt ] simp]  NOT RUN in Lean (no execution recorded)
                    }
                    // [TACTIC: exact h₇]
                    assert (IntAbs(x) <= 9);
                  }
                  // have h₅ : abs ( x ) <= 9  [type from Lean state]
                  assert (abs((x as real)) <= 9.0); // @tac 3393-3412
                    // [TACTIC: Exact_mod_cast h₄]
                    // UNCITED-APPLIED Eq.symm((9 as real), 9.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED congrArg(|↑x|, ↑|x|, fun (x : ℝ) => x ≤ ↑(9 : ℕ)): no library counterpart (not stated) [exec 643 3393-3412]
                    // UNCITED-APPLIED congrArg((9 : ℝ), ↑(9 : ℤ), LE.le ↑|x|): no library counterpart (not stated) [exec 643 3393-3412]
                    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 643 3393-3412]
                    // UNCITED-APPLIED Int.cast_ofNat(nat_lit 9): no library counterpart (not stated) [exec 643 3393-3412]
                  // have h₆ : 9 < 3 * Real.pi  [type from Lean state]
                  assert (9.0 < (3.0 * Real.pi())) by {
                    // [TACTIC: exact h_pi_lb]
                    assert (9.0 < (3.0 * Real.pi()));
                  }
                  // [TACTIC: «Linarith[_]At___»]
                  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3476-3484 exec 656)
                  // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(9 : ℝ) - (3 : ℝ) * π + (|↑x| - (9 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                  cert_identity_7(S, x);  // cert: add_lt_of_neg_of_le
                  // UNCITED-APPLIED internal ×8 [exec 656 3476-3484]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                  // UNCITED-APPLIED internal ×69 [exec 657 3476-3484]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3 (+28 more heads, ×56) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                  NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 657)]
                }
                // [TACTIC: Exact_mod_cast h₃]
                // UNCITED-APPLIED congrArg(|↑x|, ↑|x|, fun (x : ℝ) => x < ↑(3 : ℕ) * π): no library counterpart (not stated) [exec 659 3491-3510]
              }
            }
          }
        }
      }
    }
    assert (forall a :: a in (S) <==> a in (Icc(-(9), 9)));  // precondition of FinsetExt (Lean: Finset.ext; `apply`: proved by the steps above)
    FinsetExt(S, Icc(-(9), 9));  // cite: Finset.ext
  }
  // have h_finset_card : ( Finset.Icc ( - 9 : ℤ ) 9 ) . card == 19  [type from Lean state]
  vc_amc12b_2021_p1_L366(S);  /* [IN-FILE CHECK] the closed lemma for line 366 */
  assert (|Icc(-(9), 9)| == 19); // @tac 3583-3640 // @tac 3583-3628
    // [TACTIC: «_<;>_» [ Finset.Icc_self , Finset.card_empty ] norm_num [ Finset.Icc_self , Finset.card_empty ] <;> rfl rfl]
    // [TACTIC: choice [ Finset.Icc_self , Finset.card_empty ] norm_num [ Finset.Icc_self , Finset.card_empty ]]
    // UNCITED Finset.Icc_self: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Finset.card_empty: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
    // UNCITED-APPLIED internal ×13 [exec 681 3583-3628]: applications made inside the tactic's own automation, not stated — Int.card_Icc ×1; machinery/glue: congrArg ×2, Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1 (+5 more heads, ×5)
    // GAP: sub-goal of `rfl` does not render: Int.toNat (19 : ℤ) = (19 : ℕ) // @tac 3637-3640
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
  // have h_main : S.card == 19  [type from Lean state]
  assert (|S| == 19) by { // @tac 3682-3693
    // [TACTIC: rwSeq [ h_S_eq ]]
    // UNCITED-APPLIED congrArg(S, Finset.Icc (-9 : ℤ) (9 : ℤ), fun (_a : Finset ℤ) => Finset.card _a = (19 : ℕ)): no library counterpart (not stated) [exec 712 3682-3693]
    assert (|Icc(-(9), 9)| == 19) by {  // sub-goal before `exact` (Lean state) // @tac 3698-3717
      // [TACTIC: exact h_finset_card]
      assert (|Icc(-(9), 9)| == 19);
    }
  }
  // [TACTIC: exact h_main]
  assert (|S| == 19);
}



// ===== closed lemma for line 366 (from closed/amc12b_2021_p1-366.dfy) =====

lemma {:induction false} vc_amc12b_2021_p1_L366(S: set<int>)
  requires forall x_1: int :: (x_1 in S) == ((IntAbs(x_1) as real) < 3.0 * Real.pi())
  requires 9.0 < 3.0 * Real.pi()
  requires 3.0 * Real.pi() < 10.0
  requires S == Icc(0 - 9, 9)
  ensures   |Icc(0 - 9, 9)| == 19
{
  // K5: Int.card_Icc (applied inside Lean's norm_num, exec 681, args a=-9, b=9)
  IntIccCard(-9, 9, Icc(-9, 9));  // [ADDED]
}

