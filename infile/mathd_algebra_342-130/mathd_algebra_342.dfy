// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_342.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, d: real)
  ensures (-((((5.0 * a) + (10.0 * d)) - 70.0)) + (((5.0 * a) + (10.0 * d)) - 70.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, d: real)
  ensures ((((5.0 * a) + (10.0 * d)) - 70.0) + (70.0 - ((5.0 * a) + (10.0 * d)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, d: real)
  ensures (-((((10.0 * a) + (45.0 * d)) - 210.0)) + (((10.0 * a) + (45.0 * d)) - 210.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, d: real)
  ensures ((((10.0 * a) + (45.0 * d)) - 210.0) + (210.0 - ((10.0 * a) + (45.0 * d)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₂/h₄₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, d: real)
  ensures (-((((5.0 * a) + (10.0 * d)) - 70.0)) + (5.0 * ((a + (2.0 * d)) - 14.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₂/h₄₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, d: real)
  ensures ((((5.0 * a) + (10.0 * d)) - 70.0) + (5.0 * (14.0 - (a + (2.0 * d))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, d: real)
  ensures (-((((10.0 * a) + (45.0 * d)) - 210.0)) + (5.0 * (((2.0 * a) + (9.0 * d)) - 42.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, d: real)
  ensures ((((10.0 * a) + (45.0 * d)) - 210.0) + (5.0 * (42.0 - ((2.0 * a) + (9.0 * d))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, d: real)
  ensures (((2.0 * (((5.0 * a) + (10.0 * d)) - 70.0)) + -((((10.0 * a) + (45.0 * d)) - 210.0))) + (5.0 * ((5.0 * d) - 14.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, d: real)
  ensures ((-((2.0 * (((5.0 * a) + (10.0 * d)) - 70.0))) + (((10.0 * a) + (45.0 * d)) - 210.0)) + (5.0 * (14.0 - (5.0 * d)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, d: real)
  ensures (((2.0 * (((5.0 * a) + (10.0 * d)) - 70.0)) + -((((10.0 * a) + (45.0 * d)) - 210.0))) + (5.0 * ((5.0 * d) - (1.0 * 14.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, d: real)
  ensures ((-((2.0 * (((5.0 * a) + (10.0 * d)) - 70.0))) + (((10.0 * a) + (45.0 * d)) - 210.0)) + (5.0 * ((1.0 * 14.0) - (5.0 * d)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, d: real)
  ensures ((-((9.0 * (((5.0 * a) + (10.0 * d)) - 70.0))) + (2.0 * (((10.0 * a) + (45.0 * d)) - 210.0))) + (5.0 * ((5.0 * a) - (1.0 * 42.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, d: real)
  ensures (((9.0 * (((5.0 * a) + (10.0 * d)) - 70.0)) + -((2.0 * (((10.0 * a) + (45.0 * d)) - 210.0)))) + (5.0 * ((1.0 * 42.0) - (5.0 * a)))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_342(a: real, d: real)
  requires (Real.sum(range(5), ((k: nat) => (a + ((k as real) * d)))) == 70.0)
  requires (Real.sum(range(10), ((k: nat) => (a + ((k as real) * d)))) == 210.0)
  ensures (a == (42.0 / 5.0)) // @tac 474-854 // @tac 860-1344 // @tac 1350-1615 // @tac 1621-1734 // @tac 1740-1892 // @tac 1898-2138 // @tac 2144-2154
{
  // have h₂ : 5 * a + 10 * d == 70  [type from Lean state]
  assert (((5.0 * a) + (10.0 * d)) == 70.0) by { // @tac 516-816 // @tac 821-841 // @tac 846-854
    // have h₂₁ : ∑ k ∈ Finset.range (5 : ℕ), (a + ↑k * d) = (5 : ℝ) * a + (10 : ℝ) * d  [type from Lean state]
    assert (Real.sum(range(5), ((k: nat) => (a + ((k as real) * d)))) == ((5.0 * a) + (10.0 * d))) by { // @tac 605-816 // @tac 605-797 // @tac 605-778 // @tac 605-760
      // [TACTIC: «_<;>_» [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: choice [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ]]
      FinsetSumRangeSucc(4, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(3, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(2, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(1, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×38 [exec 51 605-760]: applications made inside the tactic's own automation, not stated — Finset.sum_singleton ×1, add_zero ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Meta.NormNum.IsNat.to_eq ×5, Mathlib.Meta.NormNum.isNat_natCast ×5 (+2 more heads, ×9) (cited in this block, not counted here: Finset.sum_range_succ [Lean recorded ×4], Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      assert (((((a + (a + d)) + (a + (2.0 * d))) + (a + (3.0 * d))) + (a + (4.0 * d))) == ((5.0 * a) + (10.0 * d))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 771-778
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×118 [exec 60 771-778]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.add_pf_add_overlap ×7, Mathlib.Tactic.Ring.add_overlap_pf ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×7 (+21 more heads, ×88) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
      vc_mathd_algebra_342_L130(a, d);  /* [IN-FILE CHECK] the closed lemma for line 130 */
    }
    // [TACTIC: rwSeq [ h₂₁ ] at h₀]
    assert (((5.0 * a) + (10.0 * d)) == 70.0);  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 821-841
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 846-854 exec 104)
    cert_identity_1(a, d);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_2(a, d);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×12 [exec 104 846-854]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×78 [exec 105 846-854]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4, Mathlib.Meta.NormNum.isInt_mul ×4 (+30 more heads, ×62) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×76 [exec 106 846-854]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.of_raw ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+28 more heads, ×62) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 105, 106)]
  }
  // have h₃ : 10 * a + 45 * d == 210  [type from Lean state]
  assert (((10.0 * a) + (45.0 * d)) == 210.0) by { // @tac 904-1306 // @tac 1311-1331 // @tac 1336-1344
    // have h₃₁ : ∑ k ∈ Finset.range (10 : ℕ), (a + ↑k * d) = (10 : ℝ) * a + (45 : ℝ) * d  [type from Lean state]
    assert (Real.sum(range(10), ((k: nat) => (a + ((k as real) * d)))) == ((10.0 * a) + (45.0 * d))) by { // @tac 995-1306 // @tac 995-1287 // @tac 995-1268 // @tac 995-1250
      // [TACTIC: «_<;>_» [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: choice [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ]]
      FinsetSumRangeSucc(9, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(8, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(7, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(6, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(5, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(4, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(3, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(2, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(1, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×51 [exec 154 995-1250]: applications made inside the tactic's own automation, not stated — Finset.sum_singleton ×1, add_zero ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×8, Mathlib.Meta.NormNum.IsNat.to_eq ×8 (+2 more heads, ×16) (cited in this block, not counted here: Finset.sum_range_succ [Lean recorded ×9], Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      assert ((((((((((a + (a + d)) + (a + (2.0 * d))) + (a + (3.0 * d))) + (a + (4.0 * d))) + (a + (5.0 * d))) + (a + (6.0 * d))) + (a + (7.0 * d))) + (a + (8.0 * d))) + (a + (9.0 * d))) == ((10.0 * a) + (45.0 * d))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1261-1268
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×157 [exec 163 1261-1268]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_pf_add_overlap ×8 (+21 more heads, ×124) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
    }
    // [TACTIC: rwSeq [ h₃₁ ] at h₁]
    assert (((10.0 * a) + (45.0 * d)) == 210.0);  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 1311-1331
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1336-1344 exec 207)
    cert_identity_3(a, d);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_4(a, d);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×12 [exec 207 1336-1344]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×78 [exec 208 1336-1344]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4, Mathlib.Meta.NormNum.isInt_mul ×4 (+30 more heads, ×62) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×76 [exec 209 1336-1344]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.of_raw ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+28 more heads, ×62) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 208, 209)]
  }
  // have h₄ : a + 2 * d == 14  [type from Lean state]
  assert ((a + (2.0 * d)) == 14.0) by { // @tac 1387-1429 // @tac 1434-1597 // @tac 1602-1615
    // have h₄₁ : 5 * a + 10 * d == 70  [type from Lean state]
    assert (((5.0 * a) + (10.0 * d)) == 70.0) by {
      // [TACTIC: exact h₂]
      assert (((5.0 * a) + (10.0 * d)) == 70.0);
    }
    // have h₄₂ : a + 2 * d == 14  [type from Lean state]
    assert ((a + (2.0 * d)) == 14.0) by { // @tac 1476-1518 // @tac 1525-1577 // @tac 1584-1597
      // have h₄₃ : 5 * a + 10 * d == 70  [type from Lean state]
      assert (((5.0 * a) + (10.0 * d)) == 70.0) by {
        // [TACTIC: exact h₂]
        assert (((5.0 * a) + (10.0 * d)) == 70.0);
      }
      // have h₄₄ : a + 2 * d == 14  [type from Lean state]
      assert ((a + (2.0 * d)) == 14.0) by { // @tac 1569-1577
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1569-1577 exec 282)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (a + (2 : ℝ) * d - (14 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((a + (2.0 * d)) - 14.0) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((14 : ℝ) - (a + (2 : ℝ) * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((14.0 - (a + (2.0 * d))) < 0.0); (5.0 > 0.0)
        cert_identity_5(a, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_6(a, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×13 [exec 282 1569-1577]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×118 [exec 283 1569-1577]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Meta.NormNum.isInt_mul ×6 (+31 more heads, ×94) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 284 1569-1577]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×116 [exec 285 1569-1577]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+30 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 286 1569-1577]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 284, 286 / `ring1` exec 283, 285)]
      }
      // [TACTIC: exact h₄₄]
      assert ((a + (2.0 * d)) == 14.0);
    }
    // [TACTIC: exact h₄₂]
    assert ((a + (2.0 * d)) == 14.0);
  }
  // have h₅ : 2 * a + 9 * d == 42  [type from Lean state]
  assert (((2.0 * a) + (9.0 * d)) == 42.0) by { // @tac 1662-1716 // @tac 1721-1734
    // have h₅₁ : 2 * a + 9 * d == 42  [type from Lean state]
    assert (((2.0 * a) + (9.0 * d)) == 42.0) by { // @tac 1708-1716
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1708-1716 exec 321)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((2 : ℝ) * a + (9 : ℝ) * d - (42 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((2.0 * a) + (9.0 * d)) - 42.0) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((42 : ℝ) - ((2 : ℝ) * a + (9 : ℝ) * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((42.0 - ((2.0 * a) + (9.0 * d))) < 0.0); (5.0 > 0.0)
      cert_identity_7(a, d);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_8(a, d);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×13 [exec 321 1708-1716]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×136 [exec 322 1708-1716]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+31 more heads, ×107) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 323 1708-1716]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×131 [exec 324 1708-1716]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+30 more heads, ×102) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 325 1708-1716]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 323, 325 / `ring1` exec 322, 324)]
    }
    // [TACTIC: exact h₅₁]
    assert (((2.0 * a) + (9.0 * d)) == 42.0);
  }
  // have h₆ : d == 14 / 5  [type from Lean state]
  assert (d == (14.0 / 5.0)) by { // @tac 1773-1874 // @tac 1879-1892
    // have h₆₁ : d == 14 / 5  [type from Lean state]
    assert (d == (14.0 / 5.0)) by { // @tac 1811-1859 // @tac 1866-1874
      // have h₆₂ : 5 * d == 14  [type from Lean state]
      assert ((5.0 * d) == 14.0) by { // @tac 1851-1859
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1851-1859 exec 375)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((5.0 * a) + (10.0 * d)) - 70.0) == 0.0); (2.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((5 : ℝ) * d - (14 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * d) - 14.0) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((5.0 * a) + (10.0 * d)) - 70.0)) == 0.0); (2.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((14 : ℝ) - (5 : ℝ) * d) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((14.0 - (5.0 * d)) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + -((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + ((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        cert_identity_9(a, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_10(a, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×19 [exec 375 1851-1859]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.mul_eq ×2 (+4 more heads, ×5)
        // UNCITED-APPLIED internal ×171 [exec 376 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+33 more heads, ×139) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 377 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 378 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×170 [exec 379 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+33 more heads, ×138) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 380 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 381 1851-1859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 377, 378, 380, 381 / `ring1` exec 376, 379)]
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1866-1874 exec 382)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((5.0 * a) + (10.0 * d)) - 70.0) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((5 : ℝ) * d - (1 : ℝ) * (14 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * d) - (1.0 * 14.0)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (d - (14 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((d - (14.0 / 5.0)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((5.0 * a) + (10.0 * d)) - 70.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((1 : ℝ) * (14 : ℝ) - (5 : ℝ) * d) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 14.0) - (5.0 * d)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((14 / 5 : ℝ) - d) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((14.0 / 5.0) - d) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + -((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + ((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_11(a, d);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_12(a, d);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×26 [exec 382 1866-1874]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.div_subst ×1; machinery/glue: congrArg ×4, Linarith.mul_neg ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2 (+4 more heads, ×5)
      // UNCITED-APPLIED internal ×174 [exec 386 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+34 more heads, ×142) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 387 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 383 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 384 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 388 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×175 [exec 392 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+34 more heads, ×143) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 393 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 389 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 390 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 391 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 394 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 383, 384, 389, 390 / `ring1` exec 386, 392)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 385, 387, 388, 391, 393, 394 / `ring1` exec 386, 392)]
      // UNCITED-APPLIED internal ×5 [exec 385 1866-1874]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₆₁]
    assert (d == (14.0 / 5.0));
  }
  // have h₇ : a == 42 / 5  [type from Lean state]
  assert (a == (42.0 / 5.0)) by { // @tac 1931-2120 // @tac 2125-2138
    // have h₇₁ : a == 42 / 5  [type from Lean state]
    assert (a == (42.0 / 5.0)) by { // @tac 1969-2006 // @tac 2013-2046 // @tac 2053-2076 // @tac 2083-2105 // @tac 2112-2120
      // have h₇₂ : a + 2 * d == 14  [type from Lean state]
      assert ((a + (2.0 * d)) == 14.0) by {
        // [TACTIC: exact h₄]
        assert ((a + (2.0 * d)) == 14.0);
      }
      // have h₇₃ : d == 14 / 5  [type from Lean state]
      assert (d == (14.0 / 5.0)) by {
        // [TACTIC: exact h₆]
        assert (d == (14.0 / 5.0));
      }
      // [TACTIC: rwSeq [ h₇₃ ] at h₇₂]
      assert ((a + (2.0 * (14.0 / 5.0))) == 14.0);  // hypothesis h₇₂ after `rw` (Lean state) // @tac-hyp 2053-2076
      // [TACTIC: Ring_nfAt at h₇₂ ⊢]
      assert (((28.0 / 5.0) + a) == 14.0);  // hypothesis h₇₂ after `ring_nf` (Lean state) // @tac-hyp 2083-2105
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2112-2120 exec 484)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((5.0 * a) + (10.0 * d)) - 70.0)) == 0.0); (9.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((10.0 * a) + (45.0 * d)) - 210.0) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((5 : ℝ) * a - (1 : ℝ) * (42 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * a) - (1.0 * 42.0)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (a - (42 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - (42.0 / 5.0)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((5.0 * a) + (10.0 * d)) - 70.0) == 0.0); (9.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((10.0 * a) + (45.0 * d)) - 210.0)) == 0.0); (2.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((1 : ℝ) * (42 : ℝ) - (5 : ℝ) * a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * 42.0) - (5.0 * a)) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((42 / 5 : ℝ) - a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((42.0 / 5.0) - a) < 0.0); (5.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * -((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + (2 : ℝ) * ((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * ((5 : ℝ) * a + (10 : ℝ) * d - (70 : ℝ)) + (2 : ℝ) * -((10 : ℝ) * a + (45 : ℝ) * d - (210 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_13(a, d);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_14(a, d);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×28 [exec 484 2112-2120]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_eq_zero_of_eq ×2, CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.div_subst ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×4, Linarith.mul_neg ×4, Linarith.lt_of_eq_of_lt ×2 (+4 more heads, ×5)
      // UNCITED-APPLIED internal ×184 [exec 497 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+34 more heads, ×152) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 498 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 499 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 485 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 486 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 490 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×186 [exec 513 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+34 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 514 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 515 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 488 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 489 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 493 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 496 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 485, 486, 488, 489 / `ring1` exec 497, 513)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 487, 490, 493, 496, 498, 499 … / `ring1` exec 497, 513)]
      // UNCITED-APPLIED internal ×5 [exec 487 2112-2120]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₇₁]
    assert (a == (42.0 / 5.0));
  }
  // [TACTIC: apply h₇]
}



// ===== closed lemma for line 130 (from closed/mathd_algebra_342-130.dfy) =====

lemma {:induction false} vc_mathd_algebra_342_L130(a: real, d: real)
  requires Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 70.0
  requires Real.sum(range(10), ((k: nat) => a + (k as real) * d)) == 210.0
  requires 0 <= 4
  requires ((k: nat) => a + (k as real) * d).requires(4)
  requires Real.sum(range(4 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(4), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(4)
  requires 0 <= 3
  requires ((k: nat) => a + (k as real) * d).requires(3)
  requires Real.sum(range(3 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(3), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(3)
  requires 0 <= 2
  requires ((k: nat) => a + (k as real) * d).requires(2)
  requires Real.sum(range(2 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(2), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(2)
  requires 0 <= 1
  requires ((k: nat) => a + (k as real) * d).requires(1)
  requires Real.sum(range(1 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(1), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(1)
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  requires 0 <= 5
  ensures   Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 5.0 * a + 10.0 * d
{
  FinsetSumRangeSucc(0, ((k: nat) => a + (k as real) * d));  // [ADDED]
  FinsetSumRangeZero(((k: nat) => a + (k as real) * d));  // [ADDED]
      // [TACTIC: «_<;>_» [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: choice [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ]]
      FinsetSumRangeSucc(4, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(3, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(2, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(1, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×38 [exec 51 605-760]: applications made inside the tactic's own automation, not stated — Finset.sum_singleton ×1, add_zero ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Meta.NormNum.IsNat.to_eq ×5, Mathlib.Meta.NormNum.isNat_natCast ×5 (+2 more heads, ×9) (cited in this block, not counted here: Finset.sum_range_succ [Lean recorded ×4], Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      assert (((((a + (a + d)) + (a + (2.0 * d))) + (a + (3.0 * d))) + (a + (4.0 * d))) == ((5.0 * a) + (10.0 * d))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 771-778
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×118 [exec 60 771-778]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.add_pf_add_overlap ×7, Mathlib.Tactic.Ring.add_overlap_pf ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×7 (+21 more heads, ×88) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
}

